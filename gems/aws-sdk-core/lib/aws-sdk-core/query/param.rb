# frozen_string_literal: true

require 'cgi/escape'

module Aws
  module Core
    module Query
      # @api private
      class Param
        UNRESERVED_PATTERN = /\A[A-Za-z0-9._~-]*\z/

        # @param [String] name
        # @param [String, nil] value (nil)
        def initialize(name, value = nil)
          @name = name.to_s
          @value = value
        end

        # @return [String]
        attr_reader :name

        # @return [String, nil]
        attr_reader :value

        # @return [String]
        def to_s
          value ? "#{escape(@name)}=#{escape(@value)}" : "#{escape(@name)}="
        end

        # @return [Boolean]
        def ==(other)
          other.is_a?(Param) && other.name == @name && other.value == @value
        end

        # @return [Integer]
        def <=>(other)
          @name <=> other.name
        end

        private

        def escape(str)
          value = str.to_s
          return value if value.match?(UNRESERVED_PATTERN)

          CGI.escape(value.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
        end
      end
    end
  end
end
