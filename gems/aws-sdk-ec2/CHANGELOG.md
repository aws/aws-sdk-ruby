Unreleased Changes
------------------

1.553.0 (2025-08-28)
------------------

* Feature - This release adds support for copying Amazon EBS snapshot and AMIs to and from Local Zones.

1.552.0 (2025-08-26)
------------------

* Feature - Add new APIs for viewing how your shared AMIs are used by other accounts, and identify resources in your account that are dependent on particular AMIs

1.551.0 (2025-08-25)
------------------

* Feature - Added IPv6 support for AWS Client VPN.

1.550.0 (2025-08-19)
------------------

* Feature - Add support for "warning" volume status.

1.549.0 (2025-08-14)
------------------

* Feature - This release adds ModifyInstanceConnectEndpoint API to update configurations on existing EC2 Instance Connect Endpoints and improves IPv6 support through dualstack DNS names for EC2 Instance Connect Endpoints.

1.548.0 (2025-08-12)
------------------

* Feature - Release to allow route table association with a PublicIpv4Pool.

1.547.0 (2025-08-11)
------------------

* Feature - This release adds AvailabilityZoneId support for CreateVolume, DescribeVolume, LaunchTemplates, RunInstances, DescribeInstances, CreateDefaultSubnet, SpotInstances, and CreateDefaultSubnet APIs.

1.546.0 (2025-08-06)
------------------

* Feature - Mark Elastic Inference Accelerators and Elastic Graphics Processor parameters as deprecated on the RunInstances and LaunchTemplate APIs.

