# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EventBridge
  # @api private
  module Endpoints

    class PutEvents
      def self.build(context)
        Aws::EventBridge::EndpointParameters.create(
          context.config,
          endpoint_id: context.params[:endpoint_id],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :put_events
        PutEvents.build(context)
      else
        Aws::EventBridge::EndpointParameters.create(context.config)
      end
    end
  end
end
