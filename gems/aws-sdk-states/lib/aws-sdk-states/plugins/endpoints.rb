# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::States
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::States::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::States::EndpointParameters`'
      ) do |cfg|
        Aws::States::EndpointProvider.new
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
          when :create_activity
            Aws::States::Endpoints::CreateActivity.build(context)
          when :create_state_machine
            Aws::States::Endpoints::CreateStateMachine.build(context)
          when :create_state_machine_alias
            Aws::States::Endpoints::CreateStateMachineAlias.build(context)
          when :delete_activity
            Aws::States::Endpoints::DeleteActivity.build(context)
          when :delete_state_machine
            Aws::States::Endpoints::DeleteStateMachine.build(context)
          when :delete_state_machine_alias
            Aws::States::Endpoints::DeleteStateMachineAlias.build(context)
          when :delete_state_machine_version
            Aws::States::Endpoints::DeleteStateMachineVersion.build(context)
          when :describe_activity
            Aws::States::Endpoints::DescribeActivity.build(context)
          when :describe_execution
            Aws::States::Endpoints::DescribeExecution.build(context)
          when :describe_map_run
            Aws::States::Endpoints::DescribeMapRun.build(context)
          when :describe_state_machine
            Aws::States::Endpoints::DescribeStateMachine.build(context)
          when :describe_state_machine_alias
            Aws::States::Endpoints::DescribeStateMachineAlias.build(context)
          when :describe_state_machine_for_execution
            Aws::States::Endpoints::DescribeStateMachineForExecution.build(context)
          when :get_activity_task
            Aws::States::Endpoints::GetActivityTask.build(context)
          when :get_execution_history
            Aws::States::Endpoints::GetExecutionHistory.build(context)
          when :list_activities
            Aws::States::Endpoints::ListActivities.build(context)
          when :list_executions
            Aws::States::Endpoints::ListExecutions.build(context)
          when :list_map_runs
            Aws::States::Endpoints::ListMapRuns.build(context)
          when :list_state_machine_aliases
            Aws::States::Endpoints::ListStateMachineAliases.build(context)
          when :list_state_machine_versions
            Aws::States::Endpoints::ListStateMachineVersions.build(context)
          when :list_state_machines
            Aws::States::Endpoints::ListStateMachines.build(context)
          when :list_tags_for_resource
            Aws::States::Endpoints::ListTagsForResource.build(context)
          when :publish_state_machine_version
            Aws::States::Endpoints::PublishStateMachineVersion.build(context)
          when :send_task_failure
            Aws::States::Endpoints::SendTaskFailure.build(context)
          when :send_task_heartbeat
            Aws::States::Endpoints::SendTaskHeartbeat.build(context)
          when :send_task_success
            Aws::States::Endpoints::SendTaskSuccess.build(context)
          when :start_execution
            Aws::States::Endpoints::StartExecution.build(context)
          when :start_sync_execution
            Aws::States::Endpoints::StartSyncExecution.build(context)
          when :stop_execution
            Aws::States::Endpoints::StopExecution.build(context)
          when :tag_resource
            Aws::States::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::States::Endpoints::UntagResource.build(context)
          when :update_map_run
            Aws::States::Endpoints::UpdateMapRun.build(context)
          when :update_state_machine
            Aws::States::Endpoints::UpdateStateMachine.build(context)
          when :update_state_machine_alias
            Aws::States::Endpoints::UpdateStateMachineAlias.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
