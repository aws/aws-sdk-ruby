module Aws
  class SharedConfig

    # @return [String]
    attr_reader :credentials_path

    # @return [String]
    attr_reader :config_path

    # @return [String]
    attr_reader :profile_name

    # Constructs a new SharedConfig provider object. This will load the shared
    # credentials file, and optionally the shared configuration file, as ini
    # files which support profiles.
    #
    # By default, only the shared credential file (the default path for which is
    # `~/.aws/credentials`) is loaded. However, if you set the
    # `ENV['AWS_SDK_LOAD_CONFIG']` environment variable, the shared config file
    # will also be loaded (the default path for which is `~/.aws/config`).
    #
    # The default profile name is 'default'. You can specify the profile name
    # with the `ENV['AWS_PROFILE']` environment variable or with the
    # `:profile_name` option.
    #
    # @param [Hash] options
    # @option options [String] :credentials_path Path to the shared credentials
    #   file. Defaults to "#{Dir.home}/.aws/credentials".
    # @option options [String] :config_path Path to the shared config file.
    #   Defaults to "#{Dir.home}/.aws/config".
    # @option options [String] :profile_name The credential/config profile name
    #   to use. If not specified, will check `ENV['AWS_PROFILE']` before using
    #   the fixed default value of 'default'.
    def initialize(options = {})
      @profile_name = determine_profile(options)
      @credentials_path = options[:credentials_path] ||
        determine_credentials_path
      load_credentials_file if loadable?(@credentials_path)
      if ENV["AWS_SDK_LOAD_CONFIG"]
        @config_path = options[:config_path] || determine_config_path
        load_config_file if loadable?(@config_path)
      end
    end

    # @api private
    def fresh(options = {})
      @profile_name = nil
      @credentials_path = nil
      @config_path = nil
      @parsed_credentials = nil
      @parsed_config = nil
      @profile_name = determine_profile(options)
      @credentials_path = options[:credentials_path] ||
        determine_credentials_path
      load_credentials_file if loadable?(@credentials_path)
      if ENV["AWS_SDK_LOAD_CONFIG"]
        @config_path = options[:config_path] || determine_config_path
        load_config_file if loadable?(@config_path)
      end
    end

    # @return [Boolean] Returns `true` if a credential file
    #   exists and has appropriate read permissions at {#path}.
    # @note This method does not indicate if the file found at {#path}
    #   will be parsable, only if it can be read.
    def loadable?(path)
      !path.nil? && File.exist?(path) && File.readable?(path)
    end

    def credentials(opts = {})
      p = opts[:profile] || @profile_name
      validate_profile_exists(p) if @parsed_credentials || @parsed_config
      if credentials = credentials_from_shared(p, opts)
        credentials
      elsif credentials = credentials_from_config(p, opts)
        credentials
      else
        nil
      end
    end

    # Currently assumes config is present.
    def assume_role_credentials_from_config(opts = {})
      p = opts.delete(:profile) || @profile_name
      if prof_cfg = @parsed_config[p]
        opts[:source_profile] ||= prof_cfg["source_profile"]
        if opts[:source_profile]
          opts[:role_session_name] ||= prof_cfg["role_session_name"]
          opts[:role_session_name] ||= "default_session"
          opts[:role_arn] ||= prof_cfg["role_arn"]
          opts[:external_id] ||= prof_cfg["external_id"]
          opts[:serial_number] ||= prof_cfg["mfa_serial"]
          opts[:profile] = opts.delete(:source_profile)
          AssumeRoleCredentials.new(opts)
        else
          nil
        end
      else
        nil
      end
    end

    def region(opts = {})
      p = opts[:profile] || @profile_name
      if @parsed_config
        @parsed_config.fetch(p, {})["region"]
      else
        nil
      end
    end

    private
    def credentials_from_shared(profile, opts)
      if @parsed_credentials && prof_config = @parsed_credentials[profile]
        credentials_from_profile(prof_config)
      else
        nil
      end
    end

    def credentials_from_config(profile, opts)
      if @parsed_config && prof_config = @parsed_config[profile]
        credentials_from_profile(prof_config)
      else
        nil
      end
    end

    def credentials_from_profile(prof_config)
      Credentials.new(
        prof_config['aws_access_key_id'],
        prof_config['aws_secret_access_key'],
        prof_config['aws_session_token']
      )
    end

    def load_credentials_file
      @parsed_credentials = IniParser.ini_parse_ignore_ws(
        File.read(@credentials_path)
      )
    end

    def load_config_file
      @parsed_config = IniParser.ini_parse(File.read(@config_path))
    end

    def determine_credentials_path
      default = default_shared_config_path('credentials')
    end

    def determine_config_path
      default = default_shared_config_path('config')
    end

    def default_shared_config_path(file)
      File.join(Dir.home, '.aws', file)
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      nil
    end

    def validate_profile_exists(profile)
      unless (@parsed_credentials && @parsed_credentials[profile]) ||
          (@parsed_config && @parsed_config[profile])
        msg = "Profile `#{profile}' not found in #{@credentials_path}"
        msg << " or #{@config_path}" if @config_path
        raise Errors::NoSuchProfileError.new(msg)
      end
    end

    def determine_profile(options)
      ret = options[:profile_name]
      ret ||= ENV["AWS_PROFILE"]
      ret ||= "default"
      ret
    end

  end
end
