# frozen_string_literal: true

require_relative 'ini_parser'
require 'aws-sdk-core/refreshing_credentials'

module Aws
  class SharedCredentials
    include CredentialProvider
    include RefreshingCredentials

    # @api private
    KEY_MAP = {
      'aws_access_key_id' => 'access_key_id',
      'aws_secret_access_key' => 'secret_access_key',
      'aws_session_token' => 'session_token',
    }

    # Constructs a new SharedCredentials object. This will load static
    # (access_key_id, secret_access_key and session_token) AWS access
    # credentials from an ini file, which supports profiles. The default
    # profile name is 'default'. You can specify the profile name with the
    # `ENV['AWS_PROFILE']` or with the `:profile_name` option.
    #
    # To use credentials from the default credential resolution chain
    # create a client without the credential option specified.
    # You may access the resolved credentials through
    # `client.config.credentials`.
    #
    # @option [String] :path Path to the shared file.  Defaults
    #   to "#{Dir.home}/.aws/credentials".
    #
    # @option [String] :profile_name Defaults to 'default' or
    #   `ENV['AWS_PROFILE']`.
    #
    # @option [Integer] :refresh_cycle Refresh interval in seconds. 
    #   If not specified, auto-refresh will be disabled.
    def initialize(options = {})
      super # Initializes RefreshingCredentials `@mutex`, `@before_refresh` and calls `refresh`

      shared_config = Aws.shared_config
      @path = options[:path] || shared_config.credentials_path
      @profile_name = options[:profile_name] || ENV['AWS_PROFILE'] || shared_config.profile_name

      @refresh_cycle = options[:refresh_cycle]

      # Set last_refresh to 0 to trigger the refresh for the first time.
      if @refresh_cycle
        @last_refresh = Time.now.to_i - @refresh_cycle
        refresh_if_near_expiration!
      end
    end

    # @return [String]
    attr_reader :path

    # @return [String]
    attr_reader :profile_name

    # just use for unit tests
    attr_writer :path
    attr_writer :last_refresh

    # @api private
    def inspect
      parts = [
        self.class.name,
        "profile_name=#{profile_name.inspect}",
        "path=#{path.inspect}"
      ]
      parts << "last_refresh=#{last_refresh}" if @refresh_cycle
      "#<#{parts.join(' ')}>"
    end

    # @deprecated This method is no longer used.
    # @return [Boolean] Returns `true` if a credential file
    #   exists and has appropriate read permissions at {#path}.
    # @note This method does not indicate if the file found at {#path}
    #   will be parsable, only if it can be read.
    def loadable?
      !path.nil? && File.exist?(path) && File.readable?(path)
    end

    private

    def load_config
      if @path == Aws.shared_config.credentials_path
        Aws.shared_config
      else
        SharedConfig.new(
          credentials_path: @path,
          profile_name: @profile_name
        )
      end
    end

    def refresh
      config = load_config
      credentials_data = config.credentials(profile: @profile_name)
      @access_key_id = credentials_data[:access_key_id]
      @secret_access_key = credentials_data[:secret_access_key]
      @session_token = credentials_data.fetch(:session_token, nil)

      # Set the expiration only if `@refresh_cycle` is set
      if @refresh_cycle
        @last_refresh = Time.now.to_i
        @expiration = @last_refresh + @refresh_cycle
      else
        @expiration = nil
      end

      @credentials = Aws::Credentials.new(@access_key_id, @secret_access_key, @session_token)
    end

    def near_expiration?(expiration_length = 0)
      return false unless @refresh_cycle
      super(expiration_length)
    end
  end
end