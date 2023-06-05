# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudFormation
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudFormation::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudFormation::EndpointParameters`'
      ) do |cfg|
        Aws::CloudFormation::EndpointProvider.new
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
          when :activate_organizations_access
            Aws::CloudFormation::Endpoints::ActivateOrganizationsAccess.build(context)
          when :activate_type
            Aws::CloudFormation::Endpoints::ActivateType.build(context)
          when :batch_describe_type_configurations
            Aws::CloudFormation::Endpoints::BatchDescribeTypeConfigurations.build(context)
          when :cancel_update_stack
            Aws::CloudFormation::Endpoints::CancelUpdateStack.build(context)
          when :continue_update_rollback
            Aws::CloudFormation::Endpoints::ContinueUpdateRollback.build(context)
          when :create_change_set
            Aws::CloudFormation::Endpoints::CreateChangeSet.build(context)
          when :create_stack
            Aws::CloudFormation::Endpoints::CreateStack.build(context)
          when :create_stack_instances
            Aws::CloudFormation::Endpoints::CreateStackInstances.build(context)
          when :create_stack_set
            Aws::CloudFormation::Endpoints::CreateStackSet.build(context)
          when :deactivate_organizations_access
            Aws::CloudFormation::Endpoints::DeactivateOrganizationsAccess.build(context)
          when :deactivate_type
            Aws::CloudFormation::Endpoints::DeactivateType.build(context)
          when :delete_change_set
            Aws::CloudFormation::Endpoints::DeleteChangeSet.build(context)
          when :delete_stack
            Aws::CloudFormation::Endpoints::DeleteStack.build(context)
          when :delete_stack_instances
            Aws::CloudFormation::Endpoints::DeleteStackInstances.build(context)
          when :delete_stack_set
            Aws::CloudFormation::Endpoints::DeleteStackSet.build(context)
          when :deregister_type
            Aws::CloudFormation::Endpoints::DeregisterType.build(context)
          when :describe_account_limits
            Aws::CloudFormation::Endpoints::DescribeAccountLimits.build(context)
          when :describe_change_set
            Aws::CloudFormation::Endpoints::DescribeChangeSet.build(context)
          when :describe_change_set_hooks
            Aws::CloudFormation::Endpoints::DescribeChangeSetHooks.build(context)
          when :describe_organizations_access
            Aws::CloudFormation::Endpoints::DescribeOrganizationsAccess.build(context)
          when :describe_publisher
            Aws::CloudFormation::Endpoints::DescribePublisher.build(context)
          when :describe_stack_drift_detection_status
            Aws::CloudFormation::Endpoints::DescribeStackDriftDetectionStatus.build(context)
          when :describe_stack_events
            Aws::CloudFormation::Endpoints::DescribeStackEvents.build(context)
          when :describe_stack_instance
            Aws::CloudFormation::Endpoints::DescribeStackInstance.build(context)
          when :describe_stack_resource
            Aws::CloudFormation::Endpoints::DescribeStackResource.build(context)
          when :describe_stack_resource_drifts
            Aws::CloudFormation::Endpoints::DescribeStackResourceDrifts.build(context)
          when :describe_stack_resources
            Aws::CloudFormation::Endpoints::DescribeStackResources.build(context)
          when :describe_stack_set
            Aws::CloudFormation::Endpoints::DescribeStackSet.build(context)
          when :describe_stack_set_operation
            Aws::CloudFormation::Endpoints::DescribeStackSetOperation.build(context)
          when :describe_stacks
            Aws::CloudFormation::Endpoints::DescribeStacks.build(context)
          when :describe_type
            Aws::CloudFormation::Endpoints::DescribeType.build(context)
          when :describe_type_registration
            Aws::CloudFormation::Endpoints::DescribeTypeRegistration.build(context)
          when :detect_stack_drift
            Aws::CloudFormation::Endpoints::DetectStackDrift.build(context)
          when :detect_stack_resource_drift
            Aws::CloudFormation::Endpoints::DetectStackResourceDrift.build(context)
          when :detect_stack_set_drift
            Aws::CloudFormation::Endpoints::DetectStackSetDrift.build(context)
          when :estimate_template_cost
            Aws::CloudFormation::Endpoints::EstimateTemplateCost.build(context)
          when :execute_change_set
            Aws::CloudFormation::Endpoints::ExecuteChangeSet.build(context)
          when :get_stack_policy
            Aws::CloudFormation::Endpoints::GetStackPolicy.build(context)
          when :get_template
            Aws::CloudFormation::Endpoints::GetTemplate.build(context)
          when :get_template_summary
            Aws::CloudFormation::Endpoints::GetTemplateSummary.build(context)
          when :import_stacks_to_stack_set
            Aws::CloudFormation::Endpoints::ImportStacksToStackSet.build(context)
          when :list_change_sets
            Aws::CloudFormation::Endpoints::ListChangeSets.build(context)
          when :list_exports
            Aws::CloudFormation::Endpoints::ListExports.build(context)
          when :list_imports
            Aws::CloudFormation::Endpoints::ListImports.build(context)
          when :list_stack_instances
            Aws::CloudFormation::Endpoints::ListStackInstances.build(context)
          when :list_stack_resources
            Aws::CloudFormation::Endpoints::ListStackResources.build(context)
          when :list_stack_set_operation_results
            Aws::CloudFormation::Endpoints::ListStackSetOperationResults.build(context)
          when :list_stack_set_operations
            Aws::CloudFormation::Endpoints::ListStackSetOperations.build(context)
          when :list_stack_sets
            Aws::CloudFormation::Endpoints::ListStackSets.build(context)
          when :list_stacks
            Aws::CloudFormation::Endpoints::ListStacks.build(context)
          when :list_type_registrations
            Aws::CloudFormation::Endpoints::ListTypeRegistrations.build(context)
          when :list_type_versions
            Aws::CloudFormation::Endpoints::ListTypeVersions.build(context)
          when :list_types
            Aws::CloudFormation::Endpoints::ListTypes.build(context)
          when :publish_type
            Aws::CloudFormation::Endpoints::PublishType.build(context)
          when :record_handler_progress
            Aws::CloudFormation::Endpoints::RecordHandlerProgress.build(context)
          when :register_publisher
            Aws::CloudFormation::Endpoints::RegisterPublisher.build(context)
          when :register_type
            Aws::CloudFormation::Endpoints::RegisterType.build(context)
          when :rollback_stack
            Aws::CloudFormation::Endpoints::RollbackStack.build(context)
          when :set_stack_policy
            Aws::CloudFormation::Endpoints::SetStackPolicy.build(context)
          when :set_type_configuration
            Aws::CloudFormation::Endpoints::SetTypeConfiguration.build(context)
          when :set_type_default_version
            Aws::CloudFormation::Endpoints::SetTypeDefaultVersion.build(context)
          when :signal_resource
            Aws::CloudFormation::Endpoints::SignalResource.build(context)
          when :stop_stack_set_operation
            Aws::CloudFormation::Endpoints::StopStackSetOperation.build(context)
          when :test_type
            Aws::CloudFormation::Endpoints::TestType.build(context)
          when :update_stack
            Aws::CloudFormation::Endpoints::UpdateStack.build(context)
          when :update_stack_instances
            Aws::CloudFormation::Endpoints::UpdateStackInstances.build(context)
          when :update_stack_set
            Aws::CloudFormation::Endpoints::UpdateStackSet.build(context)
          when :update_termination_protection
            Aws::CloudFormation::Endpoints::UpdateTerminationProtection.build(context)
          when :validate_template
            Aws::CloudFormation::Endpoints::ValidateTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
