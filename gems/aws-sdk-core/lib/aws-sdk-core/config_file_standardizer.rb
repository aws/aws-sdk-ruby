# frozen_string_literal: true

module Aws
  module Core
    class ConfigFileStandardizer
      def initialize(raw_file, file_type)
        @raw_file = raw_file
        @file_type = file_type
      end

      def standardize
        standardize_config_file
        if @file_type == :config
          [@standardized_profiles, @standardized_sso_sessions]
        else
          @standardized_profiles
        end
      end

      private

      def standardize_config_file
        @standardized_profiles = {}
        @standardized_sso_sessions = {}

        @raw_file.each do |raw_section_name, section_properties|
          raw_section_name_has_profile_prefix =
            raw_section_name.start_with?('profile ') ||
              raw_section_name.start_with?("profile\t")
          raw_section_name_has_sso_session_prefix =
            raw_section_name.start_with?('sso-session ') ||
              raw_section_name.start_with?("sso-session\t")

          if @file_type == :config
            if raw_section_name_has_profile_prefix
              standardized_profile_name =
                raw_section_name[('profile'.length)..].strip
            elsif raw_section_name_has_sso_session_prefix
              standardized_sso_session_name =
                raw_section_name[('sso-session'.length)..].strip
            elsif raw_section_name == 'default'
              standardized_profile_name = 'default'
            else
              Kernel.warn(
                "Ignoring profile '#{raw_section_name}' because it did not " \
                  "start with 'profile ' and it was not 'default'."
              )
              next
            end
          else
            if raw_section_name_has_sso_session_prefix
              Kernel.warn(
                "Ignoring sso-session '#{raw_section_name}' because ' \
              'it is only valid in the config file'"
              )
              next
            end
            standardized_profile_name = raw_section_name
          end

          if standardized_profile_name &&
            !ConfigFileUtils.valid_identifier?(standardized_profile_name)
            Kernel.warn(
              "Ignoring profile '#{standardized_profile_name}' because it " \
                'was not alphanumeric with dashes or underscores.'
            )
            next
          end

          if standardized_sso_session_name &&
            !ConfigFileUtils.valid_identifier?(
              standardized_sso_session_name
            )
            Kernel.warn(
              "Ignoring sso-session '#{standardized_sso_session_name}' because " \
                'it was not alphanumeric with dashes or underscores.'
            )
            next
          end

          is_default_profile = standardized_profile_name == 'default'
          seen_profile_before =
            @standardized_profiles.key?(standardized_profile_name)

          if @file_type == :config && is_default_profile && seen_profile_before
            if !raw_section_name_has_profile_prefix &&
              @default_profile_has_profile_prefix
              Kernel.warn(
                "Ignoring profile '[default]', because '[profile default]' " \
                  'was found in the same file.'
              )
              next
            elsif raw_section_name_has_profile_prefix &&
              !@default_profile_has_profile_prefix
              Kernel.warn(
                "Dropping earlier-seen '[default]', because " \
                  "'[profile default]' was found in the same file."
              )
              @standardized_profiles.delete(standardized_profile_name)
            end
          end

          if standardized_profile_name
            unless @standardized_profiles.key?(standardized_profile_name)
              if is_default_profile && raw_section_name_has_profile_prefix
                @default_profile_has_profile_prefix = true
              end

              @standardized_profiles[standardized_profile_name] =
                ConfigFileSection.new(standardized_profile_name)
            end

            standardized_properties = standardize_properties(
              standardized_profile_name, section_properties
            )

            @standardized_profiles[standardized_profile_name]
              .update_properties(standardized_properties)
          elsif standardized_sso_session_name
            unless @standardized_sso_sessions.key?(standardized_sso_session_name)
              @standardized_sso_sessions[standardized_sso_session_name] =
                ConfigFileSection.new(standardized_sso_session_name)
            end

            standardized_properties = standardize_properties(
              standardized_sso_session_name, section_properties
            )

            @standardized_sso_sessions[standardized_sso_session_name]
              .update_properties(standardized_properties)
          end
        end
      end

      def standardize_properties(section_name, raw_properties)
        standardized_properties = {}

        raw_properties.each do |property_name, property_value|
          unless ConfigFileUtils.valid_identifier?(property_name)
            Kernel.warn(
              "Ignoring property '#{property_name}' in section " \
                "'#{section_name}' because its name was not alphanumeric with " \
                'dashes or underscores.'
            )
            next
          end

          standardized_properties[property_name] =
            ConfigFileSection::ConfigFileProperty.new(
              property_name,
              property_value
            )
        end

        standardized_properties
      end
    end
  end
end