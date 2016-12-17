module AwsSdkCodeGenerator
  module Generators
    class ErrorsModule < Dsl::Module

      include Helper

      def initialize(options)
        @api = options.fetch(:api)
        super('Errors')
        self.extend('Aws::Errors::DynamicErrors')
      end

    end
  end
end
