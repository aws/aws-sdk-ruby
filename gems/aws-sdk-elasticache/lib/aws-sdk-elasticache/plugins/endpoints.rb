# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElastiCache
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElastiCache::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElastiCache::EndpointParameters`'
      ) do |cfg|
        Aws::ElastiCache::EndpointProvider.new
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
          when :add_tags_to_resource
            Aws::ElastiCache::Endpoints::AddTagsToResource.build(context)
          when :authorize_cache_security_group_ingress
            Aws::ElastiCache::Endpoints::AuthorizeCacheSecurityGroupIngress.build(context)
          when :batch_apply_update_action
            Aws::ElastiCache::Endpoints::BatchApplyUpdateAction.build(context)
          when :batch_stop_update_action
            Aws::ElastiCache::Endpoints::BatchStopUpdateAction.build(context)
          when :complete_migration
            Aws::ElastiCache::Endpoints::CompleteMigration.build(context)
          when :copy_snapshot
            Aws::ElastiCache::Endpoints::CopySnapshot.build(context)
          when :create_cache_cluster
            Aws::ElastiCache::Endpoints::CreateCacheCluster.build(context)
          when :create_cache_parameter_group
            Aws::ElastiCache::Endpoints::CreateCacheParameterGroup.build(context)
          when :create_cache_security_group
            Aws::ElastiCache::Endpoints::CreateCacheSecurityGroup.build(context)
          when :create_cache_subnet_group
            Aws::ElastiCache::Endpoints::CreateCacheSubnetGroup.build(context)
          when :create_global_replication_group
            Aws::ElastiCache::Endpoints::CreateGlobalReplicationGroup.build(context)
          when :create_replication_group
            Aws::ElastiCache::Endpoints::CreateReplicationGroup.build(context)
          when :create_snapshot
            Aws::ElastiCache::Endpoints::CreateSnapshot.build(context)
          when :create_user
            Aws::ElastiCache::Endpoints::CreateUser.build(context)
          when :create_user_group
            Aws::ElastiCache::Endpoints::CreateUserGroup.build(context)
          when :decrease_node_groups_in_global_replication_group
            Aws::ElastiCache::Endpoints::DecreaseNodeGroupsInGlobalReplicationGroup.build(context)
          when :decrease_replica_count
            Aws::ElastiCache::Endpoints::DecreaseReplicaCount.build(context)
          when :delete_cache_cluster
            Aws::ElastiCache::Endpoints::DeleteCacheCluster.build(context)
          when :delete_cache_parameter_group
            Aws::ElastiCache::Endpoints::DeleteCacheParameterGroup.build(context)
          when :delete_cache_security_group
            Aws::ElastiCache::Endpoints::DeleteCacheSecurityGroup.build(context)
          when :delete_cache_subnet_group
            Aws::ElastiCache::Endpoints::DeleteCacheSubnetGroup.build(context)
          when :delete_global_replication_group
            Aws::ElastiCache::Endpoints::DeleteGlobalReplicationGroup.build(context)
          when :delete_replication_group
            Aws::ElastiCache::Endpoints::DeleteReplicationGroup.build(context)
          when :delete_snapshot
            Aws::ElastiCache::Endpoints::DeleteSnapshot.build(context)
          when :delete_user
            Aws::ElastiCache::Endpoints::DeleteUser.build(context)
          when :delete_user_group
            Aws::ElastiCache::Endpoints::DeleteUserGroup.build(context)
          when :describe_cache_clusters
            Aws::ElastiCache::Endpoints::DescribeCacheClusters.build(context)
          when :describe_cache_engine_versions
            Aws::ElastiCache::Endpoints::DescribeCacheEngineVersions.build(context)
          when :describe_cache_parameter_groups
            Aws::ElastiCache::Endpoints::DescribeCacheParameterGroups.build(context)
          when :describe_cache_parameters
            Aws::ElastiCache::Endpoints::DescribeCacheParameters.build(context)
          when :describe_cache_security_groups
            Aws::ElastiCache::Endpoints::DescribeCacheSecurityGroups.build(context)
          when :describe_cache_subnet_groups
            Aws::ElastiCache::Endpoints::DescribeCacheSubnetGroups.build(context)
          when :describe_engine_default_parameters
            Aws::ElastiCache::Endpoints::DescribeEngineDefaultParameters.build(context)
          when :describe_events
            Aws::ElastiCache::Endpoints::DescribeEvents.build(context)
          when :describe_global_replication_groups
            Aws::ElastiCache::Endpoints::DescribeGlobalReplicationGroups.build(context)
          when :describe_replication_groups
            Aws::ElastiCache::Endpoints::DescribeReplicationGroups.build(context)
          when :describe_reserved_cache_nodes
            Aws::ElastiCache::Endpoints::DescribeReservedCacheNodes.build(context)
          when :describe_reserved_cache_nodes_offerings
            Aws::ElastiCache::Endpoints::DescribeReservedCacheNodesOfferings.build(context)
          when :describe_service_updates
            Aws::ElastiCache::Endpoints::DescribeServiceUpdates.build(context)
          when :describe_snapshots
            Aws::ElastiCache::Endpoints::DescribeSnapshots.build(context)
          when :describe_update_actions
            Aws::ElastiCache::Endpoints::DescribeUpdateActions.build(context)
          when :describe_user_groups
            Aws::ElastiCache::Endpoints::DescribeUserGroups.build(context)
          when :describe_users
            Aws::ElastiCache::Endpoints::DescribeUsers.build(context)
          when :disassociate_global_replication_group
            Aws::ElastiCache::Endpoints::DisassociateGlobalReplicationGroup.build(context)
          when :failover_global_replication_group
            Aws::ElastiCache::Endpoints::FailoverGlobalReplicationGroup.build(context)
          when :increase_node_groups_in_global_replication_group
            Aws::ElastiCache::Endpoints::IncreaseNodeGroupsInGlobalReplicationGroup.build(context)
          when :increase_replica_count
            Aws::ElastiCache::Endpoints::IncreaseReplicaCount.build(context)
          when :list_allowed_node_type_modifications
            Aws::ElastiCache::Endpoints::ListAllowedNodeTypeModifications.build(context)
          when :list_tags_for_resource
            Aws::ElastiCache::Endpoints::ListTagsForResource.build(context)
          when :modify_cache_cluster
            Aws::ElastiCache::Endpoints::ModifyCacheCluster.build(context)
          when :modify_cache_parameter_group
            Aws::ElastiCache::Endpoints::ModifyCacheParameterGroup.build(context)
          when :modify_cache_subnet_group
            Aws::ElastiCache::Endpoints::ModifyCacheSubnetGroup.build(context)
          when :modify_global_replication_group
            Aws::ElastiCache::Endpoints::ModifyGlobalReplicationGroup.build(context)
          when :modify_replication_group
            Aws::ElastiCache::Endpoints::ModifyReplicationGroup.build(context)
          when :modify_replication_group_shard_configuration
            Aws::ElastiCache::Endpoints::ModifyReplicationGroupShardConfiguration.build(context)
          when :modify_user
            Aws::ElastiCache::Endpoints::ModifyUser.build(context)
          when :modify_user_group
            Aws::ElastiCache::Endpoints::ModifyUserGroup.build(context)
          when :purchase_reserved_cache_nodes_offering
            Aws::ElastiCache::Endpoints::PurchaseReservedCacheNodesOffering.build(context)
          when :rebalance_slots_in_global_replication_group
            Aws::ElastiCache::Endpoints::RebalanceSlotsInGlobalReplicationGroup.build(context)
          when :reboot_cache_cluster
            Aws::ElastiCache::Endpoints::RebootCacheCluster.build(context)
          when :remove_tags_from_resource
            Aws::ElastiCache::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_cache_parameter_group
            Aws::ElastiCache::Endpoints::ResetCacheParameterGroup.build(context)
          when :revoke_cache_security_group_ingress
            Aws::ElastiCache::Endpoints::RevokeCacheSecurityGroupIngress.build(context)
          when :start_migration
            Aws::ElastiCache::Endpoints::StartMigration.build(context)
          when :test_failover
            Aws::ElastiCache::Endpoints::TestFailover.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
