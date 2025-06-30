# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkspacesInstances
  module Types

    # Indicates insufficient permissions to perform the requested action.
    #
    # @!attribute [rw] message
    #   Detailed explanation of the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies volume attachment parameters.
    #
    # @!attribute [rw] workspace_instance_id
    #   WorkSpace Instance to attach volume to.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   Volume to be attached.
    #   @return [String]
    #
    # @!attribute [rw] device
    #   Device path for volume attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/AssociateVolumeRequest AWS API Documentation
    #
    class AssociateVolumeRequest < Struct.new(
      :workspace_instance_id,
      :volume_id,
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms volume attachment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/AssociateVolumeResponse AWS API Documentation
    #
    class AssociateVolumeResponse < Aws::EmptyStructure; end

    # Defines device mapping for WorkSpace Instance storage.
    #
    # @!attribute [rw] device_name
    #   Name of the device for storage mapping.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   EBS volume configuration for the device.
    #   @return [Types::EbsBlockDevice]
    #
    # @!attribute [rw] no_device
    #   Indicates device should not be mapped.
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   Virtual device name for ephemeral storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/BlockDeviceMappingRequest AWS API Documentation
    #
    class BlockDeviceMappingRequest < Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies capacity reservation preferences.
    #
    # @!attribute [rw] capacity_reservation_preference
    #   Preference for using capacity reservation.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_target
    #   Specific capacity reservation target.
    #   @return [Types::CapacityReservationTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CapacityReservationSpecification AWS API Documentation
    #
    class CapacityReservationSpecification < Struct.new(
      :capacity_reservation_preference,
      :capacity_reservation_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a specific capacity reservation.
    #
    # @!attribute [rw] capacity_reservation_id
    #   Unique identifier for the capacity reservation.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_resource_group_arn
    #   ARN of the capacity reservation resource group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CapacityReservationTarget AWS API Documentation
    #
    class CapacityReservationTarget < Struct.new(
      :capacity_reservation_id,
      :capacity_reservation_resource_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Signals a conflict with the current state of the resource.
    #
    # @!attribute [rw] message
    #   Description of the conflict encountered.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the conflicting resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines connection tracking parameters for network interfaces.
    #
    # @!attribute [rw] tcp_established_timeout
    #   Timeout for established TCP connections.
    #   @return [Integer]
    #
    # @!attribute [rw] udp_stream_timeout
    #   Timeout for UDP stream connections.
    #   @return [Integer]
    #
    # @!attribute [rw] udp_timeout
    #   General timeout for UDP connections.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ConnectionTrackingSpecificationRequest AWS API Documentation
    #
    class ConnectionTrackingSpecificationRequest < Struct.new(
      :tcp_established_timeout,
      :udp_stream_timeout,
      :udp_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures CPU-specific settings for WorkSpace Instance.
    #
    # @!attribute [rw] amd_sev_snp
    #   AMD Secure Encrypted Virtualization configuration.
    #   @return [String]
    #
    # @!attribute [rw] core_count
    #   Number of CPU cores to allocate.
    #   @return [Integer]
    #
    # @!attribute [rw] threads_per_core
    #   Number of threads per CPU core.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CpuOptionsRequest AWS API Documentation
    #
    class CpuOptionsRequest < Struct.new(
      :amd_sev_snp,
      :core_count,
      :threads_per_core)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies volume creation parameters.
    #
    # @!attribute [rw] availability_zone
    #   Availability zone for the volume.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique token to prevent duplicate volume creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates if the volume should be encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   Input/output operations per second for the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key for volume encryption.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   Volume size in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   Source snapshot for volume creation.
    #   @return [String]
    #
    # @!attribute [rw] tag_specifications
    #   Metadata tags for the volume.
    #   @return [Array<Types::TagSpecification>]
    #
    # @!attribute [rw] throughput
    #   Volume throughput performance.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Type of EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateVolumeRequest AWS API Documentation
    #
    class CreateVolumeRequest < Struct.new(
      :availability_zone,
      :client_token,
      :encrypted,
      :iops,
      :kms_key_id,
      :size_in_gb,
      :snapshot_id,
      :tag_specifications,
      :throughput,
      :volume_type)
      SENSITIVE = [:client_token, :kms_key_id]
      include Aws::Structure
    end

    # Returns the created volume identifier.
    #
    # @!attribute [rw] volume_id
    #   Unique identifier for the new volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateVolumeResponse AWS API Documentation
    #
    class CreateVolumeResponse < Struct.new(
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration parameters for creating a new WorkSpaces
    # Instance.
    #
    # @!attribute [rw] client_token
    #   Unique token to ensure idempotent instance creation, preventing
    #   duplicate workspace launches.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata tags for categorizing and managing WorkSpaces
    #   Instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] managed_instance
    #   Comprehensive configuration settings for the WorkSpaces Instance,
    #   including network, compute, and storage parameters.
    #   @return [Types::ManagedInstanceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateWorkspaceInstanceRequest AWS API Documentation
    #
    class CreateWorkspaceInstanceRequest < Struct.new(
      :client_token,
      :tags,
      :managed_instance)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # Returns the unique identifier for the newly created WorkSpaces
    # Instance.
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier assigned to the newly created WorkSpaces Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateWorkspaceInstanceResponse AWS API Documentation
    #
    class CreateWorkspaceInstanceResponse < Struct.new(
      :workspace_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines CPU credit configuration for burstable instances.
    #
    # @!attribute [rw] cpu_credits
    #   CPU credit specification mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreditSpecificationRequest AWS API Documentation
    #
    class CreditSpecificationRequest < Struct.new(
      :cpu_credits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the volume to delete.
    #
    # @!attribute [rw] volume_id
    #   Identifier of the volume to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteVolumeRequest AWS API Documentation
    #
    class DeleteVolumeRequest < Struct.new(
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms volume deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteVolumeResponse AWS API Documentation
    #
    class DeleteVolumeResponse < Aws::EmptyStructure; end

    # The WorkSpace to delete
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the WorkSpaces Instance targeted for deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteWorkspaceInstanceRequest AWS API Documentation
    #
    class DeleteWorkspaceInstanceRequest < Struct.new(
      :workspace_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms the successful deletion of the specified WorkSpace Instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteWorkspaceInstanceResponse AWS API Documentation
    #
    class DeleteWorkspaceInstanceResponse < Aws::EmptyStructure; end

    # Specifies volume detachment parameters.
    #
    # @!attribute [rw] workspace_instance_id
    #   WorkSpace Instance to detach volume from.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   Volume to be detached.
    #   @return [String]
    #
    # @!attribute [rw] device
    #   Device path of volume to detach.
    #   @return [String]
    #
    # @!attribute [rw] disassociate_mode
    #   Mode for volume detachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DisassociateVolumeRequest AWS API Documentation
    #
    class DisassociateVolumeRequest < Struct.new(
      :workspace_instance_id,
      :volume_id,
      :device,
      :disassociate_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms volume detachment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DisassociateVolumeResponse AWS API Documentation
    #
    class DisassociateVolumeResponse < Aws::EmptyStructure; end

    # Captures detailed error information for EC2 instance operations.
    #
    # @!attribute [rw] ec2_error_code
    #   Unique error code identifying the specific EC2 instance error.
    #   @return [String]
    #
    # @!attribute [rw] ec2_exception_type
    #   Type of exception encountered during EC2 instance operation.
    #   @return [String]
    #
    # @!attribute [rw] ec2_error_message
    #   Detailed description of the EC2 instance error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EC2InstanceError AWS API Documentation
    #
    class EC2InstanceError < Struct.new(
      :ec2_error_code,
      :ec2_exception_type,
      :ec2_error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an EC2 instance managed by WorkSpaces.
    #
    # @!attribute [rw] instance_id
    #   Unique identifier of the managed EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EC2ManagedInstance AWS API Documentation
    #
    class EC2ManagedInstance < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines configuration for an Elastic Block Store volume.
    #
    # @!attribute [rw] volume_type
    #   Type of EBS volume (e.g., gp2, io1).
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates if the volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key used for volume encryption.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Input/output operations per second for the volume.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Volume data transfer rate.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_size
    #   Size of the EBS volume in gigabytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EbsBlockDevice AWS API Documentation
    #
    class EbsBlockDevice < Struct.new(
      :volume_type,
      :encrypted,
      :kms_key_id,
      :iops,
      :throughput,
      :volume_size)
      SENSITIVE = [:kms_key_id]
      include Aws::Structure
    end

    # Defines Elastic Network Adapter (ENA) Scalable Reliable Datagram (SRD)
    # configuration.
    #
    # @!attribute [rw] ena_srd_enabled
    #   Enables or disables ENA SRD for network performance.
    #   @return [Boolean]
    #
    # @!attribute [rw] ena_srd_udp_specification
    #   Configures UDP-specific ENA SRD settings.
    #   @return [Types::EnaSrdUdpSpecificationRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EnaSrdSpecificationRequest AWS API Documentation
    #
    class EnaSrdSpecificationRequest < Struct.new(
      :ena_srd_enabled,
      :ena_srd_udp_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies UDP configuration for ENA SRD.
    #
    # @!attribute [rw] ena_srd_udp_enabled
    #   Enables or disables ENA SRD for UDP traffic.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EnaSrdUdpSpecificationRequest AWS API Documentation
    #
    class EnaSrdUdpSpecificationRequest < Struct.new(
      :ena_srd_udp_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures AWS Nitro Enclave options for the WorkSpace Instance.
    #
    # @!attribute [rw] enabled
    #   Enables or disables AWS Nitro Enclaves for enhanced security.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/EnclaveOptionsRequest AWS API Documentation
    #
    class EnclaveOptionsRequest < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the WorkSpaces Instance to retrieve detailed information
    # for.
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/GetWorkspaceInstanceRequest AWS API Documentation
    #
    class GetWorkspaceInstanceRequest < Struct.new(
      :workspace_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides comprehensive details about the requested WorkSpaces
    # Instance.
    #
    # @!attribute [rw] workspace_instance_errors
    #   Captures any errors specific to the WorkSpace Instance lifecycle.
    #   @return [Array<Types::WorkspaceInstanceError>]
    #
    # @!attribute [rw] ec2_instance_errors
    #   Includes any underlying EC2 instance errors encountered.
    #   @return [Array<Types::EC2InstanceError>]
    #
    # @!attribute [rw] provision_state
    #   Current provisioning state of the WorkSpaces Instance.
    #   @return [String]
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the retrieved WorkSpaces Instance.
    #   @return [String]
    #
    # @!attribute [rw] ec2_managed_instance
    #   Details of the associated EC2 managed instance.
    #   @return [Types::EC2ManagedInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/GetWorkspaceInstanceResponse AWS API Documentation
    #
    class GetWorkspaceInstanceResponse < Struct.new(
      :workspace_instance_errors,
      :ec2_instance_errors,
      :provision_state,
      :workspace_instance_id,
      :ec2_managed_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines hibernation configuration for the WorkSpace Instance.
    #
    # @!attribute [rw] configured
    #   Enables or disables instance hibernation capability.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/HibernationOptionsRequest AWS API Documentation
    #
    class HibernationOptionsRequest < Struct.new(
      :configured)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines IAM instance profile configuration for WorkSpace Instance.
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of the IAM instance profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the IAM instance profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/IamInstanceProfileSpecification AWS API Documentation
    #
    class IamInstanceProfileSpecification < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an IPv6 address configuration for a WorkSpace Instance.
    #
    # @!attribute [rw] ipv_6_address
    #   Specific IPv6 address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] is_primary_ipv_6
    #   Indicates if this is the primary IPv6 address for the instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceIpv6Address AWS API Documentation
    #
    class InstanceIpv6Address < Struct.new(
      :ipv_6_address,
      :is_primary_ipv_6)
      SENSITIVE = [:ipv_6_address]
      include Aws::Structure
    end

    # Configures automatic maintenance settings for WorkSpace Instance.
    #
    # @!attribute [rw] auto_recovery
    #   Enables or disables automatic instance recovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceMaintenanceOptionsRequest AWS API Documentation
    #
    class InstanceMaintenanceOptionsRequest < Struct.new(
      :auto_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures marketplace-specific instance deployment options.
    #
    # @!attribute [rw] market_type
    #   Specifies the type of marketplace for instance deployment.
    #   @return [String]
    #
    # @!attribute [rw] spot_options
    #   Configuration options for spot instance deployment.
    #   @return [Types::SpotMarketOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceMarketOptionsRequest AWS API Documentation
    #
    class InstanceMarketOptionsRequest < Struct.new(
      :market_type,
      :spot_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines instance metadata service configuration.
    #
    # @!attribute [rw] http_endpoint
    #   Enables or disables HTTP endpoint for instance metadata.
    #   @return [String]
    #
    # @!attribute [rw] http_protocol_ipv_6
    #   Configures IPv6 support for instance metadata HTTP protocol.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   Sets maximum number of network hops for metadata PUT responses.
    #   @return [Integer]
    #
    # @!attribute [rw] http_tokens
    #   Configures token requirement for instance metadata retrieval.
    #   @return [String]
    #
    # @!attribute [rw] instance_metadata_tags
    #   Enables or disables instance metadata tags retrieval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceMetadataOptionsRequest AWS API Documentation
    #
    class InstanceMetadataOptionsRequest < Struct.new(
      :http_endpoint,
      :http_protocol_ipv_6,
      :http_put_response_hop_limit,
      :http_tokens,
      :instance_metadata_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines network interface configuration for WorkSpace Instance.
    #
    # @!attribute [rw] associate_carrier_ip_address
    #   Enables carrier IP address association.
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Enables public IP address assignment.
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_tracking_specification
    #   Configures network connection tracking parameters.
    #   @return [Types::ConnectionTrackingSpecificationRequest]
    #
    # @!attribute [rw] description
    #   Descriptive text for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] device_index
    #   Unique index for the network interface.
    #   @return [Integer]
    #
    # @!attribute [rw] ena_srd_specification
    #   Configures Elastic Network Adapter Scalable Reliable Datagram
    #   settings.
    #   @return [Types::EnaSrdSpecificationRequest]
    #
    # @!attribute [rw] interface_type
    #   Specifies the type of network interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv_4_prefixes
    #   IPv4 prefix configurations for the interface.
    #   @return [Array<Types::Ipv4PrefixSpecificationRequest>]
    #
    # @!attribute [rw] ipv_4_prefix_count
    #   Number of IPv4 prefixes to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_address_count
    #   Number of IPv6 addresses to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   Specific IPv6 addresses for the interface.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] ipv_6_prefixes
    #   IPv6 prefix configurations for the interface.
    #   @return [Array<Types::Ipv6PrefixSpecificationRequest>]
    #
    # @!attribute [rw] ipv_6_prefix_count
    #   Number of IPv6 prefixes to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] network_card_index
    #   Index of the network card for multiple network interfaces.
    #   @return [Integer]
    #
    # @!attribute [rw] network_interface_id
    #   Unique identifier for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] primary_ipv_6
    #   Indicates the primary IPv6 configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   Primary private IP address for the interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   List of private IP addresses for the interface.
    #   @return [Array<Types::PrivateIpAddressSpecification>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   Number of additional private IP addresses to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] groups
    #   Security groups associated with the network interface.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   Subnet identifier for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceNetworkInterfaceSpecification AWS API Documentation
    #
    class InstanceNetworkInterfaceSpecification < Struct.new(
      :associate_carrier_ip_address,
      :associate_public_ip_address,
      :connection_tracking_specification,
      :description,
      :device_index,
      :ena_srd_specification,
      :interface_type,
      :ipv_4_prefixes,
      :ipv_4_prefix_count,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :ipv_6_prefixes,
      :ipv_6_prefix_count,
      :network_card_index,
      :network_interface_id,
      :primary_ipv_6,
      :private_ip_address,
      :private_ip_addresses,
      :secondary_private_ip_address_count,
      :groups,
      :subnet_id)
      SENSITIVE = [:private_ip_address]
      include Aws::Structure
    end

    # Configures network performance settings for WorkSpace Instance.
    #
    # @!attribute [rw] bandwidth_weighting
    #   Defines bandwidth allocation strategy for network interfaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceNetworkPerformanceOptionsRequest AWS API Documentation
    #
    class InstanceNetworkPerformanceOptionsRequest < Struct.new(
      :bandwidth_weighting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a specific WorkSpace Instance type.
    #
    # @!attribute [rw] instance_type
    #   Unique identifier for the WorkSpace Instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InstanceTypeInfo AWS API Documentation
    #
    class InstanceTypeInfo < Struct.new(
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates an unexpected server-side error occurred.
    #
    # @!attribute [rw] message
    #   Description of the internal server error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Recommended wait time before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies IPv4 prefix configuration for network interfaces.
    #
    # @!attribute [rw] ipv_4_prefix
    #   Specific IPv4 prefix for network interface configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/Ipv4PrefixSpecificationRequest AWS API Documentation
    #
    class Ipv4PrefixSpecificationRequest < Struct.new(
      :ipv_4_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies IPv6 prefix configuration for network interfaces.
    #
    # @!attribute [rw] ipv_6_prefix
    #   Specific IPv6 prefix for network interface configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/Ipv6PrefixSpecificationRequest AWS API Documentation
    #
    class Ipv6PrefixSpecificationRequest < Struct.new(
      :ipv_6_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies license configuration for WorkSpace Instance.
    #
    # @!attribute [rw] license_configuration_arn
    #   ARN of the license configuration for the WorkSpace Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/LicenseConfigurationRequest AWS API Documentation
    #
    class LicenseConfigurationRequest < Struct.new(
      :license_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines input parameters for retrieving supported WorkSpaces Instances
    # instance types.
    #
    # @!attribute [rw] max_results
    #   Maximum number of instance types to return in a single API call.
    #   Enables pagination of instance type results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token for retrieving subsequent pages of instance type
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListInstanceTypesRequest AWS API Documentation
    #
    class ListInstanceTypesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Contains the list of instance types supported by WorkSpaces Instances.
    #
    # @!attribute [rw] instance_types
    #   Collection of supported instance types for WorkSpaces Instances.
    #   @return [Array<Types::InstanceTypeInfo>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving additional instance types if the result set is
    #   paginated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListInstanceTypesResponse AWS API Documentation
    #
    class ListInstanceTypesResponse < Struct.new(
      :instance_types,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Defines input parameters for retrieving supported WorkSpaces Instances
    # regions.
    #
    # @!attribute [rw] max_results
    #   Maximum number of regions to return in a single API call. Enables
    #   pagination of region results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token for retrieving subsequent pages of region results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListRegionsRequest AWS API Documentation
    #
    class ListRegionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Contains the list of supported AWS regions for WorkSpaces Instances.
    #
    # @!attribute [rw] regions
    #   Collection of AWS regions supported by WorkSpaces Instances.
    #   @return [Array<Types::Region>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving additional regions if the result set is
    #   paginated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListRegionsResponse AWS API Documentation
    #
    class ListRegionsResponse < Struct.new(
      :regions,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Specifies the WorkSpace Instance to retrieve tags for.
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the WorkSpace Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :workspace_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the list of tags for the specified WorkSpace Instance.
    #
    # @!attribute [rw] tags
    #   Collection of tags associated with the WorkSpace Instance.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines filters and pagination parameters for retrieving WorkSpaces
    # Instances.
    #
    # @!attribute [rw] provision_states
    #   Filter WorkSpaces Instances by their current provisioning states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of WorkSpaces Instances to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token for retrieving subsequent pages of WorkSpaces
    #   Instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListWorkspaceInstancesRequest AWS API Documentation
    #
    class ListWorkspaceInstancesRequest < Struct.new(
      :provision_states,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Contains the list of WorkSpaces Instances matching the specified
    # criteria.
    #
    # @!attribute [rw] workspace_instances
    #   Collection of WorkSpaces Instances returned by the query.
    #   @return [Array<Types::WorkspaceInstance>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving additional WorkSpaces Instances if the result
    #   set is paginated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListWorkspaceInstancesResponse AWS API Documentation
    #
    class ListWorkspaceInstancesResponse < Struct.new(
      :workspace_instances,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # Defines comprehensive configuration for a managed WorkSpace Instance.
    #
    # @!attribute [rw] block_device_mappings
    #   Configures block device mappings for storage.
    #   @return [Array<Types::BlockDeviceMappingRequest>]
    #
    # @!attribute [rw] capacity_reservation_specification
    #   Specifies capacity reservation preferences.
    #   @return [Types::CapacityReservationSpecification]
    #
    # @!attribute [rw] cpu_options
    #   Configures CPU-specific settings.
    #   @return [Types::CpuOptionsRequest]
    #
    # @!attribute [rw] credit_specification
    #   Defines CPU credit configuration for burstable instances.
    #   @return [Types::CreditSpecificationRequest]
    #
    # @!attribute [rw] disable_api_stop
    #   Prevents API-initiated instance stop.
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   Enables optimized EBS performance.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_primary_ipv_6
    #   Enables primary IPv6 address configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] enclave_options
    #   Configures AWS Nitro Enclave settings.
    #   @return [Types::EnclaveOptionsRequest]
    #
    # @!attribute [rw] hibernation_options
    #   Configures instance hibernation capabilities.
    #   @return [Types::HibernationOptionsRequest]
    #
    # @!attribute [rw] iam_instance_profile
    #   Specifies IAM instance profile configuration.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] image_id
    #   Identifies the Amazon Machine Image (AMI) for the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_market_options
    #   Configures marketplace-specific deployment options.
    #   @return [Types::InstanceMarketOptionsRequest]
    #
    # @!attribute [rw] instance_type
    #   Specifies the WorkSpace Instance type.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_addresses
    #   Configures specific IPv6 addresses.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] ipv_6_address_count
    #   Specifies number of IPv6 addresses to assign.
    #   @return [Integer]
    #
    # @!attribute [rw] kernel_id
    #   Identifies the kernel for the instance.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   Specifies the key pair for instance access.
    #   @return [String]
    #
    # @!attribute [rw] license_specifications
    #   Configures license-related settings.
    #   @return [Array<Types::LicenseConfigurationRequest>]
    #
    # @!attribute [rw] maintenance_options
    #   Defines automatic maintenance settings.
    #   @return [Types::InstanceMaintenanceOptionsRequest]
    #
    # @!attribute [rw] metadata_options
    #   Configures instance metadata service settings.
    #   @return [Types::InstanceMetadataOptionsRequest]
    #
    # @!attribute [rw] monitoring
    #   Enables or disables detailed instance monitoring.
    #   @return [Types::RunInstancesMonitoringEnabled]
    #
    # @!attribute [rw] network_interfaces
    #   Configures network interface settings.
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    #
    # @!attribute [rw] network_performance_options
    #   Defines network performance configuration.
    #   @return [Types::InstanceNetworkPerformanceOptionsRequest]
    #
    # @!attribute [rw] placement
    #   Specifies instance placement preferences.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] private_dns_name_options
    #   Configures private DNS name settings.
    #   @return [Types::PrivateDnsNameOptionsRequest]
    #
    # @!attribute [rw] private_ip_address
    #   Specifies the primary private IP address.
    #   @return [String]
    #
    # @!attribute [rw] ramdisk_id
    #   Identifies the ramdisk for the instance.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies security group identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   Configures security group settings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   Identifies the subnet for the instance.
    #   @return [String]
    #
    # @!attribute [rw] tag_specifications
    #   Configures resource tagging specifications.
    #   @return [Array<Types::TagSpecification>]
    #
    # @!attribute [rw] user_data
    #   Provides custom initialization data for the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ManagedInstanceRequest AWS API Documentation
    #
    class ManagedInstanceRequest < Struct.new(
      :block_device_mappings,
      :capacity_reservation_specification,
      :cpu_options,
      :credit_specification,
      :disable_api_stop,
      :ebs_optimized,
      :enable_primary_ipv_6,
      :enclave_options,
      :hibernation_options,
      :iam_instance_profile,
      :image_id,
      :instance_market_options,
      :instance_type,
      :ipv_6_addresses,
      :ipv_6_address_count,
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
      :user_data)
      SENSITIVE = [:private_ip_address, :user_data]
      include Aws::Structure
    end

    # Defines instance placement configuration for WorkSpace Instance.
    #
    # @!attribute [rw] affinity
    #   Specifies host affinity for dedicated instances.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   Identifies the specific AWS availability zone.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Unique identifier for placement group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   Name of the placement group.
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   Identifies the specific dedicated host.
    #   @return [String]
    #
    # @!attribute [rw] host_resource_group_arn
    #   ARN of the host resource group.
    #   @return [String]
    #
    # @!attribute [rw] partition_number
    #   Specifies partition number for partition placement groups.
    #   @return [Integer]
    #
    # @!attribute [rw] tenancy
    #   Defines instance tenancy configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/Placement AWS API Documentation
    #
    class Placement < Struct.new(
      :affinity,
      :availability_zone,
      :group_id,
      :group_name,
      :host_id,
      :host_resource_group_arn,
      :partition_number,
      :tenancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures private DNS name settings for WorkSpace Instance.
    #
    # @!attribute [rw] hostname_type
    #   Specifies the type of hostname configuration.
    #   @return [String]
    #
    # @!attribute [rw] enable_resource_name_dns_a_record
    #   Enables DNS A record for resource name resolution.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_resource_name_dns_aaaa_record
    #   Enables DNS AAAA record for resource name resolution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/PrivateDnsNameOptionsRequest AWS API Documentation
    #
    class PrivateDnsNameOptionsRequest < Struct.new(
      :hostname_type,
      :enable_resource_name_dns_a_record,
      :enable_resource_name_dns_aaaa_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines private IP address configuration for network interface.
    #
    # @!attribute [rw] primary
    #   Indicates if this is the primary private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   Specific private IP address for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/PrivateIpAddressSpecification AWS API Documentation
    #
    class PrivateIpAddressSpecification < Struct.new(
      :primary,
      :private_ip_address)
      SENSITIVE = [:private_ip_address]
      include Aws::Structure
    end

    # Represents an AWS region supported by WorkSpaces Instances.
    #
    # @!attribute [rw] region_name
    #   Name of the AWS region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/Region AWS API Documentation
    #
    class Region < Struct.new(
      :region_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the requested resource could not be found.
    #
    # @!attribute [rw] message
    #   Details about the missing resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures detailed monitoring for WorkSpace Instance.
    #
    # @!attribute [rw] enabled
    #   Enables or disables detailed instance monitoring.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/RunInstancesMonitoringEnabled AWS API Documentation
    #
    class RunInstancesMonitoringEnabled < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a service quota has been exceeded.
    #
    # @!attribute [rw] message
    #   Description of the quota limitation.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource related to the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource related to the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Code identifying the service with the quota limitation.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specific code for the exceeded quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines configuration for spot instance deployment.
    #
    # @!attribute [rw] block_duration_minutes
    #   Duration of spot instance block reservation.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_interruption_behavior
    #   Specifies behavior when spot instance is interrupted.
    #   @return [String]
    #
    # @!attribute [rw] max_price
    #   Maximum hourly price for spot instance.
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_type
    #   Defines the type of spot instance request.
    #   @return [String]
    #
    # @!attribute [rw] valid_until_utc
    #   Timestamp until which spot instance request is valid.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/SpotMarketOptions AWS API Documentation
    #
    class SpotMarketOptions < Struct.new(
      :block_duration_minutes,
      :instance_interruption_behavior,
      :max_price,
      :spot_instance_type,
      :valid_until_utc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a key-value metadata tag.
    #
    # @!attribute [rw] key
    #   Unique identifier for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value associated with the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies tags to add to a WorkSpace Instance.
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the WorkSpace Instance.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :workspace_instance_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms successful tag addition.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Defines tagging configuration for a resource.
    #
    # @!attribute [rw] resource_type
    #   Type of resource being tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Collection of tags for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/TagSpecification AWS API Documentation
    #
    class TagSpecification < Struct.new(
      :resource_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the request rate has exceeded limits.
    #
    # @!attribute [rw] message
    #   Description of the throttling event.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Code identifying the service experiencing throttling.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Specific code for the throttling quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Recommended wait time before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies tags to remove from a WorkSpace Instance.
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :workspace_instance_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Confirms successful tag removal.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Indicates invalid input parameters in the request.
    #
    # @!attribute [rw] message
    #   Overall description of validation failures.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Specific reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   List of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a validation error field in an API request.
    #
    # @!attribute [rw] name
    #   Name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed error message describing the validation issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :reason,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single WorkSpace Instance.
    #
    # @!attribute [rw] provision_state
    #   Current provisioning state of the WorkSpace Instance.
    #   @return [String]
    #
    # @!attribute [rw] workspace_instance_id
    #   Unique identifier for the WorkSpace Instance.
    #   @return [String]
    #
    # @!attribute [rw] ec2_managed_instance
    #   Details of the associated EC2 managed instance.
    #   @return [Types::EC2ManagedInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/WorkspaceInstance AWS API Documentation
    #
    class WorkspaceInstance < Struct.new(
      :provision_state,
      :workspace_instance_id,
      :ec2_managed_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Captures errors specific to WorkSpace Instance operations.
    #
    # @!attribute [rw] error_code
    #   Unique error code for the WorkSpace Instance error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Detailed description of the WorkSpace Instance error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/WorkspaceInstanceError AWS API Documentation
    #
    class WorkspaceInstanceError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

