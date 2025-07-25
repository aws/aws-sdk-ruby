# frozen_string_literal: true

require "cgi/escape"
require "cgi/util" if RUBY_VERSION < "3.5"

module Aws
  module Core
    module Query
      class Param

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
          value ? "#{escape(name)}=#{escape(value)}" : "#{escape(name)}="
        end

        # @api private
        def ==(other)
          other.kind_of?(Param) &&
          other.name == name &&
          other.value == value
        end

        # @api private
        def <=> other
          name <=> other.name
        end

        private

        def escape(str)
          CGI.escape(str.to_s.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
        end
      end
    end
  end
end
