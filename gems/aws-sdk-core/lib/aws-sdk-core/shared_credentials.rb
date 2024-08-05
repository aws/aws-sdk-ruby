# frozen_string_literal: true

require_relative 'ini_parser'
require_relative 'refreshing_credentials'

module Aws
  class SharedCredentials
    include CredentialProvider
    include RefreshingCredentials

    # @api private
    KEY_MAP = {
      'aws_access_key_id' => 'access_key_id',
      'aws_secret_access_key' => 'secret_access_key',
      'aws_session_token' => 'session_token'
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
    # @option [String] :path Path to the shared file. Defaults
    #   to "#{Dir.home}/.aws/credentials".
    #
    # @option [String] :profile_name Defaults to 'default' or
    #   `ENV['AWS_PROFILE']`.
    #
    # @option [Integer] :refresh_interval The duration (in seconds) before the
    #   credentials are considered near expiration and should be refreshed.
    #   Defaults to 10 minutes (600 seconds).
    #
    # @option [Boolean] :enable_refresh If true, the credentials will be automatically
    #   refreshed when they are near expiration. Defaults to false.
    #
    def initialize(options = {})
      @enable_refresh = options[:enable_refresh] || false # Refresh disabled by default
      @refresh_interval = options[:refresh_interval] || 10 * 60 # Default refresh interval: 10 minutes
      @path = options[:path] || Aws.shared_config.credentials_path
      @profile_name = options[:profile_name] || ENV['AWS_PROFILE'] || Aws.shared_config.profile_name

      super(options) # This will call RefreshingCredentials#initialize

      refresh # Initially load credentials
    end

    # @return [String] The path to the credentials file
    attr_reader :path

    # @return [String] The name of the profile being used
    attr_reader :profile_name

    # @return [Credentials] The loaded credentials
    attr_reader :credentials

    # @api private
    def inspect
      parts = [
        self.class.name,
        "profile_name=#{profile_name.inspect}",
        "path=#{path.inspect}"
      ]
      "#<#{parts.join(' ')}>"
    end

    # Refreshes credentials from the shared credentials file.
    # Refreshes credentials from the shared credentials file.
    def refresh
      shared_config = Aws.shared_config

      if @path && @path == shared_config.credentials_path
        # Use credentials from shared config if paths match
        @credentials = shared_config.credentials(profile: @profile_name)
      else
        # Load credentials from specified path and profile
        config = SharedConfig.new(
          credentials_path: @path,
          profile_name: @profile_name
        )
        @credentials = config.credentials(profile: @profile_name)
      end

      # Set expiration time if credentials are present
      @expiration = @credentials ? (Time.now + @refresh_interval) : nil
    end

    # For testing purposes to check the refresh logic
    # This method triggers the internal refresh logic as if the credentials
    # were near expiration.
    def force_refresh_check
      refresh_if_near_expiration! if @enable_refresh
    end

    private

    def sync_expiration_length
      @refresh_interval || self.class::SYNC_EXPIRATION_LENGTH
    end

    def async_expiration_length
      @refresh_interval || self.class::ASYNC_EXPIRATION_LENGTH
    end
  end
end
