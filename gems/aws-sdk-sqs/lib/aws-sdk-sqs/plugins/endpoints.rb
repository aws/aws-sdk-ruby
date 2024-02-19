# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SQS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SQS::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SQS::EndpointParameters`'
      ) do |cfg|
        Aws::SQS::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :add_permission
            Aws::SQS::Endpoints::AddPermission.build(context)
          when :cancel_message_move_task
            Aws::SQS::Endpoints::CancelMessageMoveTask.build(context)
          when :change_message_visibility
            Aws::SQS::Endpoints::ChangeMessageVisibility.build(context)
          when :change_message_visibility_batch
            Aws::SQS::Endpoints::ChangeMessageVisibilityBatch.build(context)
          when :create_queue
            Aws::SQS::Endpoints::CreateQueue.build(context)
          when :delete_message
            Aws::SQS::Endpoints::DeleteMessage.build(context)
          when :delete_message_batch
            Aws::SQS::Endpoints::DeleteMessageBatch.build(context)
          when :delete_queue
            Aws::SQS::Endpoints::DeleteQueue.build(context)
          when :get_queue_attributes
            Aws::SQS::Endpoints::GetQueueAttributes.build(context)
          when :get_queue_url
            Aws::SQS::Endpoints::GetQueueUrl.build(context)
          when :list_dead_letter_source_queues
            Aws::SQS::Endpoints::ListDeadLetterSourceQueues.build(context)
          when :list_message_move_tasks
            Aws::SQS::Endpoints::ListMessageMoveTasks.build(context)
          when :list_queue_tags
            Aws::SQS::Endpoints::ListQueueTags.build(context)
          when :list_queues
            Aws::SQS::Endpoints::ListQueues.build(context)
          when :purge_queue
            Aws::SQS::Endpoints::PurgeQueue.build(context)
          when :receive_message
            Aws::SQS::Endpoints::ReceiveMessage.build(context)
          when :remove_permission
            Aws::SQS::Endpoints::RemovePermission.build(context)
          when :send_message
            Aws::SQS::Endpoints::SendMessage.build(context)
          when :send_message_batch
            Aws::SQS::Endpoints::SendMessageBatch.build(context)
          when :set_queue_attributes
            Aws::SQS::Endpoints::SetQueueAttributes.build(context)
          when :start_message_move_task
            Aws::SQS::Endpoints::StartMessageMoveTask.build(context)
          when :tag_queue
            Aws::SQS::Endpoints::TagQueue.build(context)
          when :untag_queue
            Aws::SQS::Endpoints::UntagQueue.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
