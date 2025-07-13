# frozen_string_literal: true

require_relative 'body'
require_relative 'headers'
require_relative 'status_code'

module Aws
  module Core
    module Rest
      # @api private
      module Response
        # @api private
        class Parser
          def apply(response)
            # TODO: fix
            if (output = response.context.operation.output)
              response.data = output.shape.type.new
              apply_status_code(output, response)
              apply_headers(output, response)
              apply_body(response.context.config.codec, output, response)
            else
              response.data = Smithy::Schema::EmptyStructure.new
            end
          end

          private

          def apply_status_code(output, response)
            StatusCode.new(output).apply(response.context.http_response, response.data)
          end

          def apply_headers(output, response)
            Headers.new(output).apply(response.context.http_response, response.data)
          end

          def apply_body(codec, output, response)
            Body.new(codec, output).apply(response.context.http_response.body, response.data)
          end
        end
      end
    end
  end
end
