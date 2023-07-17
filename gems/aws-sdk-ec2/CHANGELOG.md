Unreleased Changes
------------------

1.391.0 (2023-07-17)
------------------

* Feature - Add Nitro TPM support on DescribeInstanceTypes

1.390.0 (2023-07-13)
------------------

* Feature - This release adds support for the C7gn and Hpc7g instances. C7gn instances are powered by AWS Graviton3 processors and the fifth-generation AWS Nitro Cards. Hpc7g instances are powered by AWS Graviton 3E processors and provide up to 200 Gbps network bandwidth.

1.389.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.388.0 (2023-07-06)
------------------

* Feature - Add Nitro Enclaves support on DescribeInstanceTypes

1.387.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.386.0 (2023-06-20)
------------------

* Feature - Adds support for targeting Dedicated Host allocations by assetIds in AWS Outposts

1.385.0 (2023-06-19)
------------------

* Feature - API changes to AWS Verified Access to include data from trust providers in logs

1.384.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.383.0 (2023-06-13)
------------------

* Feature - This release introduces a new feature, EC2 Instance Connect Endpoint, that enables you to connect to a resource over TCP, without requiring the resource to have a public IPv4 address.

1.382.0 (2023-06-05)
------------------

* Feature - Making InstanceTagAttribute as the required parameter for the DeregisterInstanceEventNotificationAttributes and RegisterInstanceEventNotificationAttributes APIs.

1.381.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.380.0 (2023-05-18)
------------------

* Feature - Add support for i4g.large, i4g.xlarge, i4g.2xlarge, i4g.4xlarge, i4g.8xlarge and i4g.16xlarge instances powered by AWS Graviton2 processors that deliver up to 15% better compute performance than our other storage-optimized instances.

1.379.0 (2023-05-05)
------------------

* Feature - This release adds support the inf2 and trn1n instances. inf2 instances are purpose built for deep learning inference while trn1n instances are powered by AWS Trainium accelerators and they build on the capabilities of Trainium-powered trn1 instances.

1.378.0 (2023-05-03)
------------------

* Feature - Adds an SDK paginator for GetNetworkInsightsAccessScopeAnalysisFindings

1.377.0 (2023-04-27)
------------------

* Feature - This release adds support for AMD SEV-SNP on EC2 instances.

1.376.0 (2023-04-24)
------------------

* Feature - API changes to AWS Verified Access related to identity providers' information.

1.375.0 (2023-04-04)
------------------

* Feature - C6in, M6in, M6idn, R6in and R6idn bare metal instances are powered by 3rd Generation Intel Xeon Scalable processors and offer up to 200 Gbps of network bandwidth.

1.374.0 (2023-04-04)
------------------

* Feature - C6in, M6in, M6idn, R6in and R6idn bare metal instances are powered by 3rd Generation Intel Xeon Scalable processors and offer up to 200 Gbps of network bandwidth.

1.373.0 (2023-03-31)
------------------

* Feature - Documentation updates for EC2 On Demand Capacity Reservations

1.372.0 (2023-03-30)
------------------

* Feature - This release adds support for Tunnel Endpoint Lifecycle control, a new feature that provides Site-to-Site VPN customers with better visibility and control of their VPN tunnel maintenance updates.

1.371.0 (2023-03-21)
------------------

* Feature - This release adds support for AWS Network Firewall, AWS PrivateLink, and Gateway Load Balancers to Amazon VPC Reachability Analyzer, and it makes the path destination optional as long as a destination address in the filter at source is provided.

1.370.0 (2023-03-14)
------------------

* Feature - This release adds a new DnsOptions key (PrivateDnsOnlyForInboundResolverEndpoint) to CreateVpcEndpoint and ModifyVpcEndpoint APIs.

1.369.0 (2023-03-08)
------------------

* Feature - Introducing Amazon EC2 C7g, M7g and R7g instances, powered by the latest generation AWS Graviton3 processors and deliver up to 25% better performance over Graviton2-based instances.

1.368.0 (2023-03-03)
------------------

* Feature - This release adds support for a new boot mode for EC2 instances called 'UEFI Preferred'.

1.367.0 (2023-02-28)
------------------

* Feature - This release allows IMDS support to be set to v2-only on an existing AMI, so that all future instances launched from that AMI will use IMDSv2 by default.

1.366.0 (2023-02-14)
------------------

* Feature - With this release customers can turn host maintenance on or off when allocating or modifying a supported dedicated host. Host maintenance is turned on by default for supported hosts.

1.365.0 (2023-02-10)
------------------

* Feature - Adds support for waiters that automatically poll for an imported snapshot until it reaches the completed state.

1.364.0 (2023-02-02)
------------------

* Feature - Documentation updates for EC2.

1.363.0 (2023-01-31)
------------------

* Feature - This launch allows customers to associate up to 8 IP addresses to their NAT Gateways to increase the limit on concurrent connections to a single destination by eight times from 55K to 440K.

1.362.0 (2023-01-30)
------------------

* Feature - We add Prefix Lists as a new route destination option for LocalGatewayRoutes. This will allow customers to create routes to Prefix Lists. Prefix List routes will allow customers to group individual CIDR routes with the same target into a single route.

1.361.0 (2023-01-25)
------------------

* Feature - This release adds new functionality that allows customers to provision IPv6 CIDR blocks through Amazon VPC IP Address Manager (IPAM) as well as allowing customers to utilize IPAM Resource Discovery APIs.

1.360.0 (2023-01-20)
------------------

* Feature - C6in, M6in, M6idn, R6in and R6idn instances are powered by 3rd Generation Intel Xeon Scalable processors (code named Ice Lake) with an all-core turbo frequency of 3.5 GHz.

1.359.0 (2023-01-19)
------------------

* Feature - Adds SSM Parameter Resource Aliasing support to EC2 Launch Templates. Launch Templates can now store parameter aliases in place of AMI Resource IDs. CreateLaunchTemplateVersion and DescribeLaunchTemplateVersions now support a convenience flag, ResolveAlias, to return the resolved parameter value.

1.358.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.357.0 (2023-01-13)
------------------

* Feature - Documentation updates for EC2.

1.356.0 (2022-12-20)
------------------

* Feature - Adds support for pagination in the EC2 DescribeImages API.

1.355.0 (2022-12-12)
------------------

* Feature - This release updates DescribeFpgaImages to show supported instance types of AFIs in its response.

1.354.0 (2022-12-05)
------------------

* Feature - Documentation updates for EC2.

1.353.0 (2022-11-29)
------------------

* Feature - This release adds support for AWS Verified Access and the Hpc6id Amazon EC2 compute optimized instance type, which features 3rd generation Intel Xeon Scalable processors.

1.352.0 (2022-11-29)
------------------

* Feature - Introduces ENA Express, which uses AWS SRD and dynamic routing to increase throughput and minimize latency, adds support for trust relationships between Reachability Analyzer and AWS Organizations to enable cross-account analysis, and adds support for Infrastructure Performance metric subscriptions.

1.351.0 (2022-11-18)
------------------

* Feature - This release adds support for copying an Amazon Machine Image's tags when copying an AMI.

1.350.0 (2022-11-17)
------------------

* Feature - This release adds a new optional parameter "privateIpAddress" for the CreateNatGateway API. PrivateIPAddress will allow customers to select a custom Private IPv4 address instead of having it be auto-assigned.

1.349.0 (2022-11-10)
------------------

* Feature - This release adds a new price capacity optimized allocation strategy for Spot Instances to help customers optimize provisioning of Spot Instances via EC2 Auto Scaling, EC2 Fleet, and Spot Fleet. It allocates Spot Instances based on both spare capacity availability and Spot Instance price.

1.348.0 (2022-11-09)
------------------

* Feature - Amazon EC2 Trn1 instances, powered by AWS Trainium chips, are purpose built for high-performance deep learning training. u-24tb1.112xlarge and u-18tb1.112xlarge High Memory instances are purpose-built to run large in-memory databases.

