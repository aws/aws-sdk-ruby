# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTFleetWise
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTFleetWise::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTFleetWise::EndpointParameters`'
      ) do |cfg|
        Aws::IoTFleetWise::EndpointProvider.new
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
          when :associate_vehicle_fleet
            Aws::IoTFleetWise::Endpoints::AssociateVehicleFleet.build(context)
          when :batch_create_vehicle
            Aws::IoTFleetWise::Endpoints::BatchCreateVehicle.build(context)
          when :batch_update_vehicle
            Aws::IoTFleetWise::Endpoints::BatchUpdateVehicle.build(context)
          when :create_campaign
            Aws::IoTFleetWise::Endpoints::CreateCampaign.build(context)
          when :create_decoder_manifest
            Aws::IoTFleetWise::Endpoints::CreateDecoderManifest.build(context)
          when :create_fleet
            Aws::IoTFleetWise::Endpoints::CreateFleet.build(context)
          when :create_model_manifest
            Aws::IoTFleetWise::Endpoints::CreateModelManifest.build(context)
          when :create_signal_catalog
            Aws::IoTFleetWise::Endpoints::CreateSignalCatalog.build(context)
          when :create_vehicle
            Aws::IoTFleetWise::Endpoints::CreateVehicle.build(context)
          when :delete_campaign
            Aws::IoTFleetWise::Endpoints::DeleteCampaign.build(context)
          when :delete_decoder_manifest
            Aws::IoTFleetWise::Endpoints::DeleteDecoderManifest.build(context)
          when :delete_fleet
            Aws::IoTFleetWise::Endpoints::DeleteFleet.build(context)
          when :delete_model_manifest
            Aws::IoTFleetWise::Endpoints::DeleteModelManifest.build(context)
          when :delete_signal_catalog
            Aws::IoTFleetWise::Endpoints::DeleteSignalCatalog.build(context)
          when :delete_vehicle
            Aws::IoTFleetWise::Endpoints::DeleteVehicle.build(context)
          when :disassociate_vehicle_fleet
            Aws::IoTFleetWise::Endpoints::DisassociateVehicleFleet.build(context)
          when :get_campaign
            Aws::IoTFleetWise::Endpoints::GetCampaign.build(context)
          when :get_decoder_manifest
            Aws::IoTFleetWise::Endpoints::GetDecoderManifest.build(context)
          when :get_fleet
            Aws::IoTFleetWise::Endpoints::GetFleet.build(context)
          when :get_logging_options
            Aws::IoTFleetWise::Endpoints::GetLoggingOptions.build(context)
          when :get_model_manifest
            Aws::IoTFleetWise::Endpoints::GetModelManifest.build(context)
          when :get_register_account_status
            Aws::IoTFleetWise::Endpoints::GetRegisterAccountStatus.build(context)
          when :get_signal_catalog
            Aws::IoTFleetWise::Endpoints::GetSignalCatalog.build(context)
          when :get_vehicle
            Aws::IoTFleetWise::Endpoints::GetVehicle.build(context)
          when :get_vehicle_status
            Aws::IoTFleetWise::Endpoints::GetVehicleStatus.build(context)
          when :import_decoder_manifest
            Aws::IoTFleetWise::Endpoints::ImportDecoderManifest.build(context)
          when :import_signal_catalog
            Aws::IoTFleetWise::Endpoints::ImportSignalCatalog.build(context)
          when :list_campaigns
            Aws::IoTFleetWise::Endpoints::ListCampaigns.build(context)
          when :list_decoder_manifest_network_interfaces
            Aws::IoTFleetWise::Endpoints::ListDecoderManifestNetworkInterfaces.build(context)
          when :list_decoder_manifest_signals
            Aws::IoTFleetWise::Endpoints::ListDecoderManifestSignals.build(context)
          when :list_decoder_manifests
            Aws::IoTFleetWise::Endpoints::ListDecoderManifests.build(context)
          when :list_fleets
            Aws::IoTFleetWise::Endpoints::ListFleets.build(context)
          when :list_fleets_for_vehicle
            Aws::IoTFleetWise::Endpoints::ListFleetsForVehicle.build(context)
          when :list_model_manifest_nodes
            Aws::IoTFleetWise::Endpoints::ListModelManifestNodes.build(context)
          when :list_model_manifests
            Aws::IoTFleetWise::Endpoints::ListModelManifests.build(context)
          when :list_signal_catalog_nodes
            Aws::IoTFleetWise::Endpoints::ListSignalCatalogNodes.build(context)
          when :list_signal_catalogs
            Aws::IoTFleetWise::Endpoints::ListSignalCatalogs.build(context)
          when :list_tags_for_resource
            Aws::IoTFleetWise::Endpoints::ListTagsForResource.build(context)
          when :list_vehicles
            Aws::IoTFleetWise::Endpoints::ListVehicles.build(context)
          when :list_vehicles_in_fleet
            Aws::IoTFleetWise::Endpoints::ListVehiclesInFleet.build(context)
          when :put_logging_options
            Aws::IoTFleetWise::Endpoints::PutLoggingOptions.build(context)
          when :register_account
            Aws::IoTFleetWise::Endpoints::RegisterAccount.build(context)
          when :tag_resource
            Aws::IoTFleetWise::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTFleetWise::Endpoints::UntagResource.build(context)
          when :update_campaign
            Aws::IoTFleetWise::Endpoints::UpdateCampaign.build(context)
          when :update_decoder_manifest
            Aws::IoTFleetWise::Endpoints::UpdateDecoderManifest.build(context)
          when :update_fleet
            Aws::IoTFleetWise::Endpoints::UpdateFleet.build(context)
          when :update_model_manifest
            Aws::IoTFleetWise::Endpoints::UpdateModelManifest.build(context)
          when :update_signal_catalog
            Aws::IoTFleetWise::Endpoints::UpdateSignalCatalog.build(context)
          when :update_vehicle
            Aws::IoTFleetWise::Endpoints::UpdateVehicle.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
