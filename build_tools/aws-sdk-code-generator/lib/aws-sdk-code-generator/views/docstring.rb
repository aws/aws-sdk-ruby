# frozen_string_literal: true

require 'set'

module AwsSdkCodeGenerator
  module Views
    class BlockComment < View

      # @param [String, nil] text
      def initialize(text)
        @text = text
      end

      # @return [Array<String>]
      def lines
        @text.to_s.lines.map do |line|
          if line == "\n"
            "#"
          else
            "# #{line}"
          end
        end
      end

    end
  end
end
