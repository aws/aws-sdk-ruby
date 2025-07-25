# frozen_string_literal: true

module Aws
  module Core
    class ConfigFileParser
      def initialize(config_file_contents)
        @config_file_contents = config_file_contents
      end

      def parse
        initialize_sections
        @sections
      end

      private

      def initialize_sections
        @sections = {}
        @current_line_number = 0

        @config_file_contents.split(/[\r\n]+/).each do |line|
          @current_line_number += 1
          next if ConfigFileUtils.empty_line?(line) ||
            ConfigFileUtils.comment_line?(line)

          if ConfigFileUtils.section_line?(line)
            read_section_line(line)
          elsif ConfigFileUtils.property_continuation_line?(line)
            read_property_continuation_line(line)
          else
            read_property_definition_line(line)
          end
        end
      end

      def read_section_line(line)
        line_without_comments = remove_trailing_comments(line, %w[# ;])
        line_without_whitespace =
          ConfigFileUtils.trim_whitespace(line_without_comments)

        unless line_without_whitespace[-1] == ']'
          raise InvalidSharedConfigError,
                "Section definition must end with ']' " \
                  "on line #{@current_line_number}"
        end

        line_without_brackets = line_without_whitespace[1..-2]

        @current_section =
          ConfigFileUtils.trim_whitespace(line_without_brackets)
        @current_property = nil

        @sections[@current_section] ||= {}
      end

      def read_property_definition_line(line)
        unless @current_section
          raise InvalidSharedConfigError,
                'Expected a section definition, found property ' \
                  "on line #{@current_line_number}"
        end

        line_without_comments = remove_trailing_comments(
          line,
          [' #', ' ;', "\t#", "\t;"]
        )
        line_without_whitespace =
          ConfigFileUtils.trim_whitespace(line_without_comments)

        key, value = ConfigFileUtils.parse_property_definition_line(
          line_without_whitespace,
          "on line #{@current_line_number}"
        )
        @current_property = key
        @sections[@current_section][key] = value
      end

      def read_property_continuation_line(line)
        unless @current_section
          raise InvalidSharedConfigError,
                'Expected a section definition, found continuation ' \
                  "on line #{@current_line_number}"
        end
        unless @current_property
          raise InvalidSharedConfigError,
                'Expected a property definition, found continuation ' \
                  "on line #{@current_line_number}"
        end

        line = ConfigFileUtils.trim_whitespace(line)
        section_properties = @sections[@current_section]
        current_property_value = section_properties[@current_property]
        new_property_value = "#{current_property_value}\n#{line}"

        section_properties[@current_property] = new_property_value
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
end