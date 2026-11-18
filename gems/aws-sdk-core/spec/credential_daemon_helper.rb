# frozen_string_literal: true

require 'socket'
require 'json'
require 'time'
require 'tmpdir'
require 'fileutils'

module CredentialDaemonHelper
  # Starts a fake credential daemon on a Unix domain socket in a temporary
  # directory, or at `path`. The handler gets the parsed request (or nil when
  # the request is not JSON) and the raw request line. It returns a Hash
  # (sent as one JSON line), a String (sent as is), :hang (the connection is
  # held open with no reply), or nil (the connection is closed with no
  # reply). Stop the daemons with `stop_credential_daemons`.
  def start_credential_daemon(path: nil, &handler)
    daemon = FakeCredentialDaemon.new(path: path, &handler)
    (@credential_daemons ||= []) << daemon
    daemon
  end

  def stop_credential_daemons
    (@credential_daemons || []).each(&:stop)
    @credential_daemons = []
  end

  def daemon_session_reply(overrides = {})
    material = {
      'type' => 'session_credentials',
      'access_key_id' => 'ASIADAEMON',
      'secret_access_key' => 'daemon-secret',
      'session_token' => 'daemon-token'
    }.merge(overrides.fetch(:material, {}))
    {
      'jsonrpc' => '2.0',
      'id' => 1,
      'result' => {
        'credential' => 'dev',
        'material' => material,
        'expires_at' => overrides.fetch(
          :expires_at, (Time.now.utc + 900).strftime('%Y-%m-%dT%H:%M:%SZ')
        )
      }
    }
  end

  def daemon_error_reply(code, message = 'daemon says no')
    error = { 'code' => -32_000, 'message' => message }
    error['data'] = { 'code' => code } if code
    { 'jsonrpc' => '2.0', 'id' => 1, 'error' => error }
  end

  def expect_daemon_error(code, message = nil)
    expect { yield }.to raise_error(Aws::Errors::CredentialDaemonError) do |e|
      expect(e.code).to eq(code)
      expect(e.message).to start_with("#{code}: ")
      expect(e.message).to match(message) if message
    end
  end

  # A fake credential daemon. Use `start_credential_daemon` to create one.
  class FakeCredentialDaemon
    include CredentialDaemonHelper

    attr_reader :path

    def initialize(path: nil, &handler)
      @dir = Dir.mktmpdir('cd', '/tmp')
      @path = path || File.join(@dir, 'd.sock')
      FileUtils.mkdir_p(File.dirname(@path))
      @handler = handler || proc { |_req, _line| daemon_session_reply }
      @requests = []
      @held = []
      @mutex = Mutex.new
      @server = UNIXServer.new(@path)
      @thread = Thread.new { serve }
    end

    # @return [Array<String>] the raw request lines received
    def requests
      @mutex.synchronize { @requests.dup }
    end

    def stop
      @server.close unless @server.closed?
      @thread.kill
      @thread.join(1)
      @held.each { |c| c.close unless c.closed? }
      FileUtils.rm_rf(@dir)
    end

    private

    def serve
      loop do
        client = @server.accept
        handle(client)
      end
    rescue IOError, SystemCallError
      nil
    end

    def handle(client)
      line = client.gets
      @mutex.synchronize { @requests << line }
      request = begin
        JSON.parse(line.to_s)
      rescue JSON::ParserError
        nil
      end
      reply = @handler.call(request, line)
      if reply == :hang
        @held << client
        return
      end

      case reply
      when Hash then client.write("#{JSON.generate(reply)}\n")
      when String then client.write(reply)
      end
      client.close
    rescue StandardError
      client.close unless client.closed?
    end
  end
end
