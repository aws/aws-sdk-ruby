# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MigrationHubOrchestrator
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MigrationHubOrchestrator::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MigrationHubOrchestrator::EndpointParameters`'
      ) do |cfg|
        Aws::MigrationHubOrchestrator::EndpointProvider.new
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
          when :create_workflow
            Aws::MigrationHubOrchestrator::Endpoints::CreateWorkflow.build(context)
          when :create_workflow_step
            Aws::MigrationHubOrchestrator::Endpoints::CreateWorkflowStep.build(context)
          when :create_workflow_step_group
            Aws::MigrationHubOrchestrator::Endpoints::CreateWorkflowStepGroup.build(context)
          when :delete_workflow
            Aws::MigrationHubOrchestrator::Endpoints::DeleteWorkflow.build(context)
          when :delete_workflow_step
            Aws::MigrationHubOrchestrator::Endpoints::DeleteWorkflowStep.build(context)
          when :delete_workflow_step_group
            Aws::MigrationHubOrchestrator::Endpoints::DeleteWorkflowStepGroup.build(context)
          when :get_template
            Aws::MigrationHubOrchestrator::Endpoints::GetTemplate.build(context)
          when :get_template_step
            Aws::MigrationHubOrchestrator::Endpoints::GetTemplateStep.build(context)
          when :get_template_step_group
            Aws::MigrationHubOrchestrator::Endpoints::GetTemplateStepGroup.build(context)
          when :get_workflow
            Aws::MigrationHubOrchestrator::Endpoints::GetWorkflow.build(context)
          when :get_workflow_step
            Aws::MigrationHubOrchestrator::Endpoints::GetWorkflowStep.build(context)
          when :get_workflow_step_group
            Aws::MigrationHubOrchestrator::Endpoints::GetWorkflowStepGroup.build(context)
          when :list_plugins
            Aws::MigrationHubOrchestrator::Endpoints::ListPlugins.build(context)
          when :list_tags_for_resource
            Aws::MigrationHubOrchestrator::Endpoints::ListTagsForResource.build(context)
          when :list_template_step_groups
            Aws::MigrationHubOrchestrator::Endpoints::ListTemplateStepGroups.build(context)
          when :list_template_steps
            Aws::MigrationHubOrchestrator::Endpoints::ListTemplateSteps.build(context)
          when :list_templates
            Aws::MigrationHubOrchestrator::Endpoints::ListTemplates.build(context)
          when :list_workflow_step_groups
            Aws::MigrationHubOrchestrator::Endpoints::ListWorkflowStepGroups.build(context)
          when :list_workflow_steps
            Aws::MigrationHubOrchestrator::Endpoints::ListWorkflowSteps.build(context)
          when :list_workflows
            Aws::MigrationHubOrchestrator::Endpoints::ListWorkflows.build(context)
          when :retry_workflow_step
            Aws::MigrationHubOrchestrator::Endpoints::RetryWorkflowStep.build(context)
          when :start_workflow
            Aws::MigrationHubOrchestrator::Endpoints::StartWorkflow.build(context)
          when :stop_workflow
            Aws::MigrationHubOrchestrator::Endpoints::StopWorkflow.build(context)
          when :tag_resource
            Aws::MigrationHubOrchestrator::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MigrationHubOrchestrator::Endpoints::UntagResource.build(context)
          when :update_workflow
            Aws::MigrationHubOrchestrator::Endpoints::UpdateWorkflow.build(context)
          when :update_workflow_step
            Aws::MigrationHubOrchestrator::Endpoints::UpdateWorkflowStep.build(context)
          when :update_workflow_step_group
            Aws::MigrationHubOrchestrator::Endpoints::UpdateWorkflowStepGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
