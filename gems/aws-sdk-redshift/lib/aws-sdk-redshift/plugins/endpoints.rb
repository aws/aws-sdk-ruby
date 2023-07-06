# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Redshift
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Redshift::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Redshift::EndpointParameters`'
      ) do |cfg|
        Aws::Redshift::EndpointProvider.new
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
          when :accept_reserved_node_exchange
            Aws::Redshift::Endpoints::AcceptReservedNodeExchange.build(context)
          when :add_partner
            Aws::Redshift::Endpoints::AddPartner.build(context)
          when :associate_data_share_consumer
            Aws::Redshift::Endpoints::AssociateDataShareConsumer.build(context)
          when :authorize_cluster_security_group_ingress
            Aws::Redshift::Endpoints::AuthorizeClusterSecurityGroupIngress.build(context)
          when :authorize_data_share
            Aws::Redshift::Endpoints::AuthorizeDataShare.build(context)
          when :authorize_endpoint_access
            Aws::Redshift::Endpoints::AuthorizeEndpointAccess.build(context)
          when :authorize_snapshot_access
            Aws::Redshift::Endpoints::AuthorizeSnapshotAccess.build(context)
          when :batch_delete_cluster_snapshots
            Aws::Redshift::Endpoints::BatchDeleteClusterSnapshots.build(context)
          when :batch_modify_cluster_snapshots
            Aws::Redshift::Endpoints::BatchModifyClusterSnapshots.build(context)
          when :cancel_resize
            Aws::Redshift::Endpoints::CancelResize.build(context)
          when :copy_cluster_snapshot
            Aws::Redshift::Endpoints::CopyClusterSnapshot.build(context)
          when :create_authentication_profile
            Aws::Redshift::Endpoints::CreateAuthenticationProfile.build(context)
          when :create_cluster
            Aws::Redshift::Endpoints::CreateCluster.build(context)
          when :create_cluster_parameter_group
            Aws::Redshift::Endpoints::CreateClusterParameterGroup.build(context)
          when :create_cluster_security_group
            Aws::Redshift::Endpoints::CreateClusterSecurityGroup.build(context)
          when :create_cluster_snapshot
            Aws::Redshift::Endpoints::CreateClusterSnapshot.build(context)
          when :create_cluster_subnet_group
            Aws::Redshift::Endpoints::CreateClusterSubnetGroup.build(context)
          when :create_custom_domain_association
            Aws::Redshift::Endpoints::CreateCustomDomainAssociation.build(context)
          when :create_endpoint_access
            Aws::Redshift::Endpoints::CreateEndpointAccess.build(context)
          when :create_event_subscription
            Aws::Redshift::Endpoints::CreateEventSubscription.build(context)
          when :create_hsm_client_certificate
            Aws::Redshift::Endpoints::CreateHsmClientCertificate.build(context)
          when :create_hsm_configuration
            Aws::Redshift::Endpoints::CreateHsmConfiguration.build(context)
          when :create_scheduled_action
            Aws::Redshift::Endpoints::CreateScheduledAction.build(context)
          when :create_snapshot_copy_grant
            Aws::Redshift::Endpoints::CreateSnapshotCopyGrant.build(context)
          when :create_snapshot_schedule
            Aws::Redshift::Endpoints::CreateSnapshotSchedule.build(context)
          when :create_tags
            Aws::Redshift::Endpoints::CreateTags.build(context)
          when :create_usage_limit
            Aws::Redshift::Endpoints::CreateUsageLimit.build(context)
          when :deauthorize_data_share
            Aws::Redshift::Endpoints::DeauthorizeDataShare.build(context)
          when :delete_authentication_profile
            Aws::Redshift::Endpoints::DeleteAuthenticationProfile.build(context)
          when :delete_cluster
            Aws::Redshift::Endpoints::DeleteCluster.build(context)
          when :delete_cluster_parameter_group
            Aws::Redshift::Endpoints::DeleteClusterParameterGroup.build(context)
          when :delete_cluster_security_group
            Aws::Redshift::Endpoints::DeleteClusterSecurityGroup.build(context)
          when :delete_cluster_snapshot
            Aws::Redshift::Endpoints::DeleteClusterSnapshot.build(context)
          when :delete_cluster_subnet_group
            Aws::Redshift::Endpoints::DeleteClusterSubnetGroup.build(context)
          when :delete_custom_domain_association
            Aws::Redshift::Endpoints::DeleteCustomDomainAssociation.build(context)
          when :delete_endpoint_access
            Aws::Redshift::Endpoints::DeleteEndpointAccess.build(context)
          when :delete_event_subscription
            Aws::Redshift::Endpoints::DeleteEventSubscription.build(context)
          when :delete_hsm_client_certificate
            Aws::Redshift::Endpoints::DeleteHsmClientCertificate.build(context)
          when :delete_hsm_configuration
            Aws::Redshift::Endpoints::DeleteHsmConfiguration.build(context)
          when :delete_partner
            Aws::Redshift::Endpoints::DeletePartner.build(context)
          when :delete_scheduled_action
            Aws::Redshift::Endpoints::DeleteScheduledAction.build(context)
          when :delete_snapshot_copy_grant
            Aws::Redshift::Endpoints::DeleteSnapshotCopyGrant.build(context)
          when :delete_snapshot_schedule
            Aws::Redshift::Endpoints::DeleteSnapshotSchedule.build(context)
          when :delete_tags
            Aws::Redshift::Endpoints::DeleteTags.build(context)
          when :delete_usage_limit
            Aws::Redshift::Endpoints::DeleteUsageLimit.build(context)
          when :describe_account_attributes
            Aws::Redshift::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_authentication_profiles
            Aws::Redshift::Endpoints::DescribeAuthenticationProfiles.build(context)
          when :describe_cluster_db_revisions
            Aws::Redshift::Endpoints::DescribeClusterDbRevisions.build(context)
          when :describe_cluster_parameter_groups
            Aws::Redshift::Endpoints::DescribeClusterParameterGroups.build(context)
          when :describe_cluster_parameters
            Aws::Redshift::Endpoints::DescribeClusterParameters.build(context)
          when :describe_cluster_security_groups
            Aws::Redshift::Endpoints::DescribeClusterSecurityGroups.build(context)
          when :describe_cluster_snapshots
            Aws::Redshift::Endpoints::DescribeClusterSnapshots.build(context)
          when :describe_cluster_subnet_groups
            Aws::Redshift::Endpoints::DescribeClusterSubnetGroups.build(context)
          when :describe_cluster_tracks
            Aws::Redshift::Endpoints::DescribeClusterTracks.build(context)
          when :describe_cluster_versions
            Aws::Redshift::Endpoints::DescribeClusterVersions.build(context)
          when :describe_clusters
            Aws::Redshift::Endpoints::DescribeClusters.build(context)
          when :describe_custom_domain_associations
            Aws::Redshift::Endpoints::DescribeCustomDomainAssociations.build(context)
          when :describe_data_shares
            Aws::Redshift::Endpoints::DescribeDataShares.build(context)
          when :describe_data_shares_for_consumer
            Aws::Redshift::Endpoints::DescribeDataSharesForConsumer.build(context)
          when :describe_data_shares_for_producer
            Aws::Redshift::Endpoints::DescribeDataSharesForProducer.build(context)
          when :describe_default_cluster_parameters
            Aws::Redshift::Endpoints::DescribeDefaultClusterParameters.build(context)
          when :describe_endpoint_access
            Aws::Redshift::Endpoints::DescribeEndpointAccess.build(context)
          when :describe_endpoint_authorization
            Aws::Redshift::Endpoints::DescribeEndpointAuthorization.build(context)
          when :describe_event_categories
            Aws::Redshift::Endpoints::DescribeEventCategories.build(context)
          when :describe_event_subscriptions
            Aws::Redshift::Endpoints::DescribeEventSubscriptions.build(context)
          when :describe_events
            Aws::Redshift::Endpoints::DescribeEvents.build(context)
          when :describe_hsm_client_certificates
            Aws::Redshift::Endpoints::DescribeHsmClientCertificates.build(context)
          when :describe_hsm_configurations
            Aws::Redshift::Endpoints::DescribeHsmConfigurations.build(context)
          when :describe_logging_status
            Aws::Redshift::Endpoints::DescribeLoggingStatus.build(context)
          when :describe_node_configuration_options
            Aws::Redshift::Endpoints::DescribeNodeConfigurationOptions.build(context)
          when :describe_orderable_cluster_options
            Aws::Redshift::Endpoints::DescribeOrderableClusterOptions.build(context)
          when :describe_partners
            Aws::Redshift::Endpoints::DescribePartners.build(context)
          when :describe_reserved_node_exchange_status
            Aws::Redshift::Endpoints::DescribeReservedNodeExchangeStatus.build(context)
          when :describe_reserved_node_offerings
            Aws::Redshift::Endpoints::DescribeReservedNodeOfferings.build(context)
          when :describe_reserved_nodes
            Aws::Redshift::Endpoints::DescribeReservedNodes.build(context)
          when :describe_resize
            Aws::Redshift::Endpoints::DescribeResize.build(context)
          when :describe_scheduled_actions
            Aws::Redshift::Endpoints::DescribeScheduledActions.build(context)
          when :describe_snapshot_copy_grants
            Aws::Redshift::Endpoints::DescribeSnapshotCopyGrants.build(context)
          when :describe_snapshot_schedules
            Aws::Redshift::Endpoints::DescribeSnapshotSchedules.build(context)
          when :describe_storage
            Aws::Redshift::Endpoints::DescribeStorage.build(context)
          when :describe_table_restore_status
            Aws::Redshift::Endpoints::DescribeTableRestoreStatus.build(context)
          when :describe_tags
            Aws::Redshift::Endpoints::DescribeTags.build(context)
          when :describe_usage_limits
            Aws::Redshift::Endpoints::DescribeUsageLimits.build(context)
          when :disable_logging
            Aws::Redshift::Endpoints::DisableLogging.build(context)
          when :disable_snapshot_copy
            Aws::Redshift::Endpoints::DisableSnapshotCopy.build(context)
          when :disassociate_data_share_consumer
            Aws::Redshift::Endpoints::DisassociateDataShareConsumer.build(context)
          when :enable_logging
            Aws::Redshift::Endpoints::EnableLogging.build(context)
          when :enable_snapshot_copy
            Aws::Redshift::Endpoints::EnableSnapshotCopy.build(context)
          when :get_cluster_credentials
            Aws::Redshift::Endpoints::GetClusterCredentials.build(context)
          when :get_cluster_credentials_with_iam
            Aws::Redshift::Endpoints::GetClusterCredentialsWithIAM.build(context)
          when :get_reserved_node_exchange_configuration_options
            Aws::Redshift::Endpoints::GetReservedNodeExchangeConfigurationOptions.build(context)
          when :get_reserved_node_exchange_offerings
            Aws::Redshift::Endpoints::GetReservedNodeExchangeOfferings.build(context)
          when :modify_aqua_configuration
            Aws::Redshift::Endpoints::ModifyAquaConfiguration.build(context)
          when :modify_authentication_profile
            Aws::Redshift::Endpoints::ModifyAuthenticationProfile.build(context)
          when :modify_cluster
            Aws::Redshift::Endpoints::ModifyCluster.build(context)
          when :modify_cluster_db_revision
            Aws::Redshift::Endpoints::ModifyClusterDbRevision.build(context)
          when :modify_cluster_iam_roles
            Aws::Redshift::Endpoints::ModifyClusterIamRoles.build(context)
          when :modify_cluster_maintenance
            Aws::Redshift::Endpoints::ModifyClusterMaintenance.build(context)
          when :modify_cluster_parameter_group
            Aws::Redshift::Endpoints::ModifyClusterParameterGroup.build(context)
          when :modify_cluster_snapshot
            Aws::Redshift::Endpoints::ModifyClusterSnapshot.build(context)
          when :modify_cluster_snapshot_schedule
            Aws::Redshift::Endpoints::ModifyClusterSnapshotSchedule.build(context)
          when :modify_cluster_subnet_group
            Aws::Redshift::Endpoints::ModifyClusterSubnetGroup.build(context)
          when :modify_custom_domain_association
            Aws::Redshift::Endpoints::ModifyCustomDomainAssociation.build(context)
          when :modify_endpoint_access
            Aws::Redshift::Endpoints::ModifyEndpointAccess.build(context)
          when :modify_event_subscription
            Aws::Redshift::Endpoints::ModifyEventSubscription.build(context)
          when :modify_scheduled_action
            Aws::Redshift::Endpoints::ModifyScheduledAction.build(context)
          when :modify_snapshot_copy_retention_period
            Aws::Redshift::Endpoints::ModifySnapshotCopyRetentionPeriod.build(context)
          when :modify_snapshot_schedule
            Aws::Redshift::Endpoints::ModifySnapshotSchedule.build(context)
          when :modify_usage_limit
            Aws::Redshift::Endpoints::ModifyUsageLimit.build(context)
          when :pause_cluster
            Aws::Redshift::Endpoints::PauseCluster.build(context)
          when :purchase_reserved_node_offering
            Aws::Redshift::Endpoints::PurchaseReservedNodeOffering.build(context)
          when :reboot_cluster
            Aws::Redshift::Endpoints::RebootCluster.build(context)
          when :reject_data_share
            Aws::Redshift::Endpoints::RejectDataShare.build(context)
          when :reset_cluster_parameter_group
            Aws::Redshift::Endpoints::ResetClusterParameterGroup.build(context)
          when :resize_cluster
            Aws::Redshift::Endpoints::ResizeCluster.build(context)
          when :restore_from_cluster_snapshot
            Aws::Redshift::Endpoints::RestoreFromClusterSnapshot.build(context)
          when :restore_table_from_cluster_snapshot
            Aws::Redshift::Endpoints::RestoreTableFromClusterSnapshot.build(context)
          when :resume_cluster
            Aws::Redshift::Endpoints::ResumeCluster.build(context)
          when :revoke_cluster_security_group_ingress
            Aws::Redshift::Endpoints::RevokeClusterSecurityGroupIngress.build(context)
          when :revoke_endpoint_access
            Aws::Redshift::Endpoints::RevokeEndpointAccess.build(context)
          when :revoke_snapshot_access
            Aws::Redshift::Endpoints::RevokeSnapshotAccess.build(context)
          when :rotate_encryption_key
            Aws::Redshift::Endpoints::RotateEncryptionKey.build(context)
          when :update_partner_status
            Aws::Redshift::Endpoints::UpdatePartnerStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
