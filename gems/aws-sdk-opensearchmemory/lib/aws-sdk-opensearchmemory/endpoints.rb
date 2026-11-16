# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpenSearchMemory
  # @api private
  module Endpoints

    class BatchGetEvent
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class CreateEvent
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class CreateMemory
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class DeleteEvent
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class DeleteMemory
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class GetEvent
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class GetMemory
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class ListEvents
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class ListMemories
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class SearchEvents
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class SearchMemories
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end

    class UpdateMemory
      def self.build(context)
        Aws::OpenSearchMemory::EndpointParameters.create(
          context.config,
          space_id: context.params[:space_id],
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :batch_get_event
        BatchGetEvent.build(context)
      when :create_event
        CreateEvent.build(context)
      when :create_memory
        CreateMemory.build(context)
      when :delete_event
        DeleteEvent.build(context)
      when :delete_memory
        DeleteMemory.build(context)
      when :get_event
        GetEvent.build(context)
      when :get_memory
        GetMemory.build(context)
      when :list_events
        ListEvents.build(context)
      when :list_memories
        ListMemories.build(context)
      when :search_events
        SearchEvents.build(context)
      when :search_memories
        SearchMemories.build(context)
      when :update_memory
        UpdateMemory.build(context)
      else
        Aws::OpenSearchMemory::EndpointParameters.create(context.config)
      end
    end
  end
end
