module Aws
  class SharedCredentials

    include CredentialProvider

    # @api private
    KEY_MAP = {
      'aws_access_key_id' => 'access_key_id',
      'aws_secret_access_key' => 'secret_access_key',
      'aws_session_token' => 'session_token',
    }

    # Constructs a new SharedCredentials object. This will load AWS access
    # credentials from an ini file, which supports profiles. The default
    # profile name is 'default'. You can specify the profile name with the
    # `ENV['AWS_PROFILE']` or with the `:profile_name` option.
    #
    # @option [String] :path Path to the shared file.  Defaults
    #   to "#{Dir.home}/.aws/credentials".
    #
    # @option [String] :profile_name Defaults to 'default' or
    #   `ENV['AWS_PROFILE']`.
    #
    def initialize(options = {})
      @path = options[:path] || default_path
      @profile_name = options[:profile_name]
      @profile_name ||= ENV['AWS_PROFILE']
      @profile_name ||= 'default'
      load_from_path if loadable?
    end

    # @return [String]
    attr_reader :path

    # @return [String]
    attr_reader :profile_name

    # @return [Credentials]
    attr_reader :credentials

    # @api private
    def inspect
      parts = [
        self.class.name,
        "profile_name=#{profile_name.inspect}",
        "path=#{path.inspect}",
      ]
      "#<#{parts.join(' ')}>"
    end

    # @return [Boolean] Returns `true` if a credential file
    #   exists and has appropriate read permissions at {#path}.
    # @note This method does not indicate if the file found at {#path}
    #   will be parsable, only if it can be read.
    def loadable?
      !path.nil? && File.exists?(path) && File.readable?(path)
    end

    private

    def default_path
      File.join(Dir.home, '.aws', 'credentials')
    rescue ArgumentError
      # Dir.home raises ArgumentError when ENV['home'] is not set
      nil
    end

    def load_from_path
      profile = load_profile
      @credentials = Credentials.new(
        profile['aws_access_key_id'],
        profile['aws_secret_access_key'],
        profile['aws_session_token']
      )
    end

    def load_profile
      if profile = profiles[profile_name]
        profile
      else
        msg = "Profile `#{profile_name}' not found in #{path}"
        raise Errors::NoSuchProfileError, msg
      end
    end

    def profiles
      ini_parse(File.read(path))
    end

    def ini_parse(file)
      current_section = {}
      map = {}
      file.lines.each do |line|
        line = line.split(/^|\s;/).first # remove comments
        section = line.match(/^\s*\[([^\[\]]+)\]\s*$/) unless line.nil?
        if section
          current_section = section[1]
        elsif current_section
          item = line.match(/^\s*(.+?)\s*=\s*(.+?)\s*$/) unless line.nil?
          if item
            map[current_section] = map[current_section] || {}
            map[current_section][item[1]] = item[2]
          end
        end
      end
      map
    end

  end
end
