# frozen_string_literal: true

module Aws
  # @api private
  class ProfileFileParser
    def initialize(profile_file_contents)
      @profile_file_contents = profile_file_contents
      @current_line_number = 0
    end

    def parse
      initialize_profiles
      @profiles
    end

    private

    def initialize_profiles
      @profiles = {}

      @profile_file_contents.split(/[\r\n]+/).each do |line|
        @current_line_number += 1
        next if ProfileFileUtils.empty_line?(line) ||
                ProfileFileUtils.comment_line?(line)

        if ProfileFileUtils.profile_line?(line)
          read_profile_line(line)
        elsif ProfileFileUtils.property_continuation_line?(line)
          read_property_continuation_line(line)
        else
          read_property_definition_line(line)
        end
      end
    end

    def read_profile_line(line)
      line_without_comments = remove_trailing_comments(line, %w[# ;])
      line_without_whitespace = ProfileFileUtils.trim_whitespace(line_without_comments)

      unless line_without_whitespace[-1] == ']'
        raise ArgumentError,
              "Profile definition must end with ']' on line #{@current_line_number}"
      end

      line_without_brackets = line_without_whitespace[1..-2]

      @current_profile = ProfileFileUtils.trim_whitespace(line_without_brackets)
      @current_property = nil

      @profiles[@current_profile] ||= {}
    end

    def read_property_definition_line(line)
      unless @current_profile
        raise ArgumentError,
              "Expected a profile definition, found property on line #{@current_line_number}"
      end

      line_without_comments = remove_trailing_comments(line, [' #', ' ;', "\t#", "\t;"])
      line_without_whitespace = ProfileFileUtils.trim_whitespace(line_without_comments)

      key, value = ProfileFileUtils.parse_property_definition_line(
        line_without_whitespace, "on line #{@current_line_number}"
      )
      @current_property = key
      @profiles[@current_profile][key] = value
    end

    def read_property_continuation_line(line)
      unless @current_profile
        raise ArgumentError,
              "Expected a profile definition, found continuation on line #{@current_line_number}"
      end
      unless @current_property
        raise ArgumentError,
              "Expected a property definition, found continuation on line #{@current_line_number}"
      end

      line = ProfileFileUtils.trim_whitespace(line)
      profile_properties = @profiles[@current_profile]
      current_property_value = profile_properties[@current_property]
      new_property_value = "#{current_property_value}\n#{line}"

      profile_properties[@current_property] = new_property_value
    end

    def remove_trailing_comments(line, *comment_patterns)
      line[0...find_earliest_match(line, *comment_patterns)]
    end

    def find_earliest_match(line, search_patterns)
      earliest_location = line.length

      search_patterns.each do |pattern|
        location = line.index(pattern)
        earliest_location = [location, earliest_location].min if location
      end

      earliest_location
    end
  end
end