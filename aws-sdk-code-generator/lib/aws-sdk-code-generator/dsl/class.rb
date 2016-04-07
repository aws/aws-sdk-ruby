module AwsSdkCodeGenerator
  module Dsl
    class Class < Dsl::Module

      def initialize(name, extends:nil, **options, &block)
        super(name, **options, &block)
        @extends = extends ? " < #{extends}" : ''
      end

      def open_module
        "class #{@name}#{@extends}"
      end

    end
  end
end
