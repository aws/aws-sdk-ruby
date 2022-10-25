# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SWF
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SWF::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SWF::EndpointParameters`'
      ) do |cfg|
        Aws::SWF::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
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
          when :count_closed_workflow_executions
            Aws::SWF::Endpoints::CountClosedWorkflowExecutions.build(context)
          when :count_open_workflow_executions
            Aws::SWF::Endpoints::CountOpenWorkflowExecutions.build(context)
          when :count_pending_activity_tasks
            Aws::SWF::Endpoints::CountPendingActivityTasks.build(context)
          when :count_pending_decision_tasks
            Aws::SWF::Endpoints::CountPendingDecisionTasks.build(context)
          when :deprecate_activity_type
            Aws::SWF::Endpoints::DeprecateActivityType.build(context)
          when :deprecate_domain
            Aws::SWF::Endpoints::DeprecateDomain.build(context)
          when :deprecate_workflow_type
            Aws::SWF::Endpoints::DeprecateWorkflowType.build(context)
          when :describe_activity_type
            Aws::SWF::Endpoints::DescribeActivityType.build(context)
          when :describe_domain
            Aws::SWF::Endpoints::DescribeDomain.build(context)
          when :describe_workflow_execution
            Aws::SWF::Endpoints::DescribeWorkflowExecution.build(context)
          when :describe_workflow_type
            Aws::SWF::Endpoints::DescribeWorkflowType.build(context)
          when :get_workflow_execution_history
            Aws::SWF::Endpoints::GetWorkflowExecutionHistory.build(context)
          when :list_activity_types
            Aws::SWF::Endpoints::ListActivityTypes.build(context)
          when :list_closed_workflow_executions
            Aws::SWF::Endpoints::ListClosedWorkflowExecutions.build(context)
          when :list_domains
            Aws::SWF::Endpoints::ListDomains.build(context)
          when :list_open_workflow_executions
            Aws::SWF::Endpoints::ListOpenWorkflowExecutions.build(context)
          when :list_tags_for_resource
            Aws::SWF::Endpoints::ListTagsForResource.build(context)
          when :list_workflow_types
            Aws::SWF::Endpoints::ListWorkflowTypes.build(context)
          when :poll_for_activity_task
            Aws::SWF::Endpoints::PollForActivityTask.build(context)
          when :poll_for_decision_task
            Aws::SWF::Endpoints::PollForDecisionTask.build(context)
          when :record_activity_task_heartbeat
            Aws::SWF::Endpoints::RecordActivityTaskHeartbeat.build(context)
          when :register_activity_type
            Aws::SWF::Endpoints::RegisterActivityType.build(context)
          when :register_domain
            Aws::SWF::Endpoints::RegisterDomain.build(context)
          when :register_workflow_type
            Aws::SWF::Endpoints::RegisterWorkflowType.build(context)
          when :request_cancel_workflow_execution
            Aws::SWF::Endpoints::RequestCancelWorkflowExecution.build(context)
          when :respond_activity_task_canceled
            Aws::SWF::Endpoints::RespondActivityTaskCanceled.build(context)
          when :respond_activity_task_completed
            Aws::SWF::Endpoints::RespondActivityTaskCompleted.build(context)
          when :respond_activity_task_failed
            Aws::SWF::Endpoints::RespondActivityTaskFailed.build(context)
          when :respond_decision_task_completed
            Aws::SWF::Endpoints::RespondDecisionTaskCompleted.build(context)
          when :signal_workflow_execution
            Aws::SWF::Endpoints::SignalWorkflowExecution.build(context)
          when :start_workflow_execution
            Aws::SWF::Endpoints::StartWorkflowExecution.build(context)
          when :tag_resource
            Aws::SWF::Endpoints::TagResource.build(context)
          when :terminate_workflow_execution
            Aws::SWF::Endpoints::TerminateWorkflowExecution.build(context)
          when :undeprecate_activity_type
            Aws::SWF::Endpoints::UndeprecateActivityType.build(context)
          when :undeprecate_domain
            Aws::SWF::Endpoints::UndeprecateDomain.build(context)
          when :undeprecate_workflow_type
            Aws::SWF::Endpoints::UndeprecateWorkflowType.build(context)
          when :untag_resource
            Aws::SWF::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