1.347.0 (2022-11-08)
------------------

* Feature - This release enables sharing of EC2 Placement Groups across accounts and within AWS Organizations using Resource Access Manager

1.346.0 (2022-11-07)
------------------

* Feature - This release adds support for two new attributes for attribute-based instance type selection - NetworkBandwidthGbps and AllowedInstanceTypes.

1.345.0 (2022-11-04)
------------------

* Feature - This release adds API support for the recipient of an AMI account share to remove shared AMI launch permissions.

1.344.0 (2022-10-31)
------------------

* Feature - Elastic IP transfer is a new Amazon VPC feature that allows you to transfer your Elastic IP addresses from one AWS Account to another.

1.343.0 (2022-10-27)
------------------

* Feature - Feature supports the replacement of instance root volume using an updated AMI without requiring customers to stop their instance.

1.342.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.341.0 (2022-10-04)
------------------

* Feature - Added EnableNetworkAddressUsageMetrics flag for ModifyVpcAttribute, DescribeVpcAttribute APIs.

1.340.0 (2022-10-03)
------------------

* Feature - Adding an imdsSupport attribute to EC2 AMIs

1.339.0 (2022-09-29)
------------------

* Feature - u-3tb1 instances are powered by Intel Xeon Platinum 8176M (Skylake) processors and are purpose-built to run large in-memory databases.

1.338.0 (2022-09-23)
------------------

* Feature - Letting external AWS customers provide ImageId as a Launch Template override in FleetLaunchTemplateOverridesRequest

1.337.0 (2022-09-22)
------------------

* Feature - Documentation updates for Amazon EC2.

1.336.0 (2022-09-20)
------------------

* Feature - This release adds support for blocked paths to Amazon VPC Reachability Analyzer.

1.335.0 (2022-09-19)
------------------

* Feature - This release adds CapacityAllocations field to DescribeCapacityReservations

1.334.0 (2022-09-15)
------------------

* Feature - This feature allows customers to create tags for vpc-endpoint-connections and vpc-endpoint-service-permissions.

1.333.0 (2022-09-14)
------------------

* Feature - This update introduces API operations to manage and create local gateway route tables, CoIP pools, and VIF group associations.

1.332.0 (2022-09-13)
------------------

* Feature - Two new features for local gateway route tables: support for static routes targeting Elastic Network Interfaces and direct VPC routing.

1.331.0 (2022-09-08)
------------------

* Feature - This release adds support to send VPC Flow Logs to kinesis-data-firehose as new destination type

1.330.0 (2022-09-07)
------------------

* Feature - Documentation updates for Amazon EC2.

1.329.0 (2022-08-22)
------------------

* Feature - R6a instances are powered by 3rd generation AMD EPYC (Milan) processors delivering all-core turbo frequency of 3.6 GHz. C6id, M6id, and R6id instances are powered by 3rd generation Intel Xeon Scalable processor (Ice Lake) delivering all-core turbo frequency of 3.5 GHz.

1.328.0 (2022-08-18)
------------------

* Feature - This release adds support for VPN log options , a new feature allowing S2S VPN connections to send IKE activity logs to CloudWatch Logs

1.327.0 (2022-08-10)
------------------

* Feature - This release adds support for excluding specific data (non-root) volumes from multi-volume snapshot sets created from instances.

1.326.0 (2022-07-29)
------------------

* Feature - Documentation updates for Amazon EC2.

1.325.0 (2022-07-28)
------------------

* Feature - Documentation updates for VM Import/Export.

1.324.0 (2022-07-22)
------------------

* Feature - Added support for EC2 M1 Mac instances. For more information, please visit aws.amazon.com/mac.

1.323.0 (2022-07-18)
------------------

* Feature - Documentation updates for Amazon EC2.

1.322.0 (2022-07-14)
------------------

* Feature - This release adds flow logs for Transit Gateway to  allow customers to gain deeper visibility and insights into network traffic through their Transit Gateways.

1.321.0 (2022-07-11)
------------------

* Feature - Build, manage, and monitor a unified global network that connects resources running across your cloud and on-premises environments using the AWS Cloud WAN APIs.

1.320.0 (2022-06-28)
------------------

* Feature - This release adds a new spread placement group to EC2 Placement Groups: host level spread, which spread instances between physical hosts, available to Outpost customers only. CreatePlacementGroup and DescribePlacementGroups APIs were updated with a new parameter: SpreadLevel to support this feature.

1.319.0 (2022-06-21)
------------------

* Feature - This release adds support for Private IP VPNs, a new feature allowing S2S VPN connections to use private ip addresses as the tunnel outside ip address over Direct Connect as transport.

