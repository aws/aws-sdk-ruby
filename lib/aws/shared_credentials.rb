module Aws
  class SharedCredentials < Credentials

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
    # @option [String] :path Path to the shared file.  Defaults
    #   to "#{Dir.home}/.aws/credentials".
    # @option [String] :profile_name Defaults to 'default' or `ENV['AWS_PROFILE']`.
    def initialize(options = {})
      @path = options[:path] || File.join(Dir.home, '.aws', 'credentials')
      @profile_name = options[:profile_name]
      @profile_name ||= ENV['AWS_PROFILE']
      @profile_name ||= 'default'
      load_from_path if File.exist?(path) && File.readable?(path)
    end

    # @return [String]
    attr_reader :path

    # @return [String]
    attr_reader :profile_name

    private

    def load_from_path
      profile = load_profile
      KEY_MAP.each do |source, target|
        if profile.key?(source)
          instance_variable_set("@#{target}", profile[source])
        end
      end
    end

    def load_profile
      if profile = ini_parse(File.read(path))[profile_name]
        profile
      else
        msg = "Profile `#{profile_name}' not found in #{path}"
        raise Errors::NoSuchProfileError, msg
      end
    end

    def ini_parse(string)
      current_section = {}
      map = {}
      string.split(/\r?\n/).each do |line|
        line = line.split(/^|\s;/).first # remove comments
        section = line.match(/^\s*\[([^\[\]]+)\]\s*$/) unless line.nil?
        if section
          current_section = section[1]
        elsif current_section
          item = line.match(/^\s*(.+?)\s*=\s*(.+)\s*$/) unless line.nil?
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
