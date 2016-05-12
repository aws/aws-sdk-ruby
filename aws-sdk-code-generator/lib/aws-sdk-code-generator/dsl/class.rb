module AwsSdkCodeGenerator
  module Dsl
    class Class < Dsl::Module

      def initialize(name, extends:nil, **options, &block)
        super(name, **options, &block)
        @extends = extends
      end

      def open_module
        lines = ["class #{@name}"]
        if @extends
          extends = @extends.lines
          lines[-1] = "#{lines[-1]} < #{extends[0].rstrip}"
          extends[1..-1].each do |line|
            lines << line.rstrip
          end
          lines
        else
          ["class #{@name}"]
        end
      end

    end
  end
end
