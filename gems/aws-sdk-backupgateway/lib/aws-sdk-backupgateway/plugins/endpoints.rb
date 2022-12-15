# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BackupGateway
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::BackupGateway::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::BackupGateway::EndpointParameters`'
      ) do |cfg|
        Aws::BackupGateway::EndpointProvider.new
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
          when :associate_gateway_to_server
            Aws::BackupGateway::Endpoints::AssociateGatewayToServer.build(context)
          when :create_gateway
            Aws::BackupGateway::Endpoints::CreateGateway.build(context)
          when :delete_gateway
            Aws::BackupGateway::Endpoints::DeleteGateway.build(context)
          when :delete_hypervisor
            Aws::BackupGateway::Endpoints::DeleteHypervisor.build(context)
          when :disassociate_gateway_from_server
            Aws::BackupGateway::Endpoints::DisassociateGatewayFromServer.build(context)
          when :get_bandwidth_rate_limit_schedule
            Aws::BackupGateway::Endpoints::GetBandwidthRateLimitSchedule.build(context)
          when :get_gateway
            Aws::BackupGateway::Endpoints::GetGateway.build(context)
          when :get_hypervisor
            Aws::BackupGateway::Endpoints::GetHypervisor.build(context)
          when :get_hypervisor_property_mappings
            Aws::BackupGateway::Endpoints::GetHypervisorPropertyMappings.build(context)
          when :get_virtual_machine
            Aws::BackupGateway::Endpoints::GetVirtualMachine.build(context)
          when :import_hypervisor_configuration
            Aws::BackupGateway::Endpoints::ImportHypervisorConfiguration.build(context)
          when :list_gateways
            Aws::BackupGateway::Endpoints::ListGateways.build(context)
          when :list_hypervisors
            Aws::BackupGateway::Endpoints::ListHypervisors.build(context)
          when :list_tags_for_resource
            Aws::BackupGateway::Endpoints::ListTagsForResource.build(context)
          when :list_virtual_machines
            Aws::BackupGateway::Endpoints::ListVirtualMachines.build(context)
          when :put_bandwidth_rate_limit_schedule
            Aws::BackupGateway::Endpoints::PutBandwidthRateLimitSchedule.build(context)
          when :put_hypervisor_property_mappings
            Aws::BackupGateway::Endpoints::PutHypervisorPropertyMappings.build(context)
          when :put_maintenance_start_time
            Aws::BackupGateway::Endpoints::PutMaintenanceStartTime.build(context)
          when :start_virtual_machines_metadata_sync
            Aws::BackupGateway::Endpoints::StartVirtualMachinesMetadataSync.build(context)
          when :tag_resource
            Aws::BackupGateway::Endpoints::TagResource.build(context)
          when :test_hypervisor_configuration
            Aws::BackupGateway::Endpoints::TestHypervisorConfiguration.build(context)
          when :untag_resource
            Aws::BackupGateway::Endpoints::UntagResource.build(context)
          when :update_gateway_information
            Aws::BackupGateway::Endpoints::UpdateGatewayInformation.build(context)
          when :update_gateway_software_now
            Aws::BackupGateway::Endpoints::UpdateGatewaySoftwareNow.build(context)
          when :update_hypervisor
            Aws::BackupGateway::Endpoints::UpdateHypervisor.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
