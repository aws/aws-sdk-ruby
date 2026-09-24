# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EventBridgeV2
  # @api private
  module Endpoints

    class CreateEventSource
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class CreateSubscriber
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class DeleteEventBus
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class DeleteResourcePolicy
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:resource_arn],
        )
      end
    end

    class DescribeEventBus
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class GetResourcePolicy
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:resource_arn],
        )
      end
    end

    class ListEventSources
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class ListResourcePolicies
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:resource_arn],
        )
      end
    end

    class ListSubscribers
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class PutEvents
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class PutRawEvents
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end

    class PutResourcePolicy
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:resource_arn],
        )
      end
    end

    class UpdateEventBus
      def self.build(context)
        Aws::EventBridgeV2::EndpointParameters.create(
          context.config,
          event_bus_arn: context.params[:event_bus_arn],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :create_event_source
        CreateEventSource.build(context)
      when :create_subscriber
        CreateSubscriber.build(context)
      when :delete_event_bus
        DeleteEventBus.build(context)
      when :delete_resource_policy
        DeleteResourcePolicy.build(context)
      when :describe_event_bus
        DescribeEventBus.build(context)
      when :get_resource_policy
        GetResourcePolicy.build(context)
      when :list_event_sources
        ListEventSources.build(context)
      when :list_resource_policies
        ListResourcePolicies.build(context)
      when :list_subscribers
        ListSubscribers.build(context)
      when :put_events
        PutEvents.build(context)
      when :put_raw_events
        PutRawEvents.build(context)
      when :put_resource_policy
        PutResourcePolicy.build(context)
      when :update_event_bus
        UpdateEventBus.build(context)
      else
        Aws::EventBridgeV2::EndpointParameters.create(context.config)
      end
    end
  end
end
