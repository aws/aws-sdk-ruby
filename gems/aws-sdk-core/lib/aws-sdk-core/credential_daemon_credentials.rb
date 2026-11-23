# frozen_string_literal: true

require 'json'
require 'time'
require 'rbconfig'

begin
  require 'socket'
rescue LoadError
  # Without the socket library the provider raises UNSUPPORTED_PLATFORM.
end

module Aws
  # A credential provider that fetches short-lived session credentials from
  # a local credential daemon. The provider sends one JSON-RPC 2.0 request
  # over a Unix domain socket and reads one reply. Each is a single line
  # that ends with `"\n"`.
  #
  #     credentials = Aws::CredentialDaemonCredentials.new(credential: 'dev')
  #     ec2 = Aws::EC2::Client.new(credentials: credentials)
  #
  # The default credential provider chain uses this provider for a profile
  # in the shared config file that sets `credential_daemon`.
  #
  # The socket is found in this order, on every fetch:
  #
  # 1. The `:socket_path` option, when it is an absolute path.
  # 2. `ENV['AWS_CREDENTIAL_DAEMON_SOCKET']`, when it is an absolute path.
  # 3. `$HOME/.aws/credential-daemon.sock`, when anything is there: a
  #    socket, a symbolic link, or a link whose target is missing. `HOME`
  #    is read from the environment, and this location is skipped when
  #    `HOME` is unset, empty or relative.
  #
  # An empty or relative value for the first two counts as unset.
  #
  # The provider dials the first location that applies and tries no other
  # one if that dial fails. When no location applies, it raises
  # `NOT_RUNNING` without dialing.
  #
  # Failures raise {Errors::CredentialDaemonError}, whose `code` is one of
  # the code constants of this class.
  class CredentialDaemonCredentials
    include CredentialProvider
    include RefreshingCredentials

    CREDENTIAL_DAEMON_DOC = 'https://docs.aws.amazon.com/cli/latest/userguide/cli-authentication-credsd.html'

    NOT_RUNNING = 'NOT_RUNNING'
    REAUTH_REQUIRED = 'REAUTH_REQUIRED'
    CREDENTIAL_NOT_FOUND = 'CREDENTIAL_NOT_FOUND'
    REQUEST_REJECTED = 'REQUEST_REJECTED'
    UNSUPPORTED_MATERIAL = 'UNSUPPORTED_MATERIAL'
    PROTOCOL_ERROR = 'PROTOCOL_ERROR'
    INVALID_CONFIG = 'INVALID_CONFIG'
    UNSUPPORTED_PLATFORM = 'UNSUPPORTED_PLATFORM'

    # @api private
    DAEMON_ERROR_CODES = [REAUTH_REQUIRED, CREDENTIAL_NOT_FOUND, REQUEST_REJECTED].freeze

    NAME_PATTERN = /\A[A-Za-z0-9_-][A-Za-z0-9._-]{0,63}\z/.freeze

    MAX_REPLY_BYTES = 64_000
    DEFAULT_CONNECT_TIMEOUT = 1
    DEFAULT_CALL_TIMEOUT = 5

    # @api private
    SOCKET_ENV = 'AWS_CREDENTIAL_DAEMON_SOCKET'
    # @api private
    # The socket path under `HOME`.
    HOME_SOCKET = File.join('.aws', 'credential-daemon.sock')

    # @api private
    EXPIRES_AT_PATTERN = /\A\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(\.\d{1,9})?Z\z/.freeze

    # @api private
    CONTROL_CHARACTERS = /[\u0000-\u001f\u007f-\u009f]/.freeze

    READ_CHUNK_BYTES = 4096
    private_constant :READ_CHUNK_BYTES

    # @param [Hash] options
    # @option options [required, String] :credential The name of the
    #   credential that the credential daemon holds.
    # @option options [String] :account_id With `:role_name`, the account of
    #   the SSO role to get credentials for.
    # @option options [String] :role_name With `:account_id`, the name of
    #   the SSO role to get credentials for.
    # @option options [String] :socket_path The path of the credential
    #   daemon's socket, checked before `AWS_CREDENTIAL_DAEMON_SOCKET`. An
    #   empty or relative path counts as unset.
    # @option options [Numeric] :connect_timeout (1) Seconds to wait for the
    #   connection to the socket.
    # @option options [Numeric] :call_timeout (5) Seconds to wait for the
    #   whole call, connection included.
    # @option options [String] :profile The profile name, used in messages.
    # @option options [Proc] :before_refresh A Proc called before credentials
    #   are refreshed. It accepts `self` as the only argument.
    def initialize(options = {})
      options = options.dup
      @credential = options.delete(:credential)
      @profile = options.delete(:profile)
      self.class.validate_credential_name!(@credential, @profile)
      account_id = options.delete(:account_id)
      role_name = options.delete(:role_name)
      if account_id && role_name
        @account_id = account_id
        @role_name = role_name
      end
      @socket_path = socket_path_option(options)
      @connect_timeout = timeout_option(options, :connect_timeout, DEFAULT_CONNECT_TIMEOUT)
      @call_timeout = timeout_option(options, :call_timeout, DEFAULT_CALL_TIMEOUT)
      @async_refresh = false
      @metrics = ['CREDENTIAL_DAEMON']
      super(options)
    end

    # @return [String]
    attr_reader :credential

    private

    def timeout_option(options, key, default)
      value = options.delete(key)
      return default if value.nil?
      return value if value.is_a?(Numeric) && value.positive?

      raise ArgumentError, "expected :#{key} to be a positive number, got #{value.inspect}"
    end

    def socket_path_option(options)
      value = options.delete(:socket_path)
      return value if value.nil? || value.is_a?(String)

      raise ArgumentError, "expected :socket_path to be a String, got #{value.inspect}"
    end

    def refresh
      @credentials, @expiration = fetch
    end

    def fetch
      os = platform
      unless os && defined?(::UNIXSocket)
        raise error(UNSUPPORTED_PLATFORM,
                    'the credential daemon provider needs Unix domain sockets on Linux or macOS; ' \
                    "this platform (#{RbConfig::CONFIG['host_os']}) is not supported. " \
                    "See #{CREDENTIAL_DAEMON_DOC}.")
      end

      path = socket_path
      deadline = monotonic + @call_timeout
      line = call_daemon(path, request_line, deadline)
      parse_reply(path, line)
    end

    def platform
      case RbConfig::CONFIG['host_os']
      when /darwin/ then :macos
      when /linux/ then :linux
      end
    end

    # The socket path to dial. It is found on every fetch and never cached.
    # Raises NOT_RUNNING when no location applies or when the HOME link's
    # target is missing.
    def socket_path
      configured = configured_socket_path
      return configured if configured

      path = home_socket_path
      raise no_socket_location unless path && File.lstat(path)
      raise dangling_link(path) if File.symlink?(path) && !File.exist?(path)

      path
    rescue SystemCallError
      raise no_socket_location
    end

    # The `:socket_path` option or else AWS_CREDENTIAL_DAEMON_SOCKET, or nil
    # when neither is an absolute path.
    def configured_socket_path
      [@socket_path, ENV[SOCKET_ENV]].find { |path| path&.start_with?('/') }
    end

    # `$HOME/.aws/credential-daemon.sock`, or nil when HOME is unset, empty
    # or relative.
    def home_socket_path
      home = ENV['HOME']
      File.join(home, HOME_SOCKET) if home && home.start_with?('/')
    end

    def request_line
      params = { 'credential' => @credential }
      if @account_id && @role_name
        params['account_id'] = @account_id
        params['role_name'] = @role_name
      end
      request = {
        'jsonrpc' => '2.0',
        'id' => 1,
        'method' => 'credential/get',
        'params' => params
      }
      "#{JSON.generate(request)}\n"
    end

    def call_daemon(path, line, deadline)
      sock = connect(path, deadline)
      begin
        write_request(sock, path, line, deadline)
        read_reply(sock, path, deadline)
      ensure
        sock.close
      end
    end

    def connect(path, deadline)
      connect_deadline = [monotonic + @connect_timeout, deadline].min
      begin
        sock = Socket.new(:UNIX, :STREAM)
        addr = Socket.pack_sockaddr_un(path)
        connect_loop(sock, path, addr, connect_deadline, deadline)
      rescue SystemCallError, SocketError, ArgumentError => e
        raise not_running(path, sanitize(e.message))
      end
      sock
    rescue Exception # rubocop:disable Lint/RescueException
      sock&.close
      raise
    end

    def connect_loop(sock, path, addr, connect_deadline, deadline)
      loop do
        begin
          result = sock.connect_nonblock(addr, exception: false)
        rescue Errno::EISCONN
          return
        end
        return if result == 0

        remaining = connect_deadline - monotonic
        raise connect_timeout(path, connect_deadline, deadline) if remaining <= 0

        IO.select(nil, [sock], nil, remaining)
      end
    end

    def write_request(sock, path, data, deadline)
      until data.empty?
        written = sock.write_nonblock(data, exception: false)
        if written == :wait_writable
          wait_for(sock, :write, path, deadline)
        else
          data = data.byteslice(written..-1)
        end
      end
    rescue Errno::EPIPE, Errno::ECONNRESET => e
      raise protocol_error(path, "the connection closed while sending the request (#{sanitize(e.message)})")
    end

    def read_reply(sock, path, deadline)
      buffer = String.new(encoding: Encoding::BINARY)
      loop do
        if (index = buffer.index("\n"))
          raise reply_too_long(path) if index > MAX_REPLY_BYTES

          return buffer.byteslice(0, index)
        end
        raise reply_too_long(path) if buffer.bytesize > MAX_REPLY_BYTES

        chunk = sock.read_nonblock(READ_CHUNK_BYTES, exception: false)
        case chunk
        when :wait_readable
          wait_for(sock, :read, path, deadline)
        when nil
          raise protocol_error(path, 'the connection closed before a complete reply line')
        else
          buffer << chunk
        end
      end
    rescue EOFError
      raise protocol_error(path, 'the connection closed before a complete reply line')
    rescue Errno::ECONNRESET, Errno::EPIPE => e
      raise protocol_error(path, "the connection closed while reading the reply (#{sanitize(e.message)})")
    end

    def wait_for(sock, direction, path, deadline)
      remaining = deadline - monotonic
      raise call_timeout(path) if remaining <= 0

      if direction == :read
        IO.select([sock], nil, nil, remaining)
      else
        IO.select(nil, [sock], nil, remaining)
      end
    end

    def parse_reply(path, line)
      line.force_encoding(Encoding::UTF_8)
      raise protocol_error(path, 'the reply is not valid UTF-8') unless line.valid_encoding?

      begin
        reply = JSON.parse(line)
      rescue JSON::ParserError
        raise protocol_error(path, 'the reply is not valid JSON')
      end

      # A null result or error counts as absent.
      unless reply.is_a?(Hash) && reply['jsonrpc'] == '2.0' &&
             (!reply['result'].nil? ^ !reply['error'].nil?)
        raise protocol_error(
          path,
          'the reply is not a JSON-RPC 2.0 response with exactly one of result and error'
        )
      end

      if !reply['error'].nil?
        raise daemon_error(path, reply['error'])
      else
        credentials_from_result(path, reply['result'])
      end
    end

    def daemon_error(path, err)
      raise protocol_error(path, 'the error in the reply is not an object') unless err.is_a?(Hash)

      data = err['data']
      daemon_code = data['code'] if data.is_a?(Hash)
      code = map_daemon_error(daemon_code)
      detail = sanitize(err['message'])
      if daemon_code.is_a?(String) && !daemon_code.empty? && !DAEMON_ERROR_CODES.include?(daemon_code)
        error(code, request_rejected_message(sanitize(daemon_code), detail))
      else
        error(code, message_for(code, detail))
      end
    end

    # Maps the daemon's `data.code` to an error code.
    def map_daemon_error(daemon_code)
      DAEMON_ERROR_CODES.include?(daemon_code) ? daemon_code : REQUEST_REJECTED
    end

    # A REQUEST_REJECTED message that names the daemon's `data.code`.
    def request_rejected_message(daemon_code, detail)
      "the credential daemon rejected the request for credential '#{@credential}' " \
        "(daemon code #{daemon_code}): #{detail}"
    end

    def credentials_from_result(path, result)
      unless result.is_a?(Hash) && result['material'].is_a?(Hash)
        raise protocol_error(path, 'the result in the reply has no material object')
      end

      material = result['material']
      type = required_string(path, material, 'type')
      unless type == 'session_credentials'
        raise error(UNSUPPORTED_MATERIAL, message_for(UNSUPPORTED_MATERIAL, sanitize(type)))
      end

      access_key_id = required_string(path, material, 'access_key_id')
      secret_access_key = required_string(path, material, 'secret_access_key')
      session_token = optional_string(path, material, 'session_token')
      account_id = optional_string(path, material, 'account_id')
      expiration = parse_expires_at(path, required_string(path, result, 'expires_at'))

      creds = Credentials.new(
        access_key_id, secret_access_key, session_token, account_id: account_id
      )
      [creds, expiration]
    end

    def required_string(path, hash, key)
      value = hash[key]
      return value if value.is_a?(String) && !value.empty?

      raise protocol_error(path, "#{key} must be a non-empty string")
    end

    def optional_string(path, hash, key)
      value = hash[key]
      return nil if value.nil? || value == ''
      return value if value.is_a?(String)

      raise protocol_error(path, "#{key} must be a string")
    end

    def parse_expires_at(path, value)
      unless EXPIRES_AT_PATTERN.match?(value)
        raise protocol_error(path, 'expires_at must be an RFC 3339 UTC time ending in Z')
      end

      time = Time.iso8601(value)
      # Time.iso8601 rolls dates such as February 31 over to March.
      unless time.utc.strftime('%Y-%m-%dT%H:%M:%S') == value[0, 19]
        raise protocol_error(path, 'expires_at is not a valid date and time')
      end

      time
    rescue ArgumentError
      raise protocol_error(path, 'expires_at is not a valid date and time')
    end

    def message_for(code, detail)
      name = @credential
      case code
      when REAUTH_REQUIRED
        'the credential daemon needs you to sign in again before it can provide ' \
        "credential '#{name}': #{detail}. See #{CREDENTIAL_DAEMON_DOC}."
      when CREDENTIAL_NOT_FOUND
        profile = @profile ? " (profile '#{sanitize(@profile)}')" : ''
        "the credential daemon has no credential named '#{name}' for this user#{profile}; " \
        "sign in again to create it: #{detail}. See #{CREDENTIAL_DAEMON_DOC}."
      when REQUEST_REJECTED
        "the credential daemon rejected the request for credential '#{name}': #{detail}"
      when UNSUPPORTED_MATERIAL
        "this SDK version does not support material type '#{detail}' from the " \
        "credential daemon (credential '#{name}'). Update the SDK."
      when NOT_RUNNING
        "could not reach the credential daemon at #{detail}; make sure the " \
        "credential daemon is running. See #{CREDENTIAL_DAEMON_DOC}."
      when PROTOCOL_ERROR
        "invalid response from the credential daemon at #{detail}"
      end
    end

    def no_socket_location
      error(NOT_RUNNING,
            'could not find the credential daemon socket. Install the credential daemon or ' \
            "link its socket to $HOME/.aws/credential-daemon.sock, or set #{SOCKET_ENV}. " \
            "See #{CREDENTIAL_DAEMON_DOC}.")
    end

    def dangling_link(path)
      target = begin
        File.readlink(path)
      rescue SystemCallError
        '(unreadable)'
      end
      error(NOT_RUNNING,
            "could not reach the credential daemon at #{sanitize(path)} (the link points to " \
            "#{sanitize(target)}, which does not exist); make sure the credential daemon is " \
            "running. See #{CREDENTIAL_DAEMON_DOC}.")
    end

    def not_running(path, detail)
      error(NOT_RUNNING, message_for(NOT_RUNNING, "#{sanitize(path)} (#{detail})"))
    end

    def connect_timeout(path, connect_deadline, deadline)
      if connect_deadline >= deadline
        call_timeout(path)
      else
        not_running(path, "connect timeout of #{seconds(@connect_timeout)}")
      end
    end

    def call_timeout(path)
      not_running(path, "call timeout of #{seconds(@call_timeout)}")
    end

    def protocol_error(path, detail)
      error(PROTOCOL_ERROR, message_for(PROTOCOL_ERROR, "#{sanitize(path)}: #{detail}"))
    end

    def reply_too_long(path)
      protocol_error(path, "the reply line is longer than #{MAX_REPLY_BYTES} bytes")
    end

    def seconds(value)
      "#{value}s"
    end

    def error(code, message)
      Errors::CredentialDaemonError.new(code, message)
    end

    def sanitize(str)
      self.class.sanitize(str)
    end

    def monotonic
      Process.clock_gettime(Process::CLOCK_MONOTONIC)
    end

    class << self
      # @api private
      # Raises INVALID_CONFIG unless `name` is a valid credential name.
      def validate_credential_name!(name, profile = nil)
        return if name.is_a?(String) && NAME_PATTERN.match?(name)

        where = profile ? "profile '#{sanitize(profile)}' has an invalid credential_daemon value" : 'invalid credential name'
        raise invalid_config(
          "#{where} '#{sanitize(name)}'; it must be 1-64 characters from A-Z, " \
          "a-z, 0-9, '.', '_' and '-' and must not start with '.'"
        )
      end

      # @api private
      # @return [Errors::CredentialDaemonError]
      def invalid_config(message)
        Errors::CredentialDaemonError.new(
          INVALID_CONFIG, "#{message}. See #{CREDENTIAL_DAEMON_DOC}."
        )
      end

      # @api private
      # Removes control characters from text.
      def sanitize(str)
        s = str.to_s
        s = s.dup.force_encoding(Encoding::UTF_8) unless s.encoding == Encoding::UTF_8
        s.scrub('').gsub(CONTROL_CHARACTERS, '')
      end
    end
  end
end
