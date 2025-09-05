# frozen_string_literal: true

# This is generated code!

module Aws::Evs
  # This module contains the types returned by client operations.
  module Types

    # <p>A check on the environment to identify environment health and validate VMware VCF licensing compliance.</p>
    # @!attribute type
    #   <p>The check type. Amazon EVS performs the following checks.</p> <ul> <li> <p> <code>KEY_REUSE</code>: checks that the VCF license key is not used by another Amazon EVS environment. This check fails if a used license is added to the environment.</p> </li> <li> <p> <code>KEY_COVERAGE</code>: checks that your VCF license key allocates sufficient vCPU cores for all deployed hosts. The check fails when any assigned hosts in the EVS environment are not covered by license keys, or when any unassigned hosts cannot be covered by available vCPU cores in keys.</p> </li> <li> <p> <code>REACHABILITY</code>: checks that the Amazon EVS control plane has a persistent connection to SDDC Manager. If Amazon EVS cannot reach the environment, this check fails.</p> </li> <li> <p> <code>HOST_COUNT</code>: Checks that your environment has a minimum of 4 hosts, which is a requirement for VCF 5.2.1.</p> <p>If this check fails, you will need to add hosts so that your environment meets this minimum requirement. Amazon EVS only supports environments with 4-16 hosts.</p> </li> </ul>
    #   @return [String]
    # @!attribute result
    #   <p> The check result.</p>
    #   @return [String]
    # @!attribute impaired_since
    #   <p>The time when environment health began to be impaired.</p>
    #   @return [Time]
    class Check < Struct.new(
      :type,
      :result,
      :impaired_since,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX uplink VLAN for connectivity to the NSX overlay network.</p>
    # @!attribute private_route_server_peerings
    #   <p>The unique IDs for private route server peers.</p>
    #   @return [Array<String>]
    class ConnectivityInfo < Struct.new(
      :private_route_server_peerings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique ID for the environment that the host is added to.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The host that is created and added to the environment.</p>
    #   @return [Types::HostInfoForCreate]
    class CreateEnvironmentHostRequest < Struct.new(
      :client_token,
      :environment_id,
      :host,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_summary
    #   <p>A summary of the environment that the host is created in.</p>
    #   @return [Types::EnvironmentSummary]
    # @!attribute host
    #   <p>A description of the created host.</p>
    #   @return [Types::Host]
    class CreateEnvironmentHostResponse < Struct.new(
      :environment_summary,
      :host,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment creation request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name to give to your environment. The name can contain only alphanumeric characters (case-sensitive), hyphens, and underscores. It must start with an alphanumeric character, and can't be longer than 100 characters. The name must be unique within the Amazon Web Services Region and Amazon Web Services account that you're creating the environment in.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>A unique ID for the customer-managed KMS key that is used to encrypt the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter appliances. These credentials are stored in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other cluster or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_access_security_groups
    #   <p>The security group that controls communication between the Amazon EVS control plane and VPC. The default security group is used if a custom security group isn't specified.</p> <p>The security group should allow access to the following.</p> <ul> <li> <p>TCP/UDP access to the DNS servers</p> </li> <li> <p>HTTPS/SSH access to the host management VLAN subnet</p> </li> <li> <p>HTTPS/SSH access to the Management VM VLAN subnet</p> </li> </ul> <p>You should avoid modifying the security group rules after deployment, as this can break the persistent connection between the Amazon EVS control plane and VPC. This can cause future environment actions like adding or removing hosts to fail.</p>
    #   @return [Types::ServiceAccessSecurityGroups]
    # @!attribute vpc_id
    #   <p>A unique ID for the VPC that the environment is deployed inside.</p> <p>Amazon EVS requires that all VPC subnets exist in a single Availability Zone in a Region where the service is available.</p> <p>The VPC that you specify must have a valid DHCP option set with domain name, at least two DNS servers, and an NTP server. These settings are used to configure your VCF appliances and hosts. The VPC cannot be used with any other deployed Amazon EVS environment. Amazon EVS does not provide multi-VPC support for environments at this time.</p> <p>Amazon EVS does not support the following Amazon Web Services networking options for NSX overlay connectivity: cross-Region VPC peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct Connect virtual private gateway associations.</p> <note> <p>Ensure that you specify a VPC that is adequately sized to accommodate the {evws} subnets.</p> </note>
    #   @return [String]
    # @!attribute service_access_subnet_id
    #   <p>The subnet that is used to establish connectivity between the Amazon EVS control plane and VPC. Amazon EVS uses this subnet to validate mandatory DNS records for your VCF appliances and hosts and create the environment.</p>
    #   @return [String]
    # @!attribute vcf_version
    #   <p> The VCF version to use for the environment. Amazon EVS only supports VCF version 5.2.1 at this time.</p>
    #   @return [String]
    # @!attribute terms_accepted
    #   <p>Customer confirmation that the customer has purchased and will continue to maintain the required number of VCF software licenses to cover all physical processor cores in the Amazon EVS environment. Information about your VCF software in Amazon EVS will be shared with Broadcom to verify license compliance. Amazon EVS does not validate license keys. To validate license keys, visit the Broadcom support portal.</p>
    #   @return [Boolean]
    # @!attribute license_info
    #   <p>The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key. The VCF solution key must cover a minimum of 256 cores. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p> <p>VCF licenses can be used for only one Amazon EVS environment. Amazon EVS does not support reuse of VCF licenses for multiple environments.</p> <p>VCF license information can be retrieved from the Broadcom portal.</p>
    #   @return [Array<Types::LicenseInfo>]
    # @!attribute initial_vlans
    #   <p>The initial VLAN subnets for the Amazon EVS environment.</p> <note> <p>For each Amazon EVS VLAN subnet, you must specify a non-overlapping CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p> </note>
    #   @return [Types::InitialVlans]
    # @!attribute hosts
    #   <p>The ESXi hosts to add to the environment. Amazon EVS requires that you provide details for a minimum of 4 hosts during environment creation.</p> <p>For each host, you must provide the desired hostname, EC2 SSH keypair name, and EC2 instance type. Optionally, you can also provide a partition or cluster placement group to use, or use Amazon EC2 Dedicated Hosts.</p>
    #   @return [Array<Types::HostInfoForCreate>]
    # @!attribute connectivity_info
    #   <p> The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX edges over the NSX uplink subnet, providing BGP-based dynamic routing for overlay networks.</p>
    #   @return [Types::ConnectivityInfo]
    # @!attribute vcf_hostnames
    #   <p>The DNS hostnames for the virtual machines that host the VCF management appliances. Amazon EVS requires that you provide DNS hostnames for the following appliances: vCenter, NSX Manager, SDDC Manager, and Cloud Builder.</p>
    #   @return [Types::VcfHostnames]
    # @!attribute site_id
    #   <p>The Broadcom Site ID that is allocated to you as part of your electronic software delivery. This ID allows customer access to the Broadcom portal, and is provided to you by Broadcom at the close of your software contract or contract renewal. Amazon EVS uses the Broadcom Site ID that you provide to meet Broadcom VCF license usage reporting requirements for Amazon EVS.</p>
    #   @return [String]
    class CreateEnvironmentRequest < Struct.new(
      :client_token,
      :environment_name,
      :kms_key_id,
      :tags,
      :service_access_security_groups,
      :vpc_id,
      :service_access_subnet_id,
      :vcf_version,
      :terms_accepted,
      :license_info,
      :initial_vlans,
      :hosts,
      :connectivity_info,
      :vcf_hostnames,
      :site_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>A description of the created environment.</p>
    #   @return [Types::Environment]
    class CreateEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the host deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique ID for the host's environment.</p>
    #   @return [String]
    # @!attribute host_name
    #   <p>The DNS hostname associated with the host to be deleted.</p>
    #   @return [String]
    class DeleteEnvironmentHostRequest < Struct.new(
      :client_token,
      :environment_id,
      :host_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_summary
    #   <p>A summary of the environment that the host was deleted from.</p>
    #   @return [Types::EnvironmentSummary]
    # @!attribute host
    #   <p>A description of the deleted host.</p>
    #   @return [Types::Host]
    class DeleteEnvironmentHostResponse < Struct.new(
      :environment_summary,
      :host,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <note> <p>This parameter is not used in Amazon EVS currently. If you supply input for this parameter, it will have no effect.</p> </note> <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the environment deletion request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique ID associated with the environment to be deleted.</p>
    #   @return [String]
    class DeleteEnvironmentRequest < Struct.new(
      :client_token,
      :environment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>A description of the deleted environment.</p>
    #   @return [Types::Environment]
    class DeleteEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents an Amazon EVS environment.</p>
    # @!attribute environment_id
    #   <p>The unique ID for the environment.</p>
    #   @return [String]
    # @!attribute environment_state
    #   <p>The state of an environment.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>A detailed description of the <code>environmentState</code> of an environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the environment was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p> The date and time that the environment was modified.</p>
    #   @return [Time]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the environment.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC associated with the environment.</p>
    #   @return [String]
    # @!attribute service_access_subnet_id
    #   <p> The subnet that is used to establish connectivity between the Amazon EVS control plane and VPC. Amazon EVS uses this subnet to perform validations and create the environment.</p>
    #   @return [String]
    # @!attribute vcf_version
    #   <p>The VCF version of the environment.</p>
    #   @return [String]
    # @!attribute terms_accepted
    #   <p>Customer confirmation that the customer has purchased and will continue to maintain the required number of VCF software licenses to cover all physical processor cores in the Amazon EVS environment. Information about your VCF software in Amazon EVS will be shared with Broadcom to verify license compliance. Amazon EVS does not validate license keys. To validate license keys, visit the Broadcom support portal. </p>
    #   @return [Boolean]
    # @!attribute license_info
    #   <p> The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key. The VCF solution key must cover a minimum of 256 cores. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p>
    #   @return [Array<Types::LicenseInfo>]
    # @!attribute site_id
    #   <p>The Broadcom Site ID that is associated with your Amazon EVS environment. Amazon EVS uses the Broadcom Site ID that you provide to meet Broadcom VCF license usage reporting requirements for Amazon EVS.</p>
    #   @return [String]
    # @!attribute environment_status
    #   <p>Reports impaired functionality that stems from issues internal to the environment, such as impaired reachability.</p>
    #   @return [String]
    # @!attribute checks
    #   <p>A check on the environment to identify instance health and VMware VCF licensing issues.</p>
    #   @return [Array<Types::Check>]
    # @!attribute connectivity_info
    #   <p>The connectivity configuration for the environment. Amazon EVS requires that you specify two route server peer IDs. During environment creation, the route server endpoints peer with the NSX uplink VLAN for connectivity to the NSX overlay network.</p>
    #   @return [Types::ConnectivityInfo]
    # @!attribute vcf_hostnames
    #   <p>The DNS hostnames to be used by the VCF management appliances in your environment.</p> <p>For environment creation to be successful, each hostname entry must resolve to a domain name that you've registered in your DNS service of choice and configured in the DHCP option set of your VPC. DNS hostnames cannot be changed after environment creation has started.</p>
    #   @return [Types::VcfHostnames]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ID that Amazon Web Services Secrets Manager uses to encrypt secrets that are associated with the environment. These secrets contain the VCF credentials that are needed to install vCenter Server, NSX, and SDDC Manager.</p> <p>By default, Amazon EVS use the Amazon Web Services Secrets Manager managed key <code>aws/secretsmanager</code>. You can also specify a customer managed key.</p>
    #   @return [String]
    # @!attribute service_access_security_groups
    #   <p>The security groups that allow traffic between the Amazon EVS control plane and your VPC for service access. If a security group is not specified, Amazon EVS uses the default security group in your account for service access.</p>
    #   @return [Types::ServiceAccessSecurityGroups]
    # @!attribute credentials
    #   <p>The VCF credentials that are stored as Amazon EVS managed secrets in Amazon Web Services Secrets Manager.</p> <p>Amazon EVS stores credentials that are needed to install vCenter Server, NSX, and SDDC Manager.</p>
    #   @return [Array<Types::Secret>]
    class Environment < Struct.new(
      :environment_id,
      :environment_state,
      :state_details,
      :created_at,
      :modified_at,
      :environment_arn,
      :environment_name,
      :vpc_id,
      :service_access_subnet_id,
      :vcf_version,
      :terms_accepted,
      :license_info,
      :site_id,
      :environment_status,
      :checks,
      :connectivity_info,
      :vcf_hostnames,
      :kms_key_id,
      :service_access_security_groups,
      :credentials,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of environments with summarized environment details.</p>
    # @!attribute environment_id
    #   <p>A unique ID for the environment.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p> The name of the environment.</p>
    #   @return [String]
    # @!attribute vcf_version
    #   <p>The VCF version of the environment.</p>
    #   @return [String]
    # @!attribute environment_status
    #   <p>Reports impaired functionality that stems from issues internal to the environment, such as impaired reachability.</p>
    #   @return [String]
    # @!attribute environment_state
    #   <p>The state of an environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The date and time that the environment was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p> The date and time that the environment was modified.</p>
    #   @return [Time]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the environment.</p>
    #   @return [String]
    class EnvironmentSummary < Struct.new(
      :environment_id,
      :environment_name,
      :vcf_version,
      :environment_status,
      :environment_state,
      :created_at,
      :modified_at,
      :environment_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique ID for the environment.</p>
    #   @return [String]
    class GetEnvironmentRequest < Struct.new(
      :environment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>A description of the requested environment.</p>
    #   @return [Types::Environment]
    class GetEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An ESXi host that runs on an Amazon EC2 bare metal instance. Four hosts are created in an Amazon EVS environment during environment creation. You can add hosts to an environment using the <code>CreateEnvironmentHost</code> operation. Amazon EVS supports 4-16 hosts per environment.</p>
    # @!attribute host_name
    #   <p>The DNS hostname of the host. DNS hostnames for hosts must be unique across Amazon EVS environments and within VCF.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the host.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the SSH key that is used to access the host.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The EC2 instance type of the host.</p> <note> <p>EC2 instances created through Amazon EVS do not support associating an IAM instance profile.</p> </note>
    #   @return [String]
    # @!attribute placement_group_id
    #   <p>The unique ID of the placement group where the host is placed.</p>
    #   @return [String]
    # @!attribute dedicated_host_id
    #   <p>The unique ID of the Amazon EC2 Dedicated Host.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The date and time that the host was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p> The date and time that the host was modified.</p>
    #   @return [Time]
    # @!attribute host_state
    #   <p> The state of the host.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p> A detailed description of the <code>hostState</code> of a host.</p>
    #   @return [String]
    # @!attribute ec2_instance_id
    #   <p>The unique ID of the EC2 instance that represents the host.</p>
    #   @return [String]
    # @!attribute network_interfaces
    #   <p>The elastic network interfaces that are attached to the host.</p>
    #   @return [Array<Types::NetworkInterface>]
    class Host < Struct.new(
      :host_name,
      :ip_address,
      :key_name,
      :instance_type,
      :placement_group_id,
      :dedicated_host_id,
      :created_at,
      :modified_at,
      :host_state,
      :state_details,
      :ec2_instance_id,
      :network_interfaces,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents a host.</p> <note> <p>You cannot use <code>dedicatedHostId</code> and <code>placementGroupId</code> together in the same <code>HostInfoForCreate</code>object. This results in a <code>ValidationException</code> response.</p> </note>
    # @!attribute host_name
    #   <p>The DNS hostname of the host. DNS hostnames for hosts must be unique across Amazon EVS environments and within VCF.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the SSH key that is used to access the host.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The EC2 instance type that represents the host.</p>
    #   @return [String]
    # @!attribute placement_group_id
    #   <p>The unique ID of the placement group where the host is placed.</p>
    #   @return [String]
    # @!attribute dedicated_host_id
    #   <p>The unique ID of the Amazon EC2 Dedicated Host.</p>
    #   @return [String]
    class HostInfoForCreate < Struct.new(
      :host_name,
      :key_name,
      :instance_type,
      :placement_group_id,
      :dedicated_host_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents an initial VLAN subnet for the Amazon EVS environment. Amazon EVS creates initial VLAN subnets when you first create the environment. Amazon EVS creates the following 10 VLAN subnets: host management VLAN, vMotion VLAN, vSAN VLAN, VTEP VLAN, Edge VTEP VLAN, Management VM VLAN, HCX uplink VLAN, NSX uplink VLAN, expansion VLAN 1, expansion VLAN 2.</p> <note> <p>For each Amazon EVS VLAN subnet, you must specify a non-overlapping CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p> </note>
    # @!attribute cidr
    #   <p> The CIDR block that you provide to create an Amazon EVS VLAN subnet. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24. Amazon EVS VLAN subnet CIDR blocks must not overlap with other subnets in the VPC.</p>
    #   @return [String]
    class InitialVlanInfo < Struct.new(
      :cidr,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The initial VLAN subnets for the environment. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24. Amazon EVS VLAN subnet CIDR blocks must not overlap with other subnets in the VPC.</p>
    # @!attribute vmk_management
    #   <p> The host VMkernel management VLAN subnet. This VLAN subnet carries traffic for managing ESXi hosts and communicating with VMware vCenter Server.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute vm_management
    #   <p>The VM management VLAN subnet. This VLAN subnet carries traffic for vSphere virtual machines.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute v_motion
    #   <p> The vMotion VLAN subnet. This VLAN subnet carries traffic for vSphere vMotion.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute v_san
    #   <p> The vSAN VLAN subnet. This VLAN subnet carries the communication between ESXi hosts to implement a vSAN shared storage pool.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute v_tep
    #   <p> The VTEP VLAN subnet. This VLAN subnet handles internal network traffic between virtual machines within a VCF instance.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute edge_v_tep
    #   <p>The edge VTEP VLAN subnet. This VLAN subnet manages traffic flowing between the internal network and external networks, including internet access and other site connections.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute nsx_uplink
    #   <p> The NSX uplink VLAN subnet. This VLAN subnet allows connectivity to the NSX overlay network.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute hcx
    #   <p>The HCX VLAN subnet. This VLAN subnet allows the HCX Interconnnect (IX) and HCX Network Extension (NE) to reach their peers and enable HCX Service Mesh creation.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute expansion_vlan1
    #   <p>An additional VLAN subnet that can be used to extend VCF capabilities once configured. For example, you can configure an expansion VLAN subnet to use NSX Federation for centralized management and synchronization of multiple NSX deployments across different locations.</p>
    #   @return [Types::InitialVlanInfo]
    # @!attribute expansion_vlan2
    #   <p>An additional VLAN subnet that can be used to extend VCF capabilities once configured. For example, you can configure an expansion VLAN subnet to use NSX Federation for centralized management and synchronization of multiple NSX deployments across different locations.</p>
    #   @return [Types::InitialVlanInfo]
    class InitialVlans < Struct.new(
      :vmk_management,
      :vm_management,
      :v_motion,
      :v_san,
      :v_tep,
      :edge_v_tep,
      :nsx_uplink,
      :hcx,
      :expansion_vlan1,
      :expansion_vlan2,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The license information that Amazon EVS requires to create an environment. Amazon EVS requires two license keys: a VCF solution key and a vSAN license key.</p>
    # @!attribute solution_key
    #   <p> The VCF solution key. This license unlocks VMware VCF product features, including vSphere, NSX, SDDC Manager, and vCenter Server. The VCF solution key must cover a minimum of 256 cores.</p>
    #   @return [String]
    # @!attribute vsan_key
    #   <p> The VSAN license key. This license unlocks vSAN features. The vSAN license key must provide at least 110 TiB of vSAN capacity.</p>
    #   @return [String]
    class LicenseInfo < Struct.new(
      :solution_key,
      :vsan_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    #   @return [Integer]
    # @!attribute environment_id
    #   <p>A unique ID for the environment.</p>
    #   @return [String]
    class ListEnvironmentHostsRequest < Struct.new(
      :next_token,
      :max_results,
      :environment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute environment_hosts
    #   <p>A list of hosts in the environment.</p>
    #   @return [Array<Types::Host>]
    class ListEnvironmentHostsResponse < Struct.new(
      :next_token,
      :environment_hosts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    #   @return [Integer]
    # @!attribute environment_id
    #   <p>A unique ID for the environment.</p>
    #   @return [String]
    class ListEnvironmentVlansRequest < Struct.new(
      :next_token,
      :max_results,
      :environment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute environment_vlans
    #   <p>A list of VLANs that are associated with the specified environment.</p>
    #   @return [Array<Types::Vlan>]
    class ListEnvironmentVlansResponse < Struct.new(
      :next_token,
      :environment_vlans,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for each page. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token with all other arguments unchanged to retrieve the next page. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of an environment. Used to filter response results to return only environments with the specified <code>environmentState</code>.</p>
    #   @return [Array<String>]
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A unique pagination token for next page results. Make the call again using this token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute environment_summaries
    #   <p>A list of environments with summarized environment details.</p>
    #   @return [Array<Types::EnvironmentSummary>]
    class ListEnvironmentsResponse < Struct.new(
      :next_token,
      :environment_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An elastic network interface (ENI) that connects hosts to the VLAN subnets. Amazon EVS provisions two identically configured ENIs in the VMkernel management subnet during host creation. One ENI is active, and the other is in standby mode for automatic switchover during a failure scenario.</p>
    # @!attribute network_interface_id
    #   <p>The unique ID of the elastic network interface.</p>
    #   @return [String]
    class NetworkInterface < Struct.new(
      :network_interface_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A service resource associated with the request could not be found. The resource might not be specified correctly, or it may have a <code>state</code> of <code>DELETED</code>.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that could not be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A managed secret that contains the credentials for installing vCenter Server, NSX, and SDDC Manager. During environment creation, the Amazon EVS control plane uses Amazon Web Services Secrets Manager to create, encrypt, validate, and store secrets. If you choose to delete your environment, Amazon EVS also deletes the secrets that are associated with your environment. Amazon EVS does not provide managed rotation of secrets. We recommend that you rotate secrets regularly to ensure that secrets are not long-lived.</p>
    # @!attribute secret_arn
    #   <p> The Amazon Resource Name (ARN) of the secret.</p>
    #   @return [String]
    class Secret < Struct.new(
      :secret_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The security groups that allow traffic between the Amazon EVS control plane and your VPC for Amazon EVS service access. If a security group is not specified, Amazon EVS uses the default security group in your account for service access.</p>
    # @!attribute security_groups
    #   <p>The security groups that allow service access.</p>
    #   @return [Array<String>]
    class ServiceAccessSecurityGroups < Struct.new(
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of one or more Amazon EVS resources exceeds the maximum allowed. For a list of Amazon EVS quotas, see <a href="https://docs.aws.amazon.com/evs/latest/userguide/service-quotas-evs.html">Amazon EVS endpoints and quotas</a> in the <i>Amazon EVS User Guide</i>. Delete some resources or request an increase in your service quota. To request an increase, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">Amazon Web Services Service Quotas</a> in the <i>Amazon Web Services General Reference Guide</i>. </p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note> <p> <code>TagPolicyException</code> is deprecated. See <a href="https://docs.aws.amazon.com/evs/latest/APIReference/API_ValidationException.html"> <code>ValidationException</code> </a> instead.</p> </note> <p>The request doesn't comply with IAM tag policy. Correct your request and then retry it.</p>
    # @!attribute message
    #   <p>Describes the error encountered</p>
    #   @return [String]
    class TagPolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that assists with categorization and organization. Each tag consists of a key and an optional value. You define both. Tags don't propagate to any other environment or Amazon Web Services resources.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>CreateEnvironmentHost</code> operation couldn't be performed because the service is throttling requests. This exception is thrown when the <code>CreateEnvironmentHost</code> request exceeds concurrency of 1 transaction per second (TPS).</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The seconds to wait to retry.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note> <p> <code>TooManyTagsException</code> is deprecated. See <a href="https://docs.aws.amazon.com/evs/latest/APIReference/API_ServiceQuotaExceededException.html"> <code>ServiceQuotaExceededException</code> </a> instead.</p> </note> <p>A service resource associated with the request has more than 200 tags.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to delete.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the specified constraints. You will see this exception if invalid inputs are provided for any of the Amazon EVS environment operations, or if a list operation is performed on an environment resource that is still initializing.</p>
    # @!attribute message
    #   <p>Describes the error encountered.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that didn't validate.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p> The field name.</p>
    #   @return [String]
    # @!attribute message
    #   <p> A message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DNS hostnames that Amazon EVS uses to install VMware vCenter Server, NSX, SDDC Manager, and Cloud Builder. Each hostname must be unique, and resolve to a domain name that you've registered in your DNS service of choice. Hostnames cannot be changed.</p> <p>VMware VCF requires the deployment of two NSX Edge nodes, and three NSX Manager virtual machines.</p>
    # @!attribute v_center
    #   <p>The VMware vCenter hostname.</p>
    #   @return [String]
    # @!attribute nsx
    #   <p>The VMware NSX hostname.</p>
    #   @return [String]
    # @!attribute nsx_manager1
    #   <p>The hostname for the first VMware NSX Manager virtual machine (VM).</p>
    #   @return [String]
    # @!attribute nsx_manager2
    #   <p>The hostname for the second VMware NSX Manager virtual machine (VM).</p>
    #   @return [String]
    # @!attribute nsx_manager3
    #   <p>The hostname for the third VMware NSX Manager virtual machine (VM).</p>
    #   @return [String]
    # @!attribute nsx_edge1
    #   <p>The hostname for the first NSX Edge node.</p>
    #   @return [String]
    # @!attribute nsx_edge2
    #   <p>The hostname for the second NSX Edge node.</p>
    #   @return [String]
    # @!attribute sddc_manager
    #   <p>The hostname for SDDC Manager.</p>
    #   @return [String]
    # @!attribute cloud_builder
    #   <p>The hostname for VMware Cloud Builder.</p>
    #   @return [String]
    class VcfHostnames < Struct.new(
      :v_center,
      :nsx,
      :nsx_manager1,
      :nsx_manager2,
      :nsx_manager3,
      :nsx_edge1,
      :nsx_edge2,
      :sddc_manager,
      :cloud_builder,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The VLANs that Amazon EVS creates during environment creation.</p>
    # @!attribute vlan_id
    #   <p>The unique ID of the VLAN.</p>
    #   @return [Integer]
    # @!attribute cidr
    #   <p>The CIDR block of the VLAN. Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a maximum size of /24.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The availability zone of the VLAN.</p>
    #   @return [String]
    # @!attribute function_name
    #   <p>The VMware VCF traffic type that is carried over the VLAN. For example, a VLAN with a <code>functionName</code> of <code>hcx</code> is being used to carry VMware HCX traffic.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p> The unique ID of the VLAN subnet.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the VLAN was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p> The date and time that the VLAN was modified.</p>
    #   @return [Time]
    # @!attribute vlan_state
    #   <p> The state of the VLAN.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the VLAN.</p>
    #   @return [String]
    class Vlan < Struct.new(
      :vlan_id,
      :cidr,
      :availability_zone,
      :function_name,
      :subnet_id,
      :created_at,
      :modified_at,
      :vlan_state,
      :state_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
