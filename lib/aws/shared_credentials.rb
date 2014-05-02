module Aws
  class SharedCredentials < Credentials

    # Map of AWS credential file key names to accepted provider key names
    CREDENTIAL_FILE_KEY_MAP = {
      "aws_access_key_id" => :access_key_id,
      "aws_secret_access_key" => :secret_access_key,
      "aws_session_token" => :session_token }

    # Constructs a new SharedCredentials object. This will load AWS access
    # credentials from an ini file, which supports profiles. The default
    # profile is 'default', but you can also specify a profile with the
    # 'AWS_PROFILE' environment variable or as a parameter to this function.
    #
    # @param filepath [String] Path to the credentials file to use.
    # @param profile [String] Optional parameter to manually specify the
    #  credential profile to use.
    def initialize(filepath, profile = nil)
      @filepath = filepath
      @profile = profile || set_profile
      load!
    end

    # Reload your credentials.
    #
    # @param profile [String] Optional parameter to manually specify the
    #  credential profile to use.
    def load!(profile = nil)
      @profile = profile if profile
      credentials = {}
      if File.exist?(@filepath) && File.readable?(@filepath)
        File.open(@filepath, 'r') do |fh|
          config_string = fh.read
          ini_map = Util.ini_parse(config_string)
          profile_map = ini_map[@profile]
          if profile_map
            profile_map.each_key do |k|
              if cred_key = CREDENTIAL_FILE_KEY_MAP[k]
                credentials[cred_key] = profile_map[k]
              end
            end
          else
            msg = "No such credential profile: #{@profile}"
            raise Errors::NoSuchProfileError.new(msg)
          end
        end
        @access_key_id = credentials[:access_key_id]
        @secret_access_key = credentials[:secret_access_key]
        @session_token = credentials[:session_token]
      end
      
    end

    private
    def set_profile
      if profile = ENV['AWS_PROFILE']
        profile
      else
        'default'
      end
    end
  end
end
