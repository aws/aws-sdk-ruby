# frozen_string_literal: true

module Aws
  # @api private
  class ProfileFileUtils
    class << self
      def parse_property_definition_line(line, location)
        first_equals_location = line.index('=')
        if first_equals_location.nil?
          raise ArgumentError,
                "Expected an '=' sign defining a property #{location}"
        end

        key = trim_whitespace(line[0...first_equals_location]).downcase
        raise ArgumentError, "Property did not have a name #{location}" if key.empty?

        value = trim_whitespace(line[first_equals_location + 1..-1])
        [key, value]
      end

      def trim_whitespace(line)
        return '' if line.empty?

        start_index = 0
        end_index = line.length - 1
        start_index += 1 while whitespace?(line[start_index])
        end_index -= 1 while whitespace?(line[end_index])
        line[start_index..end_index]
      end

      def whitespace?(char)
        [' ', "\t"].include?(char)
      end

      def empty_line?(line)
        !line.match(/^[\t ]*$/).nil?
      end

      def comment_line?(line)
        line.start_with?('#') || line.start_with?(';')
      end

      def profile_line?(line)
        line.start_with?('[')
      end

      def property_continuation_line?(line)
        line.start_with?(' ') || line.start_with?("\t")
      end

      def valid_identifier?(line)
        line.match(%r{^[A-Za-z0-9_\-/.%@:+]+$})
      end
    end
  end
end