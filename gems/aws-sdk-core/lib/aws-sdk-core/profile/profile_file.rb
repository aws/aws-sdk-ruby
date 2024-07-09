# frozen_string_literal: true

module Aws
  # @api private
  class ProfileFile
    def initialize(config_profiles, credentials_profiles)
      @profiles = merge_files(config_profiles, credentials_profiles)
                  .transform_values { |profile| profile.properties.to_h }
    end

    attr_reader :profiles

    # def credentials(profile_name)
    #   return nil unless @profiles.key?(profile_name)
    #
    #   properties = @profiles[profile_name].properties
    #
    #   if properties.key?('role_arn')
    #     return AssumeRoleCredentials.new(profile_name, @profiles)
    #   elsif properties.key?('aws_access_key_id')
    #     aws_access_key_id = properties['aws_access_key_id']
    #     aws_secret_access_key = properties['aws_secret_access_key']
    #     aws_session_token = properties['aws_session_token']
    #
    #     raise "'aws_secret_access_key' was not specified in profile: #{profile_name}" unless aws_secret_access_key
    #
    #     if aws_session_token
    #       return SessionCredentials.new(aws_access_key_id.value, aws_secret_access_key.value, aws_session_token.value)
    #     else
    #       return BasicCredentials.new(aws_access_key_id.value, aws_secret_access_key.value)
    #     end
    #   else
    #     return nil
    #   end
    # end
    #
    # def region(profile_name)
    #   return nil unless @profiles.key?(profile_name)
    #
    #   region = @profiles[profile_name].properties['region']
    #
    #   return nil unless region
    #
    #   region.value
    # end

    private

    def merge_files(config_file, credentials_file)
      aggregate_file = config_file.dup

      credentials_file.each do |credentials_profile_name, credentials_profile|
        if !aggregate_file.key?(credentials_profile_name)
          aggregate_file[credentials_profile_name] = credentials_profile
        else
          puts "Warning: The profile '#{credentials_profile_name}' was found in both the configuration and " \
               "credentials configuration files. The properties will be merged, using the property in the credentials " \
               "file if there are duplicates."

          aggregate_file[credentials_profile_name].update_properties(credentials_profile.properties)
        end
      end

      aggregate_file
    end
  end
end