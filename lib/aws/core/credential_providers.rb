# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'set'
require 'net/http'
require 'timeout'
require 'thread'
require 'time'

module AWS
  module Core
    module CredentialProviders

      # This module is mixed into the various credential provider
      # classes.  It provides a unified interface for getting
      # credentials and refreshing them.
      module Provider

        # The list of possible keys in the hash returned by {#credentials}.
        KEYS = Set[:access_key_id, :secret_access_key, :session_token]

        # @return [Hash] Returns a hash of credentials containg at least
        #   the `:access_key_id` and `:secret_access_key`.  The hash may
        #   also contain a `:session_token`.
        #
        # @raise [Errors::MissingCredentialsError] Raised when the
        #   `:access_key_id` or the `:secret_access_key` can not be found.
        #
        def credentials
          @cached_credentials ||= begin
            creds = get_credentials
            unless creds[:access_key_id] and creds[:secret_access_key]
              raise Errors::MissingCredentialsError
            end
            creds
          end
          @cached_credentials.dup
        end

        # @return [String] Returns the AWS access key id.
        # @raise (see #credentials)
        def access_key_id
          credentials[:access_key_id]
        end

        # @return [String] Returns the AWS secret access key.
        # @raise (see #credentials)
        def secret_access_key
          credentials[:secret_access_key]
        end

        # @return [String,nil] Returns the AWS session token or nil if these
        #   are not session credentials.
        # @raise (see #credentials)
        def session_token
          credentials[:session_token]
        end

        # Clears out cached/memoized credentials.  Causes the provider
        # to refetch credentials from the source.
        # @return [nil]
        def refresh
          @cached_credentials = nil
        end

        protected

        # This method is called on a credential provider to fetch
        # credentials.  The credentials hash returned from this
        # method will be cashed until the client calls {#refresh}.
        # @return [Hash]
        def get_credentials
          # should be defined in provider classes.
          raise NotImplementedError
        end

      end

      # The default credential provider makes a best effort to
      # locate your AWS credentials.  It checks a variety of locations
      # in the following order:
      #
      #   * Static credentials from AWS.config (e.g. AWS.config.access_key_id,
      #     AWS.config.secret_access_key)
      #
      #   * The environment (e.g. ENV['AWS_ACCESS_KEY_ID'] or
      #     ENV['AMAZON_ACCESS_KEY_ID'])
      #
      #   * EC2 metadata service (checks for credentials provided by
      #     roles for instances).
      #
      class DefaultProvider

        include Provider

        # (see StaticProvider#new)
        def initialize static_credentials = {}
          @providers = []
          @providers << StaticProvider.new(static_credentials)
          @providers << ENVProvider.new('AWS')
          @providers << ENVProvider.new('AMAZON')
          @providers << EC2Provider.new
        end

        # @return [Array<Provider>]
        attr_reader :providers

        def credentials
          providers.each do |provider|
            begin
              return provider.credentials
            rescue Errors::MissingCredentialsError
            end
          end
          raise Errors::MissingCredentialsError
        end

        def refresh
          providers.each do |provider|
            provider.refresh
          end
        end
      end

      # Static credentials are provided directly to config via
      # `:access_key_id` and `:secret_access_key` (and optionally
      # `:session_token`).
      # @api private
      class StaticProvider

        include Provider

        # @param [Hash] static_credentials
        # @option static_credentials [required,String] :access_key_id
        # @option static_credentials [required,String] :secret_access_key
        # @option static_credentials [String] :session_token
        def initialize static_credentials = {}

          static_credentials.keys.each do |opt_name|
            unless KEYS.include?(opt_name)
              raise ArgumentError, "invalid option #{opt_name.inspect}"
            end
          end

          @static_credentials = {}
          KEYS.each do |opt_name|
            if opt_value = static_credentials[opt_name]
              @static_credentials[opt_name] = opt_value
            end
          end

        end

        # (see Provider#get_credentials)
        def get_credentials
          @static_credentials
        end

      end

      # Fetches credentials from the environment (ENV).  You construct
      # an ENV provider with a prefix.  Given the prefix "AWS"
      # ENV will be checked for the following keys:
      #
      # * AWS_ACCESS_KEY_ID
      # * AWS_SECRET_ACCESS_KEY
      # * AWS_SESSION_TOKEN (optional)
      #
      class ENVProvider

        include Provider

        # @param [String] prefix The prefix to apply to the ENV variable.
        def initialize prefix
          @prefix = prefix
        end

        # @return [String]
        attr_reader :prefix

        # (see Provider#get_credentials)
        def get_credentials
          credentials = {}
          KEYS.each do |key|
            if value = ENV["#{@prefix}_#{key.to_s.upcase}"]
              credentials[key] = value
            end
          end

          # Merge in CredentialFileProvider credentials if
          # a #{@prefix}_CREDENTIAL_FILE environment(ENV) variable is set
          if ENV["#{@prefix}_CREDENTIAL_FILE"]
            credentials.merge! CredentialFileProvider.new(ENV["#{@prefix}_CREDENTIAL_FILE"]).get_credentials
          end

          credentials
        end

      end

      # This credential provider gets credentials from a credential file
      # with the following format:
      #
      #  AWSAccessKeyId=your_key
      #  AWSSecretKey=your_secret
      #
      class CredentialFileProvider

        include Provider

        # Map of AWS credential file key names to accepted provider key names
        CREDENTIAL_FILE_KEY_MAP = { "AWSAccessKeyId" => :access_key_id, "AWSSecretKey" => :secret_access_key }

        attr_reader :credential_file

        # @param [Sring] credential_file The file path of a credential file
        def initialize(credential_file)
          @credential_file = credential_file
        end

        # (see Provider#get_credentials)
        def get_credentials
          credentials = {}
          if File.exist?(credential_file) && File.readable?(credential_file)
            File.open(credential_file, 'r') do |fh|
              fh.each_line do |line|
                key, val = line.strip.split(%r(\s*=\s*))
                if key && val && CREDENTIAL_FILE_KEY_MAP[key] && KEYS.include?(CREDENTIAL_FILE_KEY_MAP[key])
                  credentials[CREDENTIAL_FILE_KEY_MAP[key]] = val
                end
              end
              fh.close
            end
          end
          credentials
        end
      end

      # This credential provider tries to get credentials from the EC2
      # metadata service.
      class EC2Provider

        # Raised when an http response is recieved with a non 200
        # http status code.
        # @api private
        class FailedRequestError < StandardError; end

        # These are the errors we trap when attempting to talk to the
        # instance metadata service.  Any of these imply the service
        # is not present, no responding or some other non-recoverable
        # error.
        # @api private
        FAILURES = [
          FailedRequestError,
          Errno::EHOSTUNREACH,
          Errno::ECONNREFUSED,
          SocketError,
          Timeout::Error,
        ]

        include Provider

        # @param [Hash] options
        # @option options [String] :ip_address ('169.254.169.254')
        # @option options [Integer] :port (80)
        # @option options [Float] :http_open_timeout (1)
        # @option options [Float] :http_read_timeout (1)
        # @option options [Object] :http_debug_output (nil) HTTP wire
        #   traces are sent to this object.  You can specify something
        #   like $stdout.
        def initialize options = {}
          @ip_address = options[:ip_address] || '169.254.169.254'
          @port = options[:port] || 80
          @http_open_timeout = options[:http_open_timeout] || 1
          @http_read_timeout = options[:http_read_timeout] || 1
          @http_debug_output = options[:http_debug_output]
        end

        # @return [String] Defaults to '169.254.169.254'.
        attr_accessor :ip_address

        # @return [Integer] Defaults to port 80.
        attr_accessor :port

        # @return [Float]
        attr_accessor :http_open_timeout

        # @return [Float]
        attr_accessor :http_read_timeout

        # @return [Object,nil]
        attr_accessor :http_debug_output

        # @return [Time,nil]
        attr_accessor :credentials_expiration

        # Refresh provider if existing credentials will be expired in 5 min
        # @return [Hash] Returns a hash of credentials containg at least
        #   the `:access_key_id` and `:secret_access_key`.  The hash may
        #   also contain a `:session_token`.
        #
        # @raise [Errors::MissingCredentialsError] Raised when the
        #   `:access_key_id` or the `:secret_access_key` can not be found.
        #
        def credentials
          if @credentials_expiration && @credentials_expiration.utc <= Time.now.utc - 5 * 60
            refresh
          end
          super
        end

        protected

        # (see Provider#get_credentials)
        def get_credentials
          begin

            http = Net::HTTP.new(ip_address, port)
            http.open_timeout = http_open_timeout
            http.read_timeout = http_read_timeout
            http.set_debug_output(http_debug_output) if
              http_debug_output
            http.start

            # get the first/default instance profile name
            path = '/latest/meta-data/iam/security-credentials/'
            profile_name = get(http, path).lines.map(&:strip).first

            # get the session details from the instance profile name
            path << profile_name
            session = JSON.parse(get(http, path))

            http.finish

            credentials = {}
            credentials[:access_key_id] = session['AccessKeyId']
            credentials[:secret_access_key] = session['SecretAccessKey']
            credentials[:session_token] = session['Token']
            @credentials_expiration = Time.parse(session['Expiration'])

            credentials

          rescue *FAILURES => e
            {}
          end
        end

        # Makes an HTTP Get request with the given path.  If a non-200
        # response is received, then a FailedRequestError is raised.
        # a {FailedRequestError} is raised.
        # @param [Net::HTTPSession] session
        # @param [String] path
        # @raise [FailedRequestError]
        # @return [String] Returns the http response body.
        def get session, path
          response = session.request(Net::HTTP::Get.new(path))
          if response.code.to_i == 200
            response.body
          else
            raise FailedRequestError
          end
        end

      end

      # # Session Credential Provider
      #
      # The session provider consumes long term credentials (`:access_key_id`
      # and `:secret_access_key`) and requests a session from STS.
      # It then returns the short term credential set from STS.
      #
      # Calling {#refresh} causes the session provider to request a new
      # set of credentials.
      #
      # This session provider is currently only used for DynamoDB which
      # requires session credentials.
      class SessionProvider

        include Provider

        @create_mutex = Mutex.new

        class << self

          # @param [Hash] long_term_credentials A hash of credentials with
          #   `:access_key_id` and `:secret_access_key` (but not
          #   `:session_token`).
          def for long_term_credentials
            @create_mutex.synchronize do
              @session_providers ||= {}
              @session_providers[long_term_credentials[:access_key_id]] =
                self.new(long_term_credentials)
            end
          end

          # Creation of SessionProviders *must* happen behind the mutex and
          # we want to reuse session providers for the same access key id.
          protected :new

        end

        # @param [Hash] long_term_credentials A hash of credentials with
        #   `:access_key_id` and `:secret_access_key` (but not
        #   `:session_token`).
        def initialize long_term_credentials
          @static = StaticProvider.new(long_term_credentials)
          if @static.session_token
            raise ArgumentError, 'invalid option :session_token'
          end
          @session_mutex = Mutex.new
        end

        # Aliasing the refresh method so we can call it from the refresh
        # method defined in this class.
        alias_method :orig_refresh, :refresh
        protected :orig_refresh

        # (see Provider#refresh)
        def refresh
          refresh_session
          orig_refresh
        end

        protected

        # (see Provider#get_credentials)
        def get_credentials
          session = cached_session
          if session.nil?
            refresh_session
            session = cached_session
          end
          session.credentials
        end

        # Replaces the cached STS session with a new one.
        # @return [nil]
        def refresh_session
          sts = AWS::STS.new(@static.credentials.merge(:use_ssl => true))
          @session_mutex.synchronize do
            @session = sts.new_session
          end
          nil
        end

        # @return [nil,STS::Session] Returns nil if a session has not
        #   already been started.
        def cached_session
          local_session = nil
          @session_mutex.synchronize do
            local_session = @session
          end
          local_session
        end

      end

      # Returns a set of fake credentials, should only be used for testing.
      class FakeProvider < StaticProvider

        # @param [Hash] options
        # @option options [Boolean] :with_session_token (false) When `true` a
        #   fake session token will also be provided.
        def initialize options = {}
          options[:access_key_id] ||= fake_access_key_id
          options[:secret_access_key] ||= fake_secret_access_key
          if options.delete(:with_session_token)
            options[:session_token] ||= fake_session_token
          end
          super
        end

        protected

        def fake_access_key_id
          "AKIA" + random_chars(16).upcase
        end

        def fake_secret_access_key
          random_chars(40)
        end

        def fake_session_token
          random_chars(260)
        end

        def random_chars count
          chars = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a
          (1..count).map{ chars[rand(chars.size)] }.join
        end

      end

    end
  end
end
