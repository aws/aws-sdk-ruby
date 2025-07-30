# frozen_string_literal: true

module Aws
  module Core
    module Rest
      # @api private
      module Response
        # @api private
        class Parser
          def initialize(codec)
            @codec = codec
          end

          def apply(response)
            output = response.context.operation.output
            response.data = output.shape.type.new
            apply_status_code(output, response)
            apply_headers(output, response)
            apply_body(output, response)
          end

          private

          def apply_status_code(output, response)
            StatusCode.new(output).apply(response.context.http_response, response.data)
          end

          def apply_headers(output, response)
            Headers.new(output).apply(response.context.http_response, response.data)
          end

          def apply_body(output, response)
            Body.new(@codec, output).apply(response.context.http_response.body, response.data)
          end
        end
      end
    end
  end
end
