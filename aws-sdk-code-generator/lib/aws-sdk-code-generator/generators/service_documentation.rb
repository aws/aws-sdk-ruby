require 'erb'

module AwsSdkCodeGenerator
  module Generators
    class ServiceDocumentation

      include Helper

      def initialize(api:, product_name:, namespace:)
        @api = api
        @product_name = product_name
        @namespace = namespace
        @var_name = namespace.split('::').last.downcase
      end

      def docstring
        <<-MARKDOWN
This module provides support for #{@product_name}.

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
