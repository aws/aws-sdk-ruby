# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Neptune
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Neptune::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Neptune::EndpointParameters`'
      ) do |cfg|
        Aws::Neptune::EndpointProvider.new
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
          when :add_role_to_db_cluster
            Aws::Neptune::Endpoints::AddRoleToDBCluster.build(context)
          when :add_source_identifier_to_subscription
            Aws::Neptune::Endpoints::AddSourceIdentifierToSubscription.build(context)
          when :add_tags_to_resource
            Aws::Neptune::Endpoints::AddTagsToResource.build(context)
          when :apply_pending_maintenance_action
            Aws::Neptune::Endpoints::ApplyPendingMaintenanceAction.build(context)
          when :copy_db_cluster_parameter_group
            Aws::Neptune::Endpoints::CopyDBClusterParameterGroup.build(context)
          when :copy_db_cluster_snapshot
            Aws::Neptune::Endpoints::CopyDBClusterSnapshot.build(context)
          when :copy_db_parameter_group
            Aws::Neptune::Endpoints::CopyDBParameterGroup.build(context)
          when :create_db_cluster
            Aws::Neptune::Endpoints::CreateDBCluster.build(context)
          when :create_db_cluster_endpoint
            Aws::Neptune::Endpoints::CreateDBClusterEndpoint.build(context)
          when :create_db_cluster_parameter_group
            Aws::Neptune::Endpoints::CreateDBClusterParameterGroup.build(context)
          when :create_db_cluster_snapshot
            Aws::Neptune::Endpoints::CreateDBClusterSnapshot.build(context)
          when :create_db_instance
            Aws::Neptune::Endpoints::CreateDBInstance.build(context)
          when :create_db_parameter_group
            Aws::Neptune::Endpoints::CreateDBParameterGroup.build(context)
          when :create_db_subnet_group
            Aws::Neptune::Endpoints::CreateDBSubnetGroup.build(context)
          when :create_event_subscription
            Aws::Neptune::Endpoints::CreateEventSubscription.build(context)
          when :create_global_cluster
            Aws::Neptune::Endpoints::CreateGlobalCluster.build(context)
          when :delete_db_cluster
            Aws::Neptune::Endpoints::DeleteDBCluster.build(context)
          when :delete_db_cluster_endpoint
            Aws::Neptune::Endpoints::DeleteDBClusterEndpoint.build(context)
          when :delete_db_cluster_parameter_group
            Aws::Neptune::Endpoints::DeleteDBClusterParameterGroup.build(context)
          when :delete_db_cluster_snapshot
            Aws::Neptune::Endpoints::DeleteDBClusterSnapshot.build(context)
          when :delete_db_instance
            Aws::Neptune::Endpoints::DeleteDBInstance.build(context)
          when :delete_db_parameter_group
            Aws::Neptune::Endpoints::DeleteDBParameterGroup.build(context)
          when :delete_db_subnet_group
            Aws::Neptune::Endpoints::DeleteDBSubnetGroup.build(context)
          when :delete_event_subscription
            Aws::Neptune::Endpoints::DeleteEventSubscription.build(context)
          when :delete_global_cluster
            Aws::Neptune::Endpoints::DeleteGlobalCluster.build(context)
          when :describe_db_cluster_endpoints
            Aws::Neptune::Endpoints::DescribeDBClusterEndpoints.build(context)
          when :describe_db_cluster_parameter_groups
            Aws::Neptune::Endpoints::DescribeDBClusterParameterGroups.build(context)
          when :describe_db_cluster_parameters
            Aws::Neptune::Endpoints::DescribeDBClusterParameters.build(context)
          when :describe_db_cluster_snapshot_attributes
            Aws::Neptune::Endpoints::DescribeDBClusterSnapshotAttributes.build(context)
          when :describe_db_cluster_snapshots
            Aws::Neptune::Endpoints::DescribeDBClusterSnapshots.build(context)
          when :describe_db_clusters
            Aws::Neptune::Endpoints::DescribeDBClusters.build(context)
          when :describe_db_engine_versions
            Aws::Neptune::Endpoints::DescribeDBEngineVersions.build(context)
          when :describe_db_instances
            Aws::Neptune::Endpoints::DescribeDBInstances.build(context)
          when :describe_db_parameter_groups
            Aws::Neptune::Endpoints::DescribeDBParameterGroups.build(context)
          when :describe_db_parameters
            Aws::Neptune::Endpoints::DescribeDBParameters.build(context)
          when :describe_db_subnet_groups
            Aws::Neptune::Endpoints::DescribeDBSubnetGroups.build(context)
          when :describe_engine_default_cluster_parameters
            Aws::Neptune::Endpoints::DescribeEngineDefaultClusterParameters.build(context)
          when :describe_engine_default_parameters
            Aws::Neptune::Endpoints::DescribeEngineDefaultParameters.build(context)
          when :describe_event_categories
            Aws::Neptune::Endpoints::DescribeEventCategories.build(context)
          when :describe_event_subscriptions
            Aws::Neptune::Endpoints::DescribeEventSubscriptions.build(context)
          when :describe_events
            Aws::Neptune::Endpoints::DescribeEvents.build(context)
          when :describe_global_clusters
            Aws::Neptune::Endpoints::DescribeGlobalClusters.build(context)
          when :describe_orderable_db_instance_options
            Aws::Neptune::Endpoints::DescribeOrderableDBInstanceOptions.build(context)
          when :describe_pending_maintenance_actions
            Aws::Neptune::Endpoints::DescribePendingMaintenanceActions.build(context)
          when :describe_valid_db_instance_modifications
            Aws::Neptune::Endpoints::DescribeValidDBInstanceModifications.build(context)
          when :failover_db_cluster
            Aws::Neptune::Endpoints::FailoverDBCluster.build(context)
          when :failover_global_cluster
            Aws::Neptune::Endpoints::FailoverGlobalCluster.build(context)
          when :list_tags_for_resource
            Aws::Neptune::Endpoints::ListTagsForResource.build(context)
          when :modify_db_cluster
            Aws::Neptune::Endpoints::ModifyDBCluster.build(context)
          when :modify_db_cluster_endpoint
            Aws::Neptune::Endpoints::ModifyDBClusterEndpoint.build(context)
          when :modify_db_cluster_parameter_group
            Aws::Neptune::Endpoints::ModifyDBClusterParameterGroup.build(context)
          when :modify_db_cluster_snapshot_attribute
            Aws::Neptune::Endpoints::ModifyDBClusterSnapshotAttribute.build(context)
          when :modify_db_instance
            Aws::Neptune::Endpoints::ModifyDBInstance.build(context)
          when :modify_db_parameter_group
            Aws::Neptune::Endpoints::ModifyDBParameterGroup.build(context)
          when :modify_db_subnet_group
            Aws::Neptune::Endpoints::ModifyDBSubnetGroup.build(context)
          when :modify_event_subscription
            Aws::Neptune::Endpoints::ModifyEventSubscription.build(context)
          when :modify_global_cluster
            Aws::Neptune::Endpoints::ModifyGlobalCluster.build(context)
          when :promote_read_replica_db_cluster
            Aws::Neptune::Endpoints::PromoteReadReplicaDBCluster.build(context)
          when :reboot_db_instance
            Aws::Neptune::Endpoints::RebootDBInstance.build(context)
          when :remove_from_global_cluster
            Aws::Neptune::Endpoints::RemoveFromGlobalCluster.build(context)
          when :remove_role_from_db_cluster
            Aws::Neptune::Endpoints::RemoveRoleFromDBCluster.build(context)
          when :remove_source_identifier_from_subscription
            Aws::Neptune::Endpoints::RemoveSourceIdentifierFromSubscription.build(context)
          when :remove_tags_from_resource
            Aws::Neptune::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_db_cluster_parameter_group
            Aws::Neptune::Endpoints::ResetDBClusterParameterGroup.build(context)
          when :reset_db_parameter_group
            Aws::Neptune::Endpoints::ResetDBParameterGroup.build(context)
          when :restore_db_cluster_from_snapshot
            Aws::Neptune::Endpoints::RestoreDBClusterFromSnapshot.build(context)
          when :restore_db_cluster_to_point_in_time
            Aws::Neptune::Endpoints::RestoreDBClusterToPointInTime.build(context)
          when :start_db_cluster
            Aws::Neptune::Endpoints::StartDBCluster.build(context)
          when :stop_db_cluster
            Aws::Neptune::Endpoints::StopDBCluster.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