1.545.0 (2025-08-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.544.0 (2025-07-31)
------------------

* Feature - Added support for the force option for the EC2 instance terminate command. This feature enables customers to recover resources associated with an instance stuck in the shutting-down state as a result of rare issues caused by a frozen operating system or an underlying hardware problem.

1.543.0 (2025-07-30)
------------------

* Feature - Release to show the next hop IP address for routes propagated by VPC Route Server into VPC route tables.

1.542.0 (2025-07-25)
------------------

* Feature - Transit Gateway native integration with AWS Network Firewall. Adding new enum value for the new Transit Gateway Attachment type.

1.541.0 (2025-07-23)
------------------

* Feature - Added support for skip-os-shutdown option for the EC2 instance stop and terminate operations. This feature enables customers to bypass the graceful OS shutdown, supporting faster state transitions when instance data preservation isn't critical.

1.540.0 (2025-07-21)
------------------

* Feature - This release adds support for C8gn, F2 and P6e-GB200 Instance types

1.539.0 (2025-07-17)
------------------

* Feature - AWS Free Tier Version2 Support

1.538.0 (2025-07-15)
------------------

* Feature - This release adds support for volume initialization status, which enables you to monitor when the initialization process for an EBS volume is completed. This release also adds IPv6 support to EC2 Instance Connect Endpoints, allowing you to connect to your EC2 Instance via a private IPv6 address.

1.537.0 (2025-07-09)
------------------

* Feature - Adds support to Capacity Blocks for ML for purchasing EC2 P6e-GB200 UltraServers. Customers can now purchase u-p6e-gb200x72 and u-p6e-gb200x36 UltraServers. Adds new DescribeCapacityBlocks andDescribeCapacityBlockStatus APIs. Adds support for CapacityBlockId to DescribeInstanceTopology.

1.536.0 (2025-07-03)
------------------

* Feature - This release adds GroupOwnerId as a response member to the DescribeSecurityGroupVpcAssociations API and also adds waiters for SecurityGroupVpcAssociations (SecurityGroupVpcAssociationAssociated and SecurityGroupVpcAssociationDisassociated).

1.535.0 (2025-07-02)
------------------

* Feature - AWS Site-to-Site VPN now supports IPv6 addresses on outer tunnel IPs, making it easier for customers to build or transition to IPv6-only networks.

1.534.0 (2025-07-01)
------------------

* Feature - Add Context to GetInstanceTypesFromInstanceRequirements API

1.533.0 (2025-06-26)
------------------

* Feature - This release adds support for OdbNetworkArn as a target in VPC Route Tables

1.532.0 (2025-06-24)
------------------

* Feature - This release allows you to create and register AMIs while maintaining their underlying EBS snapshots within Local Zones.

1.531.0 (2025-06-09)
------------------

* Feature - Release to support Elastic VMware Service (Amazon EVS) Subnet and Amazon EVS Network Interface Types.

1.530.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.529.0 (2025-05-28)
------------------

* Feature - Enable the option to automatically delete underlying Amazon EBS snapshots when deregistering Amazon Machine Images (AMIs)

1.528.0 (2025-05-27)
------------------

* Feature - This release adds three features - option to store AWS Site-to-Site VPN pre-shared keys in AWS Secrets Manager, GetActiveVpnTunnelStatus API to check the in-use VPN algorithms, and SampleType option in GetVpnConnectionDeviceSampleConfiguration API to get recommended sample configs for VPN devices.

1.527.0 (2025-05-23)
------------------

* Feature - This release adds support for the C7i-flex, M7i-flex, I7i, I7ie, I8g, P6-b200, Trn2, C8gd, M8gd and R8gd instances

1.526.0 (2025-05-21)
------------------

* Feature - Release of Dualstack and Ipv6-only EC2 Public DNS hostnames

1.525.0 (2025-05-20)
------------------

* Feature - This release expands the ModifyInstanceMaintenanceOptions API to enable or disable instance migration during customer-initiated reboots for EC2 Scheduled Reboot Events.

1.524.0 (2025-05-19)
------------------

* Feature - This release includes new APIs for System Integrity Protection (SIP) configuration and automated root volume ownership delegation for EC2 Mac instances.

1.523.0 (2025-05-12)
------------------

* Feature - EC2 - Adding support for AvailabilityZoneId

1.522.0 (2025-05-08)
------------------

* Feature - Launching the feature to support ENA queues offering flexibility to support multiple queues per Enhanced Network Interface (ENI)

1.521.0 (2025-05-07)
------------------

* Feature - This release adds API support for Path Component Exclusion (Filter Out ARN) for Reachability Analyzer

1.520.0 (2025-05-06)
------------------

* Feature - This release adds support for Amazon EBS Provisioned Rate for Volume Initialization, which lets you specify a volume initialization rate to ensure that your EBS volumes are initialized in a predictable amount of time.

1.519.0 (2025-05-05)
------------------

* Feature - This update introduces API operations to manage and create local gateway VIF and VIF groups. It also includes API operations to describe Outpost LAGs and service link VIFs.

1.518.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.517.0 (2025-04-30)
------------------

* Feature - Launch of cost distribution feature for IPAM owners to distribute costs to internal teams.

1.516.0 (2025-04-22)
------------------

* Feature - Added support for  ClientRouteEnforcementOptions flag in CreateClientVpnEndpoint and ModifyClientVpnEndpoint requests and DescribeClientVpnEndpoints responses

1.515.0 (2025-04-04)
------------------

* Feature - Doc-only updates for Amazon EC2

1.514.0 (2025-03-31)
------------------

* Feature - Release VPC Route Server, a new feature allowing dynamic routing in VPCs.

1.513.0 (2025-03-19)
------------------

* Feature - Doc-only updates for EC2 for March 2025.

1.512.0 (2025-03-13)
------------------

* Feature - This release changes the CreateLaunchTemplate, CreateLaunchTemplateVersion, ModifyLaunchTemplate CLI and SDKs such that if you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.

1.511.0 (2025-03-11)
------------------

* Feature - This release adds the GroupLongName field to the response of the DescribeAvailabilityZones API.

1.510.0 (2025-03-07)
------------------

* Feature - Add serviceManaged field to DescribeAddresses API response.

1.509.0 (2025-03-03)
------------------

* Feature - Update the DescribeVpcs response

1.508.0 (2025-02-26)
------------------

* Feature - Amazon EC2 Fleet customers can now override the Block Device Mapping specified in the Launch Template when creating a new Fleet request, saving the effort of creating and associating new Launch Templates to customize the Block Device Mapping.

1.507.0 (2025-02-25)
------------------

* Feature - Adds support for time-based EBS-backed AMI copy operations. Time-based copy ensures that EBS-backed AMIs are copied within and across Regions in a specified timeframe.

1.506.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.505.0 (2025-02-11)
------------------

* Feature - Adding support for the new fullSnapshotSizeInBytes field in the response of the EC2 EBS DescribeSnapshots API. This field represents the size of all the blocks that were written to the source volume at the time the snapshot was created.

1.504.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.503.0 (2025-01-28)
------------------

* Feature - This release changes the CreateFleet CLI and SDK's such that if you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.

1.502.0 (2025-01-23)
------------------

* Feature - Added "future" allocation type for future dated capacity reservation

1.501.0 (2025-01-17)
------------------

* Feature - Release u7i-6tb.112xlarge, u7i-8tb.112xlarge, u7inh-32tb.480xlarge, p5e.48xlarge, p5en.48xlarge, f2.12xlarge, f2.48xlarge, trn2.48xlarge instance types.

1.500.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.499.0 (2025-01-13)
------------------

* Feature - Add support for DisconnectOnSessionTimeout flag in CreateClientVpnEndpoint and ModifyClientVpnEndpoint requests and DescribeClientVpnEndpoints responses

1.498.0 (2024-12-16)
------------------

* Feature - This release adds support for EBS local snapshots in AWS Dedicated Local Zones, which allows you to store snapshots of EBS volumes locally in Dedicated Local Zones.

1.497.0 (2024-12-13)
------------------

* Feature - This release adds GroupId to the response for DeleteSecurityGroup.

1.496.0 (2024-12-09)
------------------

* Feature - This release includes a new API for modifying instance network-performance-options after launch.

1.495.0 (2024-12-02)
------------------

* Feature - Adds support for declarative policies that allow you to enforce desired configuration across an AWS organization through configuring account attributes. Adds support for Allowed AMIs that allows you to limit the use of AMIs in AWS accounts. Adds support for connectivity over non-HTTP protocols.

1.494.0 (2024-11-26)
------------------

* Feature - Adds support for Time-based Copy for EBS Snapshots and Cross Region PrivateLink. Time-based Copy ensures that EBS Snapshots are copied within and across AWS Regions in a specified timeframe. Cross Region PrivateLink enables customers to connect to VPC endpoint services hosted in other AWS Regions.

1.493.0 (2024-11-21)
------------------

* Feature - Adds support for requesting future-dated Capacity Reservations with a minimum commitment duration, enabling IPAM for organizational units within AWS Organizations, reserving EC2 Capacity Blocks that start in 30 minutes, and extending the end date of existing Capacity Blocks.

1.492.0 (2024-11-20)
------------------

* Feature - With this release, customers can express their desire to launch instances only in an ODCR or ODCR group rather than OnDemand capacity. Customers can express their baseline instances' CPU-performance in attribute-based Instance Requirements configuration by referencing an instance family.

1.491.0 (2024-11-19)
------------------

* Feature - This release adds VPC Block Public Access (VPC BPA), a new declarative control which blocks resources in VPCs and subnets that you own in a Region from reaching or being reached from the internet through internet gateways and egress-only internet gateways.

1.490.0 (2024-11-18)
------------------

* Feature - Adding request and response elements for managed resources.

1.489.0 (2024-11-15)
------------------

* Feature - Remove non-functional enum variants for FleetCapacityReservationUsageStrategy

1.488.0 (2024-11-13)
------------------

* Feature - This release adds the source AMI details in DescribeImages API

1.487.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.486.0 (2024-10-30)
------------------

* Feature - This release adds two new capabilities to VPC Security Groups: Security Group VPC Associations and Shared Security Groups.

1.485.0 (2024-10-24)
------------------

* Feature - This release includes a new API to describe some details of the Amazon Machine Images (AMIs) that were used to launch EC2 instances, even if those AMIs are no longer available for use.

1.484.0 (2024-10-23)
------------------

* Feature - Amazon EC2 X8g, C8g and M8g instances are powered by AWS Graviton4 processors. X8g provide the lowest cost per GiB of memory among Graviton4 instances. C8g provide the best price performance for compute-intensive workloads. M8g provide the best price performance in for general purpose workloads.

1.483.0 (2024-10-21)
------------------

* Feature - Amazon EC2 now allows you to create network interfaces with just the EFA driver and no ENA driver by specifying the network interface type as efa-only.

1.482.0 (2024-10-18)
------------------

* Feature - RequestSpotInstances and RequestSpotFleet feature release.

1.481.0 (2024-10-10)
------------------

* Feature - This release adds support for assigning the billing of shared Amazon EC2 On-Demand Capacity Reservations.

1.480.0 (2024-10-04)
------------------

* Feature - Documentation updates for Amazon EC2.

1.479.0 (2024-10-03)
------------------

* Feature - This release includes a new API for modifying instance cpu-options after launch.

1.478.0 (2024-09-25)
------------------

* Feature - Updates to documentation for the transit gateway security group referencing feature.

1.477.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.476.0 (2024-09-23)
------------------

* Feature - Amazon EC2 G6e instances powered by NVIDIA L40S Tensor Core GPUs are the most cost-efficient GPU instances for deploying generative AI models and the highest performance GPU instances for spatial computing workloads.

1.475.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.474.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.473.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.472.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.471.0 (2024-08-28)
------------------

* Feature - Amazon VPC IP Address Manager (IPAM) now allows customers to provision IPv4 CIDR blocks and allocate Elastic IP Addresses directly from IPAM pools with public IPv4 space

1.470.0 (2024-08-21)
------------------

* Feature - DescribeInstanceStatus now returns health information on EBS volumes attached to Nitro instances

1.469.0 (2024-08-12)
------------------

* Feature - This release adds new capabilities to manage On-Demand Capacity Reservations including the ability to split your reservation, move capacity between reservations, and modify the instance eligibility of your reservation.

1.468.0 (2024-08-08)
------------------

* Feature - Launch of private IPv6 addressing for VPCs and Subnets. VPC IPAM supports the planning and monitoring of private IPv6 usage.

1.467.0 (2024-07-25)
------------------

* Feature - EC2 Fleet now supports using custom identifiers to reference Amazon Machine Images (AMI) in launch requests that are configured to choose from a diversified list of instance types.

1.466.0 (2024-07-18)
------------------

* Feature - Amazon VPC IP Address Manager (IPAM) now supports Bring-Your-Own-IP (BYOIP) for IP addresses registered with any Internet Registry. This feature uses DNS TXT records to validate ownership of a public IP address range.

1.465.0 (2024-07-10)
------------------

* Feature - Add parameters to enable provisioning IPAM BYOIPv4 space at a Local Zone Network Border Group level

1.464.0 (2024-07-02)
------------------

* Feature - Documentation updates for Elastic Compute Cloud (EC2).

1.463.0 (2024-06-25)
------------------

* Feature - This release is for the launch of the new u7ib-12tb.224xlarge, R8g, c7gn.metal and mac2-m1ultra.metal instance types

1.462.0 (2024-06-24)
------------------

* Feature - Fix EC2 multi-protocol info in models.

1.461.0 (2024-06-14)
------------------

* Feature - Documentation updates for Amazon EC2.

1.460.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.459.0 (2024-06-04)
------------------

* Feature - U7i instances with up to 32 TiB of DDR5 memory and 896 vCPUs are now available. C7i-flex instances are launched and are lower-priced variants of the Amazon EC2 C7i instances that offer a baseline level of CPU performance with the ability to scale up to the full compute performance 95% of the time.

1.458.0 (2024-05-28)
------------------

* Feature - Providing support to accept BgpAsnExtended attribute

1.457.1 (2024-05-21)
------------------

* Issue - Fix Aws::EC2::Resource not to set max_results automatically when the options contains the parameter that cannot be used with the parameter max_results.

1.457.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.456.0 (2024-05-08)
------------------

* Feature - Adding Precision Hardware Clock (PHC) to public API DescribeInstanceTypes

1.455.0 (2024-05-02)
------------------

* Feature - This release includes a new API for retrieving the public endorsement key of the EC2 instance's Nitro Trusted Platform Module (NitroTPM).

1.454.0 (2024-05-01)
------------------

* Feature - Documentation updates for Amazon EC2.

1.453.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.452.0 (2024-04-24)
------------------

* Feature - Launching capability for customers to enable or disable automatic assignment of public IPv4 addresses to their network interface

1.451.0 (2024-04-23)
------------------

* Feature - This release introduces EC2 AMI Deregistration Protection, a new AMI property that can be enabled by customers to protect an AMI against an unintended deregistration. This release also enables the AMI owners to view the AMI 'LastLaunchedTime' in DescribeImages API.

1.450.0 (2024-04-17)
------------------

* Feature - Documentation updates for Elastic Compute Cloud (EC2).

1.449.0 (2024-04-16)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.448.1 (2024-04-12)
------------------

* Issue - Add default max_results value to Resource methods for legacy APIs that support un-paginated calls by default.

1.448.0 (2024-04-04)
------------------

* Feature - Amazon EC2 G6 instances powered by NVIDIA L4 Tensor Core GPUs can be used for a wide range of graphics-intensive and machine learning use cases. Gr6 instances also feature NVIDIA L4 GPUs and can be used for graphics workloads with higher memory requirements.

1.447.0 (2024-03-28)
------------------

* Feature - Amazon EC2 C7gd, M7gd and R7gd metal instances with up to 3.8 TB of local NVMe-based SSD block-level storage have up to 45% improved real-time NVMe storage performance than comparable Graviton2-based instances.

1.446.0 (2024-03-26)
------------------

* Feature - Documentation updates for Elastic Compute Cloud (EC2).

1.445.0 (2024-03-25)
------------------

* Feature - Added support for ModifyInstanceMetadataDefaults and GetInstanceMetadataDefaults to set Instance Metadata Service account defaults

1.444.0 (2024-03-19)
------------------

* Feature - This release adds the new DescribeMacHosts API operation for getting information about EC2 Mac Dedicated Hosts. Users can now see the latest macOS versions that their underlying Apple Mac can support without needing to be updated.

1.443.0 (2024-03-15)
------------------

* Feature - Add media accelerator and neuron device information on the describe instance types API.

1.442.0 (2024-03-12)
------------------

* Feature - Documentation updates for Amazon EC2.

1.441.0 (2024-03-07)
------------------

* Feature - This release adds an optional parameter to RegisterImage and CopyImage APIs to support tagging AMIs at the time of creation.

1.440.0 (2024-03-01)
------------------

* Feature - With this release, Amazon EC2 Auto Scaling groups, EC2 Fleet, and Spot Fleet improve the default price protection behavior of attribute-based instance type selection of Spot Instances, to consistently select from a wide range of instance types.

1.439.0 (2024-02-28)
------------------

* Feature - This release increases the range of MaxResults for GetNetworkInsightsAccessScopeAnalysisFindings to 1,000.

1.438.0 (2024-02-14)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.437.0 (2024-01-29)
------------------

* Feature - EC2 Fleet customers who use attribute based instance-type selection can now intuitively define their Spot instances price protection limit as a percentage of the lowest priced On-Demand instance type.

1.436.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.435.0 (2024-01-24)
------------------

* Feature - Introduced a new clientToken request parameter on CreateNetworkAcl and CreateRouteTable APIs. The clientToken parameter allows idempotent operations on the APIs.

1.434.0 (2024-01-22)
------------------

* Feature - Documentation updates for Amazon EC2.

1.433.0 (2024-01-11)
------------------

* Feature - This release adds support for adding an ElasticBlockStorage volume configurations in ECS RunTask/StartTask/CreateService/UpdateService APIs. The configuration allows for attaching EBS volumes to ECS Tasks.

1.432.0 (2024-01-08)
------------------

* Feature - Amazon EC2 R7iz bare metal instances are powered by custom 4th generation Intel Xeon Scalable processors.

1.431.0 (2023-12-19)
------------------

* Feature - Provision BYOIPv4 address ranges and advertise them by specifying the network border groups option in Los Angeles, Phoenix and Dallas AWS Local Zones.

1.430.0 (2023-12-08)
------------------

* Feature - M2 Mac instances are built on Apple M2 Mac mini computers. I4i instances are powered by 3rd generation Intel Xeon Scalable processors. C7i compute optimized, M7i general purpose and R7i memory optimized instances are powered by custom 4th Generation Intel Xeon Scalable processors.

1.429.0 (2023-12-06)
------------------

* Feature - Releasing the new cpuManufacturer attribute within the DescribeInstanceTypes API response which notifies our customers with information on who the Manufacturer is for the processor attached to the instance, for example: Intel.

1.428.0 (2023-12-05)
------------------

* Feature - Adds A10G, T4G, and H100 as accelerator name options and Habana as an accelerator manufacturer option for attribute based selection

1.427.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.426.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.425.0 (2023-11-21)
------------------

* Feature - Documentation updates for Amazon EC2.

1.424.0 (2023-11-20)
------------------

* Feature - This release adds support for Security group referencing over Transit gateways, enabling you to simplify Security group management and control of instance-to-instance traffic across VPCs that are connected by Transit gateway.

1.423.0 (2023-11-17)
------------------

* Feature - This release adds new features for Amazon VPC IP Address Manager (IPAM) Allowing a choice between Free and Advanced Tiers, viewing public IP address insights across regions and in Amazon Cloudwatch, use IPAM to plan your subnet IPs within a VPC and bring your own autonomous system number to IPAM.

1.422.0 (2023-11-16)
------------------

* Feature - Enable use of tenant-specific PublicSigningKeyUrl from device trust providers and onboard jumpcloud as a new device trust provider.

1.421.0 (2023-11-15)
------------------

* Feature - AWS EBS now supports Snapshot Lock, giving users the ability to lock an EBS Snapshot to prohibit deletion of the snapshot. This release introduces the LockSnapshot, UnlockSnapshot & DescribeLockedSnapshots APIs to manage lock configuration for snapshots. The release also includes the dl2q_24xlarge.

1.420.0 (2023-11-13)
------------------

* Feature - Adds the new EC2 DescribeInstanceTopology API, which you can use to retrieve the network topology of your running instances on select platform types to determine their relative proximity to each other.

1.419.0 (2023-11-10)
------------------

* Feature - EC2 adds API updates to enable ENA Express at instance launch time.

1.418.0 (2023-11-09)
------------------

* Feature - AWS EBS now supports Block Public Access for EBS Snapshots. This release introduces the EnableSnapshotBlockPublicAccess, DisableSnapshotBlockPublicAccess and GetSnapshotBlockPublicAccessState APIs to manage account-level public access settings for EBS Snapshots in an AWS Region.

1.417.0 (2023-10-31)
------------------

* Feature - Capacity Blocks for ML are a new EC2 purchasing option for reserving GPU instances on a future date to support short duration machine learning (ML) workloads. Capacity Blocks automatically place instances close together inside Amazon EC2 UltraClusters for low-latency, high-throughput networking.

1.416.0 (2023-10-26)
------------------

* Feature - Launching GetSecurityGroupsForVpc API. This API gets security groups that can be associated by the AWS account making the request with network interfaces in the specified VPC.

1.415.0 (2023-10-24)
------------------

* Feature - This release updates the documentation for InstanceInterruptionBehavior and HibernationOptionsRequest to more accurately describe the behavior of these two parameters when using Spot hibernation.

1.414.0 (2023-10-19)
------------------

* Feature - Amazon EC2 C7a instances, powered by 4th generation AMD EPYC processors, are ideal for high performance, compute-intensive workloads such as high performance computing. Amazon EC2 R7i instances are next-generation memory optimized and powered by custom 4th Generation Intel Xeon Scalable processors.

1.413.0 (2023-10-12)
------------------

* Feature - This release adds Ubuntu Pro as a supported platform for On-Demand Capacity Reservations and adds support for setting an Amazon Machine Image (AMI) to disabled state. Disabling the AMI makes it private if it was previously shared, and prevents new EC2 instance launches from it.

1.412.0 (2023-10-06)
------------------

* Feature - Documentation updates for Elastic Compute Cloud (EC2).

1.411.0 (2023-10-02)
------------------

* Feature - Introducing Amazon EC2 R7iz instances with 3.9 GHz sustained all-core turbo frequency and deliver up to 20% better performance than previous generation z1d instances.

1.410.0 (2023-09-28)
------------------

* Feature - Adds support for Customer Managed Key encryption for Amazon Verified Access resources

1.409.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.408.0 (2023-09-26)
------------------

* Feature - The release includes AWS verified access to support FIPs compliance in North America regions

1.407.0 (2023-09-22)
------------------

* Feature - EC2 M2 Pro Mac instances are powered by Apple M2 Pro Mac Mini computers featuring 12 core CPU, 19 core GPU, 32 GiB of memory, and 16 core Apple Neural Engine and uniquely enabled by the AWS Nitro System through high-speed Thunderbolt connections.

1.406.0 (2023-09-19)
------------------

* Feature - This release adds support for C7i, and R7a instance types.

1.405.0 (2023-09-12)
------------------

* Feature - This release adds support for restricting public sharing of AMIs through AMI Block Public Access

1.404.0 (2023-09-06)
------------------

* Feature - This release adds 'outpost' location type to the DescribeInstanceTypeOfferings API, allowing customers that have been allowlisted for outpost to query their offerings in the API.

1.403.0 (2023-09-05)
------------------

* Feature - Introducing Amazon EC2 C7gd, M7gd, and R7gd Instances with up to 3.8 TB of local NVMe-based SSD block-level storage. These instances are powered by AWS Graviton3 processors, delivering up to 25% better performance over Graviton2-based instances.

1.402.0 (2023-08-24)
------------------

* Feature - Amazon EC2 M7a instances, powered by 4th generation AMD EPYC processors, deliver up to 50% higher performance compared to M6a instances. Amazon EC2 Hpc7a instances, powered by 4th Gen AMD EPYC processors, deliver up to 2.5x better performance compared to Amazon EC2 Hpc6a instances.

1.401.0 (2023-08-23)
------------------

* Feature - Marking fields as sensitive on BundleTask and GetPasswordData

1.400.0 (2023-08-21)
------------------

* Feature - The DeleteKeyPair API has been updated to return the keyPairId when an existing key pair is deleted.

1.399.0 (2023-08-17)
------------------

* Feature - Adds support for SubnetConfigurations to allow users to select their own IPv4 and IPv6 addresses for Interface VPC endpoints

1.398.0 (2023-08-15)
------------------

* Feature - Documentation updates for Elastic Compute Cloud (EC2).

1.397.0 (2023-08-11)
------------------

* Feature - Amazon EC2 P5 instances, powered by the latest NVIDIA H100 Tensor Core GPUs, deliver the highest performance in EC2 for deep learning (DL) and HPC applications. M7i-flex and M7i instances are next-generation general purpose instances powered by custom 4th Generation Intel Xeon Scalable processors.

1.396.0 (2023-08-03)
------------------

* Feature - This release adds new parameter isPrimaryIPv6 to  allow assigning an IPv6 address as a primary IPv6 address to a network interface which cannot be changed to give equivalent functionality available for network interfaces with primary IPv4 address.

1.395.0 (2023-07-27)
------------------

* Feature - SDK and documentation updates for Amazon Elastic Block Store APIs

1.394.0 (2023-07-25)
------------------

* Feature - This release adds an instance's peak and baseline network bandwidth as well as the memory sizes of an instance's inference accelerators to DescribeInstanceTypes.

1.393.0 (2023-07-24)
------------------

* Feature - Add "disabled" enum value to SpotInstanceState.

1.392.0 (2023-07-19)
------------------

* Feature - Amazon EC2 documentation updates.

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
