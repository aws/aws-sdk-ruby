# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RDS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RDS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RDS::EndpointParameters`'
      ) do |cfg|
        Aws::RDS::EndpointProvider.new
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
            Aws::RDS::Endpoints::AddRoleToDBCluster.build(context)
          when :add_role_to_db_instance
            Aws::RDS::Endpoints::AddRoleToDBInstance.build(context)
          when :add_source_identifier_to_subscription
            Aws::RDS::Endpoints::AddSourceIdentifierToSubscription.build(context)
          when :add_tags_to_resource
            Aws::RDS::Endpoints::AddTagsToResource.build(context)
          when :apply_pending_maintenance_action
            Aws::RDS::Endpoints::ApplyPendingMaintenanceAction.build(context)
          when :authorize_db_security_group_ingress
            Aws::RDS::Endpoints::AuthorizeDBSecurityGroupIngress.build(context)
          when :backtrack_db_cluster
            Aws::RDS::Endpoints::BacktrackDBCluster.build(context)
          when :cancel_export_task
            Aws::RDS::Endpoints::CancelExportTask.build(context)
          when :copy_db_cluster_parameter_group
            Aws::RDS::Endpoints::CopyDBClusterParameterGroup.build(context)
          when :copy_db_cluster_snapshot
            Aws::RDS::Endpoints::CopyDBClusterSnapshot.build(context)
          when :copy_db_parameter_group
            Aws::RDS::Endpoints::CopyDBParameterGroup.build(context)
          when :copy_db_snapshot
            Aws::RDS::Endpoints::CopyDBSnapshot.build(context)
          when :copy_option_group
            Aws::RDS::Endpoints::CopyOptionGroup.build(context)
          when :create_blue_green_deployment
            Aws::RDS::Endpoints::CreateBlueGreenDeployment.build(context)
          when :create_custom_db_engine_version
            Aws::RDS::Endpoints::CreateCustomDBEngineVersion.build(context)
          when :create_db_cluster
            Aws::RDS::Endpoints::CreateDBCluster.build(context)
          when :create_db_cluster_endpoint
            Aws::RDS::Endpoints::CreateDBClusterEndpoint.build(context)
          when :create_db_cluster_parameter_group
            Aws::RDS::Endpoints::CreateDBClusterParameterGroup.build(context)
          when :create_db_cluster_snapshot
            Aws::RDS::Endpoints::CreateDBClusterSnapshot.build(context)
          when :create_db_instance
            Aws::RDS::Endpoints::CreateDBInstance.build(context)
          when :create_db_instance_read_replica
            Aws::RDS::Endpoints::CreateDBInstanceReadReplica.build(context)
          when :create_db_parameter_group
            Aws::RDS::Endpoints::CreateDBParameterGroup.build(context)
          when :create_db_proxy
            Aws::RDS::Endpoints::CreateDBProxy.build(context)
          when :create_db_proxy_endpoint
            Aws::RDS::Endpoints::CreateDBProxyEndpoint.build(context)
          when :create_db_security_group
            Aws::RDS::Endpoints::CreateDBSecurityGroup.build(context)
          when :create_db_snapshot
            Aws::RDS::Endpoints::CreateDBSnapshot.build(context)
          when :create_db_subnet_group
            Aws::RDS::Endpoints::CreateDBSubnetGroup.build(context)
          when :create_event_subscription
            Aws::RDS::Endpoints::CreateEventSubscription.build(context)
          when :create_global_cluster
            Aws::RDS::Endpoints::CreateGlobalCluster.build(context)
          when :create_option_group
            Aws::RDS::Endpoints::CreateOptionGroup.build(context)
          when :delete_blue_green_deployment
            Aws::RDS::Endpoints::DeleteBlueGreenDeployment.build(context)
          when :delete_custom_db_engine_version
            Aws::RDS::Endpoints::DeleteCustomDBEngineVersion.build(context)
          when :delete_db_cluster
            Aws::RDS::Endpoints::DeleteDBCluster.build(context)
          when :delete_db_cluster_endpoint
            Aws::RDS::Endpoints::DeleteDBClusterEndpoint.build(context)
          when :delete_db_cluster_parameter_group
            Aws::RDS::Endpoints::DeleteDBClusterParameterGroup.build(context)
          when :delete_db_cluster_snapshot
            Aws::RDS::Endpoints::DeleteDBClusterSnapshot.build(context)
          when :delete_db_instance
            Aws::RDS::Endpoints::DeleteDBInstance.build(context)
          when :delete_db_instance_automated_backup
            Aws::RDS::Endpoints::DeleteDBInstanceAutomatedBackup.build(context)
          when :delete_db_parameter_group
            Aws::RDS::Endpoints::DeleteDBParameterGroup.build(context)
          when :delete_db_proxy
            Aws::RDS::Endpoints::DeleteDBProxy.build(context)
          when :delete_db_proxy_endpoint
            Aws::RDS::Endpoints::DeleteDBProxyEndpoint.build(context)
          when :delete_db_security_group
            Aws::RDS::Endpoints::DeleteDBSecurityGroup.build(context)
          when :delete_db_snapshot
            Aws::RDS::Endpoints::DeleteDBSnapshot.build(context)
          when :delete_db_subnet_group
            Aws::RDS::Endpoints::DeleteDBSubnetGroup.build(context)
          when :delete_event_subscription
            Aws::RDS::Endpoints::DeleteEventSubscription.build(context)
          when :delete_global_cluster
            Aws::RDS::Endpoints::DeleteGlobalCluster.build(context)
          when :delete_option_group
            Aws::RDS::Endpoints::DeleteOptionGroup.build(context)
          when :deregister_db_proxy_targets
            Aws::RDS::Endpoints::DeregisterDBProxyTargets.build(context)
          when :describe_account_attributes
            Aws::RDS::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_blue_green_deployments
            Aws::RDS::Endpoints::DescribeBlueGreenDeployments.build(context)
          when :describe_certificates
            Aws::RDS::Endpoints::DescribeCertificates.build(context)
          when :describe_db_cluster_backtracks
            Aws::RDS::Endpoints::DescribeDBClusterBacktracks.build(context)
          when :describe_db_cluster_endpoints
            Aws::RDS::Endpoints::DescribeDBClusterEndpoints.build(context)
          when :describe_db_cluster_parameter_groups
            Aws::RDS::Endpoints::DescribeDBClusterParameterGroups.build(context)
          when :describe_db_cluster_parameters
            Aws::RDS::Endpoints::DescribeDBClusterParameters.build(context)
          when :describe_db_cluster_snapshot_attributes
            Aws::RDS::Endpoints::DescribeDBClusterSnapshotAttributes.build(context)
          when :describe_db_cluster_snapshots
            Aws::RDS::Endpoints::DescribeDBClusterSnapshots.build(context)
          when :describe_db_clusters
            Aws::RDS::Endpoints::DescribeDBClusters.build(context)
          when :describe_db_engine_versions
            Aws::RDS::Endpoints::DescribeDBEngineVersions.build(context)
          when :describe_db_instance_automated_backups
            Aws::RDS::Endpoints::DescribeDBInstanceAutomatedBackups.build(context)
          when :describe_db_instances
            Aws::RDS::Endpoints::DescribeDBInstances.build(context)
          when :describe_db_log_files
            Aws::RDS::Endpoints::DescribeDBLogFiles.build(context)
          when :describe_db_parameter_groups
            Aws::RDS::Endpoints::DescribeDBParameterGroups.build(context)
          when :describe_db_parameters
            Aws::RDS::Endpoints::DescribeDBParameters.build(context)
          when :describe_db_proxies
            Aws::RDS::Endpoints::DescribeDBProxies.build(context)
          when :describe_db_proxy_endpoints
            Aws::RDS::Endpoints::DescribeDBProxyEndpoints.build(context)
          when :describe_db_proxy_target_groups
            Aws::RDS::Endpoints::DescribeDBProxyTargetGroups.build(context)
          when :describe_db_proxy_targets
            Aws::RDS::Endpoints::DescribeDBProxyTargets.build(context)
          when :describe_db_security_groups
            Aws::RDS::Endpoints::DescribeDBSecurityGroups.build(context)
          when :describe_db_snapshot_attributes
            Aws::RDS::Endpoints::DescribeDBSnapshotAttributes.build(context)
          when :describe_db_snapshots
            Aws::RDS::Endpoints::DescribeDBSnapshots.build(context)
          when :describe_db_subnet_groups
            Aws::RDS::Endpoints::DescribeDBSubnetGroups.build(context)
          when :describe_engine_default_cluster_parameters
            Aws::RDS::Endpoints::DescribeEngineDefaultClusterParameters.build(context)
          when :describe_engine_default_parameters
            Aws::RDS::Endpoints::DescribeEngineDefaultParameters.build(context)
          when :describe_event_categories
            Aws::RDS::Endpoints::DescribeEventCategories.build(context)
          when :describe_event_subscriptions
            Aws::RDS::Endpoints::DescribeEventSubscriptions.build(context)
          when :describe_events
            Aws::RDS::Endpoints::DescribeEvents.build(context)
          when :describe_export_tasks
            Aws::RDS::Endpoints::DescribeExportTasks.build(context)
          when :describe_global_clusters
            Aws::RDS::Endpoints::DescribeGlobalClusters.build(context)
          when :describe_option_group_options
            Aws::RDS::Endpoints::DescribeOptionGroupOptions.build(context)
          when :describe_option_groups
            Aws::RDS::Endpoints::DescribeOptionGroups.build(context)
          when :describe_orderable_db_instance_options
            Aws::RDS::Endpoints::DescribeOrderableDBInstanceOptions.build(context)
          when :describe_pending_maintenance_actions
            Aws::RDS::Endpoints::DescribePendingMaintenanceActions.build(context)
          when :describe_reserved_db_instances
            Aws::RDS::Endpoints::DescribeReservedDBInstances.build(context)
          when :describe_reserved_db_instances_offerings
            Aws::RDS::Endpoints::DescribeReservedDBInstancesOfferings.build(context)
          when :describe_source_regions
            Aws::RDS::Endpoints::DescribeSourceRegions.build(context)
          when :describe_valid_db_instance_modifications
            Aws::RDS::Endpoints::DescribeValidDBInstanceModifications.build(context)
          when :download_db_log_file_portion
            Aws::RDS::Endpoints::DownloadDBLogFilePortion.build(context)
          when :failover_db_cluster
            Aws::RDS::Endpoints::FailoverDBCluster.build(context)
          when :failover_global_cluster
            Aws::RDS::Endpoints::FailoverGlobalCluster.build(context)
          when :list_tags_for_resource
            Aws::RDS::Endpoints::ListTagsForResource.build(context)
          when :modify_activity_stream
            Aws::RDS::Endpoints::ModifyActivityStream.build(context)
          when :modify_certificates
            Aws::RDS::Endpoints::ModifyCertificates.build(context)
          when :modify_current_db_cluster_capacity
            Aws::RDS::Endpoints::ModifyCurrentDBClusterCapacity.build(context)
          when :modify_custom_db_engine_version
            Aws::RDS::Endpoints::ModifyCustomDBEngineVersion.build(context)
          when :modify_db_cluster
            Aws::RDS::Endpoints::ModifyDBCluster.build(context)
          when :modify_db_cluster_endpoint
            Aws::RDS::Endpoints::ModifyDBClusterEndpoint.build(context)
          when :modify_db_cluster_parameter_group
            Aws::RDS::Endpoints::ModifyDBClusterParameterGroup.build(context)
          when :modify_db_cluster_snapshot_attribute
            Aws::RDS::Endpoints::ModifyDBClusterSnapshotAttribute.build(context)
          when :modify_db_instance
            Aws::RDS::Endpoints::ModifyDBInstance.build(context)
          when :modify_db_parameter_group
            Aws::RDS::Endpoints::ModifyDBParameterGroup.build(context)
          when :modify_db_proxy
            Aws::RDS::Endpoints::ModifyDBProxy.build(context)
          when :modify_db_proxy_endpoint
            Aws::RDS::Endpoints::ModifyDBProxyEndpoint.build(context)
          when :modify_db_proxy_target_group
            Aws::RDS::Endpoints::ModifyDBProxyTargetGroup.build(context)
          when :modify_db_snapshot
            Aws::RDS::Endpoints::ModifyDBSnapshot.build(context)
          when :modify_db_snapshot_attribute
            Aws::RDS::Endpoints::ModifyDBSnapshotAttribute.build(context)
          when :modify_db_subnet_group
            Aws::RDS::Endpoints::ModifyDBSubnetGroup.build(context)
          when :modify_event_subscription
            Aws::RDS::Endpoints::ModifyEventSubscription.build(context)
          when :modify_global_cluster
            Aws::RDS::Endpoints::ModifyGlobalCluster.build(context)
          when :modify_option_group
            Aws::RDS::Endpoints::ModifyOptionGroup.build(context)
          when :promote_read_replica
            Aws::RDS::Endpoints::PromoteReadReplica.build(context)
          when :promote_read_replica_db_cluster
            Aws::RDS::Endpoints::PromoteReadReplicaDBCluster.build(context)
          when :purchase_reserved_db_instances_offering
            Aws::RDS::Endpoints::PurchaseReservedDBInstancesOffering.build(context)
          when :reboot_db_cluster
            Aws::RDS::Endpoints::RebootDBCluster.build(context)
          when :reboot_db_instance
            Aws::RDS::Endpoints::RebootDBInstance.build(context)
          when :register_db_proxy_targets
            Aws::RDS::Endpoints::RegisterDBProxyTargets.build(context)
          when :remove_from_global_cluster
            Aws::RDS::Endpoints::RemoveFromGlobalCluster.build(context)
          when :remove_role_from_db_cluster
            Aws::RDS::Endpoints::RemoveRoleFromDBCluster.build(context)
          when :remove_role_from_db_instance
            Aws::RDS::Endpoints::RemoveRoleFromDBInstance.build(context)
          when :remove_source_identifier_from_subscription
            Aws::RDS::Endpoints::RemoveSourceIdentifierFromSubscription.build(context)
          when :remove_tags_from_resource
            Aws::RDS::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_db_cluster_parameter_group
            Aws::RDS::Endpoints::ResetDBClusterParameterGroup.build(context)
          when :reset_db_parameter_group
            Aws::RDS::Endpoints::ResetDBParameterGroup.build(context)
          when :restore_db_cluster_from_s3
            Aws::RDS::Endpoints::RestoreDBClusterFromS3.build(context)
          when :restore_db_cluster_from_snapshot
            Aws::RDS::Endpoints::RestoreDBClusterFromSnapshot.build(context)
          when :restore_db_cluster_to_point_in_time
            Aws::RDS::Endpoints::RestoreDBClusterToPointInTime.build(context)
          when :restore_db_instance_from_db_snapshot
            Aws::RDS::Endpoints::RestoreDBInstanceFromDBSnapshot.build(context)
          when :restore_db_instance_from_s3
            Aws::RDS::Endpoints::RestoreDBInstanceFromS3.build(context)
          when :restore_db_instance_to_point_in_time
            Aws::RDS::Endpoints::RestoreDBInstanceToPointInTime.build(context)
          when :revoke_db_security_group_ingress
            Aws::RDS::Endpoints::RevokeDBSecurityGroupIngress.build(context)
          when :start_activity_stream
            Aws::RDS::Endpoints::StartActivityStream.build(context)
          when :start_db_cluster
            Aws::RDS::Endpoints::StartDBCluster.build(context)
          when :start_db_instance
            Aws::RDS::Endpoints::StartDBInstance.build(context)
          when :start_db_instance_automated_backups_replication
            Aws::RDS::Endpoints::StartDBInstanceAutomatedBackupsReplication.build(context)
          when :start_export_task
            Aws::RDS::Endpoints::StartExportTask.build(context)
          when :stop_activity_stream
            Aws::RDS::Endpoints::StopActivityStream.build(context)
          when :stop_db_cluster
            Aws::RDS::Endpoints::StopDBCluster.build(context)
          when :stop_db_instance
            Aws::RDS::Endpoints::StopDBInstance.build(context)
          when :stop_db_instance_automated_backups_replication
            Aws::RDS::Endpoints::StopDBInstanceAutomatedBackupsReplication.build(context)
          when :switchover_blue_green_deployment
            Aws::RDS::Endpoints::SwitchoverBlueGreenDeployment.build(context)
          when :switchover_read_replica
            Aws::RDS::Endpoints::SwitchoverReadReplica.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
