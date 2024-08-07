# frozen_string_literal: true

require_relative 'ini_parser'
require_relative 'refreshing_credentials'

module Aws
  class SharedCredentials
    include CredentialProvider
    include RefreshingCredentials

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
    def initialize(options = {})
      shared_config = Aws.shared_config
      @enable_refresh = options[:enable_refresh] || false # Refresh disabled by default
      @refresh_interval = options[:refresh_interval] || 10 * 60 # Default refresh interval: 10 minutes
      @path = options[:path] || shared_config.credentials_path
      @profile_name = options[:profile_name] || ENV['AWS_PROFILE'] || shared_config.profile_name
      @next_refresh_time = nil # Internal variable to track refresh timing

      # Initialize the mutex for thread-safety
      super(options) # Call super to initialize RefreshingCredentials

      @credentials = load_credentials

      refresh if @enable_refresh
    end

    # @return [String] The path to the credentials file
    attr_reader :path

    # @return [String] The name of the profile being used
    attr_reader :profile_name

    # Override of near_expiration to decide when to refresh
    def near_expiration?(expiration_length = 0)
      return false unless @enable_refresh

      # Consider "near expiration" if the internal next_refresh_time has passed
      @next_refresh_time.nil? || @next_refresh_time <= Time.now + expiration_length
    end

    # @api private
    def inspect
      parts = [
        self.class.name,
        "profile_name=#{profile_name.inspect}",
        "path=#{path.inspect}"
      ]
      "#<#{parts.join(' ')}>"
    end

    def refresh
      @credentials = load_credentials

      # Set next refresh time if credentials are present
      # This is for internal tracking, and won't affect the actual credentials' expiration
      @next_refresh_time = @credentials ? (Time.now + @refresh_interval) : nil
    end

    private

    def load_credentials
      if @path && @path == Aws.shared_config.credentials_path
        Aws.shared_config.credentials(profile: @profile_name)
      else
        config = SharedConfig.new(
          credentials_path: @path,
          profile_name: @profile_name
        )
        config.credentials(profile: @profile_name)
      end
    end
  end
end
