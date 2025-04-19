# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class StatusCode
          def initialize(output_shape)
            @output_shape = output_shape
          end

          def apply(response, data)
            @output_shape.members.each do |member_name, member_shape|
              status_code = member_shape.traits['smithy.api#httpResponseCode']
              next unless status_code

              data[member_name] = response.status_code
            end
          end
        end
      end
    end
  end
end
