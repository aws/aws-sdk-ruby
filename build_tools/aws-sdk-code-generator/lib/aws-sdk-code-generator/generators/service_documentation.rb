require 'erb'

module AwsSdkCodeGenerator
  module Generators
    class ServiceDocumentation

      include Helper

      # @option options [required, Hash] :api
      # @option options [required, Hash] :product_name
      # @option options [required, Hash] :namespace
      def initialize(options = {})
        @api = options.fetch(:api)
        @product_name = options.fetch(:product_name)
        @namespace = options.fetch(:namespace)
        @var_name = @namespace.split('::').last.downcase
      end

      def docstring
        <<-MARKDOWN
@service
This module provides support for #{@product_name}, which shipped in `aws-sdk-#{@var_name}` gem.

# #{@namespace}::Client

The {#{@namespace}::Client} class provides one method for each API
operation. Operation methods each accept a hash of request parameters
and return a response object.#{example_operation}

See {Client} for more information.

# #{@namespace}::Errors

Errors returned from #{@product_name} all
extend {Errors::ServiceError}.

    begin
      # do stuff
    rescue #{@namespace}::Errors::ServiceError
      # rescues all service API errors
    end

See {Errors} for more information.
        MARKDOWN
      end

      def example_operation
        if @api['operations'] && @api['operations'].first
          <<-EXAMPLE


    #{@var_name} = #{@namespace}::Client.new
    resp = #{@var_name}.#{example_operation_name}(params)
          EXAMPLE
        end
      end

      def example_operation_name
        underscore(@api['operations'].keys.first)
      end

    end
  end
end
