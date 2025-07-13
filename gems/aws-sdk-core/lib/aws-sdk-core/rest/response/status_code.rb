# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class StatusCode
          def initialize(ref)
            @ref = ref
          end

          def apply(http_resp, target)
            @ref.shape.members.each do |member_name, member_ref|
              status_code = member_ref.traits['smithy.api#httpResponseCode']
              next unless status_code

              target[member_name] = http_resp.status_code
            end
          end
        end
      end
    end
  end
end
