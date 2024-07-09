# frozen_string_literal: true

module Aws
  # @api private
  class ProfileFileFactory
    def create
      raw_config_file = ProfileFileParser.new(configuration_file_contents).parse
      raw_credentials_file = ProfileFileParser.new(credentials_file_contents).parse

      standardized_config_file = ProfileFileStandardizer.new(raw_config_file, :config).standardize
      standardized_credentials_file = ProfileFileStandardizer.new(raw_credentials_file, :credentials).standardize

      ProfileFile.new(standardized_config_file, standardized_credentials_file)
    end

    private

    def configuration_file_contents
      load_file('AWS_CONFIG_FILE', File.join(user_home_directory, '.aws', 'config'))
    end

    def credentials_file_contents
      load_file('AWS_SHARED_CREDENTIALS_FILE', File.join(user_home_directory, '.aws', 'credentials'))
    end

    def load_file(file_environment_variable, default_file_location)
      file_location = ENV[file_environment_variable]

      if file_location.nil?
        file_location = File.expand_path(default_file_location)
      end

      if file_location =~ /^~(\/|#{Regexp.quote(File::SEPARATOR)}).*$/
        file_location = user_home_directory + file_location[1..-1]
      end

      configuration_file = Pathname.new(file_location)

      return '' unless configuration_file.readable?

      configuration_file.read
    end

    def user_home_directory
      if ENV['HOME']
        ENV['HOME']
      elsif ENV['USERPROFILE']
        ENV['USERPROFILE']
      elsif ENV['HOMEDRIVE'] && ENV['HOMEPATH']
        ENV['HOMEDRIVE'] + ENV['HOMEPATH']
      else
        Dir.home
      end
    end
  end
end