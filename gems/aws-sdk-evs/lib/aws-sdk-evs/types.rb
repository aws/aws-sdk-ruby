# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Evs
  module Types

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  A check on the environment to identify environment health and
    # validate
    # VMware VCF licensing compliance.
    #
    # @!attribute [rw] type
    #   The check type. Amazon EVS performs the following checks.
    #
    #   * `KEY_REUSE`: checks that the VCF license key is not used by
    #     another Amazon EVS environment. This check fails if a used license
    #     is added to the environment.
    #
    #   * `KEY_COVERAGE`: checks that your VCF license key allocates
    #     sufficient vCPU cores for all deployed hosts. The check fails when
    #     any assigned hosts in the EVS environment are not covered by
    #     license keys, or when any unassigned hosts cannot be covered by
    #     available vCPU cores in keys.
    #
    #   * `REACHABILITY`: checks that the Amazon EVS control plane has a
    #     persistent connection to SDDC Manager. If Amazon EVS cannot reach
    #     the environment, this check fails.
    #
    #   * `HOST_COUNT`: Checks that your environment has a minimum of 4
    #     hosts, which is a requirement for VCF 5.2.1.
    #
    #     If this check fails, you will need to add hosts so that your
    #     environment meets this minimum requirement. Amazon EVS only
    #     supports environments with 4-16 hosts.
    #   @return [String]
    #
    # @!attribute [rw] result
    #   The check result.
    #   @return [String]
    #
    # @!attribute [rw] impaired_since
    #   The time when environment health began to be impaired.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/Check AWS API Documentation
    #
    class Check < Struct.new(
      :type,
      :result,
      :impaired_since)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The connectivity configuration for the environment. Amazon EVS
    # requires that you specify two route server peer IDs. During
    # environment creation, the route server endpoints peer with the NSX
    # uplink VLAN for connectivity to the NSX overlay network.
    #
    # @!attribute [rw] private_route_server_peerings
    #   The unique IDs for private route server peers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ConnectivityInfo AWS API Documentation
    #
    class ConnectivityInfo < Struct.new(
      :private_route_server_peerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host creation request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique ID for the environment that the host is added to.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The host that is created and added to the environment.
    #   @return [Types::HostInfoForCreate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentHostRequest AWS API Documentation
    #
    class CreateEnvironmentHostRequest < Struct.new(
      :client_token,
      :environment_id,
      :host)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_summary
    #   A summary of the environment that the host is created in.
    #   @return [Types::EnvironmentSummary]
    #
    # @!attribute [rw] host
    #   A description of the created host.
    #   @return [Types::Host]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentHostResponse AWS API Documentation
    #
    class CreateEnvironmentHostResponse < Struct.new(
      :environment_summary,
      :host)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment creation request. If you do not
    #   specify a client token, a randomly generated token is used for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name to give to your environment. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores.
    #   It must start with an alphanumeric character, and can't be longer
    #   than 100 characters. The name must be unique within the Amazon Web
    #   Services Region and Amazon Web Services account that you're
    #   creating the environment in.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A unique ID for the customer-managed KMS key that is used to encrypt
    #   the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter
    #   appliances. These credentials are stored in Amazon Web Services
    #   Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other cluster or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_access_security_groups
    #   The security group that controls communication between the Amazon
    #   EVS control plane and VPC. The default security group is used if a
    #   custom security group isn't specified.
    #
    #   The security group should allow access to the following.
    #
    #   * TCP/UDP access to the DNS servers
    #
    #   * HTTPS/SSH access to the host management VLAN subnet
    #
    #   * HTTPS/SSH access to the Management VM VLAN subnet
    #
    #   You should avoid modifying the security group rules after
    #   deployment, as this can break the persistent connection between the
    #   Amazon EVS control plane and VPC. This can cause future environment
    #   actions like adding or removing hosts to fail.
    #   @return [Types::ServiceAccessSecurityGroups]
    #
    # @!attribute [rw] vpc_id
    #   A unique ID for the VPC that the environment is deployed inside.
    #
    #   Amazon EVS requires that all VPC subnets exist in a single
    #   Availability Zone in a Region where the service is available.
    #
    #   The VPC that you specify must have a valid DHCP option set with
    #   domain name, at least two DNS servers, and an NTP server. These
    #   settings are used to configure your VCF appliances and hosts. The
    #   VPC cannot be used with any other deployed Amazon EVS environment.
    #   Amazon EVS does not provide multi-VPC support for environments at
    #   this time.
    #
    #   Amazon EVS does not support the following Amazon Web Services
    #   networking options for NSX overlay connectivity: cross-Region VPC
    #   peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct
    #   Connect virtual private gateway associations.
    #
    #   <note markdown="1"> Ensure that you specify a VPC that is adequately sized to
    #   accommodate the \{evws} subnets.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] service_access_subnet_id
    #   The subnet that is used to establish connectivity between the Amazon
    #   EVS control plane and VPC. Amazon EVS uses this subnet to validate
    #   mandatory DNS records for your VCF appliances and hosts and create
    #   the environment.
    #   @return [String]
    #
    # @!attribute [rw] vcf_version
    #   The VCF version to use for the environment. Amazon EVS only supports
    #   VCF version 5.2.1 at this time.
    #   @return [String]
    #
    # @!attribute [rw] terms_accepted
    #   Customer confirmation that the customer has purchased and will
    #   continue to maintain the required number of VCF software licenses to
    #   cover all physical processor cores in the Amazon EVS environment.
    #   Information about your VCF software in Amazon EVS will be shared
    #   with Broadcom to verify license compliance. Amazon EVS does not
    #   validate license keys. To validate license keys, visit the Broadcom
    #   support portal.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_info
    #   The license information that Amazon EVS requires to create an
    #   environment. Amazon EVS requires two license keys: a VCF solution
    #   key and a vSAN license key. The VCF solution key must cover a
    #   minimum of 256 cores. The vSAN license key must provide at least 110
    #   TiB of vSAN capacity.
    #
    #   VCF licenses can be used for only one Amazon EVS environment. Amazon
    #   EVS does not support reuse of VCF licenses for multiple
    #   environments.
    #
    #   VCF license information can be retrieved from the Broadcom portal.
    #   @return [Array<Types::LicenseInfo>]
    #
    # @!attribute [rw] initial_vlans
    #   The initial VLAN subnets for the Amazon EVS environment.
    #
    #   <note markdown="1"> For each Amazon EVS VLAN subnet, you must specify a non-overlapping
    #   CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size
    #   of /28 and a maximum size of /24.
    #
    #    </note>
    #   @return [Types::InitialVlans]
    #
    # @!attribute [rw] hosts
    #   The ESXi hosts to add to the environment. Amazon EVS requires that
    #   you provide details for a minimum of 4 hosts during environment
    #   creation.
    #
    #   For each host, you must provide the desired hostname, EC2 SSH
    #   keypair name, and EC2 instance type. Optionally, you can also
    #   provide a partition or cluster placement group to use, or use Amazon
    #   EC2 Dedicated Hosts.
    #   @return [Array<Types::HostInfoForCreate>]
    #
    # @!attribute [rw] connectivity_info
    #   The connectivity configuration for the environment. Amazon EVS
    #   requires that you specify two route server peer IDs. During
    #   environment creation, the route server endpoints peer with the NSX
    #   edges over the NSX uplink subnet, providing BGP-based dynamic
    #   routing for overlay networks.
    #   @return [Types::ConnectivityInfo]
    #
    # @!attribute [rw] vcf_hostnames
    #   The DNS hostnames for the virtual machines that host the VCF
    #   management appliances. Amazon EVS requires that you provide DNS
    #   hostnames for the following appliances: vCenter, NSX Manager, SDDC
    #   Manager, and Cloud Builder.
    #   @return [Types::VcfHostnames]
    #
    # @!attribute [rw] site_id
    #   The Broadcom Site ID that is allocated to you as part of your
    #   electronic software delivery. This ID allows customer access to the
    #   Broadcom portal, and is provided to you by Broadcom at the close of
    #   your software contract or contract renewal. Amazon EVS uses the
    #   Broadcom Site ID that you provide to meet Broadcom VCF license usage
    #   reporting requirements for Amazon EVS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentRequest AWS API Documentation
    #
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
      :site_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   A description of the created environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host deletion request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique ID for the host's environment.
    #   @return [String]
    #
    # @!attribute [rw] host_name
    #   The DNS hostname associated with the host to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentHostRequest AWS API Documentation
    #
    class DeleteEnvironmentHostRequest < Struct.new(
      :client_token,
      :environment_id,
      :host_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_summary
    #   A summary of the environment that the host was deleted from.
    #   @return [Types::EnvironmentSummary]
    #
    # @!attribute [rw] host
    #   A description of the deleted host.
    #   @return [Types::Host]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentHostResponse AWS API Documentation
    #
    class DeleteEnvironmentHostResponse < Struct.new(
      :environment_summary,
      :host)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment deletion request. If you do not
    #   specify a client token, a randomly generated token is used for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique ID associated with the environment to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :client_token,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   A description of the deleted environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  An object that represents an Amazon EVS environment.
    #
    # @!attribute [rw] environment_id
    #   The unique ID for the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_state
    #   The state of an environment.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   A detailed description of the `environmentState` of an environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the environment was modified.
    #   @return [Time]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC associated with the environment.
    #   @return [String]
    #
    # @!attribute [rw] service_access_subnet_id
    #   The subnet that is used to establish connectivity between the Amazon
    #   EVS control plane and VPC. Amazon EVS uses this subnet to perform
    #   validations and create the environment.
    #   @return [String]
    #
    # @!attribute [rw] vcf_version
    #   The VCF version of the environment.
    #   @return [String]
    #
    # @!attribute [rw] terms_accepted
    #   Customer confirmation that the customer has purchased and will
    #   continue to maintain the required number of VCF software licenses to
    #   cover all physical processor cores in the Amazon EVS environment.
    #   Information about your VCF software in Amazon EVS will be shared
    #   with Broadcom to verify license compliance. Amazon EVS does not
    #   validate license keys. To validate license keys, visit the Broadcom
    #   support portal.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_info
    #   The license information that Amazon EVS requires to create an
    #   environment. Amazon EVS requires two license keys: a VCF solution
    #   key and a vSAN license key. The VCF solution key must cover a
    #   minimum of 256 cores. The vSAN license key must provide at least 110
    #   TiB of vSAN capacity.
    #   @return [Array<Types::LicenseInfo>]
    #
    # @!attribute [rw] site_id
    #   The Broadcom Site ID that is associated with your Amazon EVS
    #   environment. Amazon EVS uses the Broadcom Site ID that you provide
    #   to meet Broadcom VCF license usage reporting requirements for Amazon
    #   EVS.
    #   @return [String]
    #
    # @!attribute [rw] environment_status
    #   Reports impaired functionality that stems from issues internal to
    #   the environment, such as impaired reachability.
    #   @return [String]
    #
    # @!attribute [rw] checks
    #   A check on the environment to identify instance health and VMware
    #   VCF licensing issues.
    #   @return [Array<Types::Check>]
    #
    # @!attribute [rw] connectivity_info
    #   The connectivity configuration for the environment. Amazon EVS
    #   requires that you specify two route server peer IDs. During
    #   environment creation, the route server endpoints peer with the NSX
    #   uplink VLAN for connectivity to the NSX overlay network.
    #   @return [Types::ConnectivityInfo]
    #
    # @!attribute [rw] vcf_hostnames
    #   The DNS hostnames to be used by the VCF management appliances in
    #   your environment.
    #
    #   For environment creation to be successful, each hostname entry must
    #   resolve to a domain name that you've registered in your DNS service
    #   of choice and configured in the DHCP option set of your VPC. DNS
    #   hostnames cannot be changed after environment creation has started.
    #   @return [Types::VcfHostnames]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key ID that Amazon Web Services Secrets
    #   Manager uses to encrypt secrets that are associated with the
    #   environment. These secrets contain the VCF credentials that are
    #   needed to install vCenter Server, NSX, and SDDC Manager.
    #
    #   By default, Amazon EVS use the Amazon Web Services Secrets Manager
    #   managed key `aws/secretsmanager`. You can also specify a customer
    #   managed key.
    #   @return [String]
    #
    # @!attribute [rw] service_access_security_groups
    #   The security groups that allow traffic between the Amazon EVS
    #   control plane and your VPC for service access. If a security group
    #   is not specified, Amazon EVS uses the default security group in your
    #   account for service access.
    #   @return [Types::ServiceAccessSecurityGroups]
    #
    # @!attribute [rw] credentials
    #   The VCF credentials that are stored as Amazon EVS managed secrets in
    #   Amazon Web Services Secrets Manager.
    #
    #   Amazon EVS stores credentials that are needed to install vCenter
    #   Server, NSX, and SDDC Manager.
    #   @return [Array<Types::Secret>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/Environment AWS API Documentation
    #
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
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  A list of environments with summarized environment details.
    #
    # @!attribute [rw] environment_id
    #   A unique ID for the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] vcf_version
    #   The VCF version of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_status
    #   Reports impaired functionality that stems from issues internal to
    #   the environment, such as impaired reachability.
    #   @return [String]
    #
    # @!attribute [rw] environment_state
    #   The state of an environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the environment was modified.
    #   @return [Time]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) that is associated with the
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :environment_id,
      :environment_name,
      :vcf_version,
      :environment_status,
      :environment_state,
      :created_at,
      :modified_at,
      :environment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique ID for the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   A description of the requested environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  An ESXi host that runs on an Amazon EC2 bare metal instance. Four
    # hosts are created in an Amazon EVS environment during environment
    # creation. You can add hosts to an environment using the
    # `CreateEnvironmentHost` operation. Amazon EVS supports 4-16 hosts per
    # environment.
    #
    # @!attribute [rw] host_name
    #   The DNS hostname of the host. DNS hostnames for hosts must be unique
    #   across Amazon EVS environments and within VCF.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the host.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the SSH key that is used to access the host.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type of the host.
    #
    #   <note markdown="1"> EC2 instances created through Amazon EVS do not support associating
    #   an IAM instance profile.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] placement_group_id
    #   The unique ID of the placement group where the host is placed.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_host_id
    #   The unique ID of the Amazon EC2 Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the host was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the host was modified.
    #   @return [Time]
    #
    # @!attribute [rw] host_state
    #   The state of the host.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   A detailed description of the `hostState` of a host.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The unique ID of the EC2 instance that represents the host.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The elastic network interfaces that are attached to the host.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/Host AWS API Documentation
    #
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
      :network_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  An object that represents a host.
    #
    #  <note markdown="1"> You cannot use `dedicatedHostId` and
    # `placementGroupId` together in
    # the same `HostInfoForCreate`object. This results in a
    # `ValidationException` response.
    #
    #  </note>
    #
    # @!attribute [rw] host_name
    #   The DNS hostname of the host. DNS hostnames for hosts must be unique
    #   across Amazon EVS environments and within VCF.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the SSH key that is used to access the host.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type that represents the host.
    #   @return [String]
    #
    # @!attribute [rw] placement_group_id
    #   The unique ID of the placement group where the host is placed.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_host_id
    #   The unique ID of the Amazon EC2 Dedicated Host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/HostInfoForCreate AWS API Documentation
    #
    class HostInfoForCreate < Struct.new(
      :host_name,
      :key_name,
      :instance_type,
      :placement_group_id,
      :dedicated_host_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  An object that represents an initial VLAN subnet for the Amazon EVS
    # environment. Amazon EVS creates initial VLAN subnets when you first
    # create the environment. Amazon EVS creates the following 10 VLAN
    # subnets: host management VLAN, vMotion VLAN, vSAN VLAN, VTEP VLAN,
    # Edge VTEP VLAN, Management VM VLAN, HCX uplink VLAN, NSX uplink VLAN,
    # expansion VLAN 1, expansion VLAN 2.
    #
    #  <note markdown="1"> For each Amazon EVS VLAN subnet, you must specify
    # a non-overlapping
    # CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of
    # /28 and a maximum size of /24.
    #
    #  </note>
    #
    # @!attribute [rw] cidr
    #   The CIDR block that you provide to create an Amazon EVS VLAN subnet.
    #   Amazon EVS VLAN subnets have a minimum CIDR block size of /28 and a
    #   maximum size of /24. Amazon EVS VLAN subnet CIDR blocks must not
    #   overlap with other subnets in the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/InitialVlanInfo AWS API Documentation
    #
    class InitialVlanInfo < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The initial VLAN subnets for the environment. Amazon EVS VLAN subnets
    # have a minimum CIDR block size of /28 and a maximum size of /24.
    # Amazon EVS VLAN subnet CIDR blocks must not overlap with other subnets
    # in the VPC.
    #
    # @!attribute [rw] vmk_management
    #   The host VMkernel management VLAN subnet. This VLAN subnet carries
    #   traffic for managing ESXi hosts and communicating with VMware
    #   vCenter Server.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] vm_management
    #   The VM management VLAN subnet. This VLAN subnet carries traffic for
    #   vSphere virtual machines.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] v_motion
    #   The vMotion VLAN subnet. This VLAN subnet carries traffic for
    #   vSphere vMotion.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] v_san
    #   The vSAN VLAN subnet. This VLAN subnet carries the communication
    #   between ESXi hosts to implement a vSAN shared storage pool.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] v_tep
    #   The VTEP VLAN subnet. This VLAN subnet handles internal network
    #   traffic between virtual machines within a VCF instance.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] edge_v_tep
    #   The edge VTEP VLAN subnet. This VLAN subnet manages traffic flowing
    #   between the internal network and external networks, including
    #   internet access and other site connections.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] nsx_uplink
    #   The NSX uplink VLAN subnet. This VLAN subnet allows connectivity to
    #   the NSX overlay network.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] hcx
    #   The HCX VLAN subnet. This VLAN subnet allows the HCX Interconnnect
    #   (IX) and HCX Network Extension (NE) to reach their peers and enable
    #   HCX Service Mesh creation.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] expansion_vlan_1
    #   An additional VLAN subnet that can be used to extend VCF
    #   capabilities once configured. For example, you can configure an
    #   expansion VLAN subnet to use NSX Federation for centralized
    #   management and synchronization of multiple NSX deployments across
    #   different locations.
    #   @return [Types::InitialVlanInfo]
    #
    # @!attribute [rw] expansion_vlan_2
    #   An additional VLAN subnet that can be used to extend VCF
    #   capabilities once configured. For example, you can configure an
    #   expansion VLAN subnet to use NSX Federation for centralized
    #   management and synchronization of multiple NSX deployments across
    #   different locations.
    #   @return [Types::InitialVlanInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/InitialVlans AWS API Documentation
    #
    class InitialVlans < Struct.new(
      :vmk_management,
      :vm_management,
      :v_motion,
      :v_san,
      :v_tep,
      :edge_v_tep,
      :nsx_uplink,
      :hcx,
      :expansion_vlan_1,
      :expansion_vlan_2)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The license information that Amazon EVS requires to create an
    # environment. Amazon EVS requires two license keys: a VCF solution key
    # and a vSAN license key.
    #
    # @!attribute [rw] solution_key
    #   The VCF solution key. This license unlocks VMware VCF product
    #   features, including vSphere, NSX, SDDC Manager, and vCenter Server.
    #   The VCF solution key must cover a minimum of 256 cores.
    #   @return [String]
    #
    # @!attribute [rw] vsan_key
    #   The VSAN license key. This license unlocks vSAN features. The vSAN
    #   license key must provide at least 110 TiB of vSAN capacity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/LicenseInfo AWS API Documentation
    #
    class LicenseInfo < Struct.new(
      :solution_key,
      :vsan_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the
    #   next page. Each pagination token expires after 24 hours. Using an
    #   expired pagination token will return an *HTTP 400 InvalidToken*
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_id
    #   A unique ID for the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentHostsRequest AWS API Documentation
    #
    class ListEnvironmentHostsRequest < Struct.new(
      :next_token,
      :max_results,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for next page results. Make the call again
    #   using this token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] environment_hosts
    #   A list of hosts in the environment.
    #   @return [Array<Types::Host>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentHostsResponse AWS API Documentation
    #
    class ListEnvironmentHostsResponse < Struct.new(
      :next_token,
      :environment_hosts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the
    #   next page. Each pagination token expires after 24 hours. Using an
    #   expired pagination token will return an *HTTP 400 InvalidToken*
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_id
    #   A unique ID for the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentVlansRequest AWS API Documentation
    #
    class ListEnvironmentVlansRequest < Struct.new(
      :next_token,
      :max_results,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for next page results. Make the call again
    #   using this token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] environment_vlans
    #   A list of VLANs that are associated with the specified environment.
    #   @return [Array<Types::Vlan>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentVlansResponse AWS API Documentation
    #
    class ListEnvironmentVlansResponse < Struct.new(
      :next_token,
      :environment_vlans)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the
    #   next page. Each pagination token expires after 24 hours. Using an
    #   expired pagination token will return an *HTTP 400 InvalidToken*
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of an environment. Used to filter response results to
    #   return only environments with the specified `environmentState`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A unique pagination token for next page results. Make the call again
    #   using this token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] environment_summaries
    #   A list of environments with summarized environment details.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :next_token,
      :environment_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  An elastic network interface (ENI) that connects hosts to the VLAN
    # subnets. Amazon EVS provisions two identically configured ENIs in the
    # VMkernel management subnet during host creation. One ENI is active,
    # and the other is in standby mode for automatic switchover during a
    # failure scenario.
    #
    # @!attribute [rw] network_interface_id
    #   The unique ID of the elastic network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service resource associated with the request could not be found. The
    # resource might not be specified correctly, or it may have a `state` of
    # `DELETED`.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  A managed secret that contains the credentials for installing vCenter
    # Server, NSX, and SDDC Manager. During environment creation, the Amazon
    # EVS control plane uses Amazon Web Services Secrets Manager to create,
    # encrypt, validate, and store secrets. If you choose to delete your
    # environment, Amazon EVS also deletes the secrets that are associated
    # with your environment. Amazon EVS does not provide managed rotation of
    # secrets. We recommend that you rotate secrets regularly to ensure that
    # secrets are not long-lived.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/Secret AWS API Documentation
    #
    class Secret < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The security groups that allow traffic between the Amazon EVS control
    # plane and your VPC for Amazon EVS service access. If a security group
    # is not specified, Amazon EVS uses the default security group in your
    # account for service access.
    #
    # @!attribute [rw] security_groups
    #   The security groups that allow service access.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ServiceAccessSecurityGroups AWS API Documentation
    #
    class ServiceAccessSecurityGroups < Struct.new(
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of one or more Amazon EVS resources exceeds the maximum
    # allowed. For a list of Amazon EVS quotas, see [Amazon EVS endpoints
    # and quotas][1] in the *Amazon EVS User Guide*. Delete some resources
    # or request an increase in your service quota. To request an increase,
    # see [Amazon Web Services Service Quotas][2] in the *Amazon Web
    # Services General Reference Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/evs/latest/userguide/service-quotas-evs.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> `TagPolicyException` is deprecated. See [
    # `ValidationException` ][1]
    # instead.
    #
    #  </note>
    #
    #  The request doesn't comply with IAM tag policy. Correct your request
    # and then retry it.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/evs/latest/APIReference/API_ValidationException.html
    #
    # @!attribute [rw] message
    #   Describes the error encountered
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TagPolicyException AWS API Documentation
    #
    class TagPolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags
    #   don't propagate to any other environment or Amazon Web Services
    #   resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The `CreateEnvironmentHost` operation couldn't be performed because
    # the service is throttling requests. This exception is thrown when the
    # `CreateEnvironmentHost` request exceeds concurrency of 1 transaction
    # per second (TPS).
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The seconds to wait to retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> `TooManyTagsException` is deprecated. See [
    # `ServiceQuotaExceededException` ][1] instead.
    #
    #  </note>
    #
    #  A service resource associated with the request has more than 200
    # tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/evs/latest/APIReference/API_ServiceQuotaExceededException.html
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The input fails to satisfy the specified constraints. You will see
    # this exception if invalid inputs are provided for any of the Amazon
    # EVS environment operations, or if a list operation is performed on an
    # environment resource that is still initializing.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that didn't validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  Stores information about a field passed inside a request that
    # resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The DNS hostnames that Amazon EVS uses to install VMware vCenter
    # Server, NSX, SDDC Manager, and Cloud Builder. Each hostname must be
    # unique, and resolve to a domain name that you've registered in your
    # DNS service of choice. Hostnames cannot be changed.
    #
    #  VMware VCF requires the deployment of two NSX Edge nodes, and three
    # NSX Manager virtual machines.
    #
    # @!attribute [rw] v_center
    #   The VMware vCenter hostname.
    #   @return [String]
    #
    # @!attribute [rw] nsx
    #   The VMware NSX hostname.
    #   @return [String]
    #
    # @!attribute [rw] nsx_manager_1
    #   The hostname for the first VMware NSX Manager virtual machine (VM).
    #   @return [String]
    #
    # @!attribute [rw] nsx_manager_2
    #   The hostname for the second VMware NSX Manager virtual machine (VM).
    #   @return [String]
    #
    # @!attribute [rw] nsx_manager_3
    #   The hostname for the third VMware NSX Manager virtual machine (VM).
    #   @return [String]
    #
    # @!attribute [rw] nsx_edge_1
    #   The hostname for the first NSX Edge node.
    #   @return [String]
    #
    # @!attribute [rw] nsx_edge_2
    #   The hostname for the second NSX Edge node.
    #   @return [String]
    #
    # @!attribute [rw] sddc_manager
    #   The hostname for SDDC Manager.
    #   @return [String]
    #
    # @!attribute [rw] cloud_builder
    #   The hostname for VMware Cloud Builder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/VcfHostnames AWS API Documentation
    #
    class VcfHostnames < Struct.new(
      :v_center,
      :nsx,
      :nsx_manager_1,
      :nsx_manager_2,
      :nsx_manager_3,
      :nsx_edge_1,
      :nsx_edge_2,
      :sddc_manager,
      :cloud_builder)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EVS is in public preview release and is
    # subject to change.
    #
    #  </note>
    #
    #  The VLANs that Amazon EVS creates during environment creation.
    #
    # @!attribute [rw] vlan_id
    #   The unique ID of the VLAN.
    #   @return [Integer]
    #
    # @!attribute [rw] cidr
    #   The CIDR block of the VLAN. Amazon EVS VLAN subnets have a minimum
    #   CIDR block size of /28 and a maximum size of /24.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone of the VLAN.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The VMware VCF traffic type that is carried over the VLAN. For
    #   example, a VLAN with a `functionName` of `hcx` is being used to
    #   carry VMware HCX traffic.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The unique ID of the VLAN subnet.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the VLAN was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the VLAN was modified.
    #   @return [Time]
    #
    # @!attribute [rw] vlan_state
    #   The state of the VLAN.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the VLAN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/Vlan AWS API Documentation
    #
    class Vlan < Struct.new(
      :vlan_id,
      :cidr,
      :availability_zone,
      :function_name,
      :subnet_id,
      :created_at,
      :modified_at,
      :vlan_state,
      :state_details)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

