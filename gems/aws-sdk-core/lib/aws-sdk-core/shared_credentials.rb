# frozen_string_literal: true

require_relative 'ini_parser'

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
    def initialize(options = {})
      shared_config = Aws.shared_config
      @path = options[:path]
      @path ||= shared_config.credentials_path
      @profile_name = options[:profile_name]
      @profile_name ||= ENV['AWS_PROFILE']
      @profile_name ||= shared_config.profile_name

      @refresh_cycle = options[:refresh_cycle]
      # the default refresh cycle is one hour
      @refresh_cycle ||= 60 * 60

      # set last_refresh to 0 to trigger the refresh for the first time 
      # call credentials method
      @last_refresh = 0

      # according to different dilivery service of credentials, the 
      # expiration is different, so it should not value this variable here
      @expiration = 0
        
      super
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
        "path=#{path.inspect}",
        "last_refresh=#{last_refresh}",
      ]
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

    def load_config()
      if @path && @path == Aws.shared_config.credentials_path
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
      @credentials = config.credentials(profile: @profile_name)

      @last_refresh = Time.now
      # here, according to different dilivery service of credentials, the 
      # expiration is different, so it should not value this variable here
      @expiration = 0
    end

    def near_expiration?
      if Time.now >= @last_refresh + @refresh_cycle  
        true
      else
        false
      end
    end

  end
end
