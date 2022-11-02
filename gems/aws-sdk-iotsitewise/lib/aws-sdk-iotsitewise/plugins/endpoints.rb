# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTSiteWise
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTSiteWise::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTSiteWise::EndpointParameters`'
      ) do |cfg|
        Aws::IoTSiteWise::EndpointProvider.new
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
          when :associate_assets
            Aws::IoTSiteWise::Endpoints::AssociateAssets.build(context)
          when :associate_time_series_to_asset_property
            Aws::IoTSiteWise::Endpoints::AssociateTimeSeriesToAssetProperty.build(context)
          when :batch_associate_project_assets
            Aws::IoTSiteWise::Endpoints::BatchAssociateProjectAssets.build(context)
          when :batch_disassociate_project_assets
            Aws::IoTSiteWise::Endpoints::BatchDisassociateProjectAssets.build(context)
          when :batch_get_asset_property_aggregates
            Aws::IoTSiteWise::Endpoints::BatchGetAssetPropertyAggregates.build(context)
          when :batch_get_asset_property_value
            Aws::IoTSiteWise::Endpoints::BatchGetAssetPropertyValue.build(context)
          when :batch_get_asset_property_value_history
            Aws::IoTSiteWise::Endpoints::BatchGetAssetPropertyValueHistory.build(context)
          when :batch_put_asset_property_value
            Aws::IoTSiteWise::Endpoints::BatchPutAssetPropertyValue.build(context)
          when :create_access_policy
            Aws::IoTSiteWise::Endpoints::CreateAccessPolicy.build(context)
          when :create_asset
            Aws::IoTSiteWise::Endpoints::CreateAsset.build(context)
          when :create_asset_model
            Aws::IoTSiteWise::Endpoints::CreateAssetModel.build(context)
          when :create_bulk_import_job
            Aws::IoTSiteWise::Endpoints::CreateBulkImportJob.build(context)
          when :create_dashboard
            Aws::IoTSiteWise::Endpoints::CreateDashboard.build(context)
          when :create_gateway
            Aws::IoTSiteWise::Endpoints::CreateGateway.build(context)
          when :create_portal
            Aws::IoTSiteWise::Endpoints::CreatePortal.build(context)
          when :create_project
            Aws::IoTSiteWise::Endpoints::CreateProject.build(context)
          when :delete_access_policy
            Aws::IoTSiteWise::Endpoints::DeleteAccessPolicy.build(context)
          when :delete_asset
            Aws::IoTSiteWise::Endpoints::DeleteAsset.build(context)
          when :delete_asset_model
            Aws::IoTSiteWise::Endpoints::DeleteAssetModel.build(context)
          when :delete_dashboard
            Aws::IoTSiteWise::Endpoints::DeleteDashboard.build(context)
          when :delete_gateway
            Aws::IoTSiteWise::Endpoints::DeleteGateway.build(context)
          when :delete_portal
            Aws::IoTSiteWise::Endpoints::DeletePortal.build(context)
          when :delete_project
            Aws::IoTSiteWise::Endpoints::DeleteProject.build(context)
          when :delete_time_series
            Aws::IoTSiteWise::Endpoints::DeleteTimeSeries.build(context)
          when :describe_access_policy
            Aws::IoTSiteWise::Endpoints::DescribeAccessPolicy.build(context)
          when :describe_asset
            Aws::IoTSiteWise::Endpoints::DescribeAsset.build(context)
          when :describe_asset_model
            Aws::IoTSiteWise::Endpoints::DescribeAssetModel.build(context)
          when :describe_asset_property
            Aws::IoTSiteWise::Endpoints::DescribeAssetProperty.build(context)
          when :describe_bulk_import_job
            Aws::IoTSiteWise::Endpoints::DescribeBulkImportJob.build(context)
          when :describe_dashboard
            Aws::IoTSiteWise::Endpoints::DescribeDashboard.build(context)
          when :describe_default_encryption_configuration
            Aws::IoTSiteWise::Endpoints::DescribeDefaultEncryptionConfiguration.build(context)
          when :describe_gateway
            Aws::IoTSiteWise::Endpoints::DescribeGateway.build(context)
          when :describe_gateway_capability_configuration
            Aws::IoTSiteWise::Endpoints::DescribeGatewayCapabilityConfiguration.build(context)
          when :describe_logging_options
            Aws::IoTSiteWise::Endpoints::DescribeLoggingOptions.build(context)
          when :describe_portal
            Aws::IoTSiteWise::Endpoints::DescribePortal.build(context)
          when :describe_project
            Aws::IoTSiteWise::Endpoints::DescribeProject.build(context)
          when :describe_storage_configuration
            Aws::IoTSiteWise::Endpoints::DescribeStorageConfiguration.build(context)
          when :describe_time_series
            Aws::IoTSiteWise::Endpoints::DescribeTimeSeries.build(context)
          when :disassociate_assets
            Aws::IoTSiteWise::Endpoints::DisassociateAssets.build(context)
          when :disassociate_time_series_from_asset_property
            Aws::IoTSiteWise::Endpoints::DisassociateTimeSeriesFromAssetProperty.build(context)
          when :get_asset_property_aggregates
            Aws::IoTSiteWise::Endpoints::GetAssetPropertyAggregates.build(context)
          when :get_asset_property_value
            Aws::IoTSiteWise::Endpoints::GetAssetPropertyValue.build(context)
          when :get_asset_property_value_history
            Aws::IoTSiteWise::Endpoints::GetAssetPropertyValueHistory.build(context)
          when :get_interpolated_asset_property_values
            Aws::IoTSiteWise::Endpoints::GetInterpolatedAssetPropertyValues.build(context)
          when :list_access_policies
            Aws::IoTSiteWise::Endpoints::ListAccessPolicies.build(context)
          when :list_asset_model_properties
            Aws::IoTSiteWise::Endpoints::ListAssetModelProperties.build(context)
          when :list_asset_models
            Aws::IoTSiteWise::Endpoints::ListAssetModels.build(context)
          when :list_asset_properties
            Aws::IoTSiteWise::Endpoints::ListAssetProperties.build(context)
          when :list_asset_relationships
            Aws::IoTSiteWise::Endpoints::ListAssetRelationships.build(context)
          when :list_assets
            Aws::IoTSiteWise::Endpoints::ListAssets.build(context)
          when :list_associated_assets
            Aws::IoTSiteWise::Endpoints::ListAssociatedAssets.build(context)
          when :list_bulk_import_jobs
            Aws::IoTSiteWise::Endpoints::ListBulkImportJobs.build(context)
          when :list_dashboards
            Aws::IoTSiteWise::Endpoints::ListDashboards.build(context)
          when :list_gateways
            Aws::IoTSiteWise::Endpoints::ListGateways.build(context)
          when :list_portals
            Aws::IoTSiteWise::Endpoints::ListPortals.build(context)
          when :list_project_assets
            Aws::IoTSiteWise::Endpoints::ListProjectAssets.build(context)
          when :list_projects
            Aws::IoTSiteWise::Endpoints::ListProjects.build(context)
          when :list_tags_for_resource
            Aws::IoTSiteWise::Endpoints::ListTagsForResource.build(context)
          when :list_time_series
            Aws::IoTSiteWise::Endpoints::ListTimeSeries.build(context)
          when :put_default_encryption_configuration
            Aws::IoTSiteWise::Endpoints::PutDefaultEncryptionConfiguration.build(context)
          when :put_logging_options
            Aws::IoTSiteWise::Endpoints::PutLoggingOptions.build(context)
          when :put_storage_configuration
            Aws::IoTSiteWise::Endpoints::PutStorageConfiguration.build(context)
          when :tag_resource
            Aws::IoTSiteWise::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTSiteWise::Endpoints::UntagResource.build(context)
          when :update_access_policy
            Aws::IoTSiteWise::Endpoints::UpdateAccessPolicy.build(context)
          when :update_asset
            Aws::IoTSiteWise::Endpoints::UpdateAsset.build(context)
          when :update_asset_model
            Aws::IoTSiteWise::Endpoints::UpdateAssetModel.build(context)
          when :update_asset_property
            Aws::IoTSiteWise::Endpoints::UpdateAssetProperty.build(context)
          when :update_dashboard
            Aws::IoTSiteWise::Endpoints::UpdateDashboard.build(context)
          when :update_gateway
            Aws::IoTSiteWise::Endpoints::UpdateGateway.build(context)
          when :update_gateway_capability_configuration
            Aws::IoTSiteWise::Endpoints::UpdateGatewayCapabilityConfiguration.build(context)
          when :update_portal
            Aws::IoTSiteWise::Endpoints::UpdatePortal.build(context)
          when :update_project
            Aws::IoTSiteWise::Endpoints::UpdateProject.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
