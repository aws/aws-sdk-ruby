# frozen_string_literal: true

module Aws
  module Core
    class SharedConfig
      class << self
        def load(credentials_path: nil, config_path: nil)
          config_file_path = nil unless loadable?(config_path)
          credentials_file_path = nil unless loadable?(credentials_path)

          parsed_config_file = ConfigFileParser.new(
            config_file(config_file_path)
          ).parse
          parsed_credentials_file = ConfigFileParser.new(
            credentials_file(credentials_file_path)
          ).parse

          config_profiles, sso_sessions = ConfigFileStandardizer.new(
            parsed_config_file,
            :config
          ).standardize
          credentials_profiles = ConfigFileStandardizer.new(
            parsed_credentials_file,
            :credentials
          ).standardize

          ConfigFile.new(
            config_profiles: config_profiles,
            credentials_profiles: credentials_profiles,
            sso_sessions: sso_sessions
          )
        end

        def sso_session(profile, session_name)
          sso_session = AWS::SDK::Core.shared_config.sso_sessions[session_name]

          unless sso_session
            raise ArgumentError,
                  "sso-session #{session_name} referenced by #{profile} must " \
                    'be defined in the config file.'
          end

          unless sso_session['sso_region']
            raise ArgumentError,
                  "sso-session #{session_name} missing required " \
                    'parameter: sso_region'
          end

          sso_session
        end

        private

        def loadable?(path)
          !path.nil? && File.exist?(path) && File.readable?(path)
        end

        def config_file(path)
          load_file(
            path,
            'AWS_CONFIG_FILE',
            File.join(Dir.home, '.aws', 'config')
          )
        end

        def credentials_file(path)
          load_file(
            path,
            'AWS_SHARED_CREDENTIALS_FILE',
            File.join(Dir.home, '.aws', 'credentials')
          )
        end

        def load_file(path, env_location, default_location)
          file_location = path || ENV[env_location] || default_location

          # Resolve ~ without using File.expand_path to avoid prepending
          # the current working directory.
          if file_location =~ %r{^~(/|#{Regexp.quote(File::SEPARATOR)}).*$}
            file_location = user_home_directory + file_location[1..]
          end

          configuration_file = Pathname.new(file_location)
          return '' unless configuration_file.readable?

          configuration_file.read
        end
      end
    end
  end
end