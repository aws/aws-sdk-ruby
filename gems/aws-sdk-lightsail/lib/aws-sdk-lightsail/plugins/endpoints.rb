# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Lightsail
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Lightsail::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Lightsail::EndpointParameters`'
      ) do |cfg|
        Aws::Lightsail::EndpointProvider.new
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
          when :allocate_static_ip
            Aws::Lightsail::Endpoints::AllocateStaticIp.build(context)
          when :attach_certificate_to_distribution
            Aws::Lightsail::Endpoints::AttachCertificateToDistribution.build(context)
          when :attach_disk
            Aws::Lightsail::Endpoints::AttachDisk.build(context)
          when :attach_instances_to_load_balancer
            Aws::Lightsail::Endpoints::AttachInstancesToLoadBalancer.build(context)
          when :attach_load_balancer_tls_certificate
            Aws::Lightsail::Endpoints::AttachLoadBalancerTlsCertificate.build(context)
          when :attach_static_ip
            Aws::Lightsail::Endpoints::AttachStaticIp.build(context)
          when :close_instance_public_ports
            Aws::Lightsail::Endpoints::CloseInstancePublicPorts.build(context)
          when :copy_snapshot
            Aws::Lightsail::Endpoints::CopySnapshot.build(context)
          when :create_bucket
            Aws::Lightsail::Endpoints::CreateBucket.build(context)
          when :create_bucket_access_key
            Aws::Lightsail::Endpoints::CreateBucketAccessKey.build(context)
          when :create_certificate
            Aws::Lightsail::Endpoints::CreateCertificate.build(context)
          when :create_cloud_formation_stack
            Aws::Lightsail::Endpoints::CreateCloudFormationStack.build(context)
          when :create_contact_method
            Aws::Lightsail::Endpoints::CreateContactMethod.build(context)
          when :create_container_service
            Aws::Lightsail::Endpoints::CreateContainerService.build(context)
          when :create_container_service_deployment
            Aws::Lightsail::Endpoints::CreateContainerServiceDeployment.build(context)
          when :create_container_service_registry_login
            Aws::Lightsail::Endpoints::CreateContainerServiceRegistryLogin.build(context)
          when :create_disk
            Aws::Lightsail::Endpoints::CreateDisk.build(context)
          when :create_disk_from_snapshot
            Aws::Lightsail::Endpoints::CreateDiskFromSnapshot.build(context)
          when :create_disk_snapshot
            Aws::Lightsail::Endpoints::CreateDiskSnapshot.build(context)
          when :create_distribution
            Aws::Lightsail::Endpoints::CreateDistribution.build(context)
          when :create_domain
            Aws::Lightsail::Endpoints::CreateDomain.build(context)
          when :create_domain_entry
            Aws::Lightsail::Endpoints::CreateDomainEntry.build(context)
          when :create_gui_session_access_details
            Aws::Lightsail::Endpoints::CreateGUISessionAccessDetails.build(context)
          when :create_instance_snapshot
            Aws::Lightsail::Endpoints::CreateInstanceSnapshot.build(context)
          when :create_instances
            Aws::Lightsail::Endpoints::CreateInstances.build(context)
          when :create_instances_from_snapshot
            Aws::Lightsail::Endpoints::CreateInstancesFromSnapshot.build(context)
          when :create_key_pair
            Aws::Lightsail::Endpoints::CreateKeyPair.build(context)
          when :create_load_balancer
            Aws::Lightsail::Endpoints::CreateLoadBalancer.build(context)
          when :create_load_balancer_tls_certificate
            Aws::Lightsail::Endpoints::CreateLoadBalancerTlsCertificate.build(context)
          when :create_relational_database
            Aws::Lightsail::Endpoints::CreateRelationalDatabase.build(context)
          when :create_relational_database_from_snapshot
            Aws::Lightsail::Endpoints::CreateRelationalDatabaseFromSnapshot.build(context)
          when :create_relational_database_snapshot
            Aws::Lightsail::Endpoints::CreateRelationalDatabaseSnapshot.build(context)
          when :delete_alarm
            Aws::Lightsail::Endpoints::DeleteAlarm.build(context)
          when :delete_auto_snapshot
            Aws::Lightsail::Endpoints::DeleteAutoSnapshot.build(context)
          when :delete_bucket
            Aws::Lightsail::Endpoints::DeleteBucket.build(context)
          when :delete_bucket_access_key
            Aws::Lightsail::Endpoints::DeleteBucketAccessKey.build(context)
          when :delete_certificate
            Aws::Lightsail::Endpoints::DeleteCertificate.build(context)
          when :delete_contact_method
            Aws::Lightsail::Endpoints::DeleteContactMethod.build(context)
          when :delete_container_image
            Aws::Lightsail::Endpoints::DeleteContainerImage.build(context)
          when :delete_container_service
            Aws::Lightsail::Endpoints::DeleteContainerService.build(context)
          when :delete_disk
            Aws::Lightsail::Endpoints::DeleteDisk.build(context)
          when :delete_disk_snapshot
            Aws::Lightsail::Endpoints::DeleteDiskSnapshot.build(context)
          when :delete_distribution
            Aws::Lightsail::Endpoints::DeleteDistribution.build(context)
          when :delete_domain
            Aws::Lightsail::Endpoints::DeleteDomain.build(context)
          when :delete_domain_entry
            Aws::Lightsail::Endpoints::DeleteDomainEntry.build(context)
          when :delete_instance
            Aws::Lightsail::Endpoints::DeleteInstance.build(context)
          when :delete_instance_snapshot
            Aws::Lightsail::Endpoints::DeleteInstanceSnapshot.build(context)
          when :delete_key_pair
            Aws::Lightsail::Endpoints::DeleteKeyPair.build(context)
          when :delete_known_host_keys
            Aws::Lightsail::Endpoints::DeleteKnownHostKeys.build(context)
          when :delete_load_balancer
            Aws::Lightsail::Endpoints::DeleteLoadBalancer.build(context)
          when :delete_load_balancer_tls_certificate
            Aws::Lightsail::Endpoints::DeleteLoadBalancerTlsCertificate.build(context)
          when :delete_relational_database
            Aws::Lightsail::Endpoints::DeleteRelationalDatabase.build(context)
          when :delete_relational_database_snapshot
            Aws::Lightsail::Endpoints::DeleteRelationalDatabaseSnapshot.build(context)
          when :detach_certificate_from_distribution
            Aws::Lightsail::Endpoints::DetachCertificateFromDistribution.build(context)
          when :detach_disk
            Aws::Lightsail::Endpoints::DetachDisk.build(context)
          when :detach_instances_from_load_balancer
            Aws::Lightsail::Endpoints::DetachInstancesFromLoadBalancer.build(context)
          when :detach_static_ip
            Aws::Lightsail::Endpoints::DetachStaticIp.build(context)
          when :disable_add_on
            Aws::Lightsail::Endpoints::DisableAddOn.build(context)
          when :download_default_key_pair
            Aws::Lightsail::Endpoints::DownloadDefaultKeyPair.build(context)
          when :enable_add_on
            Aws::Lightsail::Endpoints::EnableAddOn.build(context)
          when :export_snapshot
            Aws::Lightsail::Endpoints::ExportSnapshot.build(context)
          when :get_active_names
            Aws::Lightsail::Endpoints::GetActiveNames.build(context)
          when :get_alarms
            Aws::Lightsail::Endpoints::GetAlarms.build(context)
          when :get_auto_snapshots
            Aws::Lightsail::Endpoints::GetAutoSnapshots.build(context)
          when :get_blueprints
            Aws::Lightsail::Endpoints::GetBlueprints.build(context)
          when :get_bucket_access_keys
            Aws::Lightsail::Endpoints::GetBucketAccessKeys.build(context)
          when :get_bucket_bundles
            Aws::Lightsail::Endpoints::GetBucketBundles.build(context)
          when :get_bucket_metric_data
            Aws::Lightsail::Endpoints::GetBucketMetricData.build(context)
          when :get_buckets
            Aws::Lightsail::Endpoints::GetBuckets.build(context)
          when :get_bundles
            Aws::Lightsail::Endpoints::GetBundles.build(context)
          when :get_certificates
            Aws::Lightsail::Endpoints::GetCertificates.build(context)
          when :get_cloud_formation_stack_records
            Aws::Lightsail::Endpoints::GetCloudFormationStackRecords.build(context)
          when :get_contact_methods
            Aws::Lightsail::Endpoints::GetContactMethods.build(context)
          when :get_container_api_metadata
            Aws::Lightsail::Endpoints::GetContainerAPIMetadata.build(context)
          when :get_container_images
            Aws::Lightsail::Endpoints::GetContainerImages.build(context)
          when :get_container_log
            Aws::Lightsail::Endpoints::GetContainerLog.build(context)
          when :get_container_service_deployments
            Aws::Lightsail::Endpoints::GetContainerServiceDeployments.build(context)
          when :get_container_service_metric_data
            Aws::Lightsail::Endpoints::GetContainerServiceMetricData.build(context)
          when :get_container_service_powers
            Aws::Lightsail::Endpoints::GetContainerServicePowers.build(context)
          when :get_container_services
            Aws::Lightsail::Endpoints::GetContainerServices.build(context)
          when :get_cost_estimate
            Aws::Lightsail::Endpoints::GetCostEstimate.build(context)
          when :get_disk
            Aws::Lightsail::Endpoints::GetDisk.build(context)
          when :get_disk_snapshot
            Aws::Lightsail::Endpoints::GetDiskSnapshot.build(context)
          when :get_disk_snapshots
            Aws::Lightsail::Endpoints::GetDiskSnapshots.build(context)
          when :get_disks
            Aws::Lightsail::Endpoints::GetDisks.build(context)
          when :get_distribution_bundles
            Aws::Lightsail::Endpoints::GetDistributionBundles.build(context)
          when :get_distribution_latest_cache_reset
            Aws::Lightsail::Endpoints::GetDistributionLatestCacheReset.build(context)
          when :get_distribution_metric_data
            Aws::Lightsail::Endpoints::GetDistributionMetricData.build(context)
          when :get_distributions
            Aws::Lightsail::Endpoints::GetDistributions.build(context)
          when :get_domain
            Aws::Lightsail::Endpoints::GetDomain.build(context)
          when :get_domains
            Aws::Lightsail::Endpoints::GetDomains.build(context)
          when :get_export_snapshot_records
            Aws::Lightsail::Endpoints::GetExportSnapshotRecords.build(context)
          when :get_instance
            Aws::Lightsail::Endpoints::GetInstance.build(context)
          when :get_instance_access_details
            Aws::Lightsail::Endpoints::GetInstanceAccessDetails.build(context)
          when :get_instance_metric_data
            Aws::Lightsail::Endpoints::GetInstanceMetricData.build(context)
          when :get_instance_port_states
            Aws::Lightsail::Endpoints::GetInstancePortStates.build(context)
          when :get_instance_snapshot
            Aws::Lightsail::Endpoints::GetInstanceSnapshot.build(context)
          when :get_instance_snapshots
            Aws::Lightsail::Endpoints::GetInstanceSnapshots.build(context)
          when :get_instance_state
            Aws::Lightsail::Endpoints::GetInstanceState.build(context)
          when :get_instances
            Aws::Lightsail::Endpoints::GetInstances.build(context)
          when :get_key_pair
            Aws::Lightsail::Endpoints::GetKeyPair.build(context)
          when :get_key_pairs
            Aws::Lightsail::Endpoints::GetKeyPairs.build(context)
          when :get_load_balancer
            Aws::Lightsail::Endpoints::GetLoadBalancer.build(context)
          when :get_load_balancer_metric_data
            Aws::Lightsail::Endpoints::GetLoadBalancerMetricData.build(context)
          when :get_load_balancer_tls_certificates
            Aws::Lightsail::Endpoints::GetLoadBalancerTlsCertificates.build(context)
          when :get_load_balancer_tls_policies
            Aws::Lightsail::Endpoints::GetLoadBalancerTlsPolicies.build(context)
          when :get_load_balancers
            Aws::Lightsail::Endpoints::GetLoadBalancers.build(context)
          when :get_operation
            Aws::Lightsail::Endpoints::GetOperation.build(context)
          when :get_operations
            Aws::Lightsail::Endpoints::GetOperations.build(context)
          when :get_operations_for_resource
            Aws::Lightsail::Endpoints::GetOperationsForResource.build(context)
          when :get_regions
            Aws::Lightsail::Endpoints::GetRegions.build(context)
          when :get_relational_database
            Aws::Lightsail::Endpoints::GetRelationalDatabase.build(context)
          when :get_relational_database_blueprints
            Aws::Lightsail::Endpoints::GetRelationalDatabaseBlueprints.build(context)
          when :get_relational_database_bundles
            Aws::Lightsail::Endpoints::GetRelationalDatabaseBundles.build(context)
          when :get_relational_database_events
            Aws::Lightsail::Endpoints::GetRelationalDatabaseEvents.build(context)
          when :get_relational_database_log_events
            Aws::Lightsail::Endpoints::GetRelationalDatabaseLogEvents.build(context)
          when :get_relational_database_log_streams
            Aws::Lightsail::Endpoints::GetRelationalDatabaseLogStreams.build(context)
          when :get_relational_database_master_user_password
            Aws::Lightsail::Endpoints::GetRelationalDatabaseMasterUserPassword.build(context)
          when :get_relational_database_metric_data
            Aws::Lightsail::Endpoints::GetRelationalDatabaseMetricData.build(context)
          when :get_relational_database_parameters
            Aws::Lightsail::Endpoints::GetRelationalDatabaseParameters.build(context)
          when :get_relational_database_snapshot
            Aws::Lightsail::Endpoints::GetRelationalDatabaseSnapshot.build(context)
          when :get_relational_database_snapshots
            Aws::Lightsail::Endpoints::GetRelationalDatabaseSnapshots.build(context)
          when :get_relational_databases
            Aws::Lightsail::Endpoints::GetRelationalDatabases.build(context)
          when :get_static_ip
            Aws::Lightsail::Endpoints::GetStaticIp.build(context)
          when :get_static_ips
            Aws::Lightsail::Endpoints::GetStaticIps.build(context)
          when :import_key_pair
            Aws::Lightsail::Endpoints::ImportKeyPair.build(context)
          when :is_vpc_peered
            Aws::Lightsail::Endpoints::IsVpcPeered.build(context)
          when :open_instance_public_ports
            Aws::Lightsail::Endpoints::OpenInstancePublicPorts.build(context)
          when :peer_vpc
            Aws::Lightsail::Endpoints::PeerVpc.build(context)
          when :put_alarm
            Aws::Lightsail::Endpoints::PutAlarm.build(context)
          when :put_instance_public_ports
            Aws::Lightsail::Endpoints::PutInstancePublicPorts.build(context)
          when :reboot_instance
            Aws::Lightsail::Endpoints::RebootInstance.build(context)
          when :reboot_relational_database
            Aws::Lightsail::Endpoints::RebootRelationalDatabase.build(context)
          when :register_container_image
            Aws::Lightsail::Endpoints::RegisterContainerImage.build(context)
          when :release_static_ip
            Aws::Lightsail::Endpoints::ReleaseStaticIp.build(context)
          when :reset_distribution_cache
            Aws::Lightsail::Endpoints::ResetDistributionCache.build(context)
          when :send_contact_method_verification
            Aws::Lightsail::Endpoints::SendContactMethodVerification.build(context)
          when :set_ip_address_type
            Aws::Lightsail::Endpoints::SetIpAddressType.build(context)
          when :set_resource_access_for_bucket
            Aws::Lightsail::Endpoints::SetResourceAccessForBucket.build(context)
          when :start_gui_session
            Aws::Lightsail::Endpoints::StartGUISession.build(context)
          when :start_instance
            Aws::Lightsail::Endpoints::StartInstance.build(context)
          when :start_relational_database
            Aws::Lightsail::Endpoints::StartRelationalDatabase.build(context)
          when :stop_gui_session
            Aws::Lightsail::Endpoints::StopGUISession.build(context)
          when :stop_instance
            Aws::Lightsail::Endpoints::StopInstance.build(context)
          when :stop_relational_database
            Aws::Lightsail::Endpoints::StopRelationalDatabase.build(context)
          when :tag_resource
            Aws::Lightsail::Endpoints::TagResource.build(context)
          when :test_alarm
            Aws::Lightsail::Endpoints::TestAlarm.build(context)
          when :unpeer_vpc
            Aws::Lightsail::Endpoints::UnpeerVpc.build(context)
          when :untag_resource
            Aws::Lightsail::Endpoints::UntagResource.build(context)
          when :update_bucket
            Aws::Lightsail::Endpoints::UpdateBucket.build(context)
          when :update_bucket_bundle
            Aws::Lightsail::Endpoints::UpdateBucketBundle.build(context)
          when :update_container_service
            Aws::Lightsail::Endpoints::UpdateContainerService.build(context)
          when :update_distribution
            Aws::Lightsail::Endpoints::UpdateDistribution.build(context)
          when :update_distribution_bundle
            Aws::Lightsail::Endpoints::UpdateDistributionBundle.build(context)
          when :update_domain_entry
            Aws::Lightsail::Endpoints::UpdateDomainEntry.build(context)
          when :update_instance_metadata_options
            Aws::Lightsail::Endpoints::UpdateInstanceMetadataOptions.build(context)
          when :update_load_balancer_attribute
            Aws::Lightsail::Endpoints::UpdateLoadBalancerAttribute.build(context)
          when :update_relational_database
            Aws::Lightsail::Endpoints::UpdateRelationalDatabase.build(context)
          when :update_relational_database_parameters
            Aws::Lightsail::Endpoints::UpdateRelationalDatabaseParameters.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
