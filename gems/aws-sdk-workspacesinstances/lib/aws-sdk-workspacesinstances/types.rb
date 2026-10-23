# frozen_string_literal: true

# This is generated code!

module Aws::WorkspacesInstances
  # This module contains the types returned by client operations.
  module Types

    # <p>Indicates insufficient permissions to perform the requested action.</p>
    # @!attribute message
    #   <p>Detailed explanation of the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies volume attachment parameters.</p>
    # @!attribute workspace_instance_id
    #   <p>WorkSpace Instance to attach volume to.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>Volume to be attached.</p>
    #   @return [String]
    # @!attribute device
    #   <p>Device path for volume attachment.</p>
    #   @return [String]
    class AssociateVolumeRequest < Struct.new(
      nil,
      :workspace_instance_id,
      :volume_id,
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms volume attachment.</p>
    class AssociateVolumeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines device mapping for WorkSpace Instance storage.</p>
    # @!attribute device_name
    #   <p>Name of the device for storage mapping.</p>
    #   @return [String]
    # @!attribute ebs
    #   <p>EBS volume configuration for the device.</p>
    #   @return [Types::EbsBlockDevice]
    # @!attribute no_device
    #   <p>Indicates device should not be mapped.</p>
    #   @return [String]
    # @!attribute virtual_name
    #   <p>Virtual device name for ephemeral storage.</p>
    #   @return [String]
    class BlockDeviceMappingRequest < Struct.new(
      nil,
      :device_name,
      :ebs,
      :no_device,
      :virtual_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies capacity reservation preferences.</p>
    # @!attribute capacity_reservation_preference
    #   <p>Preference for using capacity reservation.</p>
    #   @return [String]
    # @!attribute capacity_reservation_target
    #   <p>Specific capacity reservation target.</p>
    #   @return [Types::CapacityReservationTarget]
    class CapacityReservationSpecification < Struct.new(
      nil,
      :capacity_reservation_preference,
      :capacity_reservation_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a specific capacity reservation.</p>
    # @!attribute capacity_reservation_id
    #   <p>Unique identifier for the capacity reservation.</p>
    #   @return [String]
    # @!attribute capacity_reservation_resource_group_arn
    #   <p>ARN of the capacity reservation resource group.</p>
    #   @return [String]
    class CapacityReservationTarget < Struct.new(
      nil,
      :capacity_reservation_id,
      :capacity_reservation_resource_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Signals a conflict with the current state of the resource.</p>
    # @!attribute message
    #   <p>Description of the conflict encountered.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the conflicting resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the conflicting resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines connection tracking parameters for network interfaces.</p>
    # @!attribute tcp_established_timeout
    #   <p>Timeout for established TCP connections.</p>
    #   @return [Integer]
    # @!attribute udp_stream_timeout
    #   <p>Timeout for UDP stream connections.</p>
    #   @return [Integer]
    # @!attribute udp_timeout
    #   <p>General timeout for UDP connections.</p>
    #   @return [Integer]
    class ConnectionTrackingSpecificationRequest < Struct.new(
      nil,
      :tcp_established_timeout,
      :udp_stream_timeout,
      :udp_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures CPU-specific settings for WorkSpace Instance.</p>
    # @!attribute amd_sev_snp
    #   <p>AMD Secure Encrypted Virtualization configuration.</p>
    #   @return [String]
    # @!attribute core_count
    #   <p>Number of CPU cores to allocate.</p>
    #   @return [Integer]
    # @!attribute threads_per_core
    #   <p>Number of threads per CPU core.</p>
    #   @return [Integer]
    class CpuOptionsRequest < Struct.new(
      nil,
      :amd_sev_snp,
      :core_count,
      :threads_per_core,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies volume creation parameters.</p>
    # @!attribute availability_zone
    #   <p>Availability zone for the volume.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique token to prevent duplicate volume creation.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Indicates if the volume should be encrypted.</p>
    #   @return [Boolean]
    # @!attribute iops
    #   <p>Input/output operations per second for the volume.</p>
    #   @return [Integer]
    # @!attribute kms_key_id
    #   <p>KMS key for volume encryption.</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>Volume size in gigabytes.</p>
    #   @return [Integer]
    # @!attribute snapshot_id
    #   <p>Source snapshot for volume creation.</p>
    #   @return [String]
    # @!attribute tag_specifications
    #   <p>Metadata tags for the volume.</p>
    #   @return [Array<Types::TagSpecification>]
    # @!attribute throughput
    #   <p>Volume throughput performance.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>Type of EBS volume.</p>
    #   @return [String]
    class CreateVolumeRequest < Struct.new(
      nil,
      :availability_zone,
      :client_token,
      :encrypted,
      :iops,
      :kms_key_id,
      :size_in_gb,
      :snapshot_id,
      :tag_specifications,
      :throughput,
      :volume_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the created volume identifier.</p>
    # @!attribute volume_id
    #   <p>Unique identifier for the new volume.</p>
    #   @return [String]
    class CreateVolumeResponse < Struct.new(
      nil,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration parameters for creating a new WorkSpaces Instance.</p>
    # @!attribute client_token
    #   <p>Unique token to ensure idempotent instance creation, preventing duplicate workspace launches.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata tags for categorizing and managing WorkSpaces Instances.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute managed_instance
    #   <p>Comprehensive configuration settings for the WorkSpaces Instance, including network, compute, and storage parameters.</p>
    #   @return [Types::ManagedInstanceRequest]
    class CreateWorkspaceInstanceRequest < Struct.new(
      nil,
      :client_token,
      :tags,
      :managed_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the unique identifier for the newly created WorkSpaces Instance.</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier assigned to the newly created WorkSpaces Instance.</p>
    #   @return [String]
    class CreateWorkspaceInstanceResponse < Struct.new(
      nil,
      :workspace_instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines CPU credit configuration for burstable instances.</p>
    # @!attribute cpu_credits
    #   <p>CPU credit specification mode.</p>
    #   @return [String]
    class CreditSpecificationRequest < Struct.new(
      nil,
      :cpu_credits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the volume to delete.</p>
    # @!attribute volume_id
    #   <p>Identifier of the volume to delete.</p>
    #   @return [String]
    class DeleteVolumeRequest < Struct.new(
      nil,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms volume deletion.</p>
    class DeleteVolumeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The WorkSpace to delete</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the WorkSpaces Instance targeted for deletion.</p>
    #   @return [String]
    class DeleteWorkspaceInstanceRequest < Struct.new(
      nil,
      :workspace_instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms the successful deletion of the specified WorkSpace Instance.</p>
    class DeleteWorkspaceInstanceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies volume detachment parameters.</p>
    # @!attribute workspace_instance_id
    #   <p>WorkSpace Instance to detach volume from.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>Volume to be detached.</p>
    #   @return [String]
    # @!attribute device
    #   <p>Device path of volume to detach.</p>
    #   @return [String]
    # @!attribute disassociate_mode
    #   <p>Mode for volume detachment.</p>
    #   @return [String]
    class DisassociateVolumeRequest < Struct.new(
      nil,
      :workspace_instance_id,
      :volume_id,
      :device,
      :disassociate_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms volume detachment.</p>
    class DisassociateVolumeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Captures detailed error information for EC2 instance operations.</p>
    # @!attribute ec2_error_code
    #   <p>Unique error code identifying the specific EC2 instance error.</p>
    #   @return [String]
    # @!attribute ec2_exception_type
    #   <p>Type of exception encountered during EC2 instance operation.</p>
    #   @return [String]
    # @!attribute ec2_error_message
    #   <p>Detailed description of the EC2 instance error.</p>
    #   @return [String]
    class EC2InstanceError < Struct.new(
      nil,
      :ec2_error_code,
      :ec2_exception_type,
      :ec2_error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an EC2 instance managed by WorkSpaces.</p>
    # @!attribute instance_id
    #   <p>Unique identifier of the managed EC2 instance.</p>
    #   @return [String]
    class EC2ManagedInstance < Struct.new(
      nil,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines configuration for an Elastic Block Store volume.</p>
    # @!attribute volume_type
    #   <p>Type of EBS volume (e.g., gp2, io1).</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Indicates if the volume is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>KMS key used for volume encryption.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>Input/output operations per second for the volume.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>Volume data transfer rate.</p>
    #   @return [Integer]
    # @!attribute volume_size
    #   <p>Size of the EBS volume in gigabytes.</p>
    #   @return [Integer]
    class EbsBlockDevice < Struct.new(
      nil,
      :volume_type,
      :encrypted,
      :kms_key_id,
      :iops,
      :throughput,
      :volume_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines Elastic Network Adapter (ENA) Scalable Reliable Datagram (SRD) configuration.</p>
    # @!attribute ena_srd_enabled
    #   <p>Enables or disables ENA SRD for network performance.</p>
    #   @return [Boolean]
    # @!attribute ena_srd_udp_specification
    #   <p>Configures UDP-specific ENA SRD settings.</p>
    #   @return [Types::EnaSrdUdpSpecificationRequest]
    class EnaSrdSpecificationRequest < Struct.new(
      nil,
      :ena_srd_enabled,
      :ena_srd_udp_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies UDP configuration for ENA SRD.</p>
    # @!attribute ena_srd_udp_enabled
    #   <p>Enables or disables ENA SRD for UDP traffic.</p>
    #   @return [Boolean]
    class EnaSrdUdpSpecificationRequest < Struct.new(
      nil,
      :ena_srd_udp_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures AWS Nitro Enclave options for the WorkSpace Instance.</p>
    # @!attribute enabled
    #   <p>Enables or disables AWS Nitro Enclaves for enhanced security.</p>
    #   @return [Boolean]
    class EnclaveOptionsRequest < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the WorkSpaces Instance to retrieve detailed information for.</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to retrieve.</p>
    #   @return [String]
    class GetWorkspaceInstanceRequest < Struct.new(
      nil,
      :workspace_instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides comprehensive details about the requested WorkSpaces Instance.</p>
    # @!attribute workspace_instance_errors
    #   <p>Captures any errors specific to the WorkSpace Instance lifecycle.</p>
    #   @return [Array<Types::WorkspaceInstanceError>]
    # @!attribute ec2_instance_errors
    #   <p>Includes any underlying EC2 instance errors encountered.</p>
    #   @return [Array<Types::EC2InstanceError>]
    # @!attribute provision_state
    #   <p>Current provisioning state of the WorkSpaces Instance.</p>
    #   @return [String]
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the retrieved WorkSpaces Instance.</p>
    #   @return [String]
    # @!attribute ec2_managed_instance
    #   <p>Details of the associated EC2 managed instance.</p>
    #   @return [Types::EC2ManagedInstance]
    class GetWorkspaceInstanceResponse < Struct.new(
      nil,
      :workspace_instance_errors,
      :ec2_instance_errors,
      :provision_state,
      :workspace_instance_id,
      :ec2_managed_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines hibernation configuration for the WorkSpace Instance.</p>
    # @!attribute configured
    #   <p>Enables or disables instance hibernation capability.</p>
    #   @return [Boolean]
    class HibernationOptionsRequest < Struct.new(
      nil,
      :configured,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines IAM instance profile configuration for WorkSpace Instance.</p>
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of the IAM instance profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the IAM instance profile.</p>
    #   @return [String]
    class IamInstanceProfileSpecification < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an IPv6 address configuration for a WorkSpace Instance.</p>
    # @!attribute ipv6_address
    #   <p>Specific IPv6 address assigned to the instance.</p>
    #   @return [String]
    # @!attribute is_primary_ipv6
    #   <p>Indicates if this is the primary IPv6 address for the instance.</p>
    #   @return [Boolean]
    class InstanceIpv6Address < Struct.new(
      nil,
      :ipv6_address,
      :is_primary_ipv6,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures automatic maintenance settings for WorkSpace Instance.</p>
    # @!attribute auto_recovery
    #   <p>Enables or disables automatic instance recovery.</p>
    #   @return [String]
    class InstanceMaintenanceOptionsRequest < Struct.new(
      nil,
      :auto_recovery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures marketplace-specific instance deployment options.</p>
    # @!attribute market_type
    #   <p>Specifies the type of marketplace for instance deployment.</p>
    #   @return [String]
    # @!attribute spot_options
    #   <p>Configuration options for spot instance deployment.</p>
    #   @return [Types::SpotMarketOptions]
    class InstanceMarketOptionsRequest < Struct.new(
      nil,
      :market_type,
      :spot_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines instance metadata service configuration.</p>
    # @!attribute http_endpoint
    #   <p>Enables or disables HTTP endpoint for instance metadata.</p>
    #   @return [String]
    # @!attribute http_protocol_ipv6
    #   <p>Configures IPv6 support for instance metadata HTTP protocol.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>Sets maximum number of network hops for metadata PUT responses.</p>
    #   @return [Integer]
    # @!attribute http_tokens
    #   <p>Configures token requirement for instance metadata retrieval.</p>
    #   @return [String]
    # @!attribute instance_metadata_tags
    #   <p>Enables or disables instance metadata tags retrieval.</p>
    #   @return [String]
    class InstanceMetadataOptionsRequest < Struct.new(
      nil,
      :http_endpoint,
      :http_protocol_ipv6,
      :http_put_response_hop_limit,
      :http_tokens,
      :instance_metadata_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines network interface configuration for WorkSpace Instance.</p>
    # @!attribute associate_carrier_ip_address
    #   <p>Enables carrier IP address association.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Enables public IP address assignment.</p>
    #   @return [Boolean]
    # @!attribute connection_tracking_specification
    #   <p>Configures network connection tracking parameters.</p>
    #   @return [Types::ConnectionTrackingSpecificationRequest]
    # @!attribute description
    #   <p>Descriptive text for the network interface.</p>
    #   @return [String]
    # @!attribute device_index
    #   <p>Unique index for the network interface.</p>
    #   @return [Integer]
    # @!attribute ena_srd_specification
    #   <p>Configures Elastic Network Adapter Scalable Reliable Datagram settings.</p>
    #   @return [Types::EnaSrdSpecificationRequest]
    # @!attribute interface_type
    #   <p>Specifies the type of network interface.</p>
    #   @return [String]
    # @!attribute ipv4_prefixes
    #   <p>IPv4 prefix configurations for the interface.</p>
    #   @return [Array<Types::Ipv4PrefixSpecificationRequest>]
    # @!attribute ipv4_prefix_count
    #   <p>Number of IPv4 prefixes to assign.</p>
    #   @return [Integer]
    # @!attribute ipv6_address_count
    #   <p>Number of IPv6 addresses to assign.</p>
    #   @return [Integer]
    # @!attribute ipv6_addresses
    #   <p>Specific IPv6 addresses for the interface.</p>
    #   @return [Array<Types::InstanceIpv6Address>]
    # @!attribute ipv6_prefixes
    #   <p>IPv6 prefix configurations for the interface.</p>
    #   @return [Array<Types::Ipv6PrefixSpecificationRequest>]
    # @!attribute ipv6_prefix_count
    #   <p>Number of IPv6 prefixes to assign.</p>
    #   @return [Integer]
    # @!attribute network_card_index
    #   <p>Index of the network card for multiple network interfaces.</p>
    #   @return [Integer]
    # @!attribute network_interface_id
    #   <p>Unique identifier for the network interface.</p>
    #   @return [String]
    # @!attribute primary_ipv6
    #   <p>Indicates the primary IPv6 configuration.</p>
    #   @return [Boolean]
    # @!attribute private_ip_address
    #   <p>Primary private IP address for the interface.</p>
    #   @return [String]
    # @!attribute private_ip_addresses
    #   <p>List of private IP addresses for the interface.</p>
    #   @return [Array<Types::PrivateIpAddressSpecification>]
    # @!attribute secondary_private_ip_address_count
    #   <p>Number of additional private IP addresses to assign.</p>
    #   @return [Integer]
    # @!attribute groups
    #   <p>Security groups associated with the network interface.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>Subnet identifier for the network interface.</p>
    #   @return [String]
    class InstanceNetworkInterfaceSpecification < Struct.new(
      nil,
      :associate_carrier_ip_address,
      :associate_public_ip_address,
      :connection_tracking_specification,
      :description,
      :device_index,
      :ena_srd_specification,
      :interface_type,
      :ipv4_prefixes,
      :ipv4_prefix_count,
      :ipv6_address_count,
      :ipv6_addresses,
      :ipv6_prefixes,
      :ipv6_prefix_count,
      :network_card_index,
      :network_interface_id,
      :primary_ipv6,
      :private_ip_address,
      :private_ip_addresses,
      :secondary_private_ip_address_count,
      :groups,
      :subnet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures network performance settings for WorkSpace Instance.</p>
    # @!attribute bandwidth_weighting
    #   <p>Defines bandwidth allocation strategy for network interfaces.</p>
    #   @return [String]
    class InstanceNetworkPerformanceOptionsRequest < Struct.new(
      nil,
      :bandwidth_weighting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about a specific WorkSpace Instance type.</p>
    # @!attribute instance_type
    #   <p>Unique identifier for the WorkSpace Instance type.</p>
    #   @return [String]
    class InstanceTypeInfo < Struct.new(
      nil,
      :instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates an unexpected server-side error occurred.</p>
    # @!attribute message
    #   <p>Description of the internal server error.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Recommended wait time before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies IPv4 prefix configuration for network interfaces.</p>
    # @!attribute ipv4_prefix
    #   <p>Specific IPv4 prefix for network interface configuration.</p>
    #   @return [String]
    class Ipv4PrefixSpecificationRequest < Struct.new(
      nil,
      :ipv4_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies IPv6 prefix configuration for network interfaces.</p>
    # @!attribute ipv6_prefix
    #   <p>Specific IPv6 prefix for network interface configuration.</p>
    #   @return [String]
    class Ipv6PrefixSpecificationRequest < Struct.new(
      nil,
      :ipv6_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies license configuration for WorkSpace Instance.</p>
    # @!attribute license_configuration_arn
    #   <p>ARN of the license configuration for the WorkSpace Instance.</p>
    #   @return [String]
    class LicenseConfigurationRequest < Struct.new(
      nil,
      :license_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines input parameters for retrieving supported WorkSpaces Instances instance types.</p>
    # @!attribute max_results
    #   <p>Maximum number of instance types to return in a single API call. Enables pagination of instance type results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token for retrieving subsequent pages of instance type results.</p>
    #   @return [String]
    class ListInstanceTypesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of instance types supported by WorkSpaces Instances.</p>
    # @!attribute instance_types
    #   <p>Collection of supported instance types for WorkSpaces Instances.</p>
    #   @return [Array<Types::InstanceTypeInfo>]
    # @!attribute next_token
    #   <p>Token for retrieving additional instance types if the result set is paginated.</p>
    #   @return [String]
    class ListInstanceTypesResponse < Struct.new(
      nil,
      :instance_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines input parameters for retrieving supported WorkSpaces Instances regions.</p>
    # @!attribute max_results
    #   <p>Maximum number of regions to return in a single API call. Enables pagination of region results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token for retrieving subsequent pages of region results.</p>
    #   @return [String]
    class ListRegionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of supported AWS regions for WorkSpaces Instances.</p>
    # @!attribute regions
    #   <p>Collection of AWS regions supported by WorkSpaces Instances.</p>
    #   @return [Array<Types::Region>]
    # @!attribute next_token
    #   <p>Token for retrieving additional regions if the result set is paginated.</p>
    #   @return [String]
    class ListRegionsResponse < Struct.new(
      nil,
      :regions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the WorkSpace Instance to retrieve tags for.</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :workspace_instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the list of tags for the specified WorkSpace Instance.</p>
    # @!attribute tags
    #   <p>Collection of tags associated with the WorkSpace Instance.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines filters and pagination parameters for retrieving WorkSpaces Instances.</p>
    # @!attribute provision_states
    #   <p>Filter WorkSpaces Instances by their current provisioning states.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of WorkSpaces Instances to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token for retrieving subsequent pages of WorkSpaces Instances.</p>
    #   @return [String]
    class ListWorkspaceInstancesRequest < Struct.new(
      nil,
      :provision_states,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of WorkSpaces Instances matching the specified criteria.</p>
    # @!attribute workspace_instances
    #   <p>Collection of WorkSpaces Instances returned by the query.</p>
    #   @return [Array<Types::WorkspaceInstance>]
    # @!attribute next_token
    #   <p>Token for retrieving additional WorkSpaces Instances if the result set is paginated.</p>
    #   @return [String]
    class ListWorkspaceInstancesResponse < Struct.new(
      nil,
      :workspace_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines comprehensive configuration for a managed WorkSpace Instance.</p>
    # @!attribute block_device_mappings
    #   <p>Configures block device mappings for storage.</p>
    #   @return [Array<Types::BlockDeviceMappingRequest>]
    # @!attribute capacity_reservation_specification
    #   <p>Specifies capacity reservation preferences.</p>
    #   @return [Types::CapacityReservationSpecification]
    # @!attribute cpu_options
    #   <p>Configures CPU-specific settings.</p>
    #   @return [Types::CpuOptionsRequest]
    # @!attribute credit_specification
    #   <p>Defines CPU credit configuration for burstable instances.</p>
    #   @return [Types::CreditSpecificationRequest]
    # @!attribute disable_api_stop
    #   <p>Prevents API-initiated instance stop.</p>
    #   @return [Boolean]
    # @!attribute ebs_optimized
    #   <p>Enables optimized EBS performance.</p>
    #   @return [Boolean]
    # @!attribute enable_primary_ipv6
    #   <p>Enables primary IPv6 address configuration.</p>
    #   @return [Boolean]
    # @!attribute enclave_options
    #   <p>Configures AWS Nitro Enclave settings.</p>
    #   @return [Types::EnclaveOptionsRequest]
    # @!attribute hibernation_options
    #   <p>Configures instance hibernation capabilities.</p>
    #   @return [Types::HibernationOptionsRequest]
    # @!attribute iam_instance_profile
    #   <p>Specifies IAM instance profile configuration.</p>
    #   @return [Types::IamInstanceProfileSpecification]
    # @!attribute image_id
    #   <p>Identifies the Amazon Machine Image (AMI) for the instance.</p>
    #   @return [String]
    # @!attribute instance_market_options
    #   <p>Configures marketplace-specific deployment options.</p>
    #   @return [Types::InstanceMarketOptionsRequest]
    # @!attribute instance_type
    #   <p>Specifies the WorkSpace Instance type.</p>
    #   @return [String]
    # @!attribute ipv6_addresses
    #   <p>Configures specific IPv6 addresses.</p>
    #   @return [Array<Types::InstanceIpv6Address>]
    # @!attribute ipv6_address_count
    #   <p>Specifies number of IPv6 addresses to assign.</p>
    #   @return [Integer]
    # @!attribute kernel_id
    #   <p>Identifies the kernel for the instance.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>Specifies the key pair for instance access.</p>
    #   @return [String]
    # @!attribute license_specifications
    #   <p>Configures license-related settings.</p>
    #   @return [Array<Types::LicenseConfigurationRequest>]
    # @!attribute maintenance_options
    #   <p>Defines automatic maintenance settings.</p>
    #   @return [Types::InstanceMaintenanceOptionsRequest]
    # @!attribute metadata_options
    #   <p>Configures instance metadata service settings.</p>
    #   @return [Types::InstanceMetadataOptionsRequest]
    # @!attribute monitoring
    #   <p>Enables or disables detailed instance monitoring.</p>
    #   @return [Types::RunInstancesMonitoringEnabled]
    # @!attribute network_interfaces
    #   <p>Configures network interface settings.</p>
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    # @!attribute network_performance_options
    #   <p>Defines network performance configuration.</p>
    #   @return [Types::InstanceNetworkPerformanceOptionsRequest]
    # @!attribute placement
    #   <p>Specifies instance placement preferences.</p>
    #   @return [Types::Placement]
    # @!attribute private_dns_name_options
    #   <p>Configures private DNS name settings.</p>
    #   @return [Types::PrivateDnsNameOptionsRequest]
    # @!attribute private_ip_address
    #   <p>Specifies the primary private IP address.</p>
    #   @return [String]
    # @!attribute ramdisk_id
    #   <p>Identifies the ramdisk for the instance.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>Specifies security group identifiers.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>Configures security group settings.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>Identifies the subnet for the instance.</p>
    #   @return [String]
    # @!attribute tag_specifications
    #   <p>Configures resource tagging specifications.</p>
    #   @return [Array<Types::TagSpecification>]
    # @!attribute user_data
    #   <p>Provides custom initialization data for the instance.</p>
    #   @return [String]
    class ManagedInstanceRequest < Struct.new(
      nil,
      :block_device_mappings,
      :capacity_reservation_specification,
      :cpu_options,
      :credit_specification,
      :disable_api_stop,
      :ebs_optimized,
      :enable_primary_ipv6,
      :enclave_options,
      :hibernation_options,
      :iam_instance_profile,
      :image_id,
      :instance_market_options,
      :instance_type,
      :ipv6_addresses,
      :ipv6_address_count,
      :kernel_id,
      :key_name,
      :license_specifications,
      :maintenance_options,
      :metadata_options,
      :monitoring,
      :network_interfaces,
      :network_performance_options,
      :placement,
      :private_dns_name_options,
      :private_ip_address,
      :ramdisk_id,
      :security_group_ids,
      :security_groups,
      :subnet_id,
      :tag_specifications,
      :user_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines instance placement configuration for WorkSpace Instance.</p>
    # @!attribute affinity
    #   <p>Specifies host affinity for dedicated instances.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>Identifies the specific AWS availability zone.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>Unique identifier for placement group.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>Name of the placement group.</p>
    #   @return [String]
    # @!attribute host_id
    #   <p>Identifies the specific dedicated host.</p>
    #   @return [String]
    # @!attribute host_resource_group_arn
    #   <p>ARN of the host resource group.</p>
    #   @return [String]
    # @!attribute partition_number
    #   <p>Specifies partition number for partition placement groups.</p>
    #   @return [Integer]
    # @!attribute tenancy
    #   <p>Defines instance tenancy configuration.</p>
    #   @return [String]
    class Placement < Struct.new(
      nil,
      :affinity,
      :availability_zone,
      :group_id,
      :group_name,
      :host_id,
      :host_resource_group_arn,
      :partition_number,
      :tenancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures private DNS name settings for WorkSpace Instance.</p>
    # @!attribute hostname_type
    #   <p>Specifies the type of hostname configuration.</p>
    #   @return [String]
    # @!attribute enable_resource_name_dns_a_record
    #   <p>Enables DNS A record for resource name resolution.</p>
    #   @return [Boolean]
    # @!attribute enable_resource_name_dns_aaaa_record
    #   <p>Enables DNS AAAA record for resource name resolution.</p>
    #   @return [Boolean]
    class PrivateDnsNameOptionsRequest < Struct.new(
      nil,
      :hostname_type,
      :enable_resource_name_dns_a_record,
      :enable_resource_name_dns_aaaa_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines private IP address configuration for network interface.</p>
    # @!attribute primary
    #   <p>Indicates if this is the primary private IP address.</p>
    #   @return [Boolean]
    # @!attribute private_ip_address
    #   <p>Specific private IP address for the network interface.</p>
    #   @return [String]
    class PrivateIpAddressSpecification < Struct.new(
      nil,
      :primary,
      :private_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS region supported by WorkSpaces Instances.</p>
    # @!attribute region_name
    #   <p>Name of the AWS region.</p>
    #   @return [String]
    class Region < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the requested resource could not be found.</p>
    # @!attribute message
    #   <p>Details about the missing resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures detailed monitoring for WorkSpace Instance.</p>
    # @!attribute enabled
    #   <p>Enables or disables detailed instance monitoring.</p>
    #   @return [Boolean]
    class RunInstancesMonitoringEnabled < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that a service quota has been exceeded.</p>
    # @!attribute message
    #   <p>Description of the quota limitation.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource related to the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of resource related to the quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Code identifying the service with the quota limitation.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specific code for the exceeded quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines configuration for spot instance deployment.</p>
    # @!attribute block_duration_minutes
    #   <p>Duration of spot instance block reservation.</p>
    #   @return [Integer]
    # @!attribute instance_interruption_behavior
    #   <p>Specifies behavior when spot instance is interrupted.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>Maximum hourly price for spot instance.</p>
    #   @return [String]
    # @!attribute spot_instance_type
    #   <p>Defines the type of spot instance request.</p>
    #   @return [String]
    # @!attribute valid_until_utc
    #   <p>Timestamp until which spot instance request is valid.</p>
    #   @return [Time]
    class SpotMarketOptions < Struct.new(
      nil,
      :block_duration_minutes,
      :instance_interruption_behavior,
      :max_price,
      :spot_instance_type,
      :valid_until_utc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a key-value metadata tag.</p>
    # @!attribute key
    #   <p>Unique identifier for the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value associated with the tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies tags to add to a WorkSpace Instance.</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to be added to the WorkSpace Instance.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :workspace_instance_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms successful tag addition.</p>
    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines tagging configuration for a resource.</p>
    # @!attribute resource_type
    #   <p>Type of resource being tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Collection of tags for the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class TagSpecification < Struct.new(
      nil,
      :resource_type,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the request rate has exceeded limits.</p>
    # @!attribute message
    #   <p>Description of the throttling event.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Code identifying the service experiencing throttling.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Specific code for the throttling quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Recommended wait time before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies tags to remove from a WorkSpace Instance.</p>
    # @!attribute workspace_instance_id
    #   <p>Unique identifier of the WorkSpace Instance to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :workspace_instance_id,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Confirms successful tag removal.</p>
    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates invalid input parameters in the request.</p>
    # @!attribute message
    #   <p>Overall description of validation failures.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Specific reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>List of fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a validation error field in an API request.</p>
    # @!attribute name
    #   <p>Name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Reason for the validation failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Detailed error message describing the validation issue.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :reason,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single WorkSpace Instance.</p>
    # @!attribute provision_state
    #   <p>Current provisioning state of the WorkSpace Instance.</p>
    #   @return [String]
    # @!attribute workspace_instance_id
    #   <p>Unique identifier for the WorkSpace Instance.</p>
    #   @return [String]
    # @!attribute ec2_managed_instance
    #   <p>Details of the associated EC2 managed instance.</p>
    #   @return [Types::EC2ManagedInstance]
    class WorkspaceInstance < Struct.new(
      nil,
      :provision_state,
      :workspace_instance_id,
      :ec2_managed_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Captures errors specific to WorkSpace Instance operations.</p>
    # @!attribute error_code
    #   <p>Unique error code for the WorkSpace Instance error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Detailed description of the WorkSpace Instance error.</p>
    #   @return [String]
    class WorkspaceInstanceError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