1.318.0 (2022-06-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.317.0 (2022-05-26)
------------------

* Feature - C7g instances, powered by the latest generation AWS Graviton3 processors, provide the best price performance in Amazon EC2 for compute-intensive workloads.

1.316.0 (2022-05-24)
------------------

* Feature - Stop Protection feature enables customers to protect their instances from accidental stop actions.

1.315.0 (2022-05-12)
------------------

* Feature - This release introduces a target type Gateway Load Balancer Endpoint for mirrored traffic. Customers can now specify GatewayLoadBalancerEndpoint option during the creation of a traffic mirror target.

1.314.0 (2022-05-11)
------------------

* Feature - This release updates AWS PrivateLink APIs to support IPv6 for PrivateLink Services and Endpoints of type 'Interface'.

1.313.0 (2022-05-10)
------------------

* Feature - Added support for using NitroTPM and UEFI Secure Boot on EC2 instances.

1.312.0 (2022-05-06)
------------------

* Feature - Add new state values for IPAMs, IPAM Scopes, and IPAM Pools.

1.311.0 (2022-05-05)
------------------

* Feature - Amazon EC2 I4i instances are powered by 3rd generation Intel Xeon Scalable processors and feature up to 30 TB of local AWS Nitro SSD storage

1.310.0 (2022-05-03)
------------------

* Feature - Adds support for allocating Dedicated Hosts on AWS  Outposts. The AllocateHosts API now accepts an OutpostArn request  parameter, and the DescribeHosts API now includes an OutpostArn response parameter.

1.309.0 (2022-04-28)
------------------

* Feature - This release adds support to query the public key and creation date of EC2 Key Pairs. Additionally, the format (pem or ppk) of a key pair can be specified when creating a new key pair.

1.308.0 (2022-04-22)
------------------

* Feature - Adds support for waiters that automatically poll for a deleted NAT Gateway until it reaches the deleted state.

1.307.0 (2022-04-14)
------------------

* Feature - Documentation updates for Amazon EC2.

1.306.0 (2022-04-12)
------------------

* Feature - X2idn and X2iedn instances are powered by 3rd generation Intel Xeon Scalable processors with an all-core turbo frequency up to 3.5 GHzAmazon EC2. C6a instances are powered by 3rd generation AMD EPYC processors.

1.305.0 (2022-03-30)
------------------

* Feature - This release simplifies the auto-recovery configuration process enabling customers to set the recovery behavior to disabled or default

1.304.0 (2022-03-25)
------------------

* Feature - This is release adds support for Amazon VPC Reachability Analyzer to analyze path through a Transit Gateway.

1.303.0 (2022-03-15)
------------------

* Feature - Adds the Cascade parameter to the DeleteIpam API. Customers can use this parameter to automatically delete their IPAM, including non-default scopes, pools, cidrs, and allocations. There mustn't be any pools provisioned in the default public scope to use this parameter.

1.302.0 (2022-03-04)
------------------

* Feature - Documentation updates for Amazon EC2.

1.301.0 (2022-02-28)
------------------

* Feature - This release adds support for new AMI property 'lastLaunchedTime'

1.300.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.299.0 (2022-02-16)
------------------

* Feature - Documentation updates for EC2.

1.298.0 (2022-02-03)
------------------

* Feature - adds support for AMIs in Recycle Bin

1.297.0 (2022-02-03)
------------------

* Feature - adds support for AMIs in Recycle Bin

1.296.0 (2022-01-27)
------------------

* Feature - X2ezn instances are powered by Intel Cascade Lake CPUs that deliver turbo all core frequency of up to 4.5 GHz and up to 100 Gbps of networking bandwidth

1.295.0 (2022-01-20)
------------------

* Feature - C6i, M6i and R6i instances are powered by a third-generation Intel Xeon Scalable processor (Ice Lake) delivering all-core turbo frequency of 3.5 GHz

1.294.0 (2022-01-18)
------------------

* Feature - Add support for AWS Client VPN client login banner and session timeout.

1.293.0 (2022-01-12)
------------------

* Feature - Hpc6a instances are powered by a third-generation AMD EPYC processors (Milan) delivering all-core turbo frequency of 3.4 GHz

1.292.0 (2022-01-11)
------------------

* Feature - EC2 Capacity Reservations now supports RHEL instance platforms (RHEL with SQL Server Standard, RHEL with SQL Server Enterprise, RHEL with SQL Server Web, RHEL with HA, RHEL with HA and SQL Server Standard, RHEL with HA and SQL Server Enterprise)

1.291.0 (2022-01-10)
------------------

* Feature - New feature: Updated EC2 API to support faster launching for Windows images. Optimized images are pre-provisioned, using snapshots to launch instances up to 65% faster.

1.290.0 (2022-01-06)
------------------

* Feature - This release introduces On-Demand Capacity Reservation support for Cluster Placement Groups, adds Tags on instance Metadata, and includes documentation updates for Amazon EC2.

1.289.0 (2022-01-05)
------------------

* Feature - This release adds a new API called ModifyVpcEndpointServicePayerResponsibility which allows VPC endpoint service owners to take payer responsibility of their VPC Endpoint connections.

1.288.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.287.0 (2021-12-09)
------------------

* Feature - Adds waiters support for internet gateways.

1.286.0 (2021-12-01)
------------------

* Feature - This release adds support for Amazon VPC IP Address Manager (IPAM), which enables you to plan, track, and monitor IP addresses for your workloads. This release also adds support for VPC Network Access Analyzer, which enables you to analyze network access to resources in your Virtual Private Clouds.

1.285.0 (2021-11-30)
------------------

* Feature - This release adds support for Is4gen and Im4gn instances. This release also adds a new subnet attribute, enableLniAtDeviceIndex, to support local network interfaces, which are logical networking components that connect an EC2 instance to your on-premises network.

1.284.0 (2021-11-29)
------------------

* Feature - This release adds support for G5g and M6a instances. This release also adds support for Amazon EBS Snapshots Archive, a feature that enables you to archive your EBS snapshots; and Recycle Bin, a feature that enables you to protect your EBS snapshots against accidental deletion.

1.283.0 (2021-11-26)
------------------

* Feature - Documentation updates for EC2.

1.282.0 (2021-11-23)
------------------

* Feature - This release adds a new parameter ipv6Native to the allow creation of IPv6-only subnets using the CreateSubnet operation, and the operation ModifySubnetAttribute includes new parameters to modify subnet attributes to use resource-based naming and enable DNS resolutions for Private DNS name.

1.281.0 (2021-11-15)
------------------

* Feature - Adds a new VPC Subnet attribute "EnableDns64." When enabled on IPv6 Subnets, the Amazon-Provided DNS Resolver returns synthetic IPv6 addresses for IPv4-only destinations.

1.280.0 (2021-11-12)
------------------

* Feature - C6i instances are powered by a third-generation Intel Xeon Scalable processor (Ice Lake) delivering all-core turbo frequency of 3.5 GHz. G5 instances feature up to 8 NVIDIA A10G Tensor Core GPUs and second generation AMD EPYC processors.

1.279.0 (2021-11-11)
------------------

* Feature - This release provides an additional route target for the VPC route table.

1.278.0 (2021-11-08)
------------------

* Feature - This release adds internal validation on the GatewayAssociationState field

1.277.0 (2021-11-05)
------------------

* Feature - DescribeInstances now returns customer-owned IP addresses for instances running on an AWS Outpost.

1.276.0 (2021-11-04)
------------------

* Feature - This release adds a new instance replacement strategy for EC2 Fleet, Spot Fleet. Now you can select an action to perform when your instance gets a rebalance notification. EC2 Fleet, Spot Fleet can launch a replacement then terminate the instance that received notification after a termination delay

1.275.0 (2021-10-29)
------------------

* Feature - Support added for AMI sharing with organizations and organizational units in ModifyImageAttribute API

1.274.0 (2021-10-28)
------------------

* Feature - Added new read-only DenyAllIGWTraffic network interface attribute. Added support for DL1 24xlarge instances powered by Habana Gaudi Accelerators for deep learning model training workloads

1.273.0 (2021-10-27)
------------------

* Feature - This release adds: attribute-based instance type selection for EC2 Fleet, Spot Fleet, a feature that lets customers express instance requirements as attributes like vCPU, memory, and storage; and Spot placement score, a feature that helps customers identify an optimal location to run Spot workloads.

1.272.0 (2021-10-25)
------------------

* Feature - This release adds support to create a VPN Connection that is not attached to a Gateway at the time of creation. Use this to create VPNs associated with Core Networks, or modify your VPN and attach a gateway using the modify API after creation.

1.271.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.270.0 (2021-10-13)
------------------

* Feature - This release adds support for additional VPC Flow Logs delivery options to S3, such as Apache Parquet formatted files, Hourly partitions and Hive-compatible S3 prefixes

1.269.0 (2021-10-12)
------------------

* Feature - EncryptionSupport for InstanceStorageInfo added to DescribeInstanceTypes API

1.268.0 (2021-10-11)
------------------

* Feature - Documentation update for Amazon EC2.

1.267.0 (2021-10-08)
------------------

* Feature - This release removes a requirement for filters on SearchLocalGatewayRoutes operations.

1.266.0 (2021-10-05)
------------------

* Feature - Released Capacity Reservation Fleet, a feature of Amazon EC2 Capacity Reservations, which provides a way to manage reserved capacity across instance types. For more information: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-fleets.html

1.265.0 (2021-09-24)
------------------

* Feature - DescribeInstances now returns Platform Details, Usage Operation, and Usage Operation Update Time.

1.264.0 (2021-09-21)
------------------

* Feature - This update adds support for downloading configuration templates using new APIs (GetVpnConnectionDeviceTypes and GetVpnConnectionDeviceSampleConfiguration) and Internet Key Exchange version 2 (IKEv2) parameters for many popular CGW devices.

1.263.0 (2021-09-14)
------------------

* Feature - This release adds support for vt1 3xlarge, 6xlarge and 24xlarge instances powered by Xilinx Alveo U30 Media Accelerators for video transcoding workloads

1.262.0 (2021-09-13)
------------------

* Feature - Adds support for T3 instances on Amazon EC2 Dedicated Hosts.

1.261.0 (2021-09-01)
------------------

* Feature - Added LaunchTemplate support for the IMDS IPv6 endpoint

1.260.0 (2021-08-27)
------------------

* Feature - This release adds the BootMode flag to the ImportImage API and showing the detected BootMode of an ImportImage task.

1.259.0 (2021-08-26)
------------------

* Feature - Support added for resizing VPC prefix lists

1.258.0 (2021-08-25)
------------------

* Feature - Support added for IMDS IPv6 endpoint

1.257.0 (2021-08-20)
------------------

* Feature - encryptionInTransitSupported added to DescribeInstanceTypes API

1.256.0 (2021-08-19)
------------------

* Feature - The ImportImage API now supports the ability to create AMIs with AWS-managed licenses for Microsoft SQL Server for both Windows and Linux.

1.255.0 (2021-08-17)
------------------

* Feature - This release adds support for EC2 ED25519 key pairs for authentication

1.254.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.253.0 (2021-07-29)
------------------

* Feature - This release adds support for G4ad xlarge and 2xlarge instances powered by AMD Radeon Pro V520 GPUs and AMD 2nd Generation EPYC processors

1.252.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.251.0 (2021-07-22)
------------------

* Feature - This release allows customers to assign prefixes to their elastic network interface and to reserve IP blocks in their subnet CIDRs. These reserved blocks can be used to assign prefixes to elastic network interfaces or be excluded from auto-assignment.

1.250.0 (2021-07-20)
------------------

* Feature - Added idempotency to the CreateVolume API using the ClientToken request parameter

1.249.0 (2021-07-15)
------------------

* Feature - This feature enables customers  to specify weekly recurring time window(s) for scheduled events that reboot, stop or terminate EC2 instances.

1.248.0 (2021-07-07)
------------------

* Feature - This release adds resource ids and tagging support for VPC security group rules.

1.247.0 (2021-07-02)
------------------

* Feature - This release removes network-insights-boundary

1.246.0 (2021-07-01)
------------------

* Feature - Adding a new reserved field to support future infrastructure improvements for Amazon EC2 Fleet.

1.245.0 (2021-06-23)
------------------

* Feature - This release adds support for provisioning your own IP (BYOIP) range in multiple regions. This feature is in limited Preview for this release. Contact your account manager if you are interested in this feature.

1.244.0 (2021-06-16)
------------------

* Feature - This release adds support for VLAN-tagged network traffic over an Elastic Network Interface (ENI). This feature is in limited Preview for this release. Contact your account manager if you are interested in this feature.

1.243.0 (2021-06-15)
------------------

* Feature - EC2 M5n, M5dn, R5n, R5dn metal instances with 100 Gbps network performance and Elastic Fabric Adapter (EFA) for ultra low latency

1.242.0 (2021-06-11)
------------------

* Feature - Amazon EC2 adds new AMI property to flag outdated AMIs

1.241.0 (2021-06-10)
------------------

* Feature - This release adds a new optional parameter connectivityType (public, private) for the CreateNatGateway API. Private NatGateway does not require customers to attach an InternetGateway to the VPC and can be used for communication with other VPCs and on-premise networks.

1.240.0 (2021-06-01)
------------------

* Feature - Added idempotency to CreateNetworkInterface using the ClientToken parameter.

1.239.0 (2021-05-27)
------------------

* Feature - This release removes resource ids and tagging support for VPC security group rules.

1.238.0 (2021-05-26)
------------------

* Feature - This release adds resource ids and tagging support for VPC security group rules.

1.237.0 (2021-05-24)
------------------

* Feature - This release adds support for creating and managing EC2 On-Demand Capacity Reservations on Outposts.

1.236.0 (2021-05-12)
------------------

* Feature - High Memory virtual instances are powered by Intel Sky Lake CPUs and offer up to 12TB of memory.

1.235.0 (2021-04-26)
------------------

* Feature - Adding support for Red Hat Enterprise Linux with HA for Reserved Instances.

1.234.0 (2021-04-09)
------------------

* Feature - Add paginator support to DescribeStoreImageTasks and update documentation.

1.233.0 (2021-04-06)
------------------

* Feature - This release adds support for storing EBS-backed AMIs in S3 and restoring them from S3 to enable cross-partition copying of AMIs

1.232.0 (2021-04-01)
------------------

* Feature - VPC Flow Logs Service adds a new API, GetFlowLogsIntegrationTemplate, which generates CloudFormation templates for Athena. For more info, see https://docs.aws.amazon.com/console/vpc/flow-logs/athena

1.231.0 (2021-03-30)
------------------

* Feature - ReplaceRootVolume feature enables customers to replace the EBS root volume of a running instance to a previously known state. Add support to grant account-level access to the EC2 serial console

1.230.0 (2021-03-24)
------------------

* Feature - maximumEfaInterfaces added to DescribeInstanceTypes API

1.229.0 (2021-03-22)
------------------

* Feature - This release adds support for UEFI boot on selected AMD- and Intel-based EC2 instances.

1.228.0 (2021-03-19)
------------------

* Feature - X2gd instances are the next generation of memory-optimized instances powered by AWS-designed, Arm-based AWS Graviton2 processors.

1.227.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.226.0 (2021-03-05)
------------------

* Feature - Expands EC2/Spot Fleet capacity-optimized allocation strategy to allow users to prioritize instance pools. Fleet attempts to fulfill priorities on a best-effort basis but optimizes for capacity first.

1.225.0 (2021-02-17)
------------------

* Feature - This release includes a new filter for describe-vpc-endpoint-services.

1.224.0 (2021-02-04)
------------------

* Feature - AWS Outposts now supports EBS local snapshots on Outposts that allows customers to store snapshots of EBS volumes and AMIs locally on S3 on Outposts.

1.223.0 (2021-02-03)
------------------

* Feature - EC2 Public IP now supports API for setting PTR records on Elastic IP address.

1.222.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.221.0 (2021-01-22)
------------------

* Feature - Introducing startDate field for CapacityReservation object for the date and time which the reservation started and adding reserved parameter for ModifyCapacityReservation.

1.220.0 (2020-12-21)
------------------

* Feature - This release adds Tag On Create feature support for the AllocateAddress API.

1.219.0 (2020-12-18)
------------------

* Feature - EBS io2 volumes now supports Multi-Attach

1.218.0 (2020-12-17)
------------------

* Feature - C6gn instances are powered by AWS Graviton2 processors and offer 100 Gbps networking bandwidth. These instances deliver up to 40% better price-performance benefit versus comparable x86-based instances

1.217.0 (2020-12-14)
------------------

* Feature - Add c5n.metal to ec2 instance types list

1.216.0 (2020-12-10)
------------------

* Feature - TGW connect simplifies connectivity of SD-WAN appliances; IGMP support for TGW multicast; VPC Reachability Analyzer for VPC resources connectivity analysis.

1.215.0 (2020-12-09)
------------------

* Feature - This release adds support for G4ad instances powered by AMD Radeon Pro V520 GPUs and AMD 2nd Generation EPYC processors

1.214.0 (2020-12-04)
------------------

* Feature - This release introduces tag-on-create capability for the CreateImage API. A user can now specify tags that will be applied to the new resources (image, snapshots or both), during creation time.

1.213.0 (2020-12-01)
------------------

* Feature - This release adds support for: EBS gp3 volumes; and D3/D3en/R5b/M5zn instances powered by Intel Cascade Lake CPUs

1.212.0 (2020-12-01)
------------------

* Feature - This release introduces Amazon EC2 Mac1 instances, a new Amazon EC2 instance family built on Apple Mac mini computers, powered by AWS Nitro System, and support running macOS workloads on Amazon EC2

1.211.0 (2020-11-23)
------------------

* Feature - This release adds support for Multiple Private DNS names to DescribeVpcEndpointServices response.

1.210.0 (2020-11-18)
------------------

* Feature - EC2 Fleet adds support of DeleteFleets API for instant type fleets. Now you can delete an instant type fleet and terminate all associated instances with a single API call.

1.209.0 (2020-11-10)
------------------

* Feature - This release adds support for Gateway Load Balancer VPC endpoints and VPC endpoint services

1.208.0 (2020-11-06)
------------------

* Feature - Network card support with four new attributes: NetworkCardIndex, NetworkPerformance, DefaultNetworkCardIndex, and MaximumNetworkInterfaces, added to the DescribeInstanceTypes API.

1.207.0 (2020-11-05)
------------------

* Feature - Documentation updates for EC2.

1.206.0 (2020-11-04)
------------------

* Feature - Added support for Client Connect Handler for AWS Client VPN. Fleet supports launching replacement instances in response to Capacity Rebalance recommendation.

1.205.0 (2020-11-02)
------------------

* Feature - This release adds support for the following features: 1. P4d instances based on NVIDIA A100 GPUs.  2. NetworkCardIndex attribute to support multiple network cards.

1.204.0 (2020-10-29)
------------------

* Feature - Support for Appliance mode on Transit Gateway that simplifies deployment of stateful network appliances. Added support for AWS Client VPN Self-Service Portal.

1.203.0 (2020-10-28)
------------------

* Feature - AWS Nitro Enclaves general availability. Added support to RunInstances for creating enclave-enabled EC2 instances. New APIs to associate an ACM certificate with an IAM role, for enclave consumption.

1.202.0 (2020-10-21)
------------------

* Feature - instance-storage-info nvmeSupport added to DescribeInstanceTypes API

1.201.0 (2020-10-21)
------------------

* Feature - instance-storage-info nvmeSupport added to DescribeInstanceTypes API

1.200.0 (2020-10-08)
------------------

* Feature - AWS EC2 RevokeSecurityGroupIngress and RevokeSecurityGroupEgress APIs will return IpPermissions which do not match with any existing IpPermissions for security groups in default VPC and EC2-Classic.

1.199.0 (2020-10-06)
------------------

* Feature - This release supports returning additional information about local gateway virtual interfaces, and virtual interface groups.

1.198.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.197.0 (2020-09-29)
------------------

* Feature - This release adds support for Client to Client routing for AWS Client VPN.

1.196.0 (2020-09-25)
------------------

* Feature - This release supports returning additional information about local gateway resources, such as the local gateway route table.

1.195.0 (2020-09-15)
------------------

* Feature - T4g instances are powered by AWS Graviton2 processors

1.194.0 (2020-09-14)
------------------

* Feature - This release adds support for the T4G instance family to the EC2 ModifyDefaultCreditSpecification and GetDefaultCreditSpecification APIs.

1.193.0 (2020-09-02)
------------------

* Feature - This release adds a new transit gateway attachment state and resource type.

1.192.0 (2020-08-31)
------------------

* Feature - Amazon EC2 and Spot Fleet now support modification of launch template configs for a running fleet enabling instance type, instance weight, AZ, and AMI updates without losing the current fleet ID.

1.191.0 (2020-08-27)
------------------

* Feature - Introduces support to initiate Internet Key Exchange (IKE) negotiations for VPN connections from AWS. A user can now send the initial IKE message to their Customer Gateway (CGW) from VPN endpoints.

1.190.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.189.0 (2020-08-24)
------------------

* Feature - This release enables customers to use VPC prefix lists in their transit gateway route tables, and it adds support for Provisioned IOPS SSD (io2) EBS volumes.

1.188.0 (2020-08-14)
------------------

* Feature - New C5ad instances featuring AMD's 2nd Generation EPYC processors, offering up to 96 vCPUs, 192 GiB of instance memory, 3.8 TB of NVMe based SSD instance storage, and 20 Gbps in Network bandwidth

1.187.0 (2020-08-13)
------------------

* Feature - Added MapCustomerOwnedIpOnLaunch and CustomerOwnedIpv4Pool to ModifySubnetAttribute to allow CoIP auto assign. Fields are returned in DescribeSubnets and DescribeNetworkInterfaces responses.

1.186.0 (2020-08-12)
------------------

* Feature - Introduces support for IPv6-in-IPv4 IPsec tunnels. A user can now send traffic from their on-premise IPv6 network to AWS VPCs that have IPv6 support enabled.

1.185.0 (2020-08-11)
------------------

* Feature - This release rolls back the EC2 On-Demand Capacity Reservations (ODCRs) release 1.11.831 published on 2020-07-30, which was deployed in error.

1.184.0 (2020-08-10)
------------------

* Feature - Remove CoIP Auto-Assign feature references.

1.183.0 (2020-08-06)
------------------

* Feature - This release supports Wavelength resources, including carrier gateways, and carrier IP addresses.

1.182.0 (2020-07-30)
------------------

* Feature - EC2 On-Demand Capacity Reservations now adds support to bring your own licenses (BYOL) of Windows operating system to launch EC2 instances.

1.181.0 (2020-07-29)
------------------

* Feature - Adding support to target EC2 On-Demand Capacity Reservations within an AWS Resource Group to launch EC2 instances.

1.180.0 (2020-07-28)
------------------

* Feature - Introduces support for tag-on-create capability for the following APIs: CreateVpnConnection, CreateVpnGateway, and CreateCustomerGateway. A user can now add tags while creating these resources. For further detail, please see AWS Tagging Strategies.

1.179.0 (2020-07-27)
------------------

* Feature - m6gd, c6gd, r6gd instances are powered by AWS Graviton2 processors and support local NVMe instance storage

1.178.0 (2020-07-20)
------------------

* Feature - Added support for tag-on-create for CreateVpcPeeringConnection and CreateRouteTable. You can now specify tags when creating any of these resources. For more information about tagging, see AWS Tagging Strategies. Add poolArn to the response of DescribeCoipPools.

1.177.0 (2020-07-17)
------------------

* Feature - Documentation updates for EC2

1.176.0 (2020-07-08)
------------------

* Feature - EC2 Spot now enables customers to tag their Spot Instances Requests on creation.

1.175.0 (2020-07-07)
------------------

* Feature - DescribeAvailabilityZones now returns additional data about Availability Zones and Local Zones.

1.174.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.173.0 (2020-06-30)
------------------

* Feature - Added support for tag-on-create for CreateVpc, CreateEgressOnlyInternetGateway, CreateSecurityGroup, CreateSubnet, CreateNetworkInterface, CreateNetworkAcl, CreateDhcpOptions and CreateInternetGateway. You can now specify tags when creating any of these resources. For more information about tagging, see AWS Tagging Strategies.

1.172.0 (2020-06-29)
------------------

* Feature - Virtual Private Cloud (VPC) customers can now create and manage their own Prefix Lists to simplify VPC configurations.

1.171.0 (2020-06-25)
------------------

* Feature - Added support for tag-on-create for Host Reservations in Dedicated Hosts. You can now specify tags when you create a Host Reservation for a Dedicated Host. For more information about tagging, see AWS Tagging Strategies.

1.170.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.169.0 (2020-06-22)
------------------

* Feature - This release adds Tag On Create feature support for the ImportImage, ImportSnapshot, ExportImage and CreateInstanceExportTask APIs.

1.168.0 (2020-06-19)
------------------

* Feature - Adds support to tag elastic-gpu on the RunInstances api

1.167.0 (2020-06-17)
------------------

* Feature - nvmeSupport added to DescribeInstanceTypes API

1.166.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.166.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - New C6g instances powered by AWS Graviton2 processors and ideal for running advanced, compute-intensive workloads; New R6g instances powered by AWS Graviton2 processors and ideal for running memory-intensive workloads.

1.165.0 (2020-06-04)
------------------

* Feature - New C5a instances, the latest generation of EC2's compute-optimized instances featuring AMD's 2nd Generation EPYC processors. C5a instances offer up to 96 vCPUs, 192 GiB of instance memory, 20 Gbps in Network bandwidth; New G4dn.metal bare metal instance with 8 NVIDIA T4 GPUs.

1.164.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.163.0 (2020-05-26)
------------------

* Feature - ebsOptimizedInfo, efaSupported and supportedVirtualizationTypes added to DescribeInstanceTypes API

1.162.0 (2020-05-21)
------------------

* Feature - From this release onwards ProvisionByoipCidr publicly supports IPv6. Updated ProvisionByoipCidr API to support tags for public IPv4 and IPv6 pools. Added NetworkBorderGroup to the DescribePublicIpv4Pools response.

1.161.0 (2020-05-19)
------------------

* Feature - This release adds support for Federated Authentication via SAML-2.0 in AWS ClientVPN.

1.160.0 (2020-05-18)
------------------

* Feature - This release changes the RunInstances CLI and SDK's so that if you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.

1.159.0 (2020-05-14)
------------------

* Feature - Amazon EC2 now supports adding AWS resource tags for associations between VPCs and local gateways, at creation time.

1.158.0 (2020-05-11)
------------------

* Feature - M6g instances are our next-generation general purpose instances powered by AWS Graviton2 processors

1.157.0 (2020-05-07)
------------------

* Feature - Amazon EC2 now adds warnings to identify issues when creating a launch template or launch template version.

1.156.0 (2020-05-05)
------------------

* Feature - With this release, you can call ModifySubnetAttribute with two new parameters: MapCustomerOwnedIpOnLaunch and CustomerOwnedIpv4Pool, to map a customerOwnedIpv4Pool to a subnet. You will also see these two new fields in the DescribeSubnets response. If your subnet has a customerOwnedIpv4Pool mapped, your network interface will get an auto assigned customerOwnedIpv4 address when placed onto an instance.

1.155.0 (2020-05-04)
------------------

* Feature - With this release, you can include enriched metadata in Amazon Virtual Private Cloud (Amazon VPC) flow logs published to Amazon CloudWatch Logs or Amazon Simple Storage Service (S3). Prior to this, custom format VPC flow logs enriched with additional metadata could be published only to S3. With this launch, we are also adding additional metadata fields that provide insights about the location such as AWS Region, AWS Availability Zone, AWS Local Zone, AWS Wavelength Zone, or AWS Outpost where the network interface where flow logs are captured exists.

1.154.0 (2020-04-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.153.0 (2020-04-16)
------------------

* Feature - Amazon EC2 now supports adding AWS resource tags for placement groups and key pairs, at creation time. The CreatePlacementGroup API will now return placement group information when created successfully. The DeleteKeyPair API now supports deletion by resource ID.

1.152.0 (2020-04-08)
------------------

* Feature - This release provides the ability to include tags in EC2 event notifications.

1.151.0 (2020-03-12)
------------------

* Feature - Documentation updates for EC2

1.150.0 (2020-03-10)
------------------

* Feature - Documentation updates for EC2

1.149.0 (2020-03-09)
------------------

* Feature - Amazon Virtual Private Cloud (VPC) NAT Gateway adds support for tagging on resource creation.

1.148.0 (2020-03-06)
------------------

* Feature - This release provides customers with a self-service option to enable Local Zones.

1.147.0 (2020-03-05)
------------------

* Feature - You can now create AWS Client VPN Endpoints with a specified VPC and Security Group. Additionally, you can modify these attributes when modifying the endpoint.

1.146.0 (2020-03-03)
------------------

* Feature - Amazon VPC Flow Logs adds support for tags and tagging on resource creation.

1.145.0 (2020-02-26)
------------------

* Feature - This release changes the RunInstances CLI and SDK's so that if you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.

1.144.0 (2020-02-17)
------------------

* Feature - Documentation updates for EC2

1.143.0 (2020-02-14)
------------------

* Feature - You can now enable Multi-Attach on Provisioned IOPS io1 volumes through the create-volume API.

1.142.0 (2020-02-12)
------------------

* Feature - This release adds support for tagging public IPv4 pools.

1.141.0 (2020-02-11)
------------------

* Feature - Amazon EC2 Now Supports Tagging Spot Fleet.

1.140.0 (2020-02-06)
------------------

* Feature - This release adds platform details and billing info to the DescribeImages API.

1.139.0 (2020-02-05)
------------------

* Feature - This release provides support for tagging when you create a VPC endpoint, or VPC endpoint service.

1.138.0 (2020-02-04)
------------------

* Feature - Amazon VPC Flow Logs adds support for 1-minute aggregation intervals.

1.137.0 (2020-01-21)
------------------

* Feature - Add an enum value to the result of DescribeByoipCidrs to support CIDRs that are not publicly advertisable.

1.136.0 (2020-01-20)
------------------

* Feature - This release provides support for a preview of bringing your own IPv6 addresses (BYOIP for IPv6) for use in AWS.

1.135.0 (2020-01-16)
------------------

* Feature - Client VPN now supports Port Configuration for VPN Endpoints, allowing usage of either port 443 or port 1194.

1.134.0 (2020-01-15)
------------------

* Feature - General Update to EC2 Docs and SDKs

1.133.0 (2020-01-14)
------------------

* Feature - This release adds support for partition placement groups and instance metadata option in Launch Templates

1.132.0 (2020-01-13)
------------------

* Feature - Documentation updates for the StopInstances API. You can now stop and start an Amazon EBS-backed Spot Instance at will, instead of relying on the Stop interruption behavior to stop your Spot Instances when interrupted.

1.131.0 (2020-01-10)
------------------

* Feature - This release introduces the ability to tag egress only internet gateways, local gateways, local gateway route tables, local gateway virtual interfaces, local gateway virtual interface groups, local gateway route table VPC association and local gateway route table virtual interface group association. You can use tags to organize and identify your resources for cost allocation.

1.130.0 (2020-01-06)
------------------

* Feature - This release supports service providers configuring a private DNS name for services other than AWS services and services available in the AWS marketplace. This feature allows consumers to access the service using an existing DNS name without making changes to their applications.

1.129.0 (2019-12-20)
------------------

* Feature - This release introduces the ability to tag key pairs, placement groups, export tasks, import image tasks, import snapshot tasks and export image tasks. You can use tags to organize and identify your resources for cost allocation.

1.128.0 (2019-12-19)
------------------

* Feature - We are updating the supportedRootDevices field to supportedRootDeviceTypes for DescribeInstanceTypes API to ensure that the actual value is returned, correcting a previous error in the model.

1.127.0 (2019-12-18)
------------------

* Feature - This release introduces the ability to tag Elastic Graphics accelerators. You can use tags to organize and identify your accelerators for cost allocation.

1.126.0 (2019-12-17)
------------------

* Feature - Documentation updates for Amazon EC2

1.125.0 (2019-12-16)
------------------

* Feature - You can now configure your EC2 Fleet to preferentially use EC2 Capacity Reservations for launching On-Demand instances, enabling you to fully utilize the available (and unused) Capacity Reservations before launching On-Demand instances on net new capacity.

1.124.0 (2019-12-11)
------------------

* Feature - This release allows customers to attach multiple Elastic Inference Accelerators to a single EC2 instance. It adds support for a Count parameter for each Elastic Inference Accelerator type you specify on the RunInstances and LaunchTemplate APIs.

1.123.0 (2019-12-03)
------------------

* Feature - This release adds support for the following features: 1. An option to enable acceleration for Site-to-Site VPN connections, to improve connection performance by leveraging AWS Global Accelerator; 2. Inf1 instances featuring up to 16 AWS Inferentia chips, custom-built for ML inference applications to deliver low latency and high throughput performance. Use Inf1 instances to run high scale ML inference applications such as image recognition, speech recognition, natural language processing, personalization, and fraud detection at the lowest cost in the cloud. Inf1 instances will soon be available for use with Amazon SageMaker, Amazon EKS and Amazon ECS. To get started, see https://aws.amazon.com/ec2/instance-types/Inf1; 3. The ability to associate route tables with internet gateways and virtual private gateways, and define routes to insert network and security virtual appliances in the path of inbound and outbound traffic. For more information on Amazon VPC Ingress Routing, see https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#gateway-route-table; 4. AWS Local Zones that place compute, storage, database, and other select services closer to you for applications that require very low latency to your end-users. AWS Local Zones also allow you to seamlessly connect to the full range of services in the AWS Region through the same APIs and tool sets; 5. Launching and viewing EC2 instances and EBS volumes running locally in Outposts. This release also introduces a new local gateway (LGW) with Outposts to enable connectivity between Outposts and local on-premises networks as well as the internet; 6. Peering Transit Gateways between regions simplifying creation of secure and private global networks on AWS; 7. Transit Gateway Multicast, enabling multicast routing within and between VPCs using Transit Gateway as a multicast router.

1.122.0 (2019-12-02)
------------------

* Feature - AWS now provides a new BYOL experience for software licenses, such as Windows and SQL Server, that require a dedicated physical server. You can now enjoy the flexibility and cost effectiveness of using your own licenses on Amazon EC2 Dedicated Hosts, but with the simplicity, resiliency, and elasticity of AWS. You can specify your Dedicated Host management preferences, such as host allocation, host capacity utilization, and instance placement in AWS License Manager.  Once set up, AWS takes care of these administrative tasks on your behalf, so that you can seamlessly launch virtual machines (instances) on Dedicated Hosts just like you would launch an EC2 instance with AWS provided licenses.

1.121.0 (2019-11-25)
------------------

* Feature - This release adds two new APIs: 1. ModifyDefaultCreditSpecification, which allows you to set default credit specification at the account level per AWS Region, per burstable performance instance family, so that all new burstable performance instances in the account launch using the new default credit specification. 2. GetDefaultCreditSpecification, which allows you to get current default credit specification per AWS Region, per burstable performance instance family. This release also adds new client exceptions for StartInstances and StopInstances.

1.120.0 (2019-11-22)
------------------

* Feature - This release adds two new APIs (DescribeInstanceTypes and DescribeInstanceTypeOfferings) that give customers access to instance type attributes and regional and zonal offerings.

1.119.0 (2019-11-21)
------------------

* Feature - This release adds support for attaching AWS License Manager Configurations to Amazon Machine Image (AMI) using ImportImage API; and adds support for running different instance sizes on EC2 Dedicated Hosts

1.118.0 (2019-11-20)
------------------

* Feature - This release of Amazon Elastic Compute Cloud (Amazon EC2) introduces support for Amazon Elastic Block Store (Amazon EBS) fast snapshot restores.

1.117.0 (2019-11-19)
------------------

* Feature - This release adds support for RunInstances to specify the metadata options for new instances; adds a new API, ModifyInstanceMetadataOptions, which lets you modify the metadata options for a running or stopped instance; and adds support for CreateCustomerGateway to specify a device name.

1.116.0 (2019-11-15)
------------------

* Feature - You can now add tags while copying snapshots. Previously, a user had to first copy the snapshot and then add tags to the copied snapshot manually. Moving forward, you can specify the list of tags you wish to be applied to the copied snapshot as a parameter on the Copy Snapshot API.

1.115.0 (2019-11-04)
------------------

* Feature - Documentation updates for ec2

1.114.0 (2019-10-24)
------------------

* Feature - This release updates CreateFpgaImage to support tagging FPGA images on creation

1.113.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.112.0 (2019-10-10)
------------------

* Feature - New EC2 M5n, M5dn, R5n, R5dn instances with 100 Gbps network performance and Elastic Fabric Adapter (EFA) for ultra low latency; New A1.metal bare metal instance powered by AWS Graviton Processors

1.111.0 (2019-10-03)
------------------

* Feature - This release allows customers to purchase regional EC2 RIs on a future date.

1.110.0 (2019-09-20)
------------------

* Feature - G4 instances are Amazon EC2 instances based on NVIDIA T4 GPUs and are designed to provide cost-effective machine learning inference for applications, like image classification, object detection, recommender systems, automated speech recognition, and language translation. G4 instances are also a cost-effective platform for building and running graphics-intensive applications, such as remote graphics workstations, video transcoding, photo-realistic design, and game streaming in the cloud. To get started with G4 instances visit https://aws.amazon.com/ec2/instance-types/g4.

1.109.0 (2019-09-12)
------------------

* Feature - Fix for FleetActivityStatus and FleetStateCode enum

1.108.0 (2019-09-11)
------------------

* Feature - This release adds support for new data fields and log format in VPC flow logs.

1.107.0 (2019-09-09)
------------------

* Feature - This release expands Site-to-Site VPN tunnel options to allow customers to restrict security algorithms and configure timer settings for VPN connections. Customers can specify these new options while creating new VPN connections, or they can modify the tunnel options on existing connections using a new API.

1.106.0 (2019-08-23)
------------------

* Feature - This release of EC2 VM Import Export adds support for exporting Amazon Machine Image(AMI)s to a VM file

1.105.0 (2019-08-15)
------------------

* Feature - This release adds an option to use private certificates from AWS Certificate Manager (ACM) to authenticate a Site-to-Site VPN connection's tunnel endpoints and customer gateway device.

1.104.0 (2019-08-14)
------------------

* Feature - This release adds a new API called SendDiagnosticInterrupt, which allows you to send diagnostic interrupts to your EC2 instance.

1.103.0 (2019-08-05)
------------------

* Feature - Amazon EC2 now supports a new Spot allocation strategy "Capacity-optimized" that fulfills your request using Spot Instance pools that are optimally chosen based on the available Spot capacity.

1.102.0 (2019-07-26)
------------------

* Feature - You can now create EC2 Capacity Reservations using Availability Zone ID or Availability Zone name. You can view usage of Amazon EC2 Capacity Reservations per AWS account.

1.101.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.100.0 (2019-07-24)
------------------

* Feature - This release introduces support for split tunnel with AWS Client VPN, and also adds support for opt-in Regions in DescribeRegions API. In addition, customers can now also tag Launch Templates on creation.

1.99.0 (2019-07-03)
------------------

* Feature - AssignPrivateIpAddresses response includes two new fields: AssignedPrivateIpAddresses, NetworkInterfaceId

1.98.0 (2019-07-01)
------------------

* Feature - This release adds support for specifying a maximum hourly price for all On-Demand and Spot instances in both Spot Fleet and EC2 Fleet.

1.97.0 (2019-06-28)
------------------

* Feature - You can now launch 8xlarge and 16xlarge instance sizes on the general purpose M5 and memory optimized R5 instance types.

1.96.0 (2019-06-25)
------------------

* Feature - Starting today, you can use Traffic Mirroring  to copy network traffic from an elastic network interface of Amazon EC2 instances and then send it to out-of-band security and monitoring appliances for content inspection, threat monitoring, and troubleshooting. These appliances can be deployed as individual instances, or as a fleet of instances behind a Network Load Balancer with a User Datagram Protocol (UDP) listener. Traffic Mirroring supports filters and packet truncation, so that you only extract the traffic of interest to monitor by using monitoring tools of your choice.

1.95.0 (2019-06-18)
------------------

* Feature - You can now launch new 12xlarge, 24xlarge, and metal instance sizes on the Amazon EC2 compute optimized C5 instance types featuring 2nd Gen Intel Xeon Scalable Processors.

1.94.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2019-06-14)
------------------

* Feature - Correction to enumerations in EC2 client.

1.92.0 (2019-06-13)
------------------

* Feature - G4 instances are Amazon EC2 instances based on NVIDIA T4 GPUs and are designed to provide cost-effective machine learning inference for applications, like image classification, object detection, recommender systems, automated speech recognition, and language translation. G4 instances are also a cost-effective platform for building and running graphics-intensive applications, such as remote graphics workstations, video transcoding, photo-realistic design, and game streaming in the cloud. To get started with G4 instances visit https://aws.amazon.com/ec2/instance-types/g4.

1.91.0 (2019-06-07)
------------------

* Feature - Adds DNS entries and NLB ARNs to describe-vpc-endpoint-connections API response. Adds owner ID to describe-vpc-endpoints and create-vpc-endpoint API responses.

1.90.0 (2019-06-04)
------------------

* Feature - This release adds support for Host Recovery feature which automatically restarts instances on to a new replacement host if failures are detected on Dedicated Host.

1.89.0 (2019-06-03)
------------------

* Feature - Amazon EC2 I3en instances are the new storage-optimized instances offering up to 60 TB NVMe SSD instance storage and up to 100 Gbps of network bandwidth.

1.88.0 (2019-05-29)
------------------

* Feature - Customers can now simultaneously take snapshots of multiple EBS volumes attached to an EC2 instance. With this new capability, snapshots guarantee crash-consistency across multiple volumes by preserving the order of IO operations. This new feature is fully integrated with Amazon Data Lifecycle Manager (DLM) allowing customers to automatically manage snapshots by creating lifecycle policies.

1.87.0 (2019-05-23)
------------------

* Feature - New APIs to enable EBS encryption by default feature. Once EBS encryption by default is enabled in a region within the account, all new EBS volumes and snapshot copies are always encrypted

1.86.0 (2019-05-22)
------------------

* Feature - This release adds idempotency support for associate, create route and authorization APIs for AWS Client VPN Endpoints.

1.85.0 (2019-05-21)
------------------

* Feature - API update.

1.84.0 (2019-05-15)
------------------

* Feature - API update.

1.83.0 (2019-05-14)
------------------

* Feature - API update.

1.82.0 (2019-05-01)
------------------

* Feature - API update.

1.81.0 (2019-04-29)
------------------

* Feature - API update.

1.80.0 (2019-04-24)
------------------

* Feature - API update.

1.79.0 (2019-04-17)
------------------

* Feature - API update.

1.78.0 (2019-04-02)
------------------

* Feature - API update.

1.77.0 (2019-03-27)
------------------

* Feature - API update.

1.76.0 (2019-03-22)
------------------

* Feature - API update.

1.75.0 (2019-03-21)
------------------

* Feature - API update.

1.74.0 (2019-03-18)
------------------

* Feature - API update.

1.73.0 (2019-03-14)
------------------

* Feature - API update.

1.72.0 (2019-03-06)
------------------

* Feature - API update.

1.71.0 (2019-03-01)
------------------

* Feature - API update.

1.70.0 (2019-02-14)
------------------

* Feature - API update.

1.69.0 (2019-02-06)
------------------

* Feature - API update.

1.68.0 (2019-02-05)
------------------

* Feature - API update.

1.67.0 (2019-01-18)
------------------

* Feature - API update.

1.66.0 (2019-01-10)
------------------

* Feature - API update.

1.65.0 (2018-12-19)
------------------

* Feature - API update.

1.64.0 (2018-12-18)
------------------

* Feature - API update.

1.63.0 (2018-12-07)
------------------

* Feature - API update.

1.62.0 (2018-11-29)
------------------

* Feature - API update.

1.61.0 (2018-11-28)
------------------

* Feature - API update.

1.60.0 (2018-11-27)
------------------

* Feature - API update.

1.59.0 (2018-11-20)
------------------

* Feature - API update.

1.58.0 (2018-11-19)
------------------

* Feature - API update.

1.57.1 (2018-11-16)
------------------

* Issue - Update version dependency on `aws-sdk-core` to support endpoint discovery.

1.57.0 (2018-11-14)
------------------

* Feature - API update.

1.56.0 (2018-11-07)
------------------

* Feature - API update.

1.55.0 (2018-11-06)
------------------

* Feature - API update.

1.54.0 (2018-10-25)
------------------

* Feature - API update.

1.53.0 (2018-10-24)
------------------

* Feature - API update.

1.52.0 (2018-10-23)
------------------

* Feature - API update.

1.51.0 (2018-10-11)
------------------

* Feature - API update.

1.50.0 (2018-09-28)
------------------

* Feature - API update.

1.49.0 (2018-09-25)
------------------

* Feature - API update.

1.48.0 (2018-09-20)
------------------

* Feature - API update.

1.47.0 (2018-09-17)
------------------

* Feature - API update.

1.46.0 (2018-09-12)
------------------

* Feature - API update.

1.45.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.44.0 (2018-09-05)
------------------

* Feature - API update.

1.43.0 (2018-08-21)
------------------

* Feature - API update.

1.42.0 (2018-08-16)
------------------

* Feature - API update.

1.41.0 (2018-08-07)
------------------

* Feature - API update.

1.40.0 (2018-07-26)
------------------

* Feature - API update.

1.39.0 (2018-07-25)
------------------

* Feature - API update.

1.38.0 (2018-07-10)
------------------

* Feature - API update.

1.37.0 (2018-07-03)
------------------

* Feature - API update.

1.36.0 (2018-06-26)
------------------

* Feature - API update.

1.35.0 (2018-06-04)
------------------

* Feature - API update.

1.34.0 (2018-05-17)
------------------

* Feature - API update.

1.33.0 (2018-05-10)
------------------

* Feature - API update.

1.32.0 (2018-05-08)
------------------

* Feature - API update.

1.31.0 (2018-05-02)
------------------

* Feature - API update.

1.30.0 (2018-04-19)
------------------

* Feature - API update.

1.29.0 (2018-03-01)
------------------

* Feature - API update.

1.28.0 (2018-02-21)
------------------

* Feature - API update.

1.27.0 (2018-02-12)
------------------

* Feature - API update.

1.26.0 (2018-02-09)
------------------

* Feature - API update.

1.25.0 (2018-01-17)
------------------

* Feature - API update.

1.24.0 (2017-12-22)
------------------

* Feature - API update.

1.23.0 (2017-12-21)
------------------

* Feature - API update.

1.22.0 (2017-12-19)
------------------

* Feature - API update.

1.21.0 (2017-11-30)
------------------

* Feature - API update.

1.20.0 (2017-11-30)
------------------

* Feature - API update.

1.19.0 (2017-11-29)
------------------

* Feature - API update.

1.18.0 (2017-11-16)
------------------

* Feature - API update.

1.17.0 (2017-11-09)
------------------

* Feature - API update.

1.16.0 (2017-11-08)
------------------

* Feature - API update.

1.15.0 (2017-11-07)
------------------

* Feature - API update.

1.14.0 (2017-10-26)
------------------

* Feature - API update.

1.13.0 (2017-10-20)
------------------

* Feature - API update.

1.12.0 (2017-10-16)
------------------

* Feature - API update.

1.11.0 (2017-10-10)
------------------

* Feature - API update.

1.10.0 (2017-10-03)
------------------

* Feature - API update.

1.9.0 (2017-09-21)
------------------

* Feature - API update.

1.8.0 (2017-09-19)
------------------

* Feature - API update.

1.7.0 (2017-09-18)
------------------

* Feature - API update.

* Issue - Update smoke test clean up steps

1.6.0 (2017-09-14)
------------------

* Feature - API update.

1.5.0 (2017-09-13)
------------------

* Feature - API update.

1.4.0 (2017-09-12)
------------------

* Feature - API update.

1.3.0 (2017-09-11)
------------------

* Feature - API update.

1.2.0 (2017-09-07)
------------------

* Feature - API update.

1.1.0 (2017-08-31)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-ec2` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc19 (2017-08-29)
------------------

* Feature - API update.

1.0.0.rc18 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc17 (2017-08-11)
------------------

* Feature - API update.

1.0.0.rc16 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc15 (2017-07-27)
------------------

* Feature - API update.

1.0.0.rc14 (2017-07-26)
------------------

* Feature - API update.

1.0.0.rc13 (2017-07-24)
------------------

* Feature - API update.

1.0.0.rc12 (2017-07-14)
------------------

* Feature - API update.

1.0.0.rc11 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc10 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc9 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc8 (2017-06-26)
------------------

* Feature - API update.

1.0.0.rc7 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc6 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc5 (2017-05-09)
------------------

* Feature - API update.

* Issue - Fix resource model load path

1.0.0.rc4 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc3 (2017-03-07)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-ec2` gem.
