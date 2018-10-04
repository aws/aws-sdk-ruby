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
    #   The name of the Auto Scaling group. This name must be unique within
    #   the scope of your AWS account.
    # @option options [String] :launch_configuration_name
    #   The name of the launch configuration. You must specify one of the
    #   following: a launch configuration, a launch template, or an EC2
    #   instance.
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template to use to launch instances. You must specify one
    #   of the following: a launch template, a launch configuration, or an EC2
    #   instance.
    # @option options [String] :instance_id
    #   The ID of the instance used to create a launch configuration for the
    #   group. You must specify one of the following: an EC2 instance, a
    #   launch configuration, or a launch template.
    #
    #   When you specify an ID of an instance, Amazon EC2 Auto Scaling creates
    #   a new launch configuration and associates it with the group. This
    #   launch configuration derives its attributes from the specified
    #   instance, with the exception of the block device mapping.
    #
    #   For more information, see [Create an Auto Scaling Group Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    # @option options [required, Integer] :min_size
    #   The minimum size of the group.
    # @option options [required, Integer] :max_size
    #   The maximum size of the group.
    # @option options [Integer] :desired_capacity
    #   The number of EC2 instances that should be running in the group. This
    #   number must be greater than or equal to the minimum size of the group
    #   and less than or equal to the maximum size of the group. If you do not
    #   specify a desired capacity, the default is the minimum size of the
    #   group.
    # @option options [Integer] :default_cooldown
    #   The amount of time, in seconds, after a scaling activity completes
    #   before another scaling activity can start. The default is 300.
    #
    #   For more information, see [Scaling Cooldowns][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    # @option options [Array<String>] :availability_zones
    #   One or more Availability Zones for the group. This parameter is
    #   optional if you specify one or more subnets.
    # @option options [Array<String>] :load_balancer_names
    #   One or more Classic Load Balancers. To specify an Application Load
    #   Balancer, use `TargetGroupARNs` instead.
    #
    #   For more information, see [Using a Load Balancer With an Auto Scaling
    #   Group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    # @option options [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups.
    # @option options [String] :health_check_type
    #   The service to use for the health checks. The valid values are `EC2`
    #   and `ELB`.
    #
    #   By default, health checks use Amazon EC2 instance status checks to
    #   determine the health of an instance. For more information, see [Health
    #   Checks][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    # @option options [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service. During this time, any health check failures for the
    #   instance are ignored. The default is 0.
    #
    #   This parameter is required if you are adding an `ELB` health check.
    #
    #   For more information, see [Health Checks][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    # @option options [String] :placement_group
    #   The name of the placement group into which you'll launch your
    #   instances, if any. For more information, see [Placement Groups][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    # @option options [String] :vpc_zone_identifier
    #   A comma-separated list of subnet identifiers for your virtual private
    #   cloud (VPC).
    #
    #   If you specify subnets and Availability Zones with this call, ensure
    #   that the subnets' Availability Zones match the Availability Zones
    #   specified.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    # @option options [Array<String>] :termination_policies
    #   One or more termination policies used to select the instance to
    #   terminate. These policies are executed in the order that they are
    #   listed.
    #
    #   For more information, see [Controlling Which Instances Auto Scaling
    #   Terminates During Scale In][1] in the *Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html
    # @option options [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Auto Scaling when scaling in.
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
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html
    # @option options [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other AWS services on your behalf. By
    #   default, Amazon EC2 Auto Scaling uses a service-linked role named
    #   AWSServiceRoleForAutoScaling, which it creates if it does not exist.
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
    #   The name of the launch configuration. This name must be unique within
    #   the scope of your AWS account.
    # @option options [String] :image_id
    #   The ID of the Amazon Machine Image (AMI) to use to launch your EC2
    #   instances.
    #
    #   If you do not specify `InstanceId`, you must specify `ImageId`.
    #
    #   For more information, see [Finding an AMI][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    # @option options [String] :key_name
    #   The name of the key pair. For more information, see [Amazon EC2 Key
    #   Pairs][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    # @option options [Array<String>] :security_groups
    #   One or more security groups with which to associate the instances.
    #
    #   If your instances are launched in EC2-Classic, you can either specify
    #   security group names or the security group IDs. For more information
    #   about security groups for EC2-Classic, see [Amazon EC2 Security
    #   Groups][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   If your instances are launched into a VPC, specify security group IDs.
    #   For more information, see [Security Groups for Your VPC][2] in the
    #   *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    #   [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    # @option options [String] :classic_link_vpc_id
    #   The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
    #   to. This parameter is supported only if you are launching EC2-Classic
    #   instances. For more information, see [ClassicLink][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    # @option options [Array<String>] :classic_link_vpc_security_groups
    #   The IDs of one or more security groups for the specified
    #   ClassicLink-enabled VPC. This parameter is required if you specify a
    #   ClassicLink-enabled VPC, and is not supported otherwise. For more
    #   information, see [ClassicLink][1] in the *Amazon Elastic Compute Cloud
    #   User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    # @option options [String] :user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance Metadata and User Data][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    # @option options [String] :instance_id
    #   The ID of the instance to use to create the launch configuration. The
    #   new launch configuration derives attributes from the instance, with
    #   the exception of the block device mapping.
    #
    #   If you do not specify `InstanceId`, you must specify both `ImageId`
    #   and `InstanceType`.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Create a Launch Configuration Using an EC2
    #   Instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    # @option options [String] :instance_type
    #   The instance type of the EC2 instance.
    #
    #   If you do not specify `InstanceId`, you must specify `InstanceType`.
    #
    #   For information about available instance types, see [Available
    #   Instance Types][1] in the *Amazon Elastic Compute Cloud User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    # @option options [String] :kernel_id
    #   The ID of the kernel associated with the AMI.
    # @option options [String] :ramdisk_id
    #   The ID of the RAM disk associated with the AMI.
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   One or more mappings that specify how block devices are exposed to the
    #   instance. For more information, see [Block Device Mapping][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    # @option options [Types::InstanceMonitoring] :instance_monitoring
    #   Enables detailed monitoring (`true`) or basic monitoring (`false`) for
    #   the Auto Scaling instances. The default is `true`.
    # @option options [String] :spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched to
    #   fulfill the request. Spot Instances are launched when the price you
    #   specify exceeds the current Spot market price. For more information,
    #   see [Launching Spot Instances in Your Auto Scaling Group][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html
    # @option options [String] :iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance.
    #
    #   EC2 instances launched with an IAM role will automatically have AWS
    #   security credentials available. You can use IAM roles with Amazon EC2
    #   Auto Scaling to automatically enable applications running on your EC2
    #   instances to securely access other AWS resources. For more
    #   information, see [Launch Auto Scaling Instances with an IAM Role][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    # @option options [Boolean] :ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. By
    #   default, the instance is not optimized for EBS I/O. The optimization
    #   provides dedicated throughput to Amazon EBS and an optimized
    #   configuration stack to provide optimal I/O performance. This
    #   optimization is not available with all instance types. Additional
    #   usage charges apply. For more information, see [Amazon EBS-Optimized
    #   Instances][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    # @option options [Boolean] :associate_public_ip_address
    #   Used for groups that launch instances into a virtual private cloud
    #   (VPC). Specifies whether to assign a public IP address to each
    #   instance. For more information, see [Launching Auto Scaling Instances
    #   in a VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   If you specify this parameter, be sure to specify at least one subnet
    #   when you create your group.
    #
    #   Default: If the instance is launched into a default subnet, the
    #   default is to assign a public IP address. If the instance is launched
    #   into a nondefault subnet, the default is not to assign a public IP
    #   address.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    # @option options [String] :placement_tenancy
    #   The tenancy of the instance. An instance with a tenancy of `dedicated`
    #   runs on single-tenant hardware and can only be launched into a VPC.
    #
    #   You must set the value of this parameter to `dedicated` if want to
    #   launch Dedicated Instances into a shared tenancy VPC (VPC with
    #   instance placement tenancy attribute set to `default`).
    #
    #   If you specify this parameter, be sure to specify at least one subnet
    #   when you create your group.
    #
    #   For more information, see [Launching Auto Scaling Instances in a
    #   VPC][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
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
    #   The names of the Auto Scaling groups. You can specify up to
    #   `MaxRecords` names. If you omit this parameter, all Auto Scaling
    #   groups are described.
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
    #   policies are described. If an group name is provided, the results are
    #   limited to that group. This list is limited to 50 items. If you
    #   specify an unknown policy name, it is ignored with no error.
    # @option options [Array<String>] :policy_types
    #   One or more policy types. Valid values are `SimpleScaling` and
    #   `StepScaling`.
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
    #   A filter used to scope the tags to return.
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
