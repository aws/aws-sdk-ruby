# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling

  # This class provides a resource oriented interface for AutoScaling.
  # To create a resource object:
  #
  #     resource = Aws::AutoScaling::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::AutoScaling::Client.new(region: 'us-west-2')
  #     resource = Aws::AutoScaling::Resource.new(client: client)
  #
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
    #     launch_configuration_name: "XmlStringMaxLen255",
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
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               cpu_manufacturers: ["intel"], # accepts intel, amd, amazon-web-services
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current"], # accepts current, previous
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included", # accepts included, excluded, required
    #               burstable_performance: "included", # accepts included, excluded, required
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               local_storage: "included", # accepts included, excluded, required
    #               local_storage_types: ["hdd"], # accepts hdd, ssd
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_types: ["gpu"], # accepts gpu, fpga, inference
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_manufacturers: ["nvidia"], # accepts nvidia, amd, amazon-web-services, xilinx
    #               accelerator_names: ["a100"], # accepts a100, v100, k80, t4, m60, radeon-pro-v520, vu9p
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #             },
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
    #     capacity_rebalance: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "XmlStringMaxLen255",
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
    #     max_instance_lifetime: 1,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #     traffic_sources: [
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique per
    #   Region per account.
    #
    #   The name can contain any ASCII character 33 to 126 including most
    #   punctuation characters, digits, and upper and lowercased letters.
    #
    #   <note markdown="1"> You cannot use a colon (:) in the name.
    #
    #    </note>
    # @option options [String] :launch_configuration_name
    #   The name of the launch configuration to use to launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch configuration
    #   (`LaunchConfigurationName` or `InstanceId`).
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   Information used to specify the launch template and version to use to
    #   launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch configuration
    #   (`LaunchConfigurationName` or `InstanceId`).
    #
    #   <note markdown="1"> The launch template that is specified must be configured for use with
    #   an Auto Scaling group. For more information, see [Creating a launch
    #   template for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    # @option options [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    # @option options [String] :instance_id
    #   The ID of the instance used to base the launch configuration on. If
    #   specified, Amazon EC2 Auto Scaling uses the configuration values from
    #   the specified instance to create a new launch configuration. To get
    #   the instance ID, use the Amazon EC2 [DescribeInstances][1] API
    #   operation. For more information, see [Creating an Auto Scaling group
    #   using an EC2 instance][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    # @option options [required, Integer] :min_size
    #   The minimum size of the group.
    # @option options [required, Integer] :max_size
    #   The maximum size of the group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon EC2
    #   Auto Scaling may need to go above `MaxSize` to meet your capacity
    #   requirements. In this event, Amazon EC2 Auto Scaling will never go
    #   above `MaxSize` by more than your largest instance weight (weights
    #   that define how many units each instance contributes to the desired
    #   capacity of the group).
    #
    #    </note>
    # @option options [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   at the time of its creation and the capacity it attempts to maintain.
    #   It can scale beyond this capacity if you configure auto scaling. This
    #   number must be greater than or equal to the minimum size of the group
    #   and less than or equal to the maximum size of the group. If you do not
    #   specify a desired capacity, the default is the minimum size of the
    #   group.
    # @option options [Integer] :default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `300` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [Array<String>] :availability_zones
    #   A list of Availability Zones where instances in the Auto Scaling group
    #   can be created. Used for launching into the default VPC subnet in each
    #   Availability Zone when not using the `VPCZoneIdentifier` property, or
    #   for attaching a network interface when an existing network interface
    #   ID is specified in a launch template.
    # @option options [Array<String>] :load_balancer_names
    #   A list of Classic Load Balancers associated with this Auto Scaling
    #   group. For Application Load Balancers, Network Load Balancers, and
    #   Gateway Load Balancers, specify the `TargetGroupARNs` property
    #   instead.
    # @option options [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the Elastic Load Balancing target
    #   groups to associate with the Auto Scaling group. Instances are
    #   registered as targets with the target groups. The target groups
    #   receive incoming traffic and route requests to one or more registered
    #   targets. For more information, see [Use Elastic Load Balancing to
    #   distribute traffic across the instances in your Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    # @option options [String] :health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `ELB`, and `VPC_LATTICE`. `EC2` is the
    #   default health check and cannot be disabled. For more information, see
    #   [Health checks for Auto Scaling instances][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    # @option options [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their health
    #   checks after they enter the `InService` state. For more information,
    #   see [Set the health check grace period for an Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `0` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    # @option options [String] :placement_group
    #   The name of the placement group into which to launch your instances.
    #   For more information, see [Placement groups][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    # @option options [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud (VPC)
    #   where instances in the Auto Scaling group can be created. If you
    #   specify `VPCZoneIdentifier` with `AvailabilityZones`, the subnets that
    #   you specify must reside in those Availability Zones.
    # @option options [Array<String>] :termination_policies
    #   A policy or a list of policies that are used to select the instance to
    #   terminate. These policies are executed in the order that you list
    #   them. For more information, see [Work with Amazon EC2 Auto Scaling
    #   termination policies][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance` \|
    #   `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    # @option options [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Using instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    # @option options [Boolean] :capacity_rebalance
    #   Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
    #   Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
    #   EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon
    #   EC2 notifies that a Spot Instance is at an elevated risk of
    #   interruption. After launching a new instance, it then terminates an
    #   old instance. For more information, see [Use Capacity Rebalancing to
    #   handle Amazon EC2 Spot Interruptions][1] in the in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    # @option options [Array<Types::LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   One or more lifecycle hooks to add to the Auto Scaling group before
    #   instances are launched.
    # @option options [Array<Types::Tag>] :tags
    #   One or more tags. You can tag your Auto Scaling group and propagate
    #   the tags to the Amazon EC2 instances it launches. Tags are not
    #   propagated to Amazon EBS volumes. To add tags to Amazon EBS volumes,
    #   specify the tags in a launch template but use caution. If the launch
    #   template specifies an instance tag with a key that is also specified
    #   for the Auto Scaling group, Amazon EC2 Auto Scaling overrides the
    #   value of that instance tag with the value specified by the Auto
    #   Scaling group. For more information, see [Tag Auto Scaling groups and
    #   instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    # @option options [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services service on
    #   your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked
    #   role named `AWSServiceRoleForAutoScaling`, which it creates if it does
    #   not exist. For more information, see [Service-linked roles][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    # @option options [Integer] :max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either 0
    #   or a number equal to or greater than 86,400 seconds (1 day). For more
    #   information, see [Replacing Auto Scaling instances based on maximum
    #   instance lifetime][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    # @option options [String] :context
    #   Reserved.
    # @option options [String] :desired_capacity_type
    #   The unit of measurement for the value specified for desired capacity.
    #   Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Creating an Auto Scaling group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    # @option options [Integer] :default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered to
    #   have finished initializing and resource consumption to become stable
    #   after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are used
    #   for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto Scaling
    #   group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying a
    #   value of `0` or other nominal value.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    # @option options [Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   The list of traffic sources to attach to this Auto Scaling group. You
    #   can use any of the following as traffic sources for an Auto Scaling
    #   group: Classic Load Balancer, Application Load Balancer, Gateway Load
    #   Balancer, Network Load Balancer, and VPC Lattice.
    # @return [AutoScalingGroup]
    def create_group(options = {})
      Aws::Plugins::UserAgent.feature('resource') do
        @client.create_auto_scaling_group(options)
      end
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
    #           throughput: 1,
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
    #     metadata_options: {
    #       http_tokens: "optional", # accepts optional, required
    #       http_put_response_hop_limit: 1,
    #       http_endpoint: "disabled", # accepts disabled, enabled
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :launch_configuration_name
    #   The name of the launch configuration. This name must be unique per
    #   Region per account.
    # @option options [String] :image_id
    #   The ID of the Amazon Machine Image (AMI) that was assigned during
    #   registration. For more information, see [Finding a Linux AMI][1] in
    #   the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `ImageId` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    # @option options [String] :key_name
    #   The name of the key pair. For more information, see [Amazon EC2 key
    #   pairs and Linux instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    # @option options [Array<String>] :security_groups
    #   A list that contains the security group IDs to assign to the instances
    #   in the Auto Scaling group. For more information, see [Control traffic
    #   to resources using security groups][1] in the *Amazon Virtual Private
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    # @option options [String] :classic_link_vpc_id
    #   Available for backward compatibility.
    # @option options [Array<String>] :classic_link_vpc_security_groups
    #   Available for backward compatibility.
    # @option options [String] :user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance metadata and user data][1] (Linux) and
    #   [Instance metadata and user data][2] (Windows). If you are using a
    #   command line tool, base64-encoding is performed for you, and you can
    #   load the text from a file. Otherwise, you must provide base64-encoded
    #   text. User data is limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html
    # @option options [String] :instance_id
    #   The ID of the instance to use to create the launch configuration. The
    #   new launch configuration derives attributes from the instance, except
    #   for the block device mapping.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Creating a launch configuration using an
    #   EC2 instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    # @option options [String] :instance_type
    #   Specifies the instance type of the EC2 instance. For information about
    #   available instance types, see [Available instance types][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `InstanceType` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    # @option options [String] :kernel_id
    #   The ID of the kernel associated with the AMI.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk to select.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping entries that define the block devices to
    #   attach to the instances at launch. By default, the block devices
    #   specified in the block device mapping for the AMI are used. For more
    #   information, see [Block device mappings][1] in the *Amazon EC2 User
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
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html
    # @option options [String] :spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched to
    #   fulfill the request. Spot Instances are launched when the price you
    #   specify exceeds the current Spot price. For more information, see
    #   [Request Spot Instances for fault-tolerant and flexible
    #   applications][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid Range: Minimum value of 0.001
    #
    #   <note markdown="1"> When you change your maximum price by creating a new launch
    #   configuration, running instances will continue to run as long as the
    #   maximum price for those running instances is higher than the current
    #   Spot price.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html
    # @option options [String] :iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role. For more information, see [IAM role for
    #   applications that run on Amazon EC2 instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
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
    #   default. For more information, see [Amazon EBS-optimized instances][1]
    #   in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   The default value is `false`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    # @option options [Boolean] :associate_public_ip_address
    #   Specifies whether to assign a public IPv4 address to the group's
    #   instances. If the instance is launched into a default subnet, the
    #   default is to assign a public IPv4 address, unless you disabled the
    #   option to assign a public IPv4 address on the subnet. If the instance
    #   is launched into a nondefault subnet, the default is not to assign a
    #   public IPv4 address, unless you enabled the option to assign a public
    #   IPv4 address on the subnet.
    #
    #   If you specify `true`, each instance in the Auto Scaling group
    #   receives a unique public IPv4 address. For more information, see
    #   [Launching Auto Scaling instances in a VPC][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   If you specify this property, you must specify at least one subnet for
    #   `VPCZoneIdentifier` when you create your group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    # @option options [String] :placement_tenancy
    #   The tenancy of the instance, either `default` or `dedicated`. An
    #   instance with `dedicated` tenancy runs on isolated, single-tenant
    #   hardware and can only be launched into a VPC. To launch dedicated
    #   instances into a shared tenancy VPC (a VPC with the instance placement
    #   tenancy attribute set to `default`), you must set the value of this
    #   property to `dedicated`. For more information, see [Configuring
    #   instance tenancy with Amazon EC2 Auto Scaling][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   If you specify `PlacementTenancy`, you must specify at least one
    #   subnet for `VPCZoneIdentifier` when you create your group.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html
    # @option options [Types::InstanceMetadataOptions] :metadata_options
    #   The metadata options for the instances. For more information, see
    #   [Configuring the Instance Metadata Options][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds
    # @return [LaunchConfiguration]
    def create_launch_configuration(options = {})
      Aws::Plugins::UserAgent.feature('resource') do
        @client.create_launch_configuration(options)
      end
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
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     include_deleted_groups: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. If you omit this
    #   property, all activities for the past six weeks are described. If
    #   unknown activities are requested, they are ignored with no error. If
    #   you specify an Auto Scaling group, the results are limited to that
    #   group.
    #
    #   Array Members: Maximum number of 50 IDs.
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Boolean] :include_deleted_groups
    #   Indicates whether to include scaling activity from deleted Auto
    #   Scaling groups.
    # @return [Activity::Collection]
    def activities(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_scaling_activities(options)
        end
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
    #     auto_scaling_group_names: ["XmlStringMaxLen255"],
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :auto_scaling_group_names
    #   The names of the Auto Scaling groups. By default, you can only specify
    #   up to 50 names. You can optionally increase this limit using the
    #   `MaxRecords` property.
    #
    #   If you omit this property, all Auto Scaling groups are described.
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters to limit the results based on specific tags.
    # @return [AutoScalingGroup::Collection]
    def groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_auto_scaling_groups(options)
        end
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
    #   The IDs of the instances. If you omit this property, all Auto Scaling
    #   instances are described. If you specify an ID that does not exist, it
    #   is ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    # @return [Instance::Collection]
    def instances(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_auto_scaling_instances(options)
        end
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
    #     launch_configuration_names: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :launch_configuration_names
    #   The launch configuration names. If you omit this property, all launch
    #   configurations are described.
    #
    #   Array Members: Maximum number of 50 items.
    # @return [LaunchConfiguration::Collection]
    def launch_configurations(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_launch_configurations(options)
        end
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
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this property, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. If you specify an unknown policy name, it is
    #   ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    # @option options [Array<String>] :policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`.
    # @return [ScalingPolicy::Collection]
    def policies(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_policies(options)
        end
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
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     scheduled_action_names: ["XmlStringMaxLen255"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @option options [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. If you omit this property,
    #   all scheduled actions are described. If you specify an unknown
    #   scheduled action, it is ignored with no error.
    #
    #   Array Members: Maximum number of 50 actions.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    # @return [ScheduledAction::Collection]
    def scheduled_actions(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_scheduled_actions(options)
        end
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
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_tags(options)
        end
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
