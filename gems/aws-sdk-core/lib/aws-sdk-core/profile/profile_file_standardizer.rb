# frozen_string_literal: true

module Aws
  # @api private
  class ProfileFileStandardizer
    def initialize(raw_file, file_type)
      @raw_file = raw_file
      @file_type = file_type
    end

    def standardize
      standardize_profile_file
      @standardized_file
    end

    private

    def standardize_profile_file
      @standardized_file = {}

      @raw_file.each do |raw_profile_name, profile_properties|
        raw_profile_name_has_profile_prefix =
          raw_profile_name.start_with?('profile ') ||
          raw_profile_name.start_with?("profile\t")

        standardized_profile_name =
          if @file_type == :config
            if raw_profile_name_has_profile_prefix
              raw_profile_name['profile'.length..-1].strip
            elsif raw_profile_name == 'default'
              'default'
            else
              puts "Ignoring profile '#{raw_profile_name}' because it did not " \
                   "start with 'profile ' and it was not 'default'."
              next
            end
          else
            raw_profile_name
          end

        unless ProfileFileUtils.valid_identifier?(standardized_profile_name)
          puts "Ignoring profile '#{standardized_profile_name}' because it was " \
               'not alphanumeric with dashes or underscores.'
          next
        end

        is_default_profile = standardized_profile_name == 'default'
        seen_profile_before = @standardized_file.key?(standardized_profile_name)

        if @file_type == :config && is_default_profile && seen_profile_before
          if !raw_profile_name_has_profile_prefix && @default_profile_in_standardized_file_has_profile_prefix
            puts "Ignoring profile '[default]', because '[profile default]' was found in the same file."
            next
          elsif raw_profile_name_has_profile_prefix && !@default_profile_in_standardized_file_has_profile_prefix
            puts "Dropping earlier-seen '[default]', because '[profile default]' was found in the same file."
            @standardized_file.delete(standardized_profile_name)
          end
        end

        unless @standardized_file.key?(standardized_profile_name)
          if is_default_profile && raw_profile_name_has_profile_prefix
            @default_profile_in_standardized_file_has_profile_prefix = true
          end

          @standardized_file[standardized_profile_name] = Profile.new(standardized_profile_name)
        end

        standardized_properties = standardize_properties(standardized_profile_name, profile_properties)

        @standardized_file[standardized_profile_name].update_properties(standardized_properties)
      end
    end

    def standardize_properties(profile_name, raw_properties)
      standardized_properties = {}

      raw_properties.each do |property_name, property_value|
        unless ProfileFileUtils.valid_identifier?(property_name)
          puts "Ignoring property '#{property_name}' in profile '#{profile_name}' " \
               'because its name was not alphanumeric with dashes or underscores.'
          next
        end

        standardized_properties[property_name] = Aws::Profile::Property.new(property_name, property_value).to_h
      end

      standardized_properties
    end
  end
end