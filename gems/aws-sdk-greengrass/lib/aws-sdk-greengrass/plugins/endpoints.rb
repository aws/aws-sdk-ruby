# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Greengrass
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Greengrass::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Greengrass::EndpointParameters`'
      ) do |cfg|
        Aws::Greengrass::EndpointProvider.new
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
          when :associate_role_to_group
            Aws::Greengrass::Endpoints::AssociateRoleToGroup.build(context)
          when :associate_service_role_to_account
            Aws::Greengrass::Endpoints::AssociateServiceRoleToAccount.build(context)
          when :create_connector_definition
            Aws::Greengrass::Endpoints::CreateConnectorDefinition.build(context)
          when :create_connector_definition_version
            Aws::Greengrass::Endpoints::CreateConnectorDefinitionVersion.build(context)
          when :create_core_definition
            Aws::Greengrass::Endpoints::CreateCoreDefinition.build(context)
          when :create_core_definition_version
            Aws::Greengrass::Endpoints::CreateCoreDefinitionVersion.build(context)
          when :create_deployment
            Aws::Greengrass::Endpoints::CreateDeployment.build(context)
          when :create_device_definition
            Aws::Greengrass::Endpoints::CreateDeviceDefinition.build(context)
          when :create_device_definition_version
            Aws::Greengrass::Endpoints::CreateDeviceDefinitionVersion.build(context)
          when :create_function_definition
            Aws::Greengrass::Endpoints::CreateFunctionDefinition.build(context)
          when :create_function_definition_version
            Aws::Greengrass::Endpoints::CreateFunctionDefinitionVersion.build(context)
          when :create_group
            Aws::Greengrass::Endpoints::CreateGroup.build(context)
          when :create_group_certificate_authority
            Aws::Greengrass::Endpoints::CreateGroupCertificateAuthority.build(context)
          when :create_group_version
            Aws::Greengrass::Endpoints::CreateGroupVersion.build(context)
          when :create_logger_definition
            Aws::Greengrass::Endpoints::CreateLoggerDefinition.build(context)
          when :create_logger_definition_version
            Aws::Greengrass::Endpoints::CreateLoggerDefinitionVersion.build(context)
          when :create_resource_definition
            Aws::Greengrass::Endpoints::CreateResourceDefinition.build(context)
          when :create_resource_definition_version
            Aws::Greengrass::Endpoints::CreateResourceDefinitionVersion.build(context)
          when :create_software_update_job
            Aws::Greengrass::Endpoints::CreateSoftwareUpdateJob.build(context)
          when :create_subscription_definition
            Aws::Greengrass::Endpoints::CreateSubscriptionDefinition.build(context)
          when :create_subscription_definition_version
            Aws::Greengrass::Endpoints::CreateSubscriptionDefinitionVersion.build(context)
          when :delete_connector_definition
            Aws::Greengrass::Endpoints::DeleteConnectorDefinition.build(context)
          when :delete_core_definition
            Aws::Greengrass::Endpoints::DeleteCoreDefinition.build(context)
          when :delete_device_definition
            Aws::Greengrass::Endpoints::DeleteDeviceDefinition.build(context)
          when :delete_function_definition
            Aws::Greengrass::Endpoints::DeleteFunctionDefinition.build(context)
          when :delete_group
            Aws::Greengrass::Endpoints::DeleteGroup.build(context)
          when :delete_logger_definition
            Aws::Greengrass::Endpoints::DeleteLoggerDefinition.build(context)
          when :delete_resource_definition
            Aws::Greengrass::Endpoints::DeleteResourceDefinition.build(context)
          when :delete_subscription_definition
            Aws::Greengrass::Endpoints::DeleteSubscriptionDefinition.build(context)
          when :disassociate_role_from_group
            Aws::Greengrass::Endpoints::DisassociateRoleFromGroup.build(context)
          when :disassociate_service_role_from_account
            Aws::Greengrass::Endpoints::DisassociateServiceRoleFromAccount.build(context)
          when :get_associated_role
            Aws::Greengrass::Endpoints::GetAssociatedRole.build(context)
          when :get_bulk_deployment_status
            Aws::Greengrass::Endpoints::GetBulkDeploymentStatus.build(context)
          when :get_connectivity_info
            Aws::Greengrass::Endpoints::GetConnectivityInfo.build(context)
          when :get_connector_definition
            Aws::Greengrass::Endpoints::GetConnectorDefinition.build(context)
          when :get_connector_definition_version
            Aws::Greengrass::Endpoints::GetConnectorDefinitionVersion.build(context)
          when :get_core_definition
            Aws::Greengrass::Endpoints::GetCoreDefinition.build(context)
          when :get_core_definition_version
            Aws::Greengrass::Endpoints::GetCoreDefinitionVersion.build(context)
          when :get_deployment_status
            Aws::Greengrass::Endpoints::GetDeploymentStatus.build(context)
          when :get_device_definition
            Aws::Greengrass::Endpoints::GetDeviceDefinition.build(context)
          when :get_device_definition_version
            Aws::Greengrass::Endpoints::GetDeviceDefinitionVersion.build(context)
          when :get_function_definition
            Aws::Greengrass::Endpoints::GetFunctionDefinition.build(context)
          when :get_function_definition_version
            Aws::Greengrass::Endpoints::GetFunctionDefinitionVersion.build(context)
          when :get_group
            Aws::Greengrass::Endpoints::GetGroup.build(context)
          when :get_group_certificate_authority
            Aws::Greengrass::Endpoints::GetGroupCertificateAuthority.build(context)
          when :get_group_certificate_configuration
            Aws::Greengrass::Endpoints::GetGroupCertificateConfiguration.build(context)
          when :get_group_version
            Aws::Greengrass::Endpoints::GetGroupVersion.build(context)
          when :get_logger_definition
            Aws::Greengrass::Endpoints::GetLoggerDefinition.build(context)
          when :get_logger_definition_version
            Aws::Greengrass::Endpoints::GetLoggerDefinitionVersion.build(context)
          when :get_resource_definition
            Aws::Greengrass::Endpoints::GetResourceDefinition.build(context)
          when :get_resource_definition_version
            Aws::Greengrass::Endpoints::GetResourceDefinitionVersion.build(context)
          when :get_service_role_for_account
            Aws::Greengrass::Endpoints::GetServiceRoleForAccount.build(context)
          when :get_subscription_definition
            Aws::Greengrass::Endpoints::GetSubscriptionDefinition.build(context)
          when :get_subscription_definition_version
            Aws::Greengrass::Endpoints::GetSubscriptionDefinitionVersion.build(context)
          when :get_thing_runtime_configuration
            Aws::Greengrass::Endpoints::GetThingRuntimeConfiguration.build(context)
          when :list_bulk_deployment_detailed_reports
            Aws::Greengrass::Endpoints::ListBulkDeploymentDetailedReports.build(context)
          when :list_bulk_deployments
            Aws::Greengrass::Endpoints::ListBulkDeployments.build(context)
          when :list_connector_definition_versions
            Aws::Greengrass::Endpoints::ListConnectorDefinitionVersions.build(context)
          when :list_connector_definitions
            Aws::Greengrass::Endpoints::ListConnectorDefinitions.build(context)
          when :list_core_definition_versions
            Aws::Greengrass::Endpoints::ListCoreDefinitionVersions.build(context)
          when :list_core_definitions
            Aws::Greengrass::Endpoints::ListCoreDefinitions.build(context)
          when :list_deployments
            Aws::Greengrass::Endpoints::ListDeployments.build(context)
          when :list_device_definition_versions
            Aws::Greengrass::Endpoints::ListDeviceDefinitionVersions.build(context)
          when :list_device_definitions
            Aws::Greengrass::Endpoints::ListDeviceDefinitions.build(context)
          when :list_function_definition_versions
            Aws::Greengrass::Endpoints::ListFunctionDefinitionVersions.build(context)
          when :list_function_definitions
            Aws::Greengrass::Endpoints::ListFunctionDefinitions.build(context)
          when :list_group_certificate_authorities
            Aws::Greengrass::Endpoints::ListGroupCertificateAuthorities.build(context)
          when :list_group_versions
            Aws::Greengrass::Endpoints::ListGroupVersions.build(context)
          when :list_groups
            Aws::Greengrass::Endpoints::ListGroups.build(context)
          when :list_logger_definition_versions
            Aws::Greengrass::Endpoints::ListLoggerDefinitionVersions.build(context)
          when :list_logger_definitions
            Aws::Greengrass::Endpoints::ListLoggerDefinitions.build(context)
          when :list_resource_definition_versions
            Aws::Greengrass::Endpoints::ListResourceDefinitionVersions.build(context)
          when :list_resource_definitions
            Aws::Greengrass::Endpoints::ListResourceDefinitions.build(context)
          when :list_subscription_definition_versions
            Aws::Greengrass::Endpoints::ListSubscriptionDefinitionVersions.build(context)
          when :list_subscription_definitions
            Aws::Greengrass::Endpoints::ListSubscriptionDefinitions.build(context)
          when :list_tags_for_resource
            Aws::Greengrass::Endpoints::ListTagsForResource.build(context)
          when :reset_deployments
            Aws::Greengrass::Endpoints::ResetDeployments.build(context)
          when :start_bulk_deployment
            Aws::Greengrass::Endpoints::StartBulkDeployment.build(context)
          when :stop_bulk_deployment
            Aws::Greengrass::Endpoints::StopBulkDeployment.build(context)
          when :tag_resource
            Aws::Greengrass::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Greengrass::Endpoints::UntagResource.build(context)
          when :update_connectivity_info
            Aws::Greengrass::Endpoints::UpdateConnectivityInfo.build(context)
          when :update_connector_definition
            Aws::Greengrass::Endpoints::UpdateConnectorDefinition.build(context)
          when :update_core_definition
            Aws::Greengrass::Endpoints::UpdateCoreDefinition.build(context)
          when :update_device_definition
            Aws::Greengrass::Endpoints::UpdateDeviceDefinition.build(context)
          when :update_function_definition
            Aws::Greengrass::Endpoints::UpdateFunctionDefinition.build(context)
          when :update_group
            Aws::Greengrass::Endpoints::UpdateGroup.build(context)
          when :update_group_certificate_configuration
            Aws::Greengrass::Endpoints::UpdateGroupCertificateConfiguration.build(context)
          when :update_logger_definition
            Aws::Greengrass::Endpoints::UpdateLoggerDefinition.build(context)
          when :update_resource_definition
            Aws::Greengrass::Endpoints::UpdateResourceDefinition.build(context)
          when :update_subscription_definition
            Aws::Greengrass::Endpoints::UpdateSubscriptionDefinition.build(context)
          when :update_thing_runtime_configuration
            Aws::Greengrass::Endpoints::UpdateThingRuntimeConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
