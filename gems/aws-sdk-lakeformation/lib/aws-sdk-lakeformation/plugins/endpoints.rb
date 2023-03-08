# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LakeFormation
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LakeFormation::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LakeFormation::EndpointParameters`'
      ) do |cfg|
        Aws::LakeFormation::EndpointProvider.new
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
          when :add_lf_tags_to_resource
            Aws::LakeFormation::Endpoints::AddLFTagsToResource.build(context)
          when :assume_decorated_role_with_saml
            Aws::LakeFormation::Endpoints::AssumeDecoratedRoleWithSAML.build(context)
          when :batch_grant_permissions
            Aws::LakeFormation::Endpoints::BatchGrantPermissions.build(context)
          when :batch_revoke_permissions
            Aws::LakeFormation::Endpoints::BatchRevokePermissions.build(context)
          when :cancel_transaction
            Aws::LakeFormation::Endpoints::CancelTransaction.build(context)
          when :commit_transaction
            Aws::LakeFormation::Endpoints::CommitTransaction.build(context)
          when :create_data_cells_filter
            Aws::LakeFormation::Endpoints::CreateDataCellsFilter.build(context)
          when :create_lf_tag
            Aws::LakeFormation::Endpoints::CreateLFTag.build(context)
          when :delete_data_cells_filter
            Aws::LakeFormation::Endpoints::DeleteDataCellsFilter.build(context)
          when :delete_lf_tag
            Aws::LakeFormation::Endpoints::DeleteLFTag.build(context)
          when :delete_objects_on_cancel
            Aws::LakeFormation::Endpoints::DeleteObjectsOnCancel.build(context)
          when :deregister_resource
            Aws::LakeFormation::Endpoints::DeregisterResource.build(context)
          when :describe_resource
            Aws::LakeFormation::Endpoints::DescribeResource.build(context)
          when :describe_transaction
            Aws::LakeFormation::Endpoints::DescribeTransaction.build(context)
          when :extend_transaction
            Aws::LakeFormation::Endpoints::ExtendTransaction.build(context)
          when :get_data_cells_filter
            Aws::LakeFormation::Endpoints::GetDataCellsFilter.build(context)
          when :get_data_lake_settings
            Aws::LakeFormation::Endpoints::GetDataLakeSettings.build(context)
          when :get_effective_permissions_for_path
            Aws::LakeFormation::Endpoints::GetEffectivePermissionsForPath.build(context)
          when :get_lf_tag
            Aws::LakeFormation::Endpoints::GetLFTag.build(context)
          when :get_query_state
            Aws::LakeFormation::Endpoints::GetQueryState.build(context)
          when :get_query_statistics
            Aws::LakeFormation::Endpoints::GetQueryStatistics.build(context)
          when :get_resource_lf_tags
            Aws::LakeFormation::Endpoints::GetResourceLFTags.build(context)
          when :get_table_objects
            Aws::LakeFormation::Endpoints::GetTableObjects.build(context)
          when :get_temporary_glue_partition_credentials
            Aws::LakeFormation::Endpoints::GetTemporaryGluePartitionCredentials.build(context)
          when :get_temporary_glue_table_credentials
            Aws::LakeFormation::Endpoints::GetTemporaryGlueTableCredentials.build(context)
          when :get_work_unit_results
            Aws::LakeFormation::Endpoints::GetWorkUnitResults.build(context)
          when :get_work_units
            Aws::LakeFormation::Endpoints::GetWorkUnits.build(context)
          when :grant_permissions
            Aws::LakeFormation::Endpoints::GrantPermissions.build(context)
          when :list_data_cells_filter
            Aws::LakeFormation::Endpoints::ListDataCellsFilter.build(context)
          when :list_lf_tags
            Aws::LakeFormation::Endpoints::ListLFTags.build(context)
          when :list_permissions
            Aws::LakeFormation::Endpoints::ListPermissions.build(context)
          when :list_resources
            Aws::LakeFormation::Endpoints::ListResources.build(context)
          when :list_table_storage_optimizers
            Aws::LakeFormation::Endpoints::ListTableStorageOptimizers.build(context)
          when :list_transactions
            Aws::LakeFormation::Endpoints::ListTransactions.build(context)
          when :put_data_lake_settings
            Aws::LakeFormation::Endpoints::PutDataLakeSettings.build(context)
          when :register_resource
            Aws::LakeFormation::Endpoints::RegisterResource.build(context)
          when :remove_lf_tags_from_resource
            Aws::LakeFormation::Endpoints::RemoveLFTagsFromResource.build(context)
          when :revoke_permissions
            Aws::LakeFormation::Endpoints::RevokePermissions.build(context)
          when :search_databases_by_lf_tags
            Aws::LakeFormation::Endpoints::SearchDatabasesByLFTags.build(context)
          when :search_tables_by_lf_tags
            Aws::LakeFormation::Endpoints::SearchTablesByLFTags.build(context)
          when :start_query_planning
            Aws::LakeFormation::Endpoints::StartQueryPlanning.build(context)
          when :start_transaction
            Aws::LakeFormation::Endpoints::StartTransaction.build(context)
          when :update_data_cells_filter
            Aws::LakeFormation::Endpoints::UpdateDataCellsFilter.build(context)
          when :update_lf_tag
            Aws::LakeFormation::Endpoints::UpdateLFTag.build(context)
          when :update_resource
            Aws::LakeFormation::Endpoints::UpdateResource.build(context)
          when :update_table_objects
            Aws::LakeFormation::Endpoints::UpdateTableObjects.build(context)
          when :update_table_storage_optimizer
            Aws::LakeFormation::Endpoints::UpdateTableStorageOptimizer.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
