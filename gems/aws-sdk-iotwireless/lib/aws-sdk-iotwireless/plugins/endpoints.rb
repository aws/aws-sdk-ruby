# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTWireless
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTWireless::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTWireless::EndpointParameters`'
      ) do |cfg|
        Aws::IoTWireless::EndpointProvider.new
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
          when :associate_aws_account_with_partner_account
            Aws::IoTWireless::Endpoints::AssociateAwsAccountWithPartnerAccount.build(context)
          when :associate_multicast_group_with_fuota_task
            Aws::IoTWireless::Endpoints::AssociateMulticastGroupWithFuotaTask.build(context)
          when :associate_wireless_device_with_fuota_task
            Aws::IoTWireless::Endpoints::AssociateWirelessDeviceWithFuotaTask.build(context)
          when :associate_wireless_device_with_multicast_group
            Aws::IoTWireless::Endpoints::AssociateWirelessDeviceWithMulticastGroup.build(context)
          when :associate_wireless_device_with_thing
            Aws::IoTWireless::Endpoints::AssociateWirelessDeviceWithThing.build(context)
          when :associate_wireless_gateway_with_certificate
            Aws::IoTWireless::Endpoints::AssociateWirelessGatewayWithCertificate.build(context)
          when :associate_wireless_gateway_with_thing
            Aws::IoTWireless::Endpoints::AssociateWirelessGatewayWithThing.build(context)
          when :cancel_multicast_group_session
            Aws::IoTWireless::Endpoints::CancelMulticastGroupSession.build(context)
          when :create_destination
            Aws::IoTWireless::Endpoints::CreateDestination.build(context)
          when :create_device_profile
            Aws::IoTWireless::Endpoints::CreateDeviceProfile.build(context)
          when :create_fuota_task
            Aws::IoTWireless::Endpoints::CreateFuotaTask.build(context)
          when :create_multicast_group
            Aws::IoTWireless::Endpoints::CreateMulticastGroup.build(context)
          when :create_network_analyzer_configuration
            Aws::IoTWireless::Endpoints::CreateNetworkAnalyzerConfiguration.build(context)
          when :create_service_profile
            Aws::IoTWireless::Endpoints::CreateServiceProfile.build(context)
          when :create_wireless_device
            Aws::IoTWireless::Endpoints::CreateWirelessDevice.build(context)
          when :create_wireless_gateway
            Aws::IoTWireless::Endpoints::CreateWirelessGateway.build(context)
          when :create_wireless_gateway_task
            Aws::IoTWireless::Endpoints::CreateWirelessGatewayTask.build(context)
          when :create_wireless_gateway_task_definition
            Aws::IoTWireless::Endpoints::CreateWirelessGatewayTaskDefinition.build(context)
          when :delete_destination
            Aws::IoTWireless::Endpoints::DeleteDestination.build(context)
          when :delete_device_profile
            Aws::IoTWireless::Endpoints::DeleteDeviceProfile.build(context)
          when :delete_fuota_task
            Aws::IoTWireless::Endpoints::DeleteFuotaTask.build(context)
          when :delete_multicast_group
            Aws::IoTWireless::Endpoints::DeleteMulticastGroup.build(context)
          when :delete_network_analyzer_configuration
            Aws::IoTWireless::Endpoints::DeleteNetworkAnalyzerConfiguration.build(context)
          when :delete_queued_messages
            Aws::IoTWireless::Endpoints::DeleteQueuedMessages.build(context)
          when :delete_service_profile
            Aws::IoTWireless::Endpoints::DeleteServiceProfile.build(context)
          when :delete_wireless_device
            Aws::IoTWireless::Endpoints::DeleteWirelessDevice.build(context)
          when :delete_wireless_device_import_task
            Aws::IoTWireless::Endpoints::DeleteWirelessDeviceImportTask.build(context)
          when :delete_wireless_gateway
            Aws::IoTWireless::Endpoints::DeleteWirelessGateway.build(context)
          when :delete_wireless_gateway_task
            Aws::IoTWireless::Endpoints::DeleteWirelessGatewayTask.build(context)
          when :delete_wireless_gateway_task_definition
            Aws::IoTWireless::Endpoints::DeleteWirelessGatewayTaskDefinition.build(context)
          when :deregister_wireless_device
            Aws::IoTWireless::Endpoints::DeregisterWirelessDevice.build(context)
          when :disassociate_aws_account_from_partner_account
            Aws::IoTWireless::Endpoints::DisassociateAwsAccountFromPartnerAccount.build(context)
          when :disassociate_multicast_group_from_fuota_task
            Aws::IoTWireless::Endpoints::DisassociateMulticastGroupFromFuotaTask.build(context)
          when :disassociate_wireless_device_from_fuota_task
            Aws::IoTWireless::Endpoints::DisassociateWirelessDeviceFromFuotaTask.build(context)
          when :disassociate_wireless_device_from_multicast_group
            Aws::IoTWireless::Endpoints::DisassociateWirelessDeviceFromMulticastGroup.build(context)
          when :disassociate_wireless_device_from_thing
            Aws::IoTWireless::Endpoints::DisassociateWirelessDeviceFromThing.build(context)
          when :disassociate_wireless_gateway_from_certificate
            Aws::IoTWireless::Endpoints::DisassociateWirelessGatewayFromCertificate.build(context)
          when :disassociate_wireless_gateway_from_thing
            Aws::IoTWireless::Endpoints::DisassociateWirelessGatewayFromThing.build(context)
          when :get_destination
            Aws::IoTWireless::Endpoints::GetDestination.build(context)
          when :get_device_profile
            Aws::IoTWireless::Endpoints::GetDeviceProfile.build(context)
          when :get_event_configuration_by_resource_types
            Aws::IoTWireless::Endpoints::GetEventConfigurationByResourceTypes.build(context)
          when :get_fuota_task
            Aws::IoTWireless::Endpoints::GetFuotaTask.build(context)
          when :get_log_levels_by_resource_types
            Aws::IoTWireless::Endpoints::GetLogLevelsByResourceTypes.build(context)
          when :get_multicast_group
            Aws::IoTWireless::Endpoints::GetMulticastGroup.build(context)
          when :get_multicast_group_session
            Aws::IoTWireless::Endpoints::GetMulticastGroupSession.build(context)
          when :get_network_analyzer_configuration
            Aws::IoTWireless::Endpoints::GetNetworkAnalyzerConfiguration.build(context)
          when :get_partner_account
            Aws::IoTWireless::Endpoints::GetPartnerAccount.build(context)
          when :get_position
            Aws::IoTWireless::Endpoints::GetPosition.build(context)
          when :get_position_configuration
            Aws::IoTWireless::Endpoints::GetPositionConfiguration.build(context)
          when :get_position_estimate
            Aws::IoTWireless::Endpoints::GetPositionEstimate.build(context)
          when :get_resource_event_configuration
            Aws::IoTWireless::Endpoints::GetResourceEventConfiguration.build(context)
          when :get_resource_log_level
            Aws::IoTWireless::Endpoints::GetResourceLogLevel.build(context)
          when :get_resource_position
            Aws::IoTWireless::Endpoints::GetResourcePosition.build(context)
          when :get_service_endpoint
            Aws::IoTWireless::Endpoints::GetServiceEndpoint.build(context)
          when :get_service_profile
            Aws::IoTWireless::Endpoints::GetServiceProfile.build(context)
          when :get_wireless_device
            Aws::IoTWireless::Endpoints::GetWirelessDevice.build(context)
          when :get_wireless_device_import_task
            Aws::IoTWireless::Endpoints::GetWirelessDeviceImportTask.build(context)
          when :get_wireless_device_statistics
            Aws::IoTWireless::Endpoints::GetWirelessDeviceStatistics.build(context)
          when :get_wireless_gateway
            Aws::IoTWireless::Endpoints::GetWirelessGateway.build(context)
          when :get_wireless_gateway_certificate
            Aws::IoTWireless::Endpoints::GetWirelessGatewayCertificate.build(context)
          when :get_wireless_gateway_firmware_information
            Aws::IoTWireless::Endpoints::GetWirelessGatewayFirmwareInformation.build(context)
          when :get_wireless_gateway_statistics
            Aws::IoTWireless::Endpoints::GetWirelessGatewayStatistics.build(context)
          when :get_wireless_gateway_task
            Aws::IoTWireless::Endpoints::GetWirelessGatewayTask.build(context)
          when :get_wireless_gateway_task_definition
            Aws::IoTWireless::Endpoints::GetWirelessGatewayTaskDefinition.build(context)
          when :list_destinations
            Aws::IoTWireless::Endpoints::ListDestinations.build(context)
          when :list_device_profiles
            Aws::IoTWireless::Endpoints::ListDeviceProfiles.build(context)
          when :list_devices_for_wireless_device_import_task
            Aws::IoTWireless::Endpoints::ListDevicesForWirelessDeviceImportTask.build(context)
          when :list_event_configurations
            Aws::IoTWireless::Endpoints::ListEventConfigurations.build(context)
          when :list_fuota_tasks
            Aws::IoTWireless::Endpoints::ListFuotaTasks.build(context)
          when :list_multicast_groups
            Aws::IoTWireless::Endpoints::ListMulticastGroups.build(context)
          when :list_multicast_groups_by_fuota_task
            Aws::IoTWireless::Endpoints::ListMulticastGroupsByFuotaTask.build(context)
          when :list_network_analyzer_configurations
            Aws::IoTWireless::Endpoints::ListNetworkAnalyzerConfigurations.build(context)
          when :list_partner_accounts
            Aws::IoTWireless::Endpoints::ListPartnerAccounts.build(context)
          when :list_position_configurations
            Aws::IoTWireless::Endpoints::ListPositionConfigurations.build(context)
          when :list_queued_messages
            Aws::IoTWireless::Endpoints::ListQueuedMessages.build(context)
          when :list_service_profiles
            Aws::IoTWireless::Endpoints::ListServiceProfiles.build(context)
          when :list_tags_for_resource
            Aws::IoTWireless::Endpoints::ListTagsForResource.build(context)
          when :list_wireless_device_import_tasks
            Aws::IoTWireless::Endpoints::ListWirelessDeviceImportTasks.build(context)
          when :list_wireless_devices
            Aws::IoTWireless::Endpoints::ListWirelessDevices.build(context)
          when :list_wireless_gateway_task_definitions
            Aws::IoTWireless::Endpoints::ListWirelessGatewayTaskDefinitions.build(context)
          when :list_wireless_gateways
            Aws::IoTWireless::Endpoints::ListWirelessGateways.build(context)
          when :put_position_configuration
            Aws::IoTWireless::Endpoints::PutPositionConfiguration.build(context)
          when :put_resource_log_level
            Aws::IoTWireless::Endpoints::PutResourceLogLevel.build(context)
          when :reset_all_resource_log_levels
            Aws::IoTWireless::Endpoints::ResetAllResourceLogLevels.build(context)
          when :reset_resource_log_level
            Aws::IoTWireless::Endpoints::ResetResourceLogLevel.build(context)
          when :send_data_to_multicast_group
            Aws::IoTWireless::Endpoints::SendDataToMulticastGroup.build(context)
          when :send_data_to_wireless_device
            Aws::IoTWireless::Endpoints::SendDataToWirelessDevice.build(context)
          when :start_bulk_associate_wireless_device_with_multicast_group
            Aws::IoTWireless::Endpoints::StartBulkAssociateWirelessDeviceWithMulticastGroup.build(context)
          when :start_bulk_disassociate_wireless_device_from_multicast_group
            Aws::IoTWireless::Endpoints::StartBulkDisassociateWirelessDeviceFromMulticastGroup.build(context)
          when :start_fuota_task
            Aws::IoTWireless::Endpoints::StartFuotaTask.build(context)
          when :start_multicast_group_session
            Aws::IoTWireless::Endpoints::StartMulticastGroupSession.build(context)
          when :start_single_wireless_device_import_task
            Aws::IoTWireless::Endpoints::StartSingleWirelessDeviceImportTask.build(context)
          when :start_wireless_device_import_task
            Aws::IoTWireless::Endpoints::StartWirelessDeviceImportTask.build(context)
          when :tag_resource
            Aws::IoTWireless::Endpoints::TagResource.build(context)
          when :test_wireless_device
            Aws::IoTWireless::Endpoints::TestWirelessDevice.build(context)
          when :untag_resource
            Aws::IoTWireless::Endpoints::UntagResource.build(context)
          when :update_destination
            Aws::IoTWireless::Endpoints::UpdateDestination.build(context)
          when :update_event_configuration_by_resource_types
            Aws::IoTWireless::Endpoints::UpdateEventConfigurationByResourceTypes.build(context)
          when :update_fuota_task
            Aws::IoTWireless::Endpoints::UpdateFuotaTask.build(context)
          when :update_log_levels_by_resource_types
            Aws::IoTWireless::Endpoints::UpdateLogLevelsByResourceTypes.build(context)
          when :update_multicast_group
            Aws::IoTWireless::Endpoints::UpdateMulticastGroup.build(context)
          when :update_network_analyzer_configuration
            Aws::IoTWireless::Endpoints::UpdateNetworkAnalyzerConfiguration.build(context)
          when :update_partner_account
            Aws::IoTWireless::Endpoints::UpdatePartnerAccount.build(context)
          when :update_position
            Aws::IoTWireless::Endpoints::UpdatePosition.build(context)
          when :update_resource_event_configuration
            Aws::IoTWireless::Endpoints::UpdateResourceEventConfiguration.build(context)
          when :update_resource_position
            Aws::IoTWireless::Endpoints::UpdateResourcePosition.build(context)
          when :update_wireless_device
            Aws::IoTWireless::Endpoints::UpdateWirelessDevice.build(context)
          when :update_wireless_device_import_task
            Aws::IoTWireless::Endpoints::UpdateWirelessDeviceImportTask.build(context)
          when :update_wireless_gateway
            Aws::IoTWireless::Endpoints::UpdateWirelessGateway.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
