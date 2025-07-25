# frozen_string_literal: true

module Aws
  module Core
    class ConfigFile
      def initialize(config_profiles:, credentials_profiles:, sso_sessions:)
        merge_files!(config_profiles, credentials_profiles)
        @profiles = config_profiles.transform_values(&:to_h)
        @sso_sessions = sso_sessions.transform_values(&:to_h)
      end

      attr_reader :profiles, :sso_sessions

      private

      def merge_files!(config_file, credentials_file)
        credentials_file.each do |credentials_profile_name, credentials_profile|
          if config_file.key?(credentials_profile_name)
            Kernel.warn(
              "Warning: The profile '#{credentials_profile_name}' was found " \
                'in both the configuration and credentials configuration ' \
                'files. The properties will be merged, using the property in ' \
                'the credentials file if there are duplicates.'
            )

            config_file[credentials_profile_name]
              .update_properties(credentials_profile.properties)
          else
            config_file[credentials_profile_name] = credentials_profile
          end
        end
      end
    end
  end
end