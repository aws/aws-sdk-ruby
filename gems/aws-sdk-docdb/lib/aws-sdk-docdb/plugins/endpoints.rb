# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DocDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DocDB::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DocDB::EndpointParameters`'
      ) do |cfg|
        Aws::DocDB::EndpointProvider.new
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
          when :add_source_identifier_to_subscription
            Aws::DocDB::Endpoints::AddSourceIdentifierToSubscription.build(context)
          when :add_tags_to_resource
            Aws::DocDB::Endpoints::AddTagsToResource.build(context)
          when :apply_pending_maintenance_action
            Aws::DocDB::Endpoints::ApplyPendingMaintenanceAction.build(context)
          when :copy_db_cluster_parameter_group
            Aws::DocDB::Endpoints::CopyDBClusterParameterGroup.build(context)
          when :copy_db_cluster_snapshot
            Aws::DocDB::Endpoints::CopyDBClusterSnapshot.build(context)
          when :create_db_cluster
            Aws::DocDB::Endpoints::CreateDBCluster.build(context)
          when :create_db_cluster_parameter_group
            Aws::DocDB::Endpoints::CreateDBClusterParameterGroup.build(context)
          when :create_db_cluster_snapshot
            Aws::DocDB::Endpoints::CreateDBClusterSnapshot.build(context)
          when :create_db_instance
            Aws::DocDB::Endpoints::CreateDBInstance.build(context)
          when :create_db_subnet_group
            Aws::DocDB::Endpoints::CreateDBSubnetGroup.build(context)
          when :create_event_subscription
            Aws::DocDB::Endpoints::CreateEventSubscription.build(context)
          when :create_global_cluster
            Aws::DocDB::Endpoints::CreateGlobalCluster.build(context)
          when :delete_db_cluster
            Aws::DocDB::Endpoints::DeleteDBCluster.build(context)
          when :delete_db_cluster_parameter_group
            Aws::DocDB::Endpoints::DeleteDBClusterParameterGroup.build(context)
          when :delete_db_cluster_snapshot
            Aws::DocDB::Endpoints::DeleteDBClusterSnapshot.build(context)
          when :delete_db_instance
            Aws::DocDB::Endpoints::DeleteDBInstance.build(context)
          when :delete_db_subnet_group
            Aws::DocDB::Endpoints::DeleteDBSubnetGroup.build(context)
          when :delete_event_subscription
            Aws::DocDB::Endpoints::DeleteEventSubscription.build(context)
          when :delete_global_cluster
            Aws::DocDB::Endpoints::DeleteGlobalCluster.build(context)
          when :describe_certificates
            Aws::DocDB::Endpoints::DescribeCertificates.build(context)
          when :describe_db_cluster_parameter_groups
            Aws::DocDB::Endpoints::DescribeDBClusterParameterGroups.build(context)
          when :describe_db_cluster_parameters
            Aws::DocDB::Endpoints::DescribeDBClusterParameters.build(context)
          when :describe_db_cluster_snapshot_attributes
            Aws::DocDB::Endpoints::DescribeDBClusterSnapshotAttributes.build(context)
          when :describe_db_cluster_snapshots
            Aws::DocDB::Endpoints::DescribeDBClusterSnapshots.build(context)
          when :describe_db_clusters
            Aws::DocDB::Endpoints::DescribeDBClusters.build(context)
          when :describe_db_engine_versions
            Aws::DocDB::Endpoints::DescribeDBEngineVersions.build(context)
          when :describe_db_instances
            Aws::DocDB::Endpoints::DescribeDBInstances.build(context)
          when :describe_db_subnet_groups
            Aws::DocDB::Endpoints::DescribeDBSubnetGroups.build(context)
          when :describe_engine_default_cluster_parameters
            Aws::DocDB::Endpoints::DescribeEngineDefaultClusterParameters.build(context)
          when :describe_event_categories
            Aws::DocDB::Endpoints::DescribeEventCategories.build(context)
          when :describe_event_subscriptions
            Aws::DocDB::Endpoints::DescribeEventSubscriptions.build(context)
          when :describe_events
            Aws::DocDB::Endpoints::DescribeEvents.build(context)
          when :describe_global_clusters
            Aws::DocDB::Endpoints::DescribeGlobalClusters.build(context)
          when :describe_orderable_db_instance_options
            Aws::DocDB::Endpoints::DescribeOrderableDBInstanceOptions.build(context)
          when :describe_pending_maintenance_actions
            Aws::DocDB::Endpoints::DescribePendingMaintenanceActions.build(context)
          when :failover_db_cluster
            Aws::DocDB::Endpoints::FailoverDBCluster.build(context)
          when :list_tags_for_resource
            Aws::DocDB::Endpoints::ListTagsForResource.build(context)
          when :modify_db_cluster
            Aws::DocDB::Endpoints::ModifyDBCluster.build(context)
          when :modify_db_cluster_parameter_group
            Aws::DocDB::Endpoints::ModifyDBClusterParameterGroup.build(context)
          when :modify_db_cluster_snapshot_attribute
            Aws::DocDB::Endpoints::ModifyDBClusterSnapshotAttribute.build(context)
          when :modify_db_instance
            Aws::DocDB::Endpoints::ModifyDBInstance.build(context)
          when :modify_db_subnet_group
            Aws::DocDB::Endpoints::ModifyDBSubnetGroup.build(context)
          when :modify_event_subscription
            Aws::DocDB::Endpoints::ModifyEventSubscription.build(context)
          when :modify_global_cluster
            Aws::DocDB::Endpoints::ModifyGlobalCluster.build(context)
          when :reboot_db_instance
            Aws::DocDB::Endpoints::RebootDBInstance.build(context)
          when :remove_from_global_cluster
            Aws::DocDB::Endpoints::RemoveFromGlobalCluster.build(context)
          when :remove_source_identifier_from_subscription
            Aws::DocDB::Endpoints::RemoveSourceIdentifierFromSubscription.build(context)
          when :remove_tags_from_resource
            Aws::DocDB::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_db_cluster_parameter_group
            Aws::DocDB::Endpoints::ResetDBClusterParameterGroup.build(context)
          when :restore_db_cluster_from_snapshot
            Aws::DocDB::Endpoints::RestoreDBClusterFromSnapshot.build(context)
          when :restore_db_cluster_to_point_in_time
            Aws::DocDB::Endpoints::RestoreDBClusterToPointInTime.build(context)
          when :start_db_cluster
            Aws::DocDB::Endpoints::StartDBCluster.build(context)
          when :stop_db_cluster
            Aws::DocDB::Endpoints::StopDBCluster.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
