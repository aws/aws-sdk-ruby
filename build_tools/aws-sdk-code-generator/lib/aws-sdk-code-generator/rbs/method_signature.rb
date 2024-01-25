# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class MethodSignature < Struct.new(:method_name, :overloads, keyword_init: true)
      def signature
        "def #{method_name}: #{overloads.join("\n          #{" " * method_name.length}| ")}"
      end
    end
  end
end
