# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class StatusCode
          def initialize(shape)
            @shape = shape
          end

          def apply(http_resp, target)
            name, = HTTP_EXTENSION.response_code_member(@shape)
            target[name] = http_resp.status_code if name
          end
        end
      end
    end
  end
end
