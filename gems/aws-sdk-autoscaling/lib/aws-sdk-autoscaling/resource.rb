# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   autoscalinggroup = auto_scaling.create_group({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "ResourceName",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #           },
    #         ],
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       },
    #     },
    #     instance_id: "XmlStringMaxLen19",
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     load_balancer_names: ["XmlStringMaxLen255"],
    #     target_group_arns: ["XmlStringMaxLen511"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "ResourceName",
    #       },
    #     ],
    #     tags: [
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #     service_linked_role_arn: "ResourceName",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique per
    #   Region per account.
    # @option options [String] :launch_configuration_name
    #   The name of the launch configuration.
    #
    #   If you do not specify `LaunchConfigurationName`, you must specify one
    #   of the following parameters: `InstanceId`, `LaunchTemplate`, or
    #   `MixedInstancesPolicy`.
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template to use to launch instances.
    #
    #   For more information, see [LaunchTemplateSpecification][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   If you do not specify `LaunchTemplate`, you must specify one of the
    #   following parameters: `InstanceId`, `LaunchConfigurationName`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_LaunchTemplateSpecification.html
    # @option options [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   An embedded object that specifies a mixed instances policy. The
    #   required parameters must be specified. If optional parameters are
    #   unspecified, their default values are used.
    #
    #   The policy includes parameters that not only define the distribution
    #   of On-Demand Instances and Spot Instances, the maximum price to pay
    #   for Spot Instances, and how the Auto Scaling group allocates instance
    #   types to fulfill On-Demand and Spot capacity, but also the parameters
    #   that specify the instance configuration information—the launch
    #   template and instance types.
    #
    #   For more information, see [MixedInstancesPolicy][1] in the *Amazon EC2
    #   Auto Scaling API Reference* and [Auto Scaling Groups with Multiple
    #   Instance Types and Purchase Options][2] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   You must specify one of the following parameters in your request:
    #   `LaunchConfigurationName`, `LaunchTemplate`, `InstanceId`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_MixedInstancesPolicy.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html
    # @option options [String] :instance_id
    #   The ID of the instance used to create a launch configuration for the
    #   group.
    #
    #   When you specify an ID of an instance, Amazon EC2 Auto Scaling creates
    #   a new launch configuration and associates it with the group. This
    #   launch configuration derives its attributes from the specified
    #   instance, except for the block device mapping.
    #
    #   For more information, see [Create an Auto Scaling Group Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   You must specify one of the following parameters in your request:
    #   `LaunchConfigurationName`, `LaunchTemplate`, `InstanceId`, or
    #   `MixedInstancesPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    # @option options [required, Integer] :min_size
    #   The minimum size of the group.
    # @option options [required, Integer] :max_size
    #   The maximum size of the group.
    # @option options [Integer] :desired_capacity
    #   The number of Amazon EC2 instances that the Auto Scaling group
    #   attempts to maintain. This number must be greater than or equal to the
    #   minimum size of the group and less than or equal to the maximum size
    #   of the group. If you do not specify a desired capacity, the default is
    #   the minimum size of the group.
    # @option options [Integer] :default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default value is `300`.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [Array<String>] :availability_zones
    #   One or more Availability Zones for the group. This parameter is
    #   optional if you specify one or more subnets for `VPCZoneIdentifier`.
    #
    #   Conditional: If your account supports EC2-Classic and VPC, this
    #   parameter is required to launch instances into EC2-Classic.
    # @option options [Array<String>] :load_balancer_names
    #   A list of Classic Load Balancers associated with this Auto Scaling
    #   group. For Application Load Balancers and Network Load Balancers,
    #   specify a list of target groups using the `TargetGroupARNs` property
    #   instead.
    #
    #   For more information, see [Using a Load Balancer with an Auto Scaling
    #   Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    # @option options [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups to associate with
    #   the Auto Scaling group. Instances are registered as targets in a
    #   target group, and traffic is routed to the target group.
    #
    #   For more information, see [Using a Load Balancer with an Auto Scaling
    #   Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    # @option options [String] :health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`. The default value is `EC2`. If you configure an Auto
    #   Scaling group to use ELB health checks, it considers the instance
    #   unhealthy if it fails either the EC2 status checks or the load
    #   balancer health checks.
    #
    #   For more information, see [Health Checks for Auto Scaling
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    # @option options [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. During this time, any health check failures for the
    #   instance are ignored. The default value is `0`.
    #
    #   For more information, see [Health Check Grace Period][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Conditional: This parameter is required if you are adding an `ELB`
    #   health check.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period
    # @option options [String] :placement_group
    #   The name of the placement group into which to launch your instances,
    #   if any. A placement group is a logical grouping of instances within a
    #   single Availability Zone. You cannot specify multiple Availability
    #   Zones and a placement group. For more information, see [Placement
    #   Groups][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    # @option options [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for your virtual private cloud
    #   (VPC).
    #
    #   If you specify `VPCZoneIdentifier` with `AvailabilityZones`, the
    #   subnets that you specify for this parameter must reside in those
    #   Availability Zones.
    #
    #   Conditional: If your account supports EC2-Classic and VPC, this
    #   parameter is required to launch instances into a VPC.
    # @option options [Array<String>] :termination_policies
    #   One or more termination policies used to select the instance to
    #   terminate. These policies are executed in the order that they are
    #   listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    # @option options [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in.
    #
    #   For more information about preventing instances from terminating on
    #   scale in, see [Instance Protection][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    # @option options [Array<Types::LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   One or more lifecycle hooks.
    # @option options [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    #   For more information, see [Tagging Auto Scaling Groups and
    #   Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html
    # @option options [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf. By
    #   default, Amazon EC2 Auto Scaling uses a service-linked role named
    #   AWSServiceRoleForAutoScaling, which it creates if it does not exist.
    #   For more information, see [Service-Linked Roles][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    # @return [AutoScalingGroup]
    def create_group(options = {})
      resp = @client.create_auto_scaling_group(options)
      AutoScalingGroup.new(
        name: options[:auto_scaling_group_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   launchconfiguration = auto_scaling.create_launch_configuration({
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #     image_id: "XmlStringMaxLen255",
    #     key_name: "XmlStringMaxLen255",
    #     security_groups: ["XmlString"],
    #     classic_link_vpc_id: "XmlStringMaxLen255",
    #     classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #     user_data: "XmlStringUserData",
    #     instance_id: "XmlStringMaxLen19",
    #     instance_type: "XmlStringMaxLen255",
    #     kernel_id: "XmlStringMaxLen255",
    #     ramdisk_id: "XmlStringMaxLen255",
    #     block_device_mappings: [
    #       {
    #         virtual_name: "XmlStringMaxLen255",
    #         device_name: "XmlStringMaxLen255", # required
    #         ebs: {
    #           snapshot_id: "XmlStringMaxLen255",
    #           volume_size: 1,
    #           volume_type: "BlockDeviceEbsVolumeType",
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #         },
    #         no_device: false,
    #       },
    #     ],
    #     instance_monitoring: {
    #       enabled: false,
    #     },
    #     spot_price: "SpotPrice",
    #     iam_instance_profile: "XmlStringMaxLen1600",
    #     ebs_optimized: false,
    #     associate_public_ip_address: false,
    #     placement_tenancy: "XmlStringMaxLen64",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :launch_configuration_name
    #   The name of the launch configuration. This name must be unique per
    #   Region per account.
    # @option options [String] :image_id
    #   The ID of the Amazon Machine Image (AMI) that was assigned during
    #   registration. For more information, see [Finding an AMI][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you do not specify `InstanceId`, you must specify `ImageId`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    # @option options [String] :key_name
    #   The name of the key pair. For more information, see [Amazon EC2 Key
    #   Pairs][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    # @option options [Array<String>] :security_groups
    #   A list that contains the security groups to assign to the instances in
    #   the Auto Scaling group.
    #
    #   \[EC2-VPC\] Specify the security group IDs. For more information, see
    #   [Security Groups for Your VPC][1] in the *Amazon Virtual Private Cloud
    #   User Guide*.
    #
    #   \[EC2-Classic\] Specify either the security group names or the
    #   security group IDs. For more information, see [Amazon EC2 Security
    #   Groups][2] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    # @option options [String] :classic_link_vpc_id
    #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
    #   to. For more information, see [ClassicLink][1] in the *Amazon EC2 User
    #   Guide for Linux Instances* and [Linking EC2-Classic Instances to a
    #   VPC][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   This parameter can only be used if you are launching EC2-Classic
    #   instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    # @option options [Array<String>] :classic_link_vpc_security_groups
    #   The IDs of one or more security groups for the specified
    #   ClassicLink-enabled VPC. For more information, see [ClassicLink][1] in
    #   the *Amazon EC2 User Guide for Linux Instances* and [Linking
    #   EC2-Classic Instances to a VPC][2] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #   If you specify the `ClassicLinkVPCId` parameter, you must specify this
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink
    # @option options [String] :user_data
    #   The Base64-encoded user data to make available to the launched EC2
    #   instances. For more information, see [Instance Metadata and User
    #   Data][1] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    # @option options [String] :instance_id
    #   The ID of the instance to use to create the launch configuration. The
    #   new launch configuration derives attributes from the instance, except
    #   for the block device mapping.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Create a Launch Configuration Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you do not specify `InstanceId`, you must specify both `ImageId`
    #   and `InstanceType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    # @option options [String] :instance_type
    #   Specifies the instance type of the EC2 instance.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon EC2 User Guide for Linux Instances.*
    #
    #   If you do not specify `InstanceId`, you must specify `InstanceType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    # @option options [String] :kernel_id
    #   The ID of the kernel associated with the AMI.
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk to select.
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   A block device mapping, which specifies the block devices for the
    #   instance. You can specify virtual devices and EBS volumes. For more
    #   information, see [Block Device Mapping][1] in the *Amazon EC2 User
    #   Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    # @option options [Types::InstanceMonitoring] :instance_monitoring
    #   Controls whether instances in this group are launched with detailed
    #   (`true`) or basic (`false`) monitoring.
    #
    #   The default value is `true` (enabled).
    #
    #   When detailed monitoring is enabled, Amazon CloudWatch generates
    #   metrics every minute and your account is charged a fee. When you
    #   disable detailed monitoring, CloudWatch generates metrics every 5
    #   minutes. For more information, see [Configure Monitoring for Auto
    #   Scaling Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html#enable-as-instance-metrics
    # @option options [String] :spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched to
    #   fulfill the request. Spot Instances are launched when the price you
    #   specify exceeds the current Spot market price. For more information,
    #   see [Launching Spot Instances in Your Auto Scaling Group][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If a Spot price is set, then the Auto Scaling group will only launch
    #   instances when the Spot price has been met, regardless of the setting
    #   in the Auto Scaling group's `DesiredCapacity`.
    #
    #   <note markdown="1"> When you change your Spot price by creating a new launch
    #   configuration, running instances will continue to run as long as the
    #   Spot price for those running instances is higher than the current Spot
    #   market price.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    # @option options [String] :iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role.
    #
    #   For more information, see [IAM Role for Applications That Run on
    #   Amazon EC2 Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    # @option options [Boolean] :ebs_optimized
    #   Specifies whether the launch configuration is optimized for EBS I/O
    #   (`true`) or not (`false`). The optimization provides dedicated
    #   throughput to Amazon EBS and an optimized configuration stack to
    #   provide optimal I/O performance. This optimization is not available
    #   with all instance types. Additional fees are incurred when you enable
    #   EBS optimization for an instance type that is not EBS-optimized by
    #   default. For more information, see [Amazon EBS-Optimized Instances][1]
    #   in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   The default value is `false`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    # @option options [Boolean] :associate_public_ip_address
    #   For Auto Scaling groups that are running in a virtual private cloud
    #   (VPC), specifies whether to assign a public IP address to the group's
    #   instances. If you specify `true`, each instance in the Auto Scaling
    #   group receives a unique public IP address. For more information, see
    #   [Launching Auto Scaling Instances in a VPC][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   If you specify this parameter, you must specify at least one subnet
    #   for `VPCZoneIdentifier` when you create your group.
    #
    #   <note markdown="1"> If the instance is launched into a default subnet, the default is to
    #   assign a public IP address, unless you disabled the option to assign a
    #   public IP address on the subnet. If the instance is launched into a
    #   nondefault subnet, the default is not to assign a public IP address,
    #   unless you enabled the option to assign a public IP address on the
    #   subnet.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    # @option options [String] :placement_tenancy
    #   The tenancy of the instance. An instance with `dedicated` tenancy runs
    #   on isolated, single-tenant hardware and can only be launched into a
    #   VPC.
    #
    #   To launch dedicated instances into a shared tenancy VPC (a VPC with
    #   the instance placement tenancy attribute set to `default`), you must
    #   set the value of this parameter to `dedicated`.
    #
    #   If you specify `PlacementTenancy`, you must specify at least one
    #   subnet for `VPCZoneIdentifier` when you create your group.
    #
    #   For more information, see [Instance Placement Tenancy][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-vpc-tenancy
    # @return [LaunchConfiguration]
    def create_launch_configuration(options = {})
      resp = @client.create_launch_configuration(options)
      LaunchConfiguration.new(
        name: options[:launch_configuration_name],
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   activities = auto_scaling.activities({
    #     activity_ids: ["XmlString"],
    #     auto_scaling_group_name: "ResourceName",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. You can specify up
    #   to 50 IDs. If you omit this parameter, all activities for the past six
    #   weeks are described. If unknown activities are requested, they are
    #   ignored with no error. If you specify an Auto Scaling group, the
    #   results are limited to that group.
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @return [Activity::Collection]
    def activities(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_scaling_activities(options)
        resp.each_page do |page|
          batch = []
          page.data.activities.each do |a|
            batch << Activity.new(
              id: a.activity_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Activity::Collection.new(batches)
    end

    # @param [String] id
    # @return [Activity]
    def activity(id)
      Activity.new(
        id: id,
        client: @client
      )
    end

    # @param [String] name
    # @return [AutoScalingGroup]
    def group(name)
      AutoScalingGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   groups = auto_scaling.groups({
    #     auto_scaling_group_names: ["ResourceName"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :auto_scaling_group_names
    #   The names of the Auto Scaling groups. Each name can be a maximum of
    #   1600 characters. By default, you can only specify up to 50 names. You
    #   can optionally increase this limit using the `MaxRecords` parameter.
    #
    #   If you omit this parameter, all Auto Scaling groups are described.
    # @return [AutoScalingGroup::Collection]
    def groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_auto_scaling_groups(options)
        resp.each_page do |page|
          batch = []
          page.data.auto_scaling_groups.each do |a|
            batch << AutoScalingGroup.new(
              name: a.auto_scaling_group_name,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      AutoScalingGroup::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   instances = auto_scaling.instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to `MaxRecords` IDs. If
    #   you omit this parameter, all Auto Scaling instances are described. If
    #   you specify an ID that does not exist, it is ignored with no error.
    # @return [Instance::Collection]
    def instances(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_auto_scaling_instances(options)
        resp.each_page do |page|
          batch = []
          page.data.auto_scaling_instances.each do |a|
            batch << Instance.new(
              group_name: a.auto_scaling_group_name,
              id: a.instance_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Instance::Collection.new(batches)
    end

    # @param [String] name
    # @return [LaunchConfiguration]
    def launch_configuration(name)
      LaunchConfiguration.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   launch_configurations = auto_scaling.launch_configurations({
    #     launch_configuration_names: ["ResourceName"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :launch_configuration_names
    #   The launch configuration names. If you omit this parameter, all launch
    #   configurations are described.
    # @return [LaunchConfiguration::Collection]
    def launch_configurations(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_launch_configurations(options)
        resp.each_page do |page|
          batch = []
          page.data.launch_configurations.each do |l|
            batch << LaunchConfiguration.new(
              name: l.launch_configuration_name,
              data: l,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      LaunchConfiguration::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   policies = auto_scaling.policies({
    #     auto_scaling_group_name: "ResourceName",
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this parameter, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. This list is limited to 50 items. If you
    #   specify an unknown policy name, it is ignored with no error.
    # @option options [Array<String>] :policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, and `TargetTrackingScaling`.
    # @return [ScalingPolicy::Collection]
    def policies(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_policies(options)
        resp.each_page do |page|
          batch = []
          page.data.scaling_policies.each do |s|
            batch << ScalingPolicy.new(
              name: s.policy_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScalingPolicy::Collection.new(batches)
    end

    # @param [String] name
    # @return [ScalingPolicy]
    def policy(name)
      ScalingPolicy.new(
        name: name,
        client: @client
      )
    end

    # @param [String] name
    # @return [ScheduledAction]
    def scheduled_action(name)
      ScheduledAction.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   scheduled_actions = auto_scaling.scheduled_actions({
    #     auto_scaling_group_name: "ResourceName",
    #     scheduled_action_names: ["ResourceName"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. You can specify up to 50
    #   actions. If you omit this parameter, all scheduled actions are
    #   described. If you specify an unknown scheduled action, it is ignored
    #   with no error.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this parameter is ignored.
    # @return [ScheduledAction::Collection]
    def scheduled_actions(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_scheduled_actions(options)
        resp.each_page do |page|
          batch = []
          page.data.scheduled_update_group_actions.each do |s|
            batch << ScheduledAction.new(
              name: s.scheduled_action_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScheduledAction::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   tags = auto_scaling.tags({
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters to scope the tags to return. The maximum number of
    #   filters per filter type (for example, `auto-scaling-group`) is 1000.
    # @return [Tag::Collection]
    def tags(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_tags(options)
        resp.each_page do |page|
          batch = []
          page.data.tags.each do |t|
            batch << Tag.new(
              key: t.key,
              resource_id: t.resource_id,
              resource_type: t.resource_type,
              data: t,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Tag::Collection.new(batches)
    end

  end
end
