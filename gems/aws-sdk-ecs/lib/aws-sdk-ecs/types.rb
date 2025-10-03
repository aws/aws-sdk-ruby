# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECS
  module Types

    # The minimum and maximum number of accelerators (such as GPUs) for
    # instance type selection. This is used for workloads that require
    # specific numbers of accelerators.
    #
    # @!attribute [rw] min
    #   The minimum number of accelerators. Instance types with fewer
    #   accelerators are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of accelerators. Instance types with more
    #   accelerators are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AcceleratorCountRequest AWS API Documentation
    #
    class AcceleratorCountRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum total accelerator memory in mebibytes (MiB)
    # for instance type selection. This is important for GPU workloads that
    # require specific amounts of video memory.
    #
    # @!attribute [rw] min
    #   The minimum total accelerator memory in MiB. Instance types with
    #   less accelerator memory are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum total accelerator memory in MiB. Instance types with
    #   more accelerator memory are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AcceleratorTotalMemoryMiBRequest AWS API Documentation
    #
    class AcceleratorTotalMemoryMiBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have authorization to perform the requested action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # The advanced settings for a load balancer used in blue/green
    # deployments. Specify the alternate target group, listener rules, and
    # IAM role required for traffic shifting during blue/green deployments.
    # For more information, see [Required resources for Amazon ECS
    # blue/green deployments][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/blue-green-deployment-implementation.html
    #
    # @!attribute [rw] alternate_target_group_arn
    #   The Amazon Resource Name (ARN) of the alternate target group for
    #   Amazon ECS blue/green deployments.
    #   @return [String]
    #
    # @!attribute [rw] production_listener_rule
    #   The Amazon Resource Name (ARN) that that identifies the production
    #   listener rule (in the case of an Application Load Balancer) or
    #   listener (in the case for an Network Load Balancer) for routing
    #   production traffic.
    #   @return [String]
    #
    # @!attribute [rw] test_listener_rule
    #   The Amazon Resource Name (ARN) that identifies ) that identifies the
    #   test listener rule (in the case of an Application Load Balancer) or
    #   listener (in the case for an Network Load Balancer) for routing test
    #   traffic.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   ECS permission to call the Elastic Load Balancing APIs for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AdvancedConfiguration AWS API Documentation
    #
    class AdvancedConfiguration < Struct.new(
      :alternate_target_group_arn,
      :production_listener_rule,
      :test_listener_rule,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a container instance or task attachment.
    #
    # @!attribute [rw] id
    #   The unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attachment, such as `ElasticNetworkInterface`,
    #   `Service Connect`, and `AmazonElasticBlockStorage`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the attachment. Valid values are `PRECREATED`,
    #   `CREATED`, `ATTACHING`, `ATTACHED`, `DETACHING`, `DETACHED`,
    #   `DELETED`, and `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details of the attachment.
    #
    #   For elastic network interfaces, this includes the network interface
    #   ID, the MAC address, the subnet ID, and the private IPv4 address.
    #
    #   For Service Connect services, this includes `portName`,
    #   `clientAliases`, `discoveryName`, and `ingressPortOverride`.
    #
    #   For Elastic Block Storage, this includes `roleArn`,
    #   `deleteOnTermination`, `volumeName`, `volumeId`, and `statusReason`
    #   (only when the attachment fails to create or attach).
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :id,
      :type,
      :status,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a change in state for a task attachment.
    #
    # @!attribute [rw] attachment_arn
    #   The Amazon Resource Name (ARN) of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AttachmentStateChange AWS API Documentation
    #
    class AttachmentStateChange < Struct.new(
      :attachment_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute is a name-value pair that's associated with an Amazon
    # ECS object. Use attributes to extend the Amazon ECS data model by
    # adding custom metadata to your resources. For more information, see
    # [Attributes][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #
    # @!attribute [rw] name
    #   The name of the attribute. The `name` must contain between 1 and 128
    #   characters. The name may contain letters (uppercase and lowercase),
    #   numbers, hyphens (-), underscores (\_), forward slashes (/), back
    #   slashes (\\), or periods (.).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute. The `value` must contain between 1 and
    #   128 characters. It can contain letters (uppercase and lowercase),
    #   numbers, hyphens (-), underscores (\_), periods (.), at signs (@),
    #   forward slashes (/), back slashes (\\), colons (:), or spaces. The
    #   value can't start or end with a space.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target to attach the attribute with. This parameter
    #   is required if you use the short form ID for a resource instead of
    #   the full ARN.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The ID of the target. You can specify the short form ID for a
    #   resource or the full Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :name,
      :value,
      :target_type,
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can apply up to 10 custom attributes for each resource. You can
    # view the attributes of a resource with [ListAttributes][1]. You can
    # remove existing attributes on a resource with [DeleteAttributes][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListAttributes.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AttributeLimitExceededException AWS API Documentation
    #
    class AttributeLimitExceededException < Aws::EmptyStructure; end

    # The details of the Auto Scaling group for the capacity provider.
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) that identifies the Auto Scaling
    #   group, or the Auto Scaling group name.
    #   @return [String]
    #
    # @!attribute [rw] managed_scaling
    #   The managed scaling settings for the Auto Scaling group capacity
    #   provider.
    #   @return [Types::ManagedScaling]
    #
    # @!attribute [rw] managed_termination_protection
    #   The managed termination protection setting to use for the Auto
    #   Scaling group capacity provider. This determines whether the Auto
    #   Scaling group has managed termination protection. The default is
    #   off.
    #
    #   When using managed termination protection, managed scaling must also
    #   be used otherwise managed termination protection doesn't work.
    #
    #   When managed termination protection is on, Amazon ECS prevents the
    #   Amazon EC2 instances in an Auto Scaling group that contain tasks
    #   from being terminated during a scale-in action. The Auto Scaling
    #   group and each instance in the Auto Scaling group must have instance
    #   protection from scale-in actions on as well. For more information,
    #   see [Instance Protection][1] in the *Auto Scaling User Guide*.
    #
    #   When managed termination protection is off, your Amazon EC2
    #   instances aren't protected from termination when the Auto Scaling
    #   group scales in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #   @return [String]
    #
    # @!attribute [rw] managed_draining
    #   The managed draining option for the Auto Scaling group capacity
    #   provider. When you enable this, Amazon ECS manages and gracefully
    #   drains the EC2 container instances that are in the Auto Scaling
    #   group capacity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AutoScalingGroupProvider AWS API Documentation
    #
    class AutoScalingGroupProvider < Struct.new(
      :auto_scaling_group_arn,
      :managed_scaling,
      :managed_termination_protection,
      :managed_draining)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Auto Scaling group capacity provider to update.
    #
    # @!attribute [rw] managed_scaling
    #   The managed scaling settings for the Auto Scaling group capacity
    #   provider.
    #   @return [Types::ManagedScaling]
    #
    # @!attribute [rw] managed_termination_protection
    #   The managed termination protection setting to use for the Auto
    #   Scaling group capacity provider. This determines whether the Auto
    #   Scaling group has managed termination protection.
    #
    #   When using managed termination protection, managed scaling must also
    #   be used otherwise managed termination protection doesn't work.
    #
    #   When managed termination protection is on, Amazon ECS prevents the
    #   Amazon EC2 instances in an Auto Scaling group that contain tasks
    #   from being terminated during a scale-in action. The Auto Scaling
    #   group and each instance in the Auto Scaling group must have instance
    #   protection from scale-in actions on. For more information, see
    #   [Instance Protection][1] in the *Auto Scaling User Guide*.
    #
    #   When managed termination protection is off, your Amazon EC2
    #   instances aren't protected from termination when the Auto Scaling
    #   group scales in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #   @return [String]
    #
    # @!attribute [rw] managed_draining
    #   The managed draining option for the Auto Scaling group capacity
    #   provider. When you enable this, Amazon ECS manages and gracefully
    #   drains the EC2 container instances that are in the Auto Scaling
    #   group capacity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AutoScalingGroupProviderUpdate AWS API Documentation
    #
    class AutoScalingGroupProviderUpdate < Struct.new(
      :managed_scaling,
      :managed_termination_protection,
      :managed_draining)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the networking details for a task or service.
    # For example
    # `awsVpcConfiguration={subnets=["subnet-12344321"],securityGroups=["sg-12344321"]}`.
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets associated with the task or service. There's
    #   a limit of 16 subnets that can be specified.
    #
    #   <note markdown="1"> All specified subnets must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups associated with the task or service.
    #   If you don't specify a security group, the default security group
    #   for the VPC is used. There's a limit of 5 security groups that can
    #   be specified.
    #
    #   <note markdown="1"> All specified security groups must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Whether the task's elastic network interface receives a public IP
    #   address.
    #
    #   Consider the following when you set this value:
    #
    #   * When you use `create-service` or `update-service`, the default is
    #     `DISABLED`.
    #
    #   * When the service `deploymentController` is `ECS`, the value must
    #     be `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum baseline Amazon EBS bandwidth in megabits per
    # second (Mbps) for instance type selection. This is important for
    # workloads with high storage I/O requirements.
    #
    # @!attribute [rw] min
    #   The minimum baseline Amazon EBS bandwidth in Mbps. Instance types
    #   with lower Amazon EBS bandwidth are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum baseline Amazon EBS bandwidth in Mbps. Instance types
    #   with higher Amazon EBS bandwidth are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/BaselineEbsBandwidthMbpsRequest AWS API Documentation
    #
    class BaselineEbsBandwidthMbpsRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your Amazon Web Services account was blocked. For more information,
    # contact [ Amazon Web Services Support][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/BlockedException AWS API Documentation
    #
    class BlockedException < Aws::EmptyStructure; end

    # The details for a capacity provider.
    #
    # @!attribute [rw] capacity_provider_arn
    #   The Amazon Resource Name (ARN) that identifies the capacity
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The cluster that this capacity provider is associated with. Managed
    #   instances capacity providers are cluster-scoped, meaning they can
    #   only be used within their associated cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the capacity provider. Only capacity providers
    #   in an `ACTIVE` state can be used in a cluster. When a capacity
    #   provider is successfully deleted, it has an `INACTIVE` status.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_provider
    #   The Auto Scaling group settings for the capacity provider.
    #   @return [Types::AutoScalingGroupProvider]
    #
    # @!attribute [rw] managed_instances_provider
    #   The configuration for the Amazon ECS Managed Instances provider.
    #   This includes the infrastructure role, the launch template
    #   configuration, and tag propagation settings.
    #   @return [Types::ManagedInstancesProvider]
    #
    # @!attribute [rw] update_status
    #   The update status of the capacity provider. The following are the
    #   possible states that is returned.
    #
    #   DELETE\_IN\_PROGRESS
    #
    #   : The capacity provider is in the process of being deleted.
    #
    #   DELETE\_COMPLETE
    #
    #   : The capacity provider was successfully deleted and has an
    #     `INACTIVE` status.
    #
    #   DELETE\_FAILED
    #
    #   : The capacity provider can't be deleted. The update status reason
    #     provides further details about why the delete failed.
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The update status reason. This provides further details about the
    #   update status for the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the capacity provider to help you
    #   categorize and organize it. Each tag consists of a key and an
    #   optional value. You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of capacity provider. For Amazon ECS Managed Instances,
    #   this value is `MANAGED_INSTANCES`, indicating that Amazon ECS
    #   manages the underlying Amazon EC2 instances on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CapacityProvider AWS API Documentation
    #
    class CapacityProvider < Struct.new(
      :capacity_provider_arn,
      :name,
      :cluster,
      :status,
      :auto_scaling_group_provider,
      :managed_instances_provider,
      :update_status,
      :update_status_reason,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a capacity provider strategy. A capacity provider
    # strategy can be set when using the [RunTask][1]or [CreateCluster][2]
    # APIs or as the default capacity provider strategy for a cluster with
    # the `CreateCluster` API.
    #
    # Only capacity providers that are already associated with a cluster and
    # have an `ACTIVE` or `UPDATING` status can be used in a capacity
    # provider strategy. The [PutClusterCapacityProviders][3] API is used to
    # associate a capacity provider with a cluster.
    #
    # If specifying a capacity provider that uses an Auto Scaling group, the
    # capacity provider must already be created. New Auto Scaling group
    # capacity providers can be created with the
    # [CreateClusterCapacityProvider][4] API operation.
    #
    # To use a Fargate capacity provider, specify either the `FARGATE` or
    # `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    # available to all accounts and only need to be associated with a
    # cluster to be used in a capacity provider strategy.
    #
    # With `FARGATE_SPOT`, you can run interruption tolerant tasks at a rate
    # that's discounted compared to the `FARGATE` price. `FARGATE_SPOT`
    # runs tasks on spare compute capacity. When Amazon Web Services needs
    # the capacity back, your tasks are interrupted with a two-minute
    # warning. `FARGATE_SPOT` supports Linux tasks with the X86\_64
    # architecture on platform version 1.3.0 or later. `FARGATE_SPOT`
    # supports Linux tasks with the ARM64 architecture on platform version
    # 1.4.0 or later.
    #
    # A capacity provider strategy can contain a maximum of 20 capacity
    # providers.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateClusterCapacityProvider.html
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The *weight* value designates the relative percentage of the total
    #   number of tasks launched that should use the specified capacity
    #   provider. The `weight` value is taken into consideration after the
    #   `base` value, if defined, is satisfied.
    #
    #   If no `weight` value is specified, the default value of `0` is used.
    #   When multiple capacity providers are specified within a capacity
    #   provider strategy, at least one of the capacity providers must have
    #   a weight value greater than zero and any capacity providers with a
    #   weight of `0` can't be used to place tasks. If you specify multiple
    #   capacity providers in a strategy that all have a weight of `0`, any
    #   `RunTask` or `CreateService` actions using the capacity provider
    #   strategy will fail.
    #
    #   Weight value characteristics:
    #
    #   * Weight is considered after the base value is satisfied
    #
    #   * Default value is `0` if not specified
    #
    #   * Valid range: 0 to 1,000
    #
    #   * At least one capacity provider must have a weight greater than
    #     zero
    #
    #   * Capacity providers with weight of `0` cannot place tasks
    #
    #   Task distribution logic:
    #
    #   1.  Base satisfaction: The minimum number of tasks specified by the
    #       base value are placed on that capacity provider
    #
    #   2.  Weight distribution: After base requirements are met, additional
    #       tasks are distributed according to weight ratios
    #
    #   Examples:
    #
    #   Equal Distribution: Two capacity providers both with weight `1` will
    #   split tasks evenly after base requirements are met.
    #
    #   Weighted Distribution: If capacityProviderA has weight `1` and
    #   capacityProviderB has weight `4`, then for every 1 task on A, 4
    #   tasks will run on B.
    #   @return [Integer]
    #
    # @!attribute [rw] base
    #   The *base* value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider for each service. Only one capacity
    #   provider in a capacity provider strategy can have a *base* defined.
    #   If no value is specified, the default value of `0` is used.
    #
    #   Base value characteristics:
    #
    #   * Only one capacity provider in a strategy can have a base defined
    #
    #   * Default value is `0` if not specified
    #
    #   * Valid range: 0 to 100,000
    #
    #   * Base requirements are satisfied first before weight distribution
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CapacityProviderStrategyItem AWS API Documentation
    #
    class CapacityProviderStrategyItem < Struct.new(
      :capacity_provider,
      :weight,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a client action. This client action
    # might be using an action or resource on behalf of a user that doesn't
    # have permissions to use the action or resource. Or, it might be
    # specifying an identifier that isn't valid.
    #
    # @!attribute [rw] message
    #   Message that describes the cause of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A regional grouping of one or more container instances where you can
    # run task requests. Each account receives a default cluster the first
    # time you use the Amazon ECS service, but you may also create other
    # clusters. Clusters may contain more than one instance type
    # simultaneously.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that identifies the cluster. For more
    #   information about the ARN format, see [Amazon Resource Name
    #   (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A user-generated string that you use to identify your cluster.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The execute command and managed storage configuration for the
    #   cluster.
    #   @return [Types::ClusterConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the cluster. The following are the possible states
    #   that are returned.
    #
    #   ACTIVE
    #
    #   : The cluster is ready to accept tasks and if applicable you can
    #     register container instances with the cluster.
    #
    #   PROVISIONING
    #
    #   : The cluster has capacity providers that are associated with it and
    #     the resources needed for the capacity provider are being created.
    #
    #   DEPROVISIONING
    #
    #   : The cluster has capacity providers that are associated with it and
    #     the resources needed for the capacity provider are being deleted.
    #
    #   FAILED
    #
    #   : The cluster has capacity providers that are associated with it and
    #     the resources needed for the capacity provider have failed to
    #     create.
    #
    #   INACTIVE
    #
    #   : The cluster has been deleted. Clusters with an `INACTIVE` status
    #     may remain discoverable in your account for a period of time.
    #     However, this behavior is subject to change in the future. We
    #     don't recommend that you rely on `INACTIVE` clusters persisting.
    #   @return [String]
    #
    # @!attribute [rw] registered_container_instances_count
    #   The number of container instances registered into the cluster. This
    #   includes container instances in both `ACTIVE` and `DRAINING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks in the cluster that are in the `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_tasks_count
    #   The number of tasks in the cluster that are in the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] active_services_count
    #   The number of services that are running on the cluster in an
    #   `ACTIVE` state. You can view these services with [ListServices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   Additional information about your clusters that are separated by
    #   launch type. They include the following:
    #
    #   * runningEC2TasksCount
    #
    #   * RunningFargateTasksCount
    #
    #   * pendingEC2TasksCount
    #
    #   * pendingFargateTasksCount
    #
    #   * activeEC2ServiceCount
    #
    #   * activeFargateServiceCount
    #
    #   * drainingEC2ServiceCount
    #
    #   * drainingFargateServiceCount
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to help you categorize
    #   and organize them. Each tag consists of a key and an optional value.
    #   You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] settings
    #   The settings for the cluster. This parameter indicates whether
    #   CloudWatch Container Insights is on or off for a cluster.
    #   @return [Array<Types::ClusterSetting>]
    #
    # @!attribute [rw] capacity_providers
    #   The capacity providers associated with the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_capacity_provider_strategy
    #   The default capacity provider strategy for the cluster. When
    #   services or tasks are run in the cluster with no launch type or
    #   capacity provider strategy specified, the default capacity provider
    #   strategy is used.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] attachments
    #   The resources attached to a cluster. When using a capacity provider
    #   with a cluster, the capacity provider and associated resources are
    #   returned as cluster attachments.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] attachments_status
    #   The status of the capacity providers associated with the cluster.
    #   The following are the states that are returned.
    #
    #   UPDATE\_IN\_PROGRESS
    #
    #   : The available capacity providers for the cluster are updating.
    #
    #   UPDATE\_COMPLETE
    #
    #   : The capacity providers have successfully updated.
    #
    #   UPDATE\_FAILED
    #
    #   : The capacity provider updates failed.
    #   @return [String]
    #
    # @!attribute [rw] service_connect_defaults
    #   Use this parameter to set a default Service Connect namespace. After
    #   you set a default Service Connect namespace, any new services with
    #   Service Connect turned on that are created in the cluster are added
    #   as client services in the namespace. This setting only applies to
    #   new services that set the `enabled` parameter to `true` in the
    #   `ServiceConnectConfiguration`. You can set the namespace of each
    #   service individually in the `ServiceConnectConfiguration` to
    #   override this default parameter.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ClusterServiceConnectDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :cluster_arn,
      :cluster_name,
      :configuration,
      :status,
      :registered_container_instances_count,
      :running_tasks_count,
      :pending_tasks_count,
      :active_services_count,
      :statistics,
      :tags,
      :settings,
      :capacity_providers,
      :default_capacity_provider_strategy,
      :attachments,
      :attachments_status,
      :service_connect_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # The execute command and managed storage configuration for the cluster.
    #
    # @!attribute [rw] execute_command_configuration
    #   The details of the execute command configuration.
    #   @return [Types::ExecuteCommandConfiguration]
    #
    # @!attribute [rw] managed_storage_configuration
    #   The details of the managed storage configuration.
    #   @return [Types::ManagedStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterConfiguration AWS API Documentation
    #
    class ClusterConfiguration < Struct.new(
      :execute_command_configuration,
      :managed_storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster contains one or more capacity providers that prevent the
    # requested operation. This exception occurs when you try to delete a
    # cluster that still has active capacity providers, including Amazon ECS
    # Managed Instances capacity providers. You must first delete all
    # capacity providers from the cluster before you can delete the cluster
    # itself.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsCapacityProviderException AWS API Documentation
    #
    class ClusterContainsCapacityProviderException < Aws::EmptyStructure; end

    # You can't delete a cluster that has registered container instances.
    # First, deregister the container instances before you can delete the
    # cluster. For more information, see [DeregisterContainerInstance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsContainerInstancesException AWS API Documentation
    #
    class ClusterContainsContainerInstancesException < Aws::EmptyStructure; end

    # You can't delete a cluster that contains services. First, update the
    # service to reduce its desired task count to 0, and then delete the
    # service. For more information, see [UpdateService][1] and
    # [DeleteService][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteService.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsServicesException AWS API Documentation
    #
    class ClusterContainsServicesException < Aws::EmptyStructure; end

    # You can't delete a cluster that has active tasks.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsTasksException AWS API Documentation
    #
    class ClusterContainsTasksException < Aws::EmptyStructure; end

    # The specified cluster wasn't found. You can view your available
    # clusters with [ListClusters][1]. Amazon ECS clusters are Region
    # specific.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListClusters.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterNotFoundException AWS API Documentation
    #
    class ClusterNotFoundException < Aws::EmptyStructure; end

    # Use this parameter to set a default Service Connect namespace. After
    # you set a default Service Connect namespace, any new services with
    # Service Connect turned on that are created in the cluster are added as
    # client services in the namespace. This setting only applies to new
    # services that set the `enabled` parameter to `true` in the
    # `ServiceConnectConfiguration`. You can set the namespace of each
    # service individually in the `ServiceConnectConfiguration` to override
    # this default parameter.
    #
    # Tasks that run in a namespace can use short names to connect to
    # services in the namespace. Tasks can connect to services across all of
    # the clusters in the namespace. Tasks connect through a managed proxy
    # container that collects logs and metrics for increased visibility.
    # Only the tasks that Amazon ECS services create are supported with
    # Service Connect. For more information, see [Service Connect][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @!attribute [rw] namespace
    #   The namespace name or full Amazon Resource Name (ARN) of the Cloud
    #   Map namespace. When you create a service and don't specify a
    #   Service Connect configuration, this namespace is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterServiceConnectDefaults AWS API Documentation
    #
    class ClusterServiceConnectDefaults < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this parameter to set a default Service Connect namespace. After
    # you set a default Service Connect namespace, any new services with
    # Service Connect turned on that are created in the cluster are added as
    # client services in the namespace. This setting only applies to new
    # services that set the `enabled` parameter to `true` in the
    # `ServiceConnectConfiguration`. You can set the namespace of each
    # service individually in the `ServiceConnectConfiguration` to override
    # this default parameter.
    #
    # Tasks that run in a namespace can use short names to connect to
    # services in the namespace. Tasks can connect to services across all of
    # the clusters in the namespace. Tasks connect through a managed proxy
    # container that collects logs and metrics for increased visibility.
    # Only the tasks that Amazon ECS services create are supported with
    # Service Connect. For more information, see [Service Connect][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @!attribute [rw] namespace
    #   The namespace name or full Amazon Resource Name (ARN) of the Cloud
    #   Map namespace that's used when you create a service and don't
    #   specify a Service Connect configuration. The namespace name can
    #   include up to 1024 characters. The name is case-sensitive. The name
    #   can't include greater than (&gt;), less than (&lt;), double
    #   quotation marks ("), or slash (/).
    #
    #   If you enter an existing namespace name or ARN, then that namespace
    #   will be used. Any namespace type is supported. The namespace must be
    #   in this account and this Amazon Web Services Region.
    #
    #   If you enter a new name, a Cloud Map namespace will be created.
    #   Amazon ECS creates a Cloud Map namespace with the "API calls"
    #   method of instance discovery only. This instance discovery method is
    #   the "HTTP" namespace type in the Command Line Interface. Other
    #   types of instance discovery aren't used by Service Connect.
    #
    #   If you update the cluster with an empty string `""` for the
    #   namespace name, the cluster configuration for Service Connect is
    #   removed. Note that the namespace will remain in Cloud Map and must
    #   be deleted separately.
    #
    #   For more information about Cloud Map, see [Working with Services][1]
    #   in the *Cloud Map Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/dg/working-with-services.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterServiceConnectDefaultsRequest AWS API Documentation
    #
    class ClusterServiceConnectDefaultsRequest < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings to use when creating a cluster. This parameter is used to
    # turn on CloudWatch Container Insights with enhanced observability or
    # CloudWatch Container Insights for a cluster.
    #
    # Container Insights with enhanced observability provides all the
    # Container Insights metrics, plus additional task and container
    # metrics. This version supports enhanced observability for Amazon ECS
    # clusters using the Amazon EC2 and Fargate launch types. After you
    # configure Container Insights with enhanced observability on Amazon
    # ECS, Container Insights auto-collects detailed infrastructure
    # telemetry from the cluster level down to the container level in your
    # environment and displays these critical performance data in curated
    # dashboards removing the heavy lifting in observability set-up.
    #
    # For more information, see [Monitor Amazon ECS containers using
    # Container Insights with enhanced observability][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html
    #
    # @!attribute [rw] name
    #   The name of the cluster setting. The value is `containerInsights`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to set for the cluster setting. The supported values are
    #   `enhanced`, `enabled`, and `disabled`.
    #
    #   To use Container Insights with enhanced observability, set the
    #   `containerInsights` account setting to `enhanced`.
    #
    #   To use Container Insights, set the `containerInsights` account
    #   setting to `enabled`.
    #
    #   If a cluster value is specified, it will override the
    #   `containerInsights` value set with [PutAccountSetting][1] or
    #   [PutAccountSettingDefault][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterSetting AWS API Documentation
    #
    class ClusterSetting < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] resource_ids
    #   The existing task ARNs which are already associated with the
    #   `clientToken`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Docker container that's part of a task.
    #
    # @!attribute [rw] container_arn
    #   The Amazon Resource Name (ARN) of the container.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used for the container.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The container image manifest digest.
    #   @return [String]
    #
    # @!attribute [rw] runtime_id
    #   The ID of the Docker container.
    #   @return [String]
    #
    # @!attribute [rw] last_status
    #   The last known status of the container.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code returned from the container.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (1024 max characters) human-readable string to provide
    #   additional details about a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] network_bindings
    #   The network bindings associated with the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces associated with the container.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] health_status
    #   The health status of the container. If health checks aren't
    #   configured for this container in its task definition, then it
    #   reports the health status as `UNKNOWN`.
    #   @return [String]
    #
    # @!attribute [rw] managed_agents
    #   The details of any Amazon ECS managed agents associated with the
    #   container.
    #   @return [Array<Types::ManagedAgent>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units set for the container. The value is `0` if
    #   no value was specified in the container definition when the task
    #   definition was registered.
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory set for the container.
    #   @return [String]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory set for the container.
    #   @return [String]
    #
    # @!attribute [rw] gpu_ids
    #   The IDs of each GPU assigned to the container.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Container AWS API Documentation
    #
    class Container < Struct.new(
      :container_arn,
      :task_arn,
      :name,
      :image,
      :image_digest,
      :runtime_id,
      :last_status,
      :exit_code,
      :reason,
      :network_bindings,
      :network_interfaces,
      :health_status,
      :managed_agents,
      :cpu,
      :memory,
      :memory_reservation,
      :gpu_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container definitions are used in task definitions to describe the
    # different containers that are launched as part of a task.
    #
    # @!attribute [rw] name
    #   The name of a container. If you're linking multiple containers
    #   together in a task definition, the `name` of one container can be
    #   entered in the `links` of another container to connect the
    #   containers. Up to 255 letters (uppercase and lowercase), numbers,
    #   underscores, and hyphens are allowed. This parameter maps to `name`
    #   in the docker container create command and the `--name` option to
    #   docker run.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. By default, images in the Docker Hub registry
    #   are available. Other repositories are specified with either `
    #   repository-url/image:tag ` or ` repository-url/image@digest `. For
    #   images using tags (repository-url/image:tag), up to 255 characters
    #   total are allowed, including letters (uppercase and lowercase),
    #   numbers, hyphens, underscores, colons, periods, forward slashes, and
    #   number signs (#). For images using digests
    #   (repository-url/image@digest), the 255 character limit applies only
    #   to the repository URL and image name (everything before the @ sign).
    #   The only supported hash function is sha256, and the hash value after
    #   sha256: must be exactly 64 characters (only letters A-F, a-f, and
    #   numbers 0-9 are allowed). This parameter maps to `Image` in the
    #   docker container create command and the `IMAGE` parameter of docker
    #   run.
    #
    #   * When a new task starts, the Amazon ECS container agent pulls the
    #     latest version of the specified image and tag for the container to
    #     use. However, subsequent updates to a repository image aren't
    #     propagated to already running tasks.
    #
    #   * Images in Amazon ECR repositories can be specified by either using
    #     the full `registry/repository:tag` or
    #     `registry/repository@digest`. For example,
    #     `012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>:latest`
    #     or
    #     `012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE`.
    #
    #   * Images in official repositories on Docker Hub use a single name
    #     (for example, `ubuntu` or `mongo`).
    #
    #   * Images in other repositories on Docker Hub are qualified with an
    #     organization name (for example, `amazon/amazon-ecs-agent`).
    #
    #   * Images in other online repositories are qualified further by a
    #     domain name (for example, `quay.io/assemblyline/ubuntu`).
    #   @return [String]
    #
    # @!attribute [rw] repository_credentials
    #   The private repository authentication credentials to use.
    #   @return [Types::RepositoryCredentials]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container. This parameter
    #   maps to `CpuShares` in the docker container create commandand the
    #   `--cpu-shares` option to docker run.
    #
    #   This field is optional for tasks using the Fargate launch type, and
    #   the only requirement is that the total amount of CPU reserved for
    #   all containers within a task be lower than the task-level `cpu`
    #   value.
    #
    #   <note markdown="1"> You can determine the number of CPU units that are available per EC2
    #   instance type by multiplying the vCPUs listed for that instance type
    #   on the [Amazon EC2 Instances][1] detail page by 1,024.
    #
    #    </note>
    #
    #   Linux containers share unallocated CPU units with other containers
    #   on the container instance with the same ratio as their allocated
    #   amount. For example, if you run a single-container task on a
    #   single-core instance type with 512 CPU units specified for that
    #   container, and that's the only task running on the container
    #   instance, that container could use the full 1,024 CPU unit share at
    #   any given time. However, if you launched another copy of the same
    #   task on that container instance, each task is guaranteed a minimum
    #   of 512 CPU units when needed. Moreover, each container could float
    #   to higher CPU usage if the other container was not using it. If both
    #   tasks were 100% active all of the time, they would be limited to 512
    #   CPU units.
    #
    #   On Linux container instances, the Docker daemon on the container
    #   instance uses the CPU value to calculate the relative CPU share
    #   ratios for running containers. The minimum valid CPU share value
    #   that the Linux kernel allows is 2, and the maximum valid CPU share
    #   value that the Linux kernel allows is 262144. However, the CPU
    #   parameter isn't required, and you can use CPU values below 2 or
    #   above 262144 in your container definitions. For CPU values below 2
    #   (including null) or above 262144, the behavior varies based on your
    #   Amazon ECS container agent version:
    #
    #   * **Agent versions less than or equal to 1.1.0:** Null and zero CPU
    #     values are passed to Docker as 0, which Docker then converts to
    #     1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which
    #     the Linux kernel converts to two CPU shares.
    #
    #   * **Agent versions greater than or equal to 1.2.0:** Null, zero, and
    #     CPU values of 1 are passed to Docker as 2.
    #
    #   * **Agent versions greater than or equal to 1.84.0:** CPU values
    #     greater than 256 vCPU are passed to Docker as 256, which is
    #     equivalent to 262144 CPU shares.
    #
    #   On Windows container instances, the CPU limit is enforced as an
    #   absolute limit, or a quota. Windows containers only have access to
    #   the specified amount of CPU that's described in the task
    #   definition. A null or zero CPU value is passed to Docker as `0`,
    #   which Windows interprets as 1% of one CPU.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory to present to the container. If your
    #   container attempts to exceed the memory specified here, the
    #   container is killed. The total amount of memory reserved for all
    #   containers within a task must be lower than the task `memory` value,
    #   if one is specified. This parameter maps to `Memory` in the docker
    #   container create command and the `--memory` option to docker run.
    #
    #   If using the Fargate launch type, this parameter is optional.
    #
    #   If using the EC2 launch type, you must specify either a task-level
    #   memory value or a container-level memory value. If you specify both
    #   a container-level `memory` and `memoryReservation` value, `memory`
    #   must be greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance where the
    #   container is placed. Otherwise, the value of `memory` is used.
    #
    #   The Docker 20.10.0 or later daemon reserves a minimum of 6 MiB of
    #   memory for a container. So, don't specify less than 6 MiB of memory
    #   for your containers.
    #
    #   The Docker 19.03.13-ce or earlier daemon reserves a minimum of 4 MiB
    #   of memory for a container. So, don't specify less than 4 MiB of
    #   memory for your containers.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container. When
    #   system memory is under heavy contention, Docker attempts to keep the
    #   container memory to this soft limit. However, your container can
    #   consume more memory when it needs to, up to either the hard limit
    #   specified with the `memory` parameter (if applicable), or all of the
    #   available memory on the container instance, whichever comes first.
    #   This parameter maps to `MemoryReservation` in the docker container
    #   create command and the `--memory-reservation` option to docker run.
    #
    #   If a task-level memory value is not specified, you must specify a
    #   non-zero integer for one or both of `memory` or `memoryReservation`
    #   in a container definition. If you specify both, `memory` must be
    #   greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance where the
    #   container is placed. Otherwise, the value of `memory` is used.
    #
    #   For example, if your container normally uses 128 MiB of memory, but
    #   occasionally bursts to 256 MiB of memory for short periods of time,
    #   you can set a `memoryReservation` of 128 MiB, and a `memory` hard
    #   limit of 300 MiB. This configuration would allow the container to
    #   only reserve 128 MiB of memory from the remaining resources on the
    #   container instance, but also allow the container to consume more
    #   memory resources when needed.
    #
    #   The Docker 20.10.0 or later daemon reserves a minimum of 6 MiB of
    #   memory for a container. So, don't specify less than 6 MiB of memory
    #   for your containers.
    #
    #   The Docker 19.03.13-ce or earlier daemon reserves a minimum of 4 MiB
    #   of memory for a container. So, don't specify less than 4 MiB of
    #   memory for your containers.
    #   @return [Integer]
    #
    # @!attribute [rw] links
    #   The `links` parameter allows containers to communicate with each
    #   other without the need for port mappings. This parameter is only
    #   supported if the network mode of a task definition is `bridge`. The
    #   `name:internalName` construct is analogous to `name:alias` in Docker
    #   links. Up to 255 letters (uppercase and lowercase), numbers,
    #   underscores, and hyphens are allowed.. This parameter maps to
    #   `Links` in the docker container create command and the `--link`
    #   option to docker run.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   Containers that are collocated on a single container instance may be
    #   able to communicate with each other without requiring links or host
    #   port mappings. Network isolation is achieved on the container
    #   instance using security groups and VPC settings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port_mappings
    #   The list of port mappings for the container. Port mappings allow
    #   containers to access ports on the host container instance to send or
    #   receive traffic.
    #
    #   For task definitions that use the `awsvpc` network mode, only
    #   specify the `containerPort`. The `hostPort` can be left blank or it
    #   must be the same value as the `containerPort`.
    #
    #   Port mappings on Windows use the `NetNAT` gateway address rather
    #   than `localhost`. There's no loopback for port mappings on Windows,
    #   so you can't access a container's mapped port from the host
    #   itself.
    #
    #   This parameter maps to `PortBindings` in the docker container create
    #   command and the `--publish` option to docker run. If the network
    #   mode of a task definition is set to `none`, then you can't specify
    #   port mappings. If the network mode of a task definition is set to
    #   `host`, then host ports must either be undefined or they must match
    #   the container port in the port mapping.
    #
    #   <note markdown="1"> After a task reaches the `RUNNING` status, manual and automatic host
    #   and container port assignments are visible in the **Network
    #   Bindings** section of a container description for a selected task in
    #   the Amazon ECS console. The assignments are also visible in the
    #   `networkBindings` section [DescribeTasks][1] responses.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #   @return [Array<Types::PortMapping>]
    #
    # @!attribute [rw] essential
    #   If the `essential` parameter of a container is marked as `true`, and
    #   that container fails or stops for any reason, all other containers
    #   that are part of the task are stopped. If the `essential` parameter
    #   of a container is marked as `false`, its failure doesn't affect the
    #   rest of the containers in a task. If this parameter is omitted, a
    #   container is assumed to be essential.
    #
    #   All tasks must have at least one essential container. If you have an
    #   application that's composed of multiple containers, group
    #   containers that are used for a common purpose into components, and
    #   separate the different components into multiple task definitions.
    #   For more information, see [Application Architecture][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html
    #   @return [Boolean]
    #
    # @!attribute [rw] restart_policy
    #   The restart policy for a container. When you set up a restart
    #   policy, Amazon ECS can restart the container without needing to
    #   replace the task. For more information, see [Restart individual
    #   containers in Amazon ECS tasks with container restart policies][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-restart-policy.html
    #   @return [Types::ContainerRestartPolicy]
    #
    # @!attribute [rw] entry_point
    #   Early versions of the Amazon ECS container agent don't properly
    #   handle `entryPoint` parameters. If you have problems using
    #   `entryPoint`, update your container agent or enter your commands and
    #   arguments as `command` array items instead.
    #
    #   The entry point that's passed to the container. This parameter maps
    #   to `Entrypoint` in the docker container create command and the
    #   `--entrypoint` option to docker run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   The command that's passed to the container. This parameter maps to
    #   `Cmd` in the docker container create command and the `COMMAND`
    #   parameter to docker run. If there are multiple arguments, each
    #   argument is a separated string in the array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container. This parameter
    #   maps to `Env` in the docker container create command and the `--env`
    #   option to docker run.
    #
    #   We don't recommend that you use plaintext environment variables for
    #   sensitive information, such as credential data.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container. This parameter maps to the `--env-file` option to docker
    #   run.
    #
    #   You can specify up to ten environment files. The file must have a
    #   `.env` file extension. Each line in an environment file contains an
    #   environment variable in `VARIABLE=VALUE` format. Lines beginning
    #   with `#` are treated as comments and are ignored.
    #
    #   If there are environment variables specified using the `environment`
    #   parameter in a container definition, they take precedence over the
    #   variables contained within an environment file. If multiple
    #   environment files are specified that contain the same variable,
    #   they're processed from the top down. We recommend that you use
    #   unique variable names. For more information, see [Specifying
    #   Environment Variables][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html
    #   @return [Array<Types::EnvironmentFile>]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container.
    #
    #   This parameter maps to `Volumes` in the docker container create
    #   command and the `--volume` option to docker run.
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers can't mount directories on a
    #   different drive, and mount point can't be across drives.
    #   @return [Array<Types::MountPoint>]
    #
    # @!attribute [rw] volumes_from
    #   Data volumes to mount from another container. This parameter maps to
    #   `VolumesFrom` in the docker container create command and the
    #   `--volumes-from` option to docker run.
    #   @return [Array<Types::VolumeFrom>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the default Docker
    #   container configuration, such as Linux kernel capabilities. For more
    #   information see [KernelCapabilities][1].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html
    #   @return [Types::LinuxParameters]
    #
    # @!attribute [rw] secrets
    #   The secrets to pass to the container. For more information, see
    #   [Specifying Sensitive Data][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
    #
    # @!attribute [rw] depends_on
    #   The dependencies defined for container startup and shutdown. A
    #   container can contain multiple dependencies on other containers in a
    #   task definition. When a dependency is defined for container startup,
    #   for container shutdown it is reversed.
    #
    #   For tasks using the EC2 launch type, the container instances require
    #   at least version 1.26.0 of the container agent to turn on container
    #   dependencies. However, we recommend using the latest container agent
    #   version. For information about checking your agent version and
    #   updating to the latest version, see [Updating the Amazon ECS
    #   Container Agent][1] in the *Amazon Elastic Container Service
    #   Developer Guide*. If you're using an Amazon ECS-optimized Linux
    #   AMI, your instance needs at least version 1.26.0-1 of the `ecs-init`
    #   package. If your container instances are launched from version
    #   `20190301` or later, then they contain the required versions of the
    #   container agent and `ecs-init`. For more information, see [Amazon
    #   ECS-optimized Linux AMI][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   For tasks using the Fargate launch type, the task or service
    #   requires the following platforms:
    #
    #   * Linux platform version `1.3.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Array<Types::ContainerDependency>]
    #
    # @!attribute [rw] start_timeout
    #   Time duration (in seconds) to wait before giving up on resolving
    #   dependencies for a container. For example, you specify two
    #   containers in a task definition with containerA having a dependency
    #   on containerB reaching a `COMPLETE`, `SUCCESS`, or `HEALTHY` status.
    #   If a `startTimeout` value is specified for containerB and it
    #   doesn't reach the desired status within that time then containerA
    #   gives up and not start. This results in the task transitioning to a
    #   `STOPPED` state.
    #
    #   <note markdown="1"> When the `ECS_CONTAINER_START_TIMEOUT` container agent configuration
    #   variable is used, it's enforced independently from this start
    #   timeout value.
    #
    #    </note>
    #
    #   For tasks using the Fargate launch type, the task or service
    #   requires the following platforms:
    #
    #   * Linux platform version `1.3.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #   For tasks using the EC2 launch type, your container instances
    #   require at least version `1.26.0` of the container agent to use a
    #   container start timeout value. However, we recommend using the
    #   latest container agent version. For information about checking your
    #   agent version and updating to the latest version, see [Updating the
    #   Amazon ECS Container Agent][1] in the *Amazon Elastic Container
    #   Service Developer Guide*. If you're using an Amazon ECS-optimized
    #   Linux AMI, your instance needs at least version `1.26.0-1` of the
    #   `ecs-init` package. If your container instances are launched from
    #   version `20190301` or later, then they contain the required versions
    #   of the container agent and `ecs-init`. For more information, see
    #   [Amazon ECS-optimized Linux AMI][2] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   The valid values for Fargate are 2-120 seconds.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Integer]
    #
    # @!attribute [rw] stop_timeout
    #   Time duration (in seconds) to wait before the container is
    #   forcefully killed if it doesn't exit normally on its own.
    #
    #   For tasks using the Fargate launch type, the task or service
    #   requires the following platforms:
    #
    #   * Linux platform version `1.3.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #   For tasks that use the Fargate launch type, the max stop timeout
    #   value is 120 seconds and if the parameter is not specified, the
    #   default value of 30 seconds is used.
    #
    #   For tasks that use the EC2 launch type, if the `stopTimeout`
    #   parameter isn't specified, the value set for the Amazon ECS
    #   container agent configuration variable `ECS_CONTAINER_STOP_TIMEOUT`
    #   is used. If neither the `stopTimeout` parameter or the
    #   `ECS_CONTAINER_STOP_TIMEOUT` agent configuration variable are set,
    #   then the default values of 30 seconds for Linux containers and 30
    #   seconds on Windows containers are used. Your container instances
    #   require at least version 1.26.0 of the container agent to use a
    #   container stop timeout value. However, we recommend using the latest
    #   container agent version. For information about checking your agent
    #   version and updating to the latest version, see [Updating the Amazon
    #   ECS Container Agent][1] in the *Amazon Elastic Container Service
    #   Developer Guide*. If you're using an Amazon ECS-optimized Linux
    #   AMI, your instance needs at least version 1.26.0-1 of the `ecs-init`
    #   package. If your container instances are launched from version
    #   `20190301` or later, then they contain the required versions of the
    #   container agent and `ecs-init`. For more information, see [Amazon
    #   ECS-optimized Linux AMI][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   The valid values for Fargate are 2-120 seconds.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Integer]
    #
    # @!attribute [rw] version_consistency
    #   Specifies whether Amazon ECS will resolve the container image tag
    #   provided in the container definition to an image digest. By default,
    #   the value is `enabled`. If you set the value for a container as
    #   `disabled`, Amazon ECS will not resolve the provided container image
    #   tag to a digest and will use the original image URI specified in the
    #   container definition for deployment. For more information about
    #   container image resolution, see [Container image resolution][1] in
    #   the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html#deployment-container-image-stability
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   The hostname to use for your container. This parameter maps to
    #   `Hostname` in the docker container create command and the
    #   `--hostname` option to docker run.
    #
    #   <note markdown="1"> The `hostname` parameter is not supported if you're using the
    #   `awsvpc` network mode.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user to use inside the container. This parameter maps to `User`
    #   in the docker container create command and the `--user` option to
    #   docker run.
    #
    #   When running tasks using the `host` network mode, don't run
    #   containers using the root user (UID 0). We recommend using a
    #   non-root user for better security.
    #
    #   You can specify the `user` using the following formats. If
    #   specifying a UID or GID, you must specify it as a positive integer.
    #
    #   * `user`
    #
    #   * `user:group`
    #
    #   * `uid`
    #
    #   * `uid:gid`
    #
    #   * `user:gid`
    #
    #   * `uid:group`
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The working directory to run commands inside the container in. This
    #   parameter maps to `WorkingDir` in the docker container create
    #   command and the `--workdir` option to docker run.
    #   @return [String]
    #
    # @!attribute [rw] disable_networking
    #   When this parameter is true, networking is off within the container.
    #   This parameter maps to `NetworkDisabled` in the docker container
    #   create command.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   privileges on the host container instance (similar to the `root`
    #   user). This parameter maps to `Privileged` in the docker container
    #   create command and the `--privileged` option to docker run
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   When this parameter is true, the container is given read-only access
    #   to its root file system. This parameter maps to `ReadonlyRootfs` in
    #   the docker container create command and the `--read-only` option to
    #   docker run.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_servers
    #   A list of DNS servers that are presented to the container. This
    #   parameter maps to `Dns` in the docker container create command and
    #   the `--dns` option to docker run.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_search_domains
    #   A list of DNS search domains that are presented to the container.
    #   This parameter maps to `DnsSearch` in the docker container create
    #   command and the `--dns-search` option to docker run.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] extra_hosts
    #   A list of hostnames and IP address mappings to append to the
    #   `/etc/hosts` file on the container. This parameter maps to
    #   `ExtraHosts` in the docker container create command and the
    #   `--add-host` option to docker run.
    #
    #   <note markdown="1"> This parameter isn't supported for Windows containers or tasks that
    #   use the `awsvpc` network mode.
    #
    #    </note>
    #   @return [Array<Types::HostEntry>]
    #
    # @!attribute [rw] docker_security_options
    #   A list of strings to provide custom configuration for multiple
    #   security systems. This field isn't valid for containers in tasks
    #   using the Fargate launch type.
    #
    #   For Linux tasks on EC2, this parameter can be used to reference
    #   custom labels for SELinux and AppArmor multi-level security systems.
    #
    #   For any tasks on EC2, this parameter can be used to reference a
    #   credential spec file that configures a container for Active
    #   Directory authentication. For more information, see [Using gMSAs for
    #   Windows Containers][1] and [Using gMSAs for Linux Containers][2] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   This parameter maps to `SecurityOpt` in the docker container create
    #   command and the `--security-opt` option to docker run.
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register with the `ECS_SELINUX_CAPABLE=true` or
    #   `ECS_APPARMOR_CAPABLE=true` environment variables before containers
    #   placed on that instance can use these security options. For more
    #   information, see [Amazon ECS Container Agent Configuration][3] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #   Valid values: "no-new-privileges" \| "apparmor:PROFILE" \|
    #   "label:value" \| "credentialspec:CredentialSpecFilePath"
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/linux-gmsa.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] interactive
    #   When this parameter is `true`, you can deploy containerized
    #   applications that require `stdin` or a `tty` to be allocated. This
    #   parameter maps to `OpenStdin` in the docker container create command
    #   and the `--interactive` option to docker run.
    #   @return [Boolean]
    #
    # @!attribute [rw] pseudo_terminal
    #   When this parameter is `true`, a TTY is allocated. This parameter
    #   maps to `Tty` in the docker container create command and the `--tty`
    #   option to docker run.
    #   @return [Boolean]
    #
    # @!attribute [rw] docker_labels
    #   A key/value map of labels to add to the container. This parameter
    #   maps to `Labels` in the docker container create command and the
    #   `--label` option to docker run. This parameter requires version 1.18
    #   of the Docker Remote API or greater on your container instance. To
    #   check the Docker Remote API version on your container instance, log
    #   in to your container instance and run the following command: `sudo
    #   docker version --format '{{.Server.APIVersion}}'`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimits` to set in the container. If a `ulimit` value is
    #   specified in a task definition, it overrides the default values set
    #   by Docker. This parameter maps to `Ulimits` in the docker container
    #   create command and the `--ulimit` option to docker run. Valid naming
    #   values are displayed in the [Ulimit][1] data type.
    #
    #   Amazon ECS tasks hosted on Fargate use the default resource limit
    #   values set by the operating system with the exception of the
    #   `nofile` resource limit parameter which Fargate overrides. The
    #   `nofile` resource limit sets a restriction on the number of open
    #   files that a container can use. The default `nofile` soft limit is `
    #   65535` and the default hard limit is `65535`.
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '{{.Server.APIVersion}}'`
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_Ulimit.html
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   This parameter maps to `LogConfig` in the docker container create
    #   command and the `--log-driver` option to docker run. By default,
    #   containers use the same logging driver that the Docker daemon uses.
    #   However the container can use a different logging driver than the
    #   Docker daemon by specifying a log driver with this parameter in the
    #   container definition. To use a different logging driver for a
    #   container, the log system must be configured properly on the
    #   container instance (or on a different log server for remote logging
    #   options).
    #
    #   <note markdown="1"> Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the [LogConfiguration][1]
    #   data type). Additional log drivers may be available in future
    #   releases of the Amazon ECS container agent.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '{{.Server.APIVersion}}'`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS Container Agent
    #   Configuration][2] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] health_check
    #   The container health check command and associated configuration
    #   parameters for the container. This parameter maps to `HealthCheck`
    #   in the docker container create command and the `HEALTHCHECK`
    #   parameter of docker run.
    #   @return [Types::HealthCheck]
    #
    # @!attribute [rw] system_controls
    #   A list of namespaced kernel parameters to set in the container. This
    #   parameter maps to `Sysctls` in the docker container create command
    #   and the `--sysctl` option to docker run. For example, you can
    #   configure `net.ipv4.tcp_keepalive_time` setting to maintain longer
    #   lived connections.
    #   @return [Array<Types::SystemControl>]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container. The only
    #   supported resource is a GPU.
    #   @return [Array<Types::ResourceRequirement>]
    #
    # @!attribute [rw] firelens_configuration
    #   The FireLens configuration for the container. This is used to
    #   specify and configure a log router for container logs. For more
    #   information, see [Custom Log Routing][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html
    #   @return [Types::FirelensConfiguration]
    #
    # @!attribute [rw] credential_specs
    #   A list of ARNs in SSM or Amazon S3 to a credential spec (`CredSpec`)
    #   file that configures the container for Active Directory
    #   authentication. We recommend that you use this parameter instead of
    #   the `dockerSecurityOptions`. The maximum number of ARNs is 1.
    #
    #   There are two formats for each ARN.
    #
    #   credentialspecdomainless:MyARN
    #
    #   : You use `credentialspecdomainless:MyARN` to provide a `CredSpec`
    #     with an additional section for a secret in Secrets Manager. You
    #     provide the login credentials to the domain in the secret.
    #
    #     Each task that runs on any container instance can join different
    #     domains.
    #
    #     You can use this format without joining the container instance to
    #     a domain.
    #
    #   credentialspec:MyARN
    #
    #   : You use `credentialspec:MyARN` to provide a `CredSpec` for a
    #     single domain.
    #
    #     You must join the container instance to the domain before you
    #     start any tasks that use this task definition.
    #
    #   In both formats, replace `MyARN` with the ARN in SSM or Amazon S3.
    #
    #   If you provide a `credentialspecdomainless:MyARN`, the `credspec`
    #   must provide a ARN in Secrets Manager for a secret containing the
    #   username, password, and the domain to connect to. For better
    #   security, the instance isn't joined to the domain for domainless
    #   authentication. Other applications on the instance can't use the
    #   domainless credentials. You can use this parameter to run tasks on
    #   the same instance, even it the tasks need to join different domains.
    #   For more information, see [Using gMSAs for Windows Containers][1]
    #   and [Using gMSAs for Linux Containers][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/linux-gmsa.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerDefinition AWS API Documentation
    #
    class ContainerDefinition < Struct.new(
      :name,
      :image,
      :repository_credentials,
      :cpu,
      :memory,
      :memory_reservation,
      :links,
      :port_mappings,
      :essential,
      :restart_policy,
      :entry_point,
      :command,
      :environment,
      :environment_files,
      :mount_points,
      :volumes_from,
      :linux_parameters,
      :secrets,
      :depends_on,
      :start_timeout,
      :stop_timeout,
      :version_consistency,
      :hostname,
      :user,
      :working_directory,
      :disable_networking,
      :privileged,
      :readonly_root_filesystem,
      :dns_servers,
      :dns_search_domains,
      :extra_hosts,
      :docker_security_options,
      :interactive,
      :pseudo_terminal,
      :docker_labels,
      :ulimits,
      :log_configuration,
      :health_check,
      :system_controls,
      :resource_requirements,
      :firelens_configuration,
      :credential_specs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dependencies defined for container startup and shutdown. A
    # container can contain multiple dependencies. When a dependency is
    # defined for container startup, for container shutdown it is reversed.
    #
    # Your Amazon ECS container instances require at least version 1.26.0 of
    # the container agent to use container dependencies. However, we
    # recommend using the latest container agent version. For information
    # about checking your agent version and updating to the latest version,
    # see [Updating the Amazon ECS Container Agent][1] in the *Amazon
    # Elastic Container Service Developer Guide*. If you're using an Amazon
    # ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1
    # of the `ecs-init` package. If your container instances are launched
    # from version `20190301` or later, then they contain the required
    # versions of the container agent and `ecs-init`. For more information,
    # see [Amazon ECS-optimized Linux AMI][2] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # <note markdown="1"> For tasks that use the Fargate launch type, the task or service
    # requires the following platforms:
    #
    #  * Linux platform version `1.3.0` or later.
    #
    # * Windows platform version `1.0.0` or later.
    #
    #  </note>
    #
    # For more information about how to create a container dependency, see
    # [Container dependency][3] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/example_task_definitions.html#example_task_definition-containerdependency
    #
    # @!attribute [rw] container_name
    #   The name of a container.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The dependency condition of the container. The following are the
    #   available conditions and their behavior:
    #
    #   * `START` - This condition emulates the behavior of links and
    #     volumes today. It validates that a dependent container is started
    #     before permitting other containers to start.
    #
    #   * `COMPLETE` - This condition validates that a dependent container
    #     runs to completion (exits) before permitting other containers to
    #     start. This can be useful for nonessential containers that run a
    #     script and then exit. This condition can't be set on an essential
    #     container.
    #
    #   * `SUCCESS` - This condition is the same as `COMPLETE`, but it also
    #     requires that the container exits with a `zero` status. This
    #     condition can't be set on an essential container.
    #
    #   * `HEALTHY` - This condition validates that the dependent container
    #     passes its Docker health check before permitting other containers
    #     to start. This requires that the dependent container has health
    #     checks configured. This condition is confirmed only at task
    #     startup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerDependency AWS API Documentation
    #
    class ContainerDependency < Struct.new(
      :container_name,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the container image a service revision uses.
    #
    # To ensure that all tasks in a service use the same container image,
    # Amazon ECS resolves container image names and any image tags specified
    # in the task definition to container image digests.
    #
    # After the container image digest has been established, Amazon ECS uses
    # the digest to start any other desired tasks, and for any future
    # service and service revision updates. This leads to all tasks in a
    # service always running identical container images, resulting in
    # version consistency for your software. For more information, see
    # [Container image resolution][1] in the Amazon ECS Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html#deployment-container-image-stability
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The container image digest.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The container image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerImage AWS API Documentation
    #
    class ContainerImage < Struct.new(
      :container_name,
      :image_digest,
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon EC2 or External instance that's running the Amazon ECS
    # agent and has been registered with a cluster.
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the container instance. For more
    #   information about the ARN format, see [Amazon Resource Name
    #   (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of the container instance. For Amazon EC2 instances, this
    #   value is the Amazon EC2 instance ID. For external instances, this
    #   value is the Amazon Web Services Systems Manager managed instance
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_name
    #   The capacity provider that's associated with the container
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the container instance. Every time a
    #   container instance experiences a change that triggers a CloudWatch
    #   event, the version counter is incremented. If you're replicating
    #   your Amazon ECS container instance state with CloudWatch Events, you
    #   can compare the version of a container instance reported by the
    #   Amazon ECS APIs with the version reported in CloudWatch Events for
    #   the container instance (inside the `detail` object) to verify that
    #   the version in your event stream is current.
    #   @return [Integer]
    #
    # @!attribute [rw] version_info
    #   The version information for the Amazon ECS container agent and
    #   Docker daemon running on the container instance.
    #   @return [Types::VersionInfo]
    #
    # @!attribute [rw] remaining_resources
    #   For CPU and memory resource types, this parameter describes the
    #   remaining CPU and memory that wasn't already allocated to tasks and
    #   is therefore available for new tasks. For port resource types, this
    #   parameter describes the ports that were reserved by the Amazon ECS
    #   container agent (at instance registration time) and any task
    #   containers that have reserved port mappings on the host (with the
    #   `host` or `bridge` network mode). Any port that's not specified
    #   here is available for new tasks.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] registered_resources
    #   For CPU and memory resource types, this parameter describes the
    #   amount of each resource that was available on the container instance
    #   when the container agent registered it with Amazon ECS. This value
    #   represents the total amount of CPU and memory that can be allocated
    #   on this container instance to tasks. For port resource types, this
    #   parameter describes the ports that were reserved by the Amazon ECS
    #   container agent when it registered the container instance with
    #   Amazon ECS.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] status
    #   The status of the container instance. The valid values are
    #   `REGISTERING`, `REGISTRATION_FAILED`, `ACTIVE`, `INACTIVE`,
    #   `DEREGISTERING`, or `DRAINING`.
    #
    #   If your account has opted in to the `awsvpcTrunking` account
    #   setting, then any newly registered container instance will
    #   transition to a `REGISTERING` status while the trunk elastic network
    #   interface is provisioned for the instance. If the registration
    #   fails, the instance will transition to a `REGISTRATION_FAILED`
    #   status. You can describe the container instance and see the reason
    #   for failure in the `statusReason` parameter. Once the container
    #   instance is terminated, the instance transitions to a
    #   `DEREGISTERING` status while the trunk elastic network interface is
    #   deprovisioned. The instance then transitions to an `INACTIVE`
    #   status.
    #
    #   The `ACTIVE` status indicates that the container instance can accept
    #   tasks. The `DRAINING` indicates that new tasks aren't placed on the
    #   container instance and any service tasks running on the container
    #   instance are removed if possible. For more information, see
    #   [Container instance draining][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the container instance reached its current status.
    #   @return [String]
    #
    # @!attribute [rw] agent_connected
    #   This parameter returns `true` if the agent is connected to Amazon
    #   ECS. An instance with an agent that may be unhealthy or stopped
    #   return `false`. Only instances connected to an agent can accept task
    #   placement requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks on the container instance that have a desired
    #   status (`desiredStatus`) of `RUNNING`.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_tasks_count
    #   The number of tasks on the container instance that are in the
    #   `PENDING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_update_status
    #   The status of the most recent agent update. If an update wasn't
    #   ever requested, this value is `NULL`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes set for the container instance, either by the Amazon
    #   ECS container agent at instance registration or manually with the
    #   [PutAttributes][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAttributes.html
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] registered_at
    #   The Unix timestamp for the time when the container instance was
    #   registered.
    #   @return [Time]
    #
    # @!attribute [rw] attachments
    #   The resources attached to a container instance, such as an elastic
    #   network interface.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the container instance to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] health_status
    #   An object representing the health status of the container instance.
    #   @return [Types::ContainerInstanceHealthStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerInstance AWS API Documentation
    #
    class ContainerInstance < Struct.new(
      :container_instance_arn,
      :ec2_instance_id,
      :capacity_provider_name,
      :version,
      :version_info,
      :remaining_resources,
      :registered_resources,
      :status,
      :status_reason,
      :agent_connected,
      :running_tasks_count,
      :pending_tasks_count,
      :agent_update_status,
      :attributes,
      :registered_at,
      :attachments,
      :tags,
      :health_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the health status of the container instance.
    #
    # @!attribute [rw] overall_status
    #   The overall health status of the container instance. This is an
    #   aggregate status of all container instance health checks.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   An array of objects representing the details of the container
    #   instance health status.
    #   @return [Array<Types::InstanceHealthCheckResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerInstanceHealthStatus AWS API Documentation
    #
    class ContainerInstanceHealthStatus < Struct.new(
      :overall_status,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that are sent to a container. An empty container
    # override can be passed in. An example of an empty container override
    # is `{"containerOverrides": [ ] }`. If a non-empty container override
    # is specified, the `name` parameter must be included.
    #
    # You can use Secrets Manager or Amazon Web Services Systems Manager
    # Parameter Store to store the sensitive data. For more information, see
    # [Retrieve secrets through environment variables][1] in the Amazon ECS
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/secrets-envvar.html
    #
    # @!attribute [rw] name
    #   The name of the container that receives the override. This parameter
    #   is required if any override is specified.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the task definition. You must also
    #   specify a container name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the task definition. You must also specify a
    #   container name.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container, instead of the value from the container definition.
    #   @return [Array<Types::EnvironmentFile>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container, instead of the
    #   default value from the task definition. You must also specify a
    #   container name.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container,
    #   instead of the default value from the task definition. If your
    #   container attempts to exceed the memory specified here, the
    #   container is killed. You must also specify a container name.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container,
    #   instead of the default value from the task definition. You must also
    #   specify a container name.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container, instead
    #   of the default value from the task definition. The only supported
    #   resource is a GPU.
    #   @return [Array<Types::ResourceRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerOverride AWS API Documentation
    #
    class ContainerOverride < Struct.new(
      :name,
      :command,
      :environment,
      :environment_files,
      :cpu,
      :memory,
      :memory_reservation,
      :resource_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can enable a restart policy for each container defined in your
    # task definition, to overcome transient failures faster and maintain
    # task availability. When you enable a restart policy for a container,
    # Amazon ECS can restart the container if it exits, without needing to
    # replace the task. For more information, see [Restart individual
    # containers in Amazon ECS tasks with container restart policies][1] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-restart-policy.html
    #
    # @!attribute [rw] enabled
    #   Specifies whether a restart policy is enabled for the container.
    #   @return [Boolean]
    #
    # @!attribute [rw] ignored_exit_codes
    #   A list of exit codes that Amazon ECS will ignore and not attempt a
    #   restart on. You can specify a maximum of 50 container exit codes. By
    #   default, Amazon ECS does not ignore any exit codes.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] restart_attempt_period
    #   A period of time (in seconds) that the container must run for before
    #   a restart can be attempted. A container can be restarted only once
    #   every `restartAttemptPeriod` seconds. If a container isn't able to
    #   run for this time period and exits early, it will not be restarted.
    #   You can set a minimum `restartAttemptPeriod` of 60 seconds and a
    #   maximum `restartAttemptPeriod` of 1800 seconds. By default, a
    #   container must run for 300 seconds before it can be restarted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerRestartPolicy AWS API Documentation
    #
    class ContainerRestartPolicy < Struct.new(
      :enabled,
      :ignored_exit_codes,
      :restart_attempt_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a change in state for a container.
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] image_digest
    #   The container image SHA 256 digest.
    #   @return [String]
    #
    # @!attribute [rw] runtime_id
    #   The ID of the Docker container.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code for the container, if the state change is a result of
    #   the container exiting.
    #   @return [Integer]
    #
    # @!attribute [rw] network_bindings
    #   Any network bindings that are associated with the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @!attribute [rw] reason
    #   The reason for the state change.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ContainerStateChange AWS API Documentation
    #
    class ContainerStateChange < Struct.new(
      :container_name,
      :image_digest,
      :runtime_id,
      :exit_code,
      :network_bindings,
      :reason,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the capacity provider. Up to 255 characters are allowed.
    #   They include letters (both upper and lowercase letters), numbers,
    #   underscores (\_), and hyphens (-). The name can't be prefixed with
    #   "`aws`", "`ecs`", or "`fargate`".
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The name of the cluster to associate with the capacity provider.
    #   When you create a capacity provider with Amazon ECS Managed
    #   Instances, it becomes available only within the specified cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_provider
    #   The details of the Auto Scaling group for the capacity provider.
    #   @return [Types::AutoScalingGroupProvider]
    #
    # @!attribute [rw] managed_instances_provider
    #   The configuration for the Amazon ECS Managed Instances provider.
    #   This configuration specifies how Amazon ECS manages Amazon EC2
    #   instances on your behalf, including the infrastructure role,
    #   instance launch template, and tag propagation settings.
    #   @return [Types::CreateManagedInstancesProviderConfiguration]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the capacity provider to categorize
    #   and organize them more conveniently. Each tag consists of a key and
    #   an optional value. You define both of them.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCapacityProviderRequest AWS API Documentation
    #
    class CreateCapacityProviderRequest < Struct.new(
      :name,
      :cluster,
      :auto_scaling_group_provider,
      :managed_instances_provider,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider
    #   The full description of the new capacity provider.
    #   @return [Types::CapacityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCapacityProviderResponse AWS API Documentation
    #
    class CreateCapacityProviderResponse < Struct.new(
      :capacity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of your cluster. If you don't specify a name for your
    #   cluster, you create a cluster that's named `default`. Up to 255
    #   letters (uppercase and lowercase), numbers, underscores, and hyphens
    #   are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to help you categorize
    #   and organize them. Each tag consists of a key and an optional value.
    #   You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] settings
    #   The setting to use when creating a cluster. This parameter is used
    #   to turn on CloudWatch Container Insights for a cluster. If this
    #   value is specified, it overrides the `containerInsights` value set
    #   with [PutAccountSetting][1] or [PutAccountSettingDefault][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html
    #   @return [Array<Types::ClusterSetting>]
    #
    # @!attribute [rw] configuration
    #   The `execute` command configuration for the cluster.
    #   @return [Types::ClusterConfiguration]
    #
    # @!attribute [rw] capacity_providers
    #   The short name of one or more capacity providers to associate with
    #   the cluster. A capacity provider must be associated with a cluster
    #   before it can be included as part of the default capacity provider
    #   strategy of the cluster or used in a capacity provider strategy when
    #   calling the [CreateService][1] or [RunTask][2] actions.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must be created but not associated with
    #   another cluster. New Auto Scaling group capacity providers can be
    #   created with the [CreateCapacityProvider][3] API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #   The [PutCapacityProvider][4] API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutCapacityProvider.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_capacity_provider_strategy
    #   The capacity provider strategy to set as the default for the
    #   cluster. After a default capacity provider strategy is set for a
    #   cluster, when you call the [CreateService][1] or [RunTask][2] APIs
    #   with no capacity provider strategy or launch type specified, the
    #   default capacity provider strategy for the cluster is used.
    #
    #   If a default capacity provider strategy isn't defined for a cluster
    #   when it was created, it can be defined later with the
    #   [PutClusterCapacityProviders][3] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] service_connect_defaults
    #   Use this parameter to set a default Service Connect namespace. After
    #   you set a default Service Connect namespace, any new services with
    #   Service Connect turned on that are created in the cluster are added
    #   as client services in the namespace. This setting only applies to
    #   new services that set the `enabled` parameter to `true` in the
    #   `ServiceConnectConfiguration`. You can set the namespace of each
    #   service individually in the `ServiceConnectConfiguration` to
    #   override this default parameter.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ClusterServiceConnectDefaultsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :tags,
      :settings,
      :configuration,
      :capacity_providers,
      :default_capacity_provider_strategy,
      :service_connect_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of your new cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for creating a Amazon ECS Managed Instances
    # provider. This specifies how Amazon ECS should manage Amazon EC2
    # instances, including the infrastructure role, instance launch
    # template, and whether to propagate tags from the capacity provider to
    # the instances.
    #
    # @!attribute [rw] infrastructure_role_arn
    #   The Amazon Resource Name (ARN) of the infrastructure role that
    #   Amazon ECS uses to manage instances on your behalf. This role must
    #   have permissions to launch, terminate, and manage Amazon EC2
    #   instances, as well as access to other Amazon Web Services services
    #   required for Amazon ECS Managed Instances functionality.
    #
    #   For more information, see [Amazon ECS infrastructure IAM role][1] in
    #   the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] instance_launch_template
    #   The launch template configuration that specifies how Amazon ECS
    #   should launch Amazon EC2 instances. This includes the instance
    #   profile, network configuration, storage settings, and instance
    #   requirements for attribute-based instance type selection.
    #
    #   For more information, see [Store instance launch parameters in
    #   Amazon EC2 launch templates][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    #   @return [Types::InstanceLaunchTemplate]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate tags from the capacity provider to
    #   the Amazon ECS Managed Instances. When enabled, tags applied to the
    #   capacity provider are automatically applied to all instances
    #   launched by this provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateManagedInstancesProviderConfiguration AWS API Documentation
    #
    class CreateManagedInstancesProviderConfiguration < Struct.new(
      :infrastructure_role_arn,
      :instance_launch_template,
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that you run your service on. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, underscores, and hyphens are allowed. Service
    #   names must be unique within a cluster, but you can have similarly
    #   named services in multiple clusters within a Region or across
    #   multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` isn't
    #   specified, the latest `ACTIVE` revision is used.
    #
    #   A task definition must be specified if the service uses either the
    #   `ECS` or `CODE_DEPLOY` deployment controllers.
    #
    #   For more information about deployment types, see [Amazon ECS
    #   deployment types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_rebalancing
    #   Indicates whether to use Availability Zone rebalancing for the
    #   service.
    #
    #   For more information, see [Balancing an Amazon ECS service across
    #   Availability Zones][1] in the <i> <i>Amazon Elastic Container
    #   Service Developer Guide</i> </i>.
    #
    #   The default behavior of `AvailabilityZoneRebalancing` differs
    #   between create and update requests:
    #
    #   * For create service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults the value to
    #     `ENABLED`.
    #
    #   * For update service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults to the existing
    #     service’s `AvailabilityZoneRebalancing` value. If the service
    #     never had an `AvailabilityZoneRebalancing` value set, Amazon ECS
    #     treats this as `DISABLED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A load balancer object representing the load balancers to use with
    #   your service. For more information, see [Service load balancing][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the service uses the `ECS` deployment controller and using either
    #   an Application Load Balancer or Network Load Balancer, you must
    #   specify one or more target group ARNs to attach to the service. The
    #   service-linked role is required for services that use multiple
    #   target groups. For more information, see [Using service-linked roles
    #   for Amazon ECS][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   If the service uses the `CODE_DEPLOY` deployment controller, the
    #   service is required to use either an Application Load Balancer or
    #   Network Load Balancer. When creating an CodeDeploy deployment group,
    #   you specify two target groups (referred to as a `targetGroupPair`).
    #   During a deployment, CodeDeploy determines which task set in your
    #   service has the status `PRIMARY`, and it associates one target group
    #   with it. Then, it also associates the other target group with the
    #   replacement task set. The load balancer can also have up to two
    #   listeners: a required listener for production traffic and an
    #   optional listener that you can use to perform validation tests with
    #   Lambda functions before routing production traffic to it.
    #
    #   If you use the `CODE_DEPLOY` deployment controller, these values can
    #   be changed when updating the service.
    #
    #   For Application Load Balancers and Network Load Balancers, this
    #   object must contain the load balancer target group ARN, the
    #   container name, and the container port to access from the load
    #   balancer. The container name must be as it appears in a container
    #   definition. The load balancer name parameter must be omitted. When a
    #   task from this service is placed on a container instance, the
    #   container instance and port combination is registered as a target in
    #   the target group that's specified here.
    #
    #   For Classic Load Balancers, this object must contain the load
    #   balancer name, the container name , and the container port to access
    #   from the load balancer. The container name must be as it appears in
    #   a container definition. The target group ARN parameter must be
    #   omitted. When a task from this service is placed on a container
    #   instance, the container instance is registered with the load
    #   balancer that's specified here.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers. Classic Load Balancers aren't
    #   supported. Also, when you create any target groups for these
    #   services, you must choose `ip` as the target type, not `instance`.
    #   This is because tasks that use the `awsvpc` network mode are
    #   associated with an elastic network interface, not an Amazon EC2
    #   instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registry to associate with this
    #   service. For more information, see [Service discovery][1].
    #
    #   <note markdown="1"> Each service may be associated with one service registry. Multiple
    #   service registries for each service isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the specified task definition to
    #   place and keep running in your service.
    #
    #   This is required if `schedulingStrategy` is `REPLICA` or isn't
    #   specified. If `schedulingStrategy` is `DAEMON` then this isn't
    #   required.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 36 ASCII
    #   characters in the range of 33-126 (inclusive) are allowed.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The infrastructure that you run your service on. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   The `FARGATE` launch type runs your tasks on Fargate On-Demand
    #   infrastructure.
    #
    #   <note markdown="1"> Fargate Spot infrastructure is available for use but a capacity
    #   provider strategy must be used. For more information, see [Fargate
    #   capacity providers][2] in the *Amazon ECS Developer Guide*.
    #
    #    </note>
    #
    #   The `EC2` launch type runs your tasks on Amazon EC2 instances
    #   registered to your cluster.
    #
    #   The `EXTERNAL` launch type runs your tasks on your on-premises
    #   server or virtual machine (VM) capacity registered to your cluster.
    #
    #   A service can use either a launch type or a capacity provider
    #   strategy. If a `launchType` is specified, the
    #   `capacityProviderStrategy` parameter must be omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the service.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   A capacity provider strategy can contain a maximum of 20 capacity
    #   providers.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version that your tasks in the service are running on.
    #   A platform version is specified only for tasks using the Fargate
    #   launch type. If one isn't specified, the `LATEST` platform version
    #   is used. For more information, see [Fargate platform versions][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or full Amazon Resource Name (ARN) of the IAM role that
    #   allows Amazon ECS to make calls to your load balancer on your
    #   behalf. This parameter is only permitted if you are using a load
    #   balancer with your service and your task definition doesn't use the
    #   `awsvpc` network mode. If you specify the `role` parameter, you must
    #   also specify a load balancer object with the `loadBalancers`
    #   parameter.
    #
    #   If your account has already created the Amazon ECS service-linked
    #   role, that role is used for your service unless you specify a role
    #   here. The service-linked role is required if your task definition
    #   uses the `awsvpc` network mode or if the service is configured to
    #   use service discovery, an external deployment controller, multiple
    #   target groups, or Elastic Inference accelerators in which case you
    #   don't specify a role here. For more information, see [Using
    #   service-linked roles for Amazon ECS][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (this is recommended) or prefix the
    #   role name with the path. For example, if a role with the name `bar`
    #   has a path of `/foo/` then you would specify `/foo/bar` as the role
    #   name. For more information, see [Friendly names and paths][2] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for tasks in your
    #   service. You can specify a maximum of 10 constraints for each task.
    #   This limit includes constraints in the task definition and those
    #   specified at runtime.
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for tasks in your service. You
    #   can specify a maximum of 5 strategy rules for each service.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the service. This parameter is
    #   required for task definitions that use the `awsvpc` network mode to
    #   receive their own elastic network interface, and it isn't supported
    #   for other network modes. For more information, see [Task
    #   networking][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler ignores unhealthy Elastic Load Balancing, VPC Lattice, and
    #   container health checks after a task has first started. If you do
    #   not specify a health check grace period value, the default value of
    #   0 is used. If you do not use any of the health checks, then
    #   `healthCheckGracePeriodSeconds` is unused.
    #
    #   If your service has more running tasks than desired, unhealthy tasks
    #   in the grace period might be stopped to reach the desired count.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use for the service. For more
    #   information, see [Services][1].
    #
    #   There are two service scheduler strategies available:
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the
    #     service scheduler spreads tasks across Availability Zones. You can
    #     use task placement strategies and constraints to customize task
    #     placement decisions. This scheduler strategy is required if the
    #     service uses the `CODE_DEPLOY` or `EXTERNAL` deployment controller
    #     types.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each active container instance that meets all of the task
    #     placement constraints that you specify in your cluster. The
    #     service scheduler also evaluates the task placement constraints
    #     for running tasks and will stop tasks that don't meet the
    #     placement constraints. When you're using this strategy, you
    #     don't need to specify a desired number of tasks, a task placement
    #     strategy, or use Service Auto Scaling policies.
    #
    #     <note markdown="1"> Tasks using the Fargate launch type or the `CODE_DEPLOY` or
    #     `EXTERNAL` deployment controller types don't support the `DAEMON`
    #     scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_controller
    #   The deployment controller to use for the service. If no deployment
    #   controller is specified, the default value of `ECS` is used.
    #   @return [Types::DeploymentController]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the service to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
    #   both of which you define. When a service is deleted, the tags are
    #   deleted as well.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to turn on Amazon ECS managed tags for the tasks
    #   within the service. For more information, see [Tagging your Amazon
    #   ECS resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   When you use Amazon ECS managed tags, you must set the
    #   `propagateTags` request parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags aren't propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use the [TagResource][1] API
    #   action.
    #
    #   You must set this to a value other than `NONE` when you use Cost
    #   Explorer. For more information, see [Amazon ECS usage reports][2] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   The default is `NONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/usage-reports.html
    #   @return [String]
    #
    # @!attribute [rw] enable_execute_command
    #   Determines whether the execute command functionality is turned on
    #   for the service. If `true`, this enables execute command
    #   functionality on all containers in the service tasks.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_connect_configuration
    #   The configuration for this service to discover and connect to
    #   services, and be discovered by, and connected from, other services
    #   within a namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ServiceConnectConfiguration]
    #
    # @!attribute [rw] volume_configurations
    #   The configuration for a volume specified in the task definition as a
    #   volume that is configured at launch time. Currently, the only
    #   supported volume type is an Amazon EBS volume.
    #   @return [Array<Types::ServiceVolumeConfiguration>]
    #
    # @!attribute [rw] vpc_lattice_configurations
    #   The VPC Lattice configuration for the service being created.
    #   @return [Array<Types::VpcLatticeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :cluster,
      :service_name,
      :task_definition,
      :availability_zone_rebalancing,
      :load_balancers,
      :service_registries,
      :desired_count,
      :client_token,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :role,
      :deployment_configuration,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy,
      :deployment_controller,
      :tags,
      :enable_ecs_managed_tags,
      :propagate_tags,
      :enable_execute_command,
      :service_connect_configuration,
      :volume_configurations,
      :vpc_lattice_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of your service following the create call.
    #
    #   A service will return either a `capacityProviderStrategy` or
    #   `launchType` parameter, but not both, depending where one was
    #   specified when it was created.
    #
    #   If a service is using the `ECS` deployment controller, the
    #   `deploymentController` and `taskSets` parameters will not be
    #   returned.
    #
    #   if the service uses the `CODE_DEPLOY` deployment controller, the
    #   `deploymentController`, `taskSets` and `deployments` parameters will
    #   be returned, however the `deployments` parameter will be an empty
    #   list.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The short name or full Amazon Resource Name (ARN) of the service to
    #   create the task set in.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service to create the task set in.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   An optional non-unique tag that identifies this task set in external
    #   systems. If the task set is associated with a service discovery
    #   registry, the tasks in this task set will have the
    #   `ECS_TASK_SET_EXTERNAL_ID` Cloud Map attribute set to the provided
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition for the tasks in the task set to use. If a
    #   revision isn't specified, the latest `ACTIVE` revision is used.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   An object representing the network configuration for a task set.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] load_balancers
    #   A load balancer object representing the load balancer to use with
    #   the task set. The supported load balancer types are either an
    #   Application Load Balancer or a Network Load Balancer.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registries to assign to this
    #   task set. For more information, see [Service discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] launch_type
    #   The launch type that new tasks in the task set uses. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If a `launchType` is specified, the `capacityProviderStrategy`
    #   parameter must be omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task set.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in
    #   a capacity provider strategy. The [PutClusterCapacityProviders][1]
    #   API is used to associate a capacity provider with a cluster. Only
    #   capacity providers with an `ACTIVE` or `UPDATING` status can be
    #   used.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the
    #   [CreateCapacityProviderProvider][2]API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #   The [PutClusterCapacityProviders][1] API operation is used to update
    #   the list of available capacity providers for a cluster after the
    #   cluster is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProviderProvider.html
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version that the tasks in the task set uses. A platform
    #   version is specified only for tasks using the Fargate launch type.
    #   If one isn't specified, the `LATEST` platform version is used.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #   @return [Types::Scale]
    #
    # @!attribute [rw] client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 36 ASCII
    #   characters in the range of 33-126 (inclusive) are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task set to help you categorize
    #   and organize them. Each tag consists of a key and an optional value.
    #   You define both. When a service is deleted, the tags are deleted.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateTaskSetRequest AWS API Documentation
    #
    class CreateTaskSetRequest < Struct.new(
      :service,
      :cluster,
      :external_id,
      :task_definition,
      :network_configuration,
      :load_balancers,
      :service_registries,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :scale,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_set
    #   Information about a set of Amazon ECS tasks in either an CodeDeploy
    #   or an `EXTERNAL` deployment. A task set includes details such as the
    #   desired number of tasks, how many tasks are running, and whether the
    #   task set serves production traffic.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateTaskSetResponse AWS API Documentation
    #
    class CreateTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional filter to narrow the `ListServiceDeployment` results.
    #
    # If you do not specify a value, service deployments that were created
    # before the current time are included in the result.
    #
    # @!attribute [rw] before
    #   Include service deployments in the result that were created before
    #   this time. The format is yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] after
    #   Include service deployments in the result that were created after
    #   this time. The format is yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreatedAt AWS API Documentation
    #
    class CreatedAt < Struct.new(
      :before,
      :after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The resource name to disable the account setting for. If
    #   `serviceLongArnFormat` is specified, the ARN for your Amazon ECS
    #   services is affected. If `taskLongArnFormat` is specified, the ARN
    #   and resource ID for your Amazon ECS tasks is affected. If
    #   `containerInstanceLongArnFormat` is specified, the ARN and resource
    #   ID for your Amazon ECS container instances is affected. If
    #   `awsvpcTrunking` is specified, the ENI limit for your Amazon ECS
    #   container instances is affected.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The Amazon Resource Name (ARN) of the principal. It can be a user,
    #   role, or the root user. If you specify the root user, it disables
    #   the account setting for all users, roles, and the root user of the
    #   account unless a user or role explicitly overrides these settings.
    #   If this field is omitted, the setting is changed only for the
    #   authenticated user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAccountSettingRequest AWS API Documentation
    #
    class DeleteAccountSettingRequest < Struct.new(
      :name,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] setting
    #   The account setting for the specified principal ARN.
    #   @return [Types::Setting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAccountSettingResponse AWS API Documentation
    #
    class DeleteAccountSettingResponse < Struct.new(
      :setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to delete attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to delete from your resource. You can specify up to
    #   10 attributes for each request. For custom attributes, specify the
    #   attribute name and target ID, but don't specify the value. If you
    #   specify the target ID using the short form, you must also specify
    #   the target type.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributesRequest AWS API Documentation
    #
    class DeleteAttributesRequest < Struct.new(
      :cluster,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   A list of attribute objects that were successfully deleted from your
    #   resource.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributesResponse AWS API Documentation
    #
    class DeleteAttributesResponse < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider
    #   The short name or full Amazon Resource Name (ARN) of the capacity
    #   provider to delete.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The name of the cluster that contains the capacity provider to
    #   delete. Managed instances capacity providers are cluster-scoped and
    #   can only be deleted from their associated cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProviderRequest AWS API Documentation
    #
    class DeleteCapacityProviderRequest < Struct.new(
      :capacity_provider,
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider
    #   The details of the capacity provider.
    #   @return [Types::CapacityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProviderResponse AWS API Documentation
    #
    class DeleteCapacityProviderResponse < Struct.new(
      :capacity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The full description of the deleted cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service to delete. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the service to delete.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If `true`, allows you to delete a service even if it wasn't scaled
    #   down to zero tasks. It's only necessary to use this if the service
    #   uses the `REPLICA` scheduling strategy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :cluster,
      :service,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of the deleted service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definitions
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to delete. You must
    #   specify a `revision`.
    #
    #   You can specify up to 10 task definitions as a comma separated list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskDefinitionsRequest AWS API Documentation
    #
    class DeleteTaskDefinitionsRequest < Struct.new(
      :task_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definitions
    #   The list of deleted task definitions.
    #   @return [Array<Types::TaskDefinition>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskDefinitionsResponse AWS API Documentation
    #
    class DeleteTaskDefinitionsResponse < Struct.new(
      :task_definitions,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task set found in to delete.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The short name or full Amazon Resource Name (ARN) of the service
    #   that hosts the task set to delete.
    #   @return [String]
    #
    # @!attribute [rw] task_set
    #   The task set ID or full Amazon Resource Name (ARN) of the task set
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If `true`, you can delete a task set even if it hasn't been scaled
    #   down to zero.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskSetRequest AWS API Documentation
    #
    class DeleteTaskSetRequest < Struct.new(
      :cluster,
      :service,
      :task_set,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_set
    #   Details about the task set.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskSetResponse AWS API Documentation
    #
    class DeleteTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon ECS service deployment. This is used only
    # when a service uses the `ECS` deployment controller type.
    #
    # @!attribute [rw] id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment. The following describes each state.
    #
    #   PRIMARY
    #
    #   : The most recent deployment of a service.
    #
    #   ACTIVE
    #
    #   : A service deployment that still has running tasks, but are in the
    #     process of being replaced with a new `PRIMARY` deployment.
    #
    #   INACTIVE
    #
    #   : A deployment that has been completely replaced.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The most recent task definition that was specified for the tasks in
    #   the service to use.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The most recent desired count of tasks that was specified for the
    #   service to deploy or maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the deployment that are in the `PENDING`
    #   status.
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the deployment that are in the `RUNNING`
    #   status.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_tasks
    #   The number of consecutively failed tasks in the deployment. A task
    #   is considered a failure if the service scheduler can't launch the
    #   task, the task doesn't transition to a `RUNNING` state, or if it
    #   fails any of its defined health checks and is stopped.
    #
    #   <note markdown="1"> Once a service deployment has one or more successfully running
    #   tasks, the failed task count resets to zero and stops being
    #   evaluated.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the service deployment was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp for the time when the service deployment was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy that the deployment is using.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] launch_type
    #   The launch type the tasks in the service are using. For more
    #   information, see [Amazon ECS Launch Types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The platform version that your tasks in the service run on. A
    #   platform version is only specified for tasks using the Fargate
    #   launch type. If one isn't specified, the `LATEST` platform version
    #   is used. For more information, see [Fargate Platform Versions][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] platform_family
    #   The operating system that your tasks in the service, or tasks are
    #   running on. A platform family is specified only for tasks using the
    #   Fargate launch type.
    #
    #   All tasks that run as part of this service must use the same
    #   `platformFamily` value as the service, for example, ` LINUX.`.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] rollout_state
    #   <note markdown="1"> The `rolloutState` of a service is only returned for services that
    #   use the rolling update (`ECS`) deployment type that aren't behind a
    #   Classic Load Balancer.
    #
    #    </note>
    #
    #   The rollout state of the deployment. When a service deployment is
    #   started, it begins in an `IN_PROGRESS` state. When the service
    #   reaches a steady state, the deployment transitions to a `COMPLETED`
    #   state. If the service fails to reach a steady state and circuit
    #   breaker is turned on, the deployment transitions to a `FAILED`
    #   state. A deployment in `FAILED` state doesn't launch any new tasks.
    #   For more information, see [DeploymentCircuitBreaker][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeploymentCircuitBreaker.html
    #   @return [String]
    #
    # @!attribute [rw] rollout_state_reason
    #   A description of the rollout state of a deployment.
    #   @return [String]
    #
    # @!attribute [rw] service_connect_configuration
    #   The details of the Service Connect configuration that's used by
    #   this deployment. Compare the configuration between multiple
    #   deployments when troubleshooting issues with new deployments.
    #
    #   The configuration for this service to discover and connect to
    #   services, and be discovered by, and connected from, other services
    #   within a namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ServiceConnectConfiguration]
    #
    # @!attribute [rw] service_connect_resources
    #   The list of Service Connect resources that are associated with this
    #   deployment. Each list entry maps a discovery name to a Cloud Map
    #   service name.
    #   @return [Array<Types::ServiceConnectServiceResource>]
    #
    # @!attribute [rw] volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure different settings like the size, throughput, volumeType,
    #   and ecryption in [ServiceManagedEBSVolumeConfiguration][1]. The
    #   `name` of the volume must match the `name` from the task definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ServiceManagedEBSVolumeConfiguration.html
    #   @return [Array<Types::ServiceVolumeConfiguration>]
    #
    # @!attribute [rw] fargate_ephemeral_storage
    #   The Fargate ephemeral storage settings for the deployment.
    #   @return [Types::DeploymentEphemeralStorage]
    #
    # @!attribute [rw] vpc_lattice_configurations
    #   The VPC Lattice configuration for the service deployment.
    #   @return [Array<Types::VpcLatticeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :id,
      :status,
      :task_definition,
      :desired_count,
      :pending_count,
      :running_count,
      :failed_tasks,
      :created_at,
      :updated_at,
      :capacity_provider_strategy,
      :launch_type,
      :platform_version,
      :platform_family,
      :network_configuration,
      :rollout_state,
      :rollout_state_reason,
      :service_connect_configuration,
      :service_connect_resources,
      :volume_configurations,
      :fargate_ephemeral_storage,
      :vpc_lattice_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the methods which provide a way for you to quickly identify
    # when a deployment has failed, and then to optionally roll back the
    # failure to the last working deployment.
    #
    # When the alarms are generated, Amazon ECS sets the service deployment
    # to failed. Set the rollback parameter to have Amazon ECS to roll back
    # your service to the last completed deployment after a failure.
    #
    # You can only use the `DeploymentAlarms` method to detect failures when
    # the `DeploymentController` is set to `ECS`.
    #
    # For more information, see [Rolling update][1] in the <i> <i>Amazon
    # Elastic Container Service Developer Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html
    #
    # @!attribute [rw] alarm_names
    #   One or more CloudWatch alarm names. Use a "," to separate the
    #   alarms.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rollback
    #   Determines whether to configure Amazon ECS to roll back the service
    #   if a service deployment fails. If rollback is used, when a service
    #   deployment fails, the service is rolled back to the last deployment
    #   that completed successfully.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable
    #   Determines whether to use the CloudWatch alarm option in the service
    #   deployment process.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentAlarms AWS API Documentation
    #
    class DeploymentAlarms < Struct.new(
      :alarm_names,
      :rollback,
      :enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # <note markdown="1"> The deployment circuit breaker can only be used for services using the
    # rolling update (`ECS`) deployment type.
    #
    #  </note>
    #
    # The **deployment circuit breaker** determines whether a service
    # deployment will fail if the service can't reach a steady state. If it
    # is turned on, a service deployment will transition to a failed state
    # and stop launching new tasks. You can also configure Amazon ECS to
    # roll back your service to the last completed deployment after a
    # failure. For more information, see [Rolling update][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # For more information about API failure reasons, see [API failure
    # reasons][2] in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html
    #
    # @!attribute [rw] enable
    #   Determines whether to use the deployment circuit breaker logic for
    #   the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback
    #   Determines whether to configure Amazon ECS to roll back the service
    #   if a service deployment fails. If rollback is on, when a service
    #   deployment fails, the service is rolled back to the last deployment
    #   that completed successfully.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentCircuitBreaker AWS API Documentation
    #
    class DeploymentCircuitBreaker < Struct.new(
      :enable,
      :rollback)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional deployment parameters that control how many tasks run during
    # a deployment and the ordering of stopping and starting tasks.
    #
    # @!attribute [rw] deployment_circuit_breaker
    #   <note markdown="1"> The deployment circuit breaker can only be used for services using
    #   the rolling update (`ECS`) deployment type.
    #
    #    </note>
    #
    #   The **deployment circuit breaker** determines whether a service
    #   deployment will fail if the service can't reach a steady state. If
    #   you use the deployment circuit breaker, a service deployment will
    #   transition to a failed state and stop launching new tasks. If you
    #   use the rollback option, when a service deployment fails, the
    #   service is rolled back to the last deployment that completed
    #   successfully. For more information, see [Rolling update][1] in the
    #   *Amazon Elastic Container Service Developer Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html
    #   @return [Types::DeploymentCircuitBreaker]
    #
    # @!attribute [rw] maximum_percent
    #   If a service is using the rolling update (`ECS`) deployment type,
    #   the `maximumPercent` parameter represents an upper limit on the
    #   number of your service's tasks that are allowed in the `RUNNING` or
    #   `PENDING` state during a deployment, as a percentage of the
    #   `desiredCount` (rounded down to the nearest integer). This parameter
    #   enables you to define the deployment batch size. For example, if
    #   your service is using the `REPLICA` service scheduler and has a
    #   `desiredCount` of four tasks and a `maximumPercent` value of 200%,
    #   the scheduler may start four new tasks before stopping the four
    #   older tasks (provided that the cluster resources required to do this
    #   are available). The default `maximumPercent` value for a service
    #   using the `REPLICA` service scheduler is 200%.
    #
    #   The Amazon ECS scheduler uses this parameter to replace unhealthy
    #   tasks by starting replacement tasks first and then stopping the
    #   unhealthy tasks, as long as cluster resources for starting
    #   replacement tasks are available. For more information about how the
    #   scheduler replaces unhealthy tasks, see [Amazon ECS services][1].
    #
    #   If a service is using either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types, and tasks in the service use the EC2
    #   launch type, the **maximum percent** value is set to the default
    #   value. The **maximum percent** value is used to define the upper
    #   limit on the number of the tasks in the service that remain in the
    #   `RUNNING` state while the container instances are in the `DRAINING`
    #   state.
    #
    #   <note markdown="1"> You can't specify a custom `maximumPercent` value for a service
    #   that uses either the blue/green (`CODE_DEPLOY`) or `EXTERNAL`
    #   deployment types and has tasks that use the EC2 launch type.
    #
    #    </note>
    #
    #   If the service uses either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types, and the tasks in the service use the
    #   Fargate launch type, the maximum percent value is not used. The
    #   value is still returned when describing your service.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_healthy_percent
    #   If a service is using the rolling update (`ECS`) deployment type,
    #   the `minimumHealthyPercent` represents a lower limit on the number
    #   of your service's tasks that must remain in the `RUNNING` state
    #   during a deployment, as a percentage of the `desiredCount` (rounded
    #   up to the nearest integer). This parameter enables you to deploy
    #   without using additional cluster capacity. For example, if your
    #   service has a `desiredCount` of four tasks and a
    #   `minimumHealthyPercent` of 50%, the service scheduler may stop two
    #   existing tasks to free up cluster capacity before starting two new
    #   tasks.
    #
    #   If any tasks are unhealthy and if `maximumPercent` doesn't allow
    #   the Amazon ECS scheduler to start replacement tasks, the scheduler
    #   stops the unhealthy tasks one-by-one — using the
    #   `minimumHealthyPercent` as a constraint — to clear up capacity to
    #   launch replacement tasks. For more information about how the
    #   scheduler replaces unhealthy tasks, see [Amazon ECS services][1].
    #
    #   For services that *do not* use a load balancer, the following should
    #   be noted:
    #
    #   * A service is considered healthy if all essential containers within
    #     the tasks in the service pass their health checks.
    #
    #   * If a task has no essential containers with a health check defined,
    #     the service scheduler will wait for 40 seconds after a task
    #     reaches a `RUNNING` state before the task is counted towards the
    #     minimum healthy percent total.
    #
    #   * If a task has one or more essential containers with a health check
    #     defined, the service scheduler will wait for the task to reach a
    #     healthy status before counting it towards the minimum healthy
    #     percent total. A task is considered healthy when all essential
    #     containers within the task have passed their health checks. The
    #     amount of time the service scheduler can wait for is determined by
    #     the container health check settings.
    #
    #   For services that *do* use a load balancer, the following should be
    #   noted:
    #
    #   * If a task has no essential containers with a health check defined,
    #     the service scheduler will wait for the load balancer target group
    #     health check to return a healthy status before counting the task
    #     towards the minimum healthy percent total.
    #
    #   * If a task has an essential container with a health check defined,
    #     the service scheduler will wait for both the task to reach a
    #     healthy status and the load balancer target group health check to
    #     return a healthy status before counting the task towards the
    #     minimum healthy percent total.
    #
    #   The default value for a replica service for `minimumHealthyPercent`
    #   is 100%. The default `minimumHealthyPercent` value for a service
    #   using the `DAEMON` service schedule is 0% for the CLI, the Amazon
    #   Web Services SDKs, and the APIs and 50% for the Amazon Web Services
    #   Management Console.
    #
    #   The minimum number of healthy tasks during a deployment is the
    #   `desiredCount` multiplied by the `minimumHealthyPercent`/100,
    #   rounded up to the nearest integer value.
    #
    #   If a service is using either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types and is running tasks that use the EC2
    #   launch type, the **minimum healthy percent** value is set to the
    #   default value. The **minimum healthy percent** value is used to
    #   define the lower limit on the number of the tasks in the service
    #   that remain in the `RUNNING` state while the container instances are
    #   in the `DRAINING` state.
    #
    #   <note markdown="1"> You can't specify a custom `minimumHealthyPercent` value for a
    #   service that uses either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types and has tasks that use the EC2 launch
    #   type.
    #
    #    </note>
    #
    #   If a service is using either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types and is running tasks that use the
    #   Fargate launch type, the minimum healthy percent value is not used,
    #   although it is returned when describing your service.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #   @return [Integer]
    #
    # @!attribute [rw] alarms
    #   Information about the CloudWatch alarms.
    #   @return [Types::DeploymentAlarms]
    #
    # @!attribute [rw] strategy
    #   The deployment strategy for the service. Choose from these valid
    #   values:
    #
    #   * `ROLLING` - When you create a service which uses the rolling
    #     update (`ROLLING`) deployment strategy, the Amazon ECS service
    #     scheduler replaces the currently running tasks with new tasks. The
    #     number of tasks that Amazon ECS adds or removes from the service
    #     during a rolling update is controlled by the service deployment
    #     configuration.
    #
    #   * `BLUE_GREEN` - A blue/green deployment strategy (`BLUE_GREEN`) is
    #     a release methodology that reduces downtime and risk by running
    #     two identical production environments called blue and green. With
    #     Amazon ECS blue/green deployments, you can validate new service
    #     revisions before directing production traffic to them. This
    #     approach provides a safer way to deploy changes with the ability
    #     to quickly roll back if needed.
    #   @return [String]
    #
    # @!attribute [rw] bake_time_in_minutes
    #   The time period when both blue and green service revisions are
    #   running simultaneously after the production traffic has shifted.
    #
    #   You must provide this parameter when you use the `BLUE_GREEN`
    #   deployment strategy.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle_hooks
    #   An array of deployment lifecycle hook objects to run custom logic at
    #   specific stages of the deployment lifecycle.
    #   @return [Array<Types::DeploymentLifecycleHook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :deployment_circuit_breaker,
      :maximum_percent,
      :minimum_healthy_percent,
      :alarms,
      :strategy,
      :bake_time_in_minutes,
      :lifecycle_hooks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment controller to use for the service.
    #
    # @!attribute [rw] type
    #   The deployment controller type to use.
    #
    #   The deployment controller is the mechanism that determines how tasks
    #   are deployed for your service. The valid options are:
    #
    #   * ECS
    #
    #     When you create a service which uses the `ECS` deployment
    #     controller, you can choose between the following deployment
    #     strategies:
    #
    #     * `ROLLING`: When you create a service which uses the *rolling
    #       update* (`ROLLING`) deployment strategy, the Amazon ECS service
    #       scheduler replaces the currently running tasks with new tasks.
    #       The number of tasks that Amazon ECS adds or removes from the
    #       service during a rolling update is controlled by the service
    #       deployment configuration.
    #
    #       Rolling update deployments are best suited for the following
    #       scenarios:
    #
    #       * Gradual service updates: You need to update your service
    #         incrementally without taking the entire service offline at
    #         once.
    #
    #       * Limited resource requirements: You want to avoid the
    #         additional resource costs of running two complete environments
    #         simultaneously (as required by blue/green deployments).
    #
    #       * Acceptable deployment time: Your application can tolerate a
    #         longer deployment process, as rolling updates replace tasks
    #         one by one.
    #
    #       * No need for instant roll back: Your service can tolerate a
    #         rollback process that takes minutes rather than seconds.
    #
    #       * Simple deployment process: You prefer a straightforward
    #         deployment approach without the complexity of managing
    #         multiple environments, target groups, and listeners.
    #
    #       * No load balancer requirement: Your service doesn't use or
    #         require a load balancer, Application Load Balancer, Network
    #         Load Balancer, or Service Connect (which are required for
    #         blue/green deployments).
    #
    #       * Stateful applications: Your application maintains state that
    #         makes it difficult to run two parallel environments.
    #
    #       * Cost sensitivity: You want to minimize deployment costs by not
    #         running duplicate environments during deployment.
    #       Rolling updates are the default deployment strategy for services
    #       and provide a balance between deployment safety and resource
    #       efficiency for many common application scenarios.
    #
    #     * `BLUE_GREEN`: A *blue/green* deployment strategy (`BLUE_GREEN`)
    #       is a release methodology that reduces downtime and risk by
    #       running two identical production environments called blue and
    #       green. With Amazon ECS blue/green deployments, you can validate
    #       new service revisions before directing production traffic to
    #       them. This approach provides a safer way to deploy changes with
    #       the ability to quickly roll back if needed.
    #
    #       Amazon ECS blue/green deployments are best suited for the
    #       following scenarios:
    #
    #       * Service validation: When you need to validate new service
    #         revisions before directing production traffic to them
    #
    #       * Zero downtime: When your service requires zero-downtime
    #         deployments
    #
    #       * Instant roll back: When you need the ability to quickly roll
    #         back if issues are detected
    #
    #       * Load balancer requirement: When your service uses Application
    #         Load Balancer, Network Load Balancer, or Service Connect
    #   * External
    #
    #     Use a third-party deployment controller.
    #
    #   * Blue/green deployment (powered by CodeDeploy)
    #
    #     CodeDeploy installs an updated version of the application as a new
    #     replacement task set and reroutes production traffic from the
    #     original application task set to the replacement task set. The
    #     original task set is terminated after a successful deployment. Use
    #     this deployment controller to verify a new deployment of a service
    #     before sending production traffic to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentController AWS API Documentation
    #
    class DeploymentController < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of ephemeral storage to allocate for the deployment.
    #
    # @!attribute [rw] kms_key_id
    #   Specify an Key Management Service key ID to encrypt the ephemeral
    #   storage for deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentEphemeralStorage AWS API Documentation
    #
    class DeploymentEphemeralStorage < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A deployment lifecycle hook runs custom logic at specific stages of
    # the deployment process. Currently, you can use Lambda functions as
    # hook targets.
    #
    # For more information, see [Lifecycle hooks for Amazon ECS service
    # deployments][1] in the <i> Amazon Elastic Container Service Developer
    # Guide</i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-lifecycle-hooks.html
    #
    # @!attribute [rw] hook_target_arn
    #   The Amazon Resource Name (ARN) of the hook target. Currently, only
    #   Lambda function ARNs are supported.
    #
    #   You must provide this parameter when configuring a deployment
    #   lifecycle hook.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   ECS permission to call Lambda functions on your behalf.
    #
    #   For more information, see [Permissions required for Lambda functions
    #   in Amazon ECS blue/green deployments][1] in the <i> Amazon Elastic
    #   Container Service Developer Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/blue-green-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_stages
    #   The lifecycle stages at which to run the hook. Choose from these
    #   valid values:
    #
    #   * RECONCILE\_SERVICE
    #
    #     The reconciliation stage that only happens when you start a new
    #     service deployment with more than 1 service revision in an ACTIVE
    #     state.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * PRE\_SCALE\_UP
    #
    #     The green service revision has not started. The blue service
    #     revision is handling 100% of the production traffic. There is no
    #     test traffic.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * POST\_SCALE\_UP
    #
    #     The green service revision has started. The blue service revision
    #     is handling 100% of the production traffic. There is no test
    #     traffic.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * TEST\_TRAFFIC\_SHIFT
    #
    #     The blue and green service revisions are running. The blue service
    #     revision handles 100% of the production traffic. The green service
    #     revision is migrating from 0% to 100% of test traffic.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * POST\_TEST\_TRAFFIC\_SHIFT
    #
    #     The test traffic shift is complete. The green service revision
    #     handles 100% of the test traffic.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * PRODUCTION\_TRAFFIC\_SHIFT
    #
    #     Production traffic is shifting to the green service revision. The
    #     green service revision is migrating from 0% to 100% of production
    #     traffic.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   * POST\_PRODUCTION\_TRAFFIC\_SHIFT
    #
    #     The production traffic shift is complete.
    #
    #     You can use a lifecycle hook for this stage.
    #
    #   You must provide this parameter when configuring a deployment
    #   lifecycle hook.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hook_details
    #   Use this field to specify custom parameters that Amazon ECS will
    #   pass to your hook target invocations (such as a Lambda function).
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentLifecycleHook AWS API Documentation
    #
    class DeploymentLifecycleHook < Struct.new(
      :hook_target_arn,
      :role_arn,
      :lifecycle_stages,
      :hook_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to deregister. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance to
    #   deregister. For more information about the ARN format, see [Amazon
    #   Resource Name (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces the container instance to be deregistered. If you have tasks
    #   running on the container instance when you deregister it with the
    #   `force` option, these tasks remain running until you terminate the
    #   instance or the tasks stop through some other means, but they're
    #   orphaned (no longer monitored or accounted for by Amazon ECS). If an
    #   orphaned task on your container instance is part of an Amazon ECS
    #   service, then the service scheduler starts another copy of that
    #   task, on a different container instance if possible.
    #
    #   Any containers in orphaned service tasks that are registered with a
    #   Classic Load Balancer or an Application Load Balancer target group
    #   are deregistered. They begin connection draining according to the
    #   settings on the load balancer or target group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstanceRequest AWS API Documentation
    #
    class DeregisterContainerInstanceRequest < Struct.new(
      :cluster,
      :container_instance,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance that was deregistered.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstanceResponse AWS API Documentation
    #
    class DeregisterContainerInstanceResponse < Struct.new(
      :container_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to deregister. You must
    #   specify a `revision`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinitionRequest AWS API Documentation
    #
    class DeregisterTaskDefinitionRequest < Struct.new(
      :task_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full description of the deregistered task.
    #   @return [Types::TaskDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinitionResponse AWS API Documentation
    #
    class DeregisterTaskDefinitionResponse < Struct.new(
      :task_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_providers
    #   The short name or full Amazon Resource Name (ARN) of one or more
    #   capacity providers. Up to `100` capacity providers can be described
    #   in an action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster
    #   The name of the cluster to describe capacity providers for. When
    #   specified, only capacity providers associated with this cluster are
    #   returned, including Amazon ECS Managed Instances capacity providers.
    #   @return [String]
    #
    # @!attribute [rw] include
    #   Specifies whether or not you want to see the resource tags for the
    #   capacity provider. If `TAGS` is specified, the tags are included in
    #   the response. If this field is omitted, tags aren't included in the
    #   response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of account setting results returned by
    #   `DescribeCapacityProviders` in paginated output. When this parameter
    #   is used, `DescribeCapacityProviders` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `DescribeCapacityProviders` request with the returned
    #   `nextToken` value. This value can be between 1 and 10. If this
    #   parameter is not used, then `DescribeCapacityProviders` returns up
    #   to 10 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeCapacityProviders` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeCapacityProvidersRequest AWS API Documentation
    #
    class DescribeCapacityProvidersRequest < Struct.new(
      :capacity_providers,
      :cluster,
      :include,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_providers
    #   The list of capacity providers.
    #   @return [Array<Types::CapacityProvider>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `DescribeCapacityProviders` request. When the results of a
    #   `DescribeCapacityProviders` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeCapacityProvidersResponse AWS API Documentation
    #
    class DescribeCapacityProvidersResponse < Struct.new(
      :capacity_providers,
      :failures,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of up to 100 cluster names or full cluster Amazon Resource
    #   Name (ARN) entries. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Determines whether to include additional information about the
    #   clusters in the response. If this field is omitted, this information
    #   isn't included.
    #
    #   If `ATTACHMENTS` is specified, the attachments for the container
    #   instances or tasks within the cluster are included, for example the
    #   capacity providers.
    #
    #   If `SETTINGS` is specified, the settings for the cluster are
    #   included.
    #
    #   If `CONFIGURATIONS` is specified, the configuration for the cluster
    #   is included.
    #
    #   If `STATISTICS` is specified, the task and service count is
    #   included, separated by launch type.
    #
    #   If `TAGS` is specified, the metadata tags associated with the
    #   cluster are included.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClustersRequest AWS API Documentation
    #
    class DescribeClustersRequest < Struct.new(
      :clusters,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   The list of clusters.
    #   @return [Array<Types::Cluster>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClustersResponse AWS API Documentation
    #
    class DescribeClustersResponse < Struct.new(
      :clusters,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instances to describe. If you do not
    #   specify a cluster, the default cluster is assumed. This parameter is
    #   required if the container instance or container instances you are
    #   describing were launched in any cluster other than the default
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   A list of up to 100 container instance IDs or full Amazon Resource
    #   Name (ARN) entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Specifies whether you want to see the resource tags for the
    #   container instance. If `TAGS` is specified, the tags are included in
    #   the response. If `CONTAINER_INSTANCE_HEALTH` is specified, the
    #   container instance health is included in the response. If this field
    #   is omitted, tags and container instance health status aren't
    #   included in the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstancesRequest AWS API Documentation
    #
    class DescribeContainerInstancesRequest < Struct.new(
      :cluster,
      :container_instances,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instances
    #   The list of container instances.
    #   @return [Array<Types::ContainerInstance>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstancesResponse AWS API Documentation
    #
    class DescribeContainerInstancesResponse < Struct.new(
      :container_instances,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_deployment_arns
    #   The ARN of the service deployment.
    #
    #   You can specify a maximum of 20 ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceDeploymentsRequest AWS API Documentation
    #
    class DescribeServiceDeploymentsRequest < Struct.new(
      :service_deployment_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_deployments
    #   The list of service deployments described.
    #   @return [Array<Types::ServiceDeployment>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #
    #   If you decsribe a deployment with a service revision created before
    #   October 25, 2024, the call fails. The failure includes the service
    #   revision ARN and the reason set to `MISSING`.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceDeploymentsResponse AWS API Documentation
    #
    class DescribeServiceDeploymentsResponse < Struct.new(
      :service_deployments,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_revision_arns
    #   The ARN of the service revision.
    #
    #   You can specify a maximum of 20 ARNs.
    #
    #   You can call [ListServiceDeployments][1] to get the ARNs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServiceDeployments.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceRevisionsRequest AWS API Documentation
    #
    class DescribeServiceRevisionsRequest < Struct.new(
      :service_revision_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_revisions
    #   The list of service revisions described.
    #   @return [Array<Types::ServiceRevision>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceRevisionsResponse AWS API Documentation
    #
    class DescribeServiceRevisionsResponse < Struct.new(
      :service_revisions,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN)the cluster that
    #   hosts the service to describe. If you do not specify a cluster, the
    #   default cluster is assumed. This parameter is required if the
    #   service or services you are describing were launched in any cluster
    #   other than the default cluster.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   A list of services to describe. You may specify up to 10 services to
    #   describe in a single operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Determines whether you want to see the resource tags for the
    #   service. If `TAGS` is specified, the tags are included in the
    #   response. If this field is omitted, tags aren't included in the
    #   response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServicesRequest AWS API Documentation
    #
    class DescribeServicesRequest < Struct.new(
      :cluster,
      :services,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] services
    #   The list of services described.
    #   @return [Array<Types::Service>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServicesResponse AWS API Documentation
    #
    class DescribeServicesResponse < Struct.new(
      :services,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The `family` for the latest `ACTIVE` revision, `family` and
    #   `revision` (`family:revision`) for a specific revision in the
    #   family, or full Amazon Resource Name (ARN) of the task definition to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] include
    #   Determines whether to see the resource tags for the task definition.
    #   If `TAGS` is specified, the tags are included in the response. If
    #   this field is omitted, tags aren't included in the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinitionRequest AWS API Documentation
    #
    class DescribeTaskDefinitionRequest < Struct.new(
      :task_definition,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full task definition description.
    #   @return [Types::TaskDefinition]
    #
    # @!attribute [rw] tags
    #   The metadata that's applied to the task definition to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinitionResponse AWS API Documentation
    #
    class DescribeTaskDefinitionResponse < Struct.new(
      :task_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task sets exist in.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The short name or full Amazon Resource Name (ARN) of the service
    #   that the task sets exist in.
    #   @return [String]
    #
    # @!attribute [rw] task_sets
    #   The ID or full Amazon Resource Name (ARN) of task sets to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Specifies whether to see the resource tags for the task set. If
    #   `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags aren't included in the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskSetsRequest AWS API Documentation
    #
    class DescribeTaskSetsRequest < Struct.new(
      :cluster,
      :service,
      :task_sets,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_sets
    #   The list of task sets described.
    #   @return [Array<Types::TaskSet>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskSetsResponse AWS API Documentation
    #
    class DescribeTaskSetsResponse < Struct.new(
      :task_sets,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task or tasks to describe. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Specifies whether you want to see the resource tags for the task. If
    #   `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags aren't included in the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasksRequest AWS API Documentation
    #
    class DescribeTasksRequest < Struct.new(
      :cluster,
      :tasks,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The list of tasks.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasksResponse AWS API Documentation
    #
    class DescribeTasksResponse < Struct.new(
      :tasks,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a container instance host device.
    #
    # @!attribute [rw] host_path
    #   The path for the device on the host container instance.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path inside the container at which to expose the host device.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The explicit permissions to provide to the container for the device.
    #   By default, the container has permissions for `read`, `write`, and
    #   `mknod` for the device.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Device AWS API Documentation
    #
    class Device < Struct.new(
      :host_path,
      :container_path,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance. For
    #   more information about the ARN format, see [Amazon Resource Name
    #   (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that the container instance belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpointRequest AWS API Documentation
    #
    class DiscoverPollEndpointRequest < Struct.new(
      :container_instance,
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint for the Amazon ECS agent to poll.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_endpoint
    #   The telemetry endpoint for the Amazon ECS agent.
    #   @return [String]
    #
    # @!attribute [rw] service_connect_endpoint
    #   The endpoint for the Amazon ECS agent to poll for Service Connect
    #   configuration. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpointResponse AWS API Documentation
    #
    class DiscoverPollEndpointResponse < Struct.new(
      :endpoint,
      :telemetry_endpoint,
      :service_connect_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter is specified when you're using Docker volumes. Docker
    # volumes are only supported when you're using the EC2 launch type.
    # Windows containers only support the use of the `local` driver. To use
    # bind mounts, specify a `host` instead.
    #
    # @!attribute [rw] scope
    #   The scope for the Docker volume that determines its lifecycle.
    #   Docker volumes that are scoped to a `task` are automatically
    #   provisioned when the task starts and destroyed when the task stops.
    #   Docker volumes that are scoped as `shared` persist after the task
    #   stops.
    #   @return [String]
    #
    # @!attribute [rw] autoprovision
    #   If this value is `true`, the Docker volume is created if it doesn't
    #   already exist.
    #
    #   <note markdown="1"> This field is only used if the `scope` is `shared`.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] driver
    #   The Docker volume driver to use. The driver value must match the
    #   driver name provided by Docker because it is used for task
    #   placement. If the driver was installed using the Docker plugin CLI,
    #   use `docker plugin ls` to retrieve the driver name from your
    #   container instance. If the driver was installed using another
    #   method, use Docker plugin discovery to retrieve the driver name.
    #   This parameter maps to `Driver` in the docker container create
    #   command and the `xxdriver` option to docker volume create.
    #   @return [String]
    #
    # @!attribute [rw] driver_opts
    #   A map of Docker driver-specific options passed through. This
    #   parameter maps to `DriverOpts` in the docker create-volume command
    #   and the `xxopt` option to docker volume create.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] labels
    #   Custom metadata to add to your Docker volume. This parameter maps to
    #   `Labels` in the docker container create command and the `xxlabel`
    #   option to docker volume create.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DockerVolumeConfiguration AWS API Documentation
    #
    class DockerVolumeConfiguration < Struct.new(
      :scope,
      :autoprovision,
      :driver,
      :driver_opts,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag specifications of an Amazon EBS volume.
    #
    # @!attribute [rw] resource_type
    #   The type of volume resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags applied to this Amazon EBS volume. `AmazonECSCreated` and
    #   `AmazonECSManaged` are reserved tags that can't be used.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] propagate_tags
    #   Determines whether to propagate the tags from the task definition to
    #    the Amazon EBS volume. Tags can only propagate to a `SERVICE`
    #   specified in  `ServiceVolumeConfiguration`. If no value is
    #   specified, the tags aren't  propagated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/EBSTagSpecification AWS API Documentation
    #
    class EBSTagSpecification < Struct.new(
      :resource_type,
      :tags,
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorization configuration details for the Amazon EFS file
    # system.
    #
    # @!attribute [rw] access_point_id
    #   The Amazon EFS access point ID to use. If an access point is
    #   specified, the root directory value specified in the
    #   `EFSVolumeConfiguration` must either be omitted or set to `/` which
    #   will enforce the path set on the EFS access point. If an access
    #   point is used, transit encryption must be on in the
    #   `EFSVolumeConfiguration`. For more information, see [Working with
    #   Amazon EFS access points][1] in the *Amazon Elastic File System User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Determines whether to use the Amazon ECS task role defined in a task
    #   definition when mounting the Amazon EFS file system. If it is turned
    #   on, transit encryption must be turned on in the
    #   `EFSVolumeConfiguration`. If this parameter is omitted, the default
    #   value of `DISABLED` is used. For more information, see [Using Amazon
    #   EFS access points][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html#efs-volume-accesspoints
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/EFSAuthorizationConfig AWS API Documentation
    #
    class EFSAuthorizationConfig < Struct.new(
      :access_point_id,
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter is specified when you're using an Amazon Elastic File
    # System file system for task storage. For more information, see [Amazon
    # EFS volumes][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html
    #
    # @!attribute [rw] file_system_id
    #   The Amazon EFS file system ID to use.
    #   @return [String]
    #
    # @!attribute [rw] root_directory
    #   The directory within the Amazon EFS file system to mount as the root
    #   directory inside the host. If this parameter is omitted, the root of
    #   the Amazon EFS volume will be used. Specifying `/` will have the
    #   same effect as omitting this parameter.
    #
    #   If an EFS access point is specified in the `authorizationConfig`,
    #   the root directory parameter must either be omitted or set to `/`
    #   which will enforce the path set on the EFS access point.
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption
    #   Determines whether to use encryption for Amazon EFS data in transit
    #   between the Amazon ECS host and the Amazon EFS server. Transit
    #   encryption must be turned on if Amazon EFS IAM authorization is
    #   used. If this parameter is omitted, the default value of `DISABLED`
    #   is used. For more information, see [Encrypting data in transit][1]
    #   in the *Amazon Elastic File System User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_port
    #   The port to use when sending encrypted data between the Amazon ECS
    #   host and the Amazon EFS server. If you do not specify a transit
    #   encryption port, it will use the port selection strategy that the
    #   Amazon EFS mount helper uses. For more information, see [EFS mount
    #   helper][1] in the *Amazon Elastic File System User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html
    #   @return [Integer]
    #
    # @!attribute [rw] authorization_config
    #   The authorization configuration details for the Amazon EFS file
    #   system.
    #   @return [Types::EFSAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/EFSVolumeConfiguration AWS API Documentation
    #
    class EFSVolumeConfiguration < Struct.new(
      :file_system_id,
      :root_directory,
      :transit_encryption,
      :transit_encryption_port,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of files containing the environment variables to pass to a
    # container. You can specify up to ten environment files. The file must
    # have a `.env` file extension. Each line in an environment file should
    # contain an environment variable in `VARIABLE=VALUE` format. Lines
    # beginning with `#` are treated as comments and are ignored.
    #
    # If there are environment variables specified using the `environment`
    # parameter in a container definition, they take precedence over the
    # variables contained within an environment file. If multiple
    # environment files are specified that contain the same variable,
    # they're processed from the top down. We recommend that you use unique
    # variable names. For more information, see [Use a file to pass
    # environment variables to a container][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # Environment variable files are objects in Amazon S3 and all Amazon S3
    # security considerations apply.
    #
    # You must use the following platforms for the Fargate launch type:
    #
    # * Linux platform version `1.4.0` or later.
    #
    # * Windows platform version `1.0.0` or later.
    #
    # Consider the following when using the Fargate launch type:
    #
    # * The file is handled like a native Docker env-file.
    #
    # * There is no support for shell escape handling.
    #
    # * The container entry point interperts the `VARIABLE` values.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/use-environment-file.html
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the Amazon S3 object containing
    #   the environment variable file.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The file type to use. Environment files are objects in Amazon S3.
    #   The only supported value is `s3`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/EnvironmentFile AWS API Documentation
    #
    class EnvironmentFile < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of ephemeral storage to allocate for the task. This
    # parameter is used to expand the total amount of ephemeral storage
    # available, beyond the default amount, for tasks hosted on Fargate. For
    # more information, see [Using data volumes in tasks][1] in the *Amazon
    # ECS Developer Guide;*.
    #
    # <note markdown="1"> For tasks using the Fargate launch type, the task requires the
    # following platforms:
    #
    #  * Linux platform version `1.4.0` or later.
    #
    # * Windows platform version `1.0.0` or later.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #
    # @!attribute [rw] size_in_gi_b
    #   The total amount, in GiB, of ephemeral storage to set for the task.
    #   The minimum supported value is `21` GiB and the maximum supported
    #   value is `200` GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/EphemeralStorage AWS API Documentation
    #
    class EphemeralStorage < Struct.new(
      :size_in_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the execute command configuration.
    #
    # @!attribute [rw] kms_key_id
    #   Specify an Key Management Service key ID to encrypt the data between
    #   the local client and the container.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The log setting to use for redirecting logs for your execute command
    #   results. The following log settings are available.
    #
    #   * `NONE`: The execute command session is not logged.
    #
    #   * `DEFAULT`: The `awslogs` configuration in the task definition is
    #     used. If no logging parameter is specified, it defaults to this
    #     value. If no `awslogs` log driver is configured in the task
    #     definition, the output won't be logged.
    #
    #   * `OVERRIDE`: Specify the logging details as a part of
    #     `logConfiguration`. If the `OVERRIDE` logging option is specified,
    #     the `logConfiguration` is required.
    #   @return [String]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration for the results of the execute command
    #   actions. The logs can be sent to CloudWatch Logs or an Amazon S3
    #   bucket. When `logging=OVERRIDE` is specified, a `logConfiguration`
    #   must be provided.
    #   @return [Types::ExecuteCommandLogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ExecuteCommandConfiguration AWS API Documentation
    #
    class ExecuteCommandConfiguration < Struct.new(
      :kms_key_id,
      :logging,
      :log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration for the results of the execute command actions.
    # The logs can be sent to CloudWatch Logs or an Amazon S3 bucket.
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   The name of the CloudWatch log group to send logs to.
    #
    #   <note markdown="1"> The CloudWatch log group must already be created.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_encryption_enabled
    #   Determines whether to use encryption on the CloudWatch logs. If not
    #   specified, encryption will be off.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket to send logs to.
    #
    #   <note markdown="1"> The S3 bucket must already be created.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] s3_encryption_enabled
    #   Determines whether to use encryption on the S3 logs. If not
    #   specified, encryption is not used.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_key_prefix
    #   An optional folder in the S3 bucket to place logs in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ExecuteCommandLogConfiguration AWS API Documentation
    #
    class ExecuteCommandLogConfiguration < Struct.new(
      :cloud_watch_log_group_name,
      :cloud_watch_encryption_enabled,
      :s3_bucket_name,
      :s3_encryption_enabled,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The Amazon Resource Name (ARN) or short name of the cluster the task
    #   is running in. If you do not specify a cluster, the default cluster
    #   is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container
    #   The name of the container to execute the command on. A container
    #   name only needs to be specified for tasks containing multiple
    #   containers.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The command to run on the container.
    #   @return [String]
    #
    # @!attribute [rw] interactive
    #   Use this flag to run your command in interactive mode.
    #   @return [Boolean]
    #
    # @!attribute [rw] task
    #   The Amazon Resource Name (ARN) or ID of the task the container is
    #   part of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ExecuteCommandRequest AWS API Documentation
    #
    class ExecuteCommandRequest < Struct.new(
      :cluster,
      :container,
      :command,
      :interactive,
      :task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_arn
    #   The Amazon Resource Name (ARN) of the container.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] interactive
    #   Determines whether the execute command session is running in
    #   interactive mode. Amazon ECS only supports initiating interactive
    #   sessions, so you must specify `true` for this value.
    #   @return [Boolean]
    #
    # @!attribute [rw] session
    #   The details of the SSM session that was created for this instance of
    #   execute-command.
    #   @return [Types::Session]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ExecuteCommandResponse AWS API Documentation
    #
    class ExecuteCommandResponse < Struct.new(
      :cluster_arn,
      :container_arn,
      :container_name,
      :interactive,
      :session,
      :task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorization configuration details for Amazon FSx for Windows
    # File Server file system. See
    # [FSxWindowsFileServerVolumeConfiguration][1] in the *Amazon ECS API
    # Reference*.
    #
    # For more information and the input format, see [Amazon FSx for Windows
    # File Server Volumes][2] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_FSxWindowsFileServerVolumeConfiguration.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html
    #
    # @!attribute [rw] credentials_parameter
    #   The authorization credential option to use. The authorization
    #   credential options can be provided using either the Amazon Resource
    #   Name (ARN) of an Secrets Manager secret or SSM Parameter Store
    #   parameter. The ARN refers to the stored credentials.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   A fully qualified domain name hosted by an [Directory Service][1]
    #   Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon
    #   EC2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/FSxWindowsFileServerAuthorizationConfig AWS API Documentation
    #
    class FSxWindowsFileServerAuthorizationConfig < Struct.new(
      :credentials_parameter,
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter is specified when you're using [Amazon FSx for Windows
    # File Server][1] file system for task storage.
    #
    # For more information and the input format, see [Amazon FSx for Windows
    # File Server volumes][2] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html
    #
    # @!attribute [rw] file_system_id
    #   The Amazon FSx for Windows File Server file system ID to use.
    #   @return [String]
    #
    # @!attribute [rw] root_directory
    #   The directory within the Amazon FSx for Windows File Server file
    #   system to mount as the root directory inside the host.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   The authorization configuration details for the Amazon FSx for
    #   Windows File Server file system.
    #   @return [Types::FSxWindowsFileServerAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/FSxWindowsFileServerVolumeConfiguration AWS API Documentation
    #
    class FSxWindowsFileServerVolumeConfiguration < Struct.new(
      :file_system_id,
      :root_directory,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failed resource. For a list of common causes, see [API failure
    # reasons][1] in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the failed resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The details of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Failure AWS API Documentation
    #
    class Failure < Struct.new(
      :arn,
      :reason,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The FireLens configuration for the container. This is used to specify
    # and configure a log router for container logs. For more information,
    # see [Custom log routing][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html
    #
    # @!attribute [rw] type
    #   The log router to use. The valid values are `fluentd` or
    #   `fluentbit`.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The options to use when configuring the log router. This field is
    #   optional and can be used to specify a custom configuration file or
    #   to add additional metadata, such as the task, task definition,
    #   cluster, and container instance details to the log event. If
    #   specified, the syntax to use is
    #   `"options":{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"}`.
    #   For more information, see [Creating a task definition that uses a
    #   FireLens configuration][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   <note markdown="1"> Tasks hosted on Fargate only support the `file` configuration file
    #   type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html#firelens-taskdef
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/FirelensConfiguration AWS API Documentation
    #
    class FirelensConfiguration < Struct.new(
      :type,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task sets exist in.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/GetTaskProtectionRequest AWS API Documentation
    #
    class GetTaskProtectionRequest < Struct.new(
      :cluster,
      :tasks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_tasks
    #   A list of tasks with the following information.
    #
    #   * `taskArn`: The task ARN.
    #
    #   * `protectionEnabled`: The protection status of the task. If
    #     scale-in protection is turned on for a task, the value is `true`.
    #     Otherwise, it is `false`.
    #
    #   * `expirationDate`: The epoch time when protection for the task will
    #     expire.
    #   @return [Array<Types::ProtectedTask>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/GetTaskProtectionResponse AWS API Documentation
    #
    class GetTaskProtectionResponse < Struct.new(
      :protected_tasks,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a container health check. Health check
    # parameters that are specified in a container definition override any
    # Docker health checks that exist in the container image (such as those
    # specified in a parent image or from the image's Dockerfile). This
    # configuration maps to the `HEALTHCHECK` parameter of docker run.
    #
    # <note markdown="1"> The Amazon ECS container agent only monitors and reports on the health
    # checks specified in the task definition. Amazon ECS does not monitor
    # Docker health checks that are embedded in a container image and not
    # specified in the container definition. Health check parameters that
    # are specified in a container definition override any Docker health
    # checks that exist in the container image.
    #
    #  </note>
    #
    # You can view the health status of both individual containers and a
    # task with the DescribeTasks API operation or when viewing the task
    # details in the console.
    #
    # The health check is designed to make sure that your containers survive
    # agent restarts, upgrades, or temporary unavailability.
    #
    # Amazon ECS performs health checks on containers with the default that
    # launched the container instance or the task.
    #
    # The following describes the possible `healthStatus` values for a
    # container:
    #
    # * `HEALTHY`-The container health check has passed successfully.
    #
    # * `UNHEALTHY`-The container health check has failed.
    #
    # * `UNKNOWN`-The container health check is being evaluated, there's no
    #   container health check defined, or Amazon ECS doesn't have the
    #   health status of the container.
    #
    # The following describes the possible `healthStatus` values based on
    # the container health checker status of essential containers in the
    # task with the following priority order (high to low):
    #
    # * `UNHEALTHY`-One or more essential containers have failed their
    #   health check.
    #
    # * `UNKNOWN`-Any essential container running within the task is in an
    #   `UNKNOWN` state and no other essential containers have an
    #   `UNHEALTHY` state.
    #
    # * `HEALTHY`-All essential containers within the task have passed their
    #   health checks.
    #
    # Consider the following task health example with 2 containers.
    #
    # * If Container1 is `UNHEALTHY` and Container2 is `UNKNOWN`, the task
    #   health is `UNHEALTHY`.
    #
    # * If Container1 is `UNHEALTHY` and Container2 is `HEALTHY`, the task
    #   health is `UNHEALTHY`.
    #
    # * If Container1 is `HEALTHY` and Container2 is `UNKNOWN`, the task
    #   health is `UNKNOWN`.
    #
    # * If Container1 is `HEALTHY` and Container2 is `HEALTHY`, the task
    #   health is `HEALTHY`.
    #
    # Consider the following task health example with 3 containers.
    #
    # * If Container1 is `UNHEALTHY` and Container2 is `UNKNOWN`, and
    #   Container3 is `UNKNOWN`, the task health is `UNHEALTHY`.
    #
    # * If Container1 is `UNHEALTHY` and Container2 is `UNKNOWN`, and
    #   Container3 is `HEALTHY`, the task health is `UNHEALTHY`.
    #
    # * If Container1 is `UNHEALTHY` and Container2 is `HEALTHY`, and
    #   Container3 is `HEALTHY`, the task health is `UNHEALTHY`.
    #
    # * If Container1 is `HEALTHY` and Container2 is `UNKNOWN`, and
    #   Container3 is `HEALTHY`, the task health is `UNKNOWN`.
    #
    # * If Container1 is `HEALTHY` and Container2 is `UNKNOWN`, and
    #   Container3 is `UNKNOWN`, the task health is `UNKNOWN`.
    #
    # * If Container1 is `HEALTHY` and Container2 is `HEALTHY`, and
    #   Container3 is `HEALTHY`, the task health is `HEALTHY`.
    #
    # If a task is run manually, and not as part of a service, the task will
    # continue its lifecycle regardless of its health status. For tasks that
    # are part of a service, if the task reports as unhealthy then the task
    # will be stopped and the service scheduler will replace it.
    #
    # When a container health check fails for a task that is part of a
    # service, the following process occurs:
    #
    # 1.  The task is marked as `UNHEALTHY`.
    #
    # 2.  The unhealthy task will be stopped, and during the stopping
    #     process, it will go through the following states:
    #
    #     * `DEACTIVATING` - In this state, Amazon ECS performs additional
    #       steps before stopping the task. For example, for tasks that are
    #       part of services configured to use Elastic Load Balancing target
    #       groups, target groups will be deregistered in this state.
    #
    #     * `STOPPING` - The task is in the process of being stopped.
    #
    #     * `DEPROVISIONING` - Resources associated with the task are being
    #       cleaned up.
    #
    #     * `STOPPED` - The task has been completely stopped.
    # 3.  After the old task stops, a new task will be launched to ensure
    #     service operation, and the new task will go through the following
    #     lifecycle:
    #
    #     * `PROVISIONING` - Resources required for the task are being
    #       provisioned.
    #
    #     * `PENDING` - The task is waiting to be placed on a container
    #       instance.
    #
    #     * `ACTIVATING` - In this state, Amazon ECS pulls container images,
    #       creates containers, configures task networking, registers load
    #       balancer target groups, and configures service discovery status.
    #
    #     * `RUNNING` - The task is running and performing its work.
    #
    # For more detailed information about task lifecycle states, see [Task
    # lifecycle][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # The following are notes about container health check support:
    #
    # * If the Amazon ECS container agent becomes disconnected from the
    #   Amazon ECS service, this won't cause a container to transition to
    #   an `UNHEALTHY` status. This is by design, to ensure that containers
    #   remain running during agent restarts or temporary unavailability.
    #   The health check status is the "last heard from" response from the
    #   Amazon ECS agent, so if the container was considered `HEALTHY` prior
    #   to the disconnect, that status will remain until the agent
    #   reconnects and another health check occurs. There are no assumptions
    #   made about the status of the container health checks.
    #
    # * Container health checks require version `1.17.0` or greater of the
    #   Amazon ECS container agent. For more information, see [Updating the
    #   Amazon ECS container agent][2].
    #
    # * Container health checks are supported for Fargate tasks if you're
    #   using platform version `1.1.0` or greater. For more information, see
    #   [Fargate platform versions][3].
    #
    # * Container health checks aren't supported for tasks that are part of
    #   a service that's configured to use a Classic Load Balancer.
    #
    # For an example of how to specify a task definition with multiple
    # containers where container dependency is specified, see [Container
    # dependency][4] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle-explanation.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/example_task_definitions.html#example_task_definition-containerdependency
    #
    # @!attribute [rw] command
    #   A string array representing the command that the container runs to
    #   determine if it is healthy. The string array must start with `CMD`
    #   to run the command arguments directly, or `CMD-SHELL` to run the
    #   command with the container's default shell.
    #
    #   When you use the Amazon Web Services Management Console JSON panel,
    #   the Command Line Interface, or the APIs, enclose the list of
    #   commands in double quotes and brackets.
    #
    #   `[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]`
    #
    #   You don't include the double quotes and brackets when you use the
    #   Amazon Web Services Management Console.
    #
    #   ` CMD-SHELL, curl -f http://localhost/ || exit 1`
    #
    #   An exit code of 0 indicates success, and non-zero exit code
    #   indicates failure. For more information, see `HealthCheck` in the
    #   docker container create command.
    #   @return [Array<String>]
    #
    # @!attribute [rw] interval
    #   The time period in seconds between each health check execution. You
    #   may specify between 5 and 300 seconds. The default value is 30
    #   seconds. This value applies only when you specify a `command`.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time period in seconds to wait for a health check to succeed
    #   before it is considered a failure. You may specify between 2 and 60
    #   seconds. The default value is 5. This value applies only when you
    #   specify a `command`.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of times to retry a failed health check before the
    #   container is considered unhealthy. You may specify between 1 and 10
    #   retries. The default value is 3. This value applies only when you
    #   specify a `command`.
    #   @return [Integer]
    #
    # @!attribute [rw] start_period
    #   The optional grace period to provide containers time to bootstrap
    #   before failed health checks count towards the maximum number of
    #   retries. You can specify between 0 and 300 seconds. By default, the
    #   `startPeriod` is off. This value applies only when you specify a
    #   `command`.
    #
    #   <note markdown="1"> If a health check succeeds within the `startPeriod`, then the
    #   container is considered healthy and any subsequent failures count
    #   toward the maximum number of retries.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HealthCheck AWS API Documentation
    #
    class HealthCheck < Struct.new(
      :command,
      :interval,
      :timeout,
      :retries,
      :start_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hostnames and IP address entries that are added to the `/etc/hosts`
    # file of a container via the `extraHosts` parameter of its
    # [ContainerDefinition][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html
    #
    # @!attribute [rw] hostname
    #   The hostname to use in the `/etc/hosts` entry.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address to use in the `/etc/hosts` entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HostEntry AWS API Documentation
    #
    class HostEntry < Struct.new(
      :hostname,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a container instance bind mount host volume.
    #
    # @!attribute [rw] source_path
    #   When the `host` parameter is used, specify a `sourcePath` to declare
    #   the path on the host container instance that's presented to the
    #   container. If this parameter is empty, then the Docker daemon has
    #   assigned a host path for you. If the `host` parameter contains a
    #   `sourcePath` file location, then the data volume persists at the
    #   specified location on the host container instance until you delete
    #   it manually. If the `sourcePath` value doesn't exist on the host
    #   container instance, the Docker daemon creates it. If the location
    #   does exist, the contents of the source path folder are exported.
    #
    #   If you're using the Fargate launch type, the `sourcePath` parameter
    #   is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/HostVolumeProperties AWS API Documentation
    #
    class HostVolumeProperties < Struct.new(
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on an Elastic Inference accelerator. For more information, see
    # [Working with Amazon Elastic Inference on Amazon ECS][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html
    #
    # @!attribute [rw] device_name
    #   The Elastic Inference accelerator device name. The `deviceName` must
    #   also be referenced in a container definition as a
    #   [ResourceRequirement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The Elastic Inference accelerator type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InferenceAccelerator AWS API Documentation
    #
    class InferenceAccelerator < Struct.new(
      :device_name,
      :device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on an Elastic Inference accelerator task override. This
    # parameter is used to override the Elastic Inference accelerator
    # specified in the task definition. For more information, see [Working
    # with Amazon Elastic Inference on Amazon ECS][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html
    #
    # @!attribute [rw] device_name
    #   The Elastic Inference accelerator device name to override for the
    #   task. This parameter must match a `deviceName` specified in the task
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The Elastic Inference accelerator type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InferenceAcceleratorOverride AWS API Documentation
    #
    class InferenceAcceleratorOverride < Struct.new(
      :device_name,
      :device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the result of a container instance health
    # status check.
    #
    # @!attribute [rw] type
    #   The type of container instance health status that was verified.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The container instance health status.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   The Unix timestamp for when the container instance health status was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_status_change
    #   The Unix timestamp for when the container instance health status
    #   last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InstanceHealthCheckResult AWS API Documentation
    #
    class InstanceHealthCheckResult < Struct.new(
      :type,
      :status,
      :last_updated,
      :last_status_change)
      SENSITIVE = []
      include Aws::Structure
    end

    # The launch template configuration for Amazon ECS Managed Instances.
    # This defines how Amazon ECS launches Amazon EC2 instances, including
    # the instance profile for your tasks, network and storage
    # configuration, capacity options, and instance requirements for
    # flexible instance type selection.
    #
    # @!attribute [rw] ec2_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the instance profile that Amazon
    #   ECS applies to Amazon ECS Managed Instances. This instance profile
    #   must include the necessary permissions for your tasks to access
    #   Amazon Web Services services and resources.
    #
    #   For more information, see [Amazon ECS instance profile for Managed
    #   Instances][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/managed-instances-instance-profile.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for Amazon ECS Managed Instances. This
    #   specifies the subnets and security groups that instances use for
    #   network connectivity.
    #   @return [Types::ManagedInstancesNetworkConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   The storage configuration for Amazon ECS Managed Instances. This
    #   defines the root volume size and type for the instances.
    #   @return [Types::ManagedInstancesStorageConfiguration]
    #
    # @!attribute [rw] monitoring
    #   CloudWatch provides two categories of monitoring: basic monitoring
    #   and detailed monitoring. By default, your managed instance is
    #   configured for basic monitoring. You can optionally enable detailed
    #   monitoring to help you more quickly identify and act on operational
    #   issues. You can enable or turn off detailed monitoring at launch or
    #   when the managed instance is running or stopped. For more
    #   information, see [Detailed monitoring for Amazon ECS Managed
    #   Instances][1] in the Amazon ECS Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/detailed-monitoring-managed-instances.html
    #   @return [String]
    #
    # @!attribute [rw] instance_requirements
    #   The instance requirements. You can specify:
    #
    #   * The instance types
    #
    #   * Instance requirements such as vCPU count, memory, network
    #     performance, and accelerator specifications
    #
    #   Amazon ECS automatically selects the instances that match the
    #   specified criteria.
    #   @return [Types::InstanceRequirementsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InstanceLaunchTemplate AWS API Documentation
    #
    class InstanceLaunchTemplate < Struct.new(
      :ec2_instance_profile_arn,
      :network_configuration,
      :storage_configuration,
      :monitoring,
      :instance_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated launch template configuration for Amazon ECS Managed
    # Instances. You can modify the instance profile, network configuration,
    # storage settings, and instance requirements. Changes apply to new
    # instances launched after the update.
    #
    # For more information, see [Store instance launch parameters in Amazon
    # EC2 launch templates][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    #
    # @!attribute [rw] ec2_instance_profile_arn
    #   The updated Amazon Resource Name (ARN) of the instance profile. The
    #   new instance profile must have the necessary permissions for your
    #   tasks.
    #
    #   For more information, see [Amazon ECS instance profile for Managed
    #   Instances][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/managed-instances-instance-profile.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The updated network configuration for Amazon ECS Managed Instances.
    #   Changes to subnets and security groups affect new instances launched
    #   after the update.
    #   @return [Types::ManagedInstancesNetworkConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   The updated storage configuration for Amazon ECS Managed Instances.
    #   Changes to storage settings apply to new instances launched after
    #   the update.
    #   @return [Types::ManagedInstancesStorageConfiguration]
    #
    # @!attribute [rw] monitoring
    #   CloudWatch provides two categories of monitoring: basic monitoring
    #   and detailed monitoring. By default, your managed instance is
    #   configured for basic monitoring. You can optionally enable detailed
    #   monitoring to help you more quickly identify and act on operational
    #   issues. You can enable or turn off detailed monitoring at launch or
    #   when the managed instance is running or stopped. For more
    #   information, see [Detailed monitoring for Amazon ECS Managed
    #   Instances][1] in the Amazon ECS Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/detailed-monitoring-managed-instances.html
    #   @return [String]
    #
    # @!attribute [rw] instance_requirements
    #   The updated instance requirements for attribute-based instance type
    #   selection. Changes to instance requirements affect which instance
    #   types Amazon ECS selects for new instances.
    #   @return [Types::InstanceRequirementsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InstanceLaunchTemplateUpdate AWS API Documentation
    #
    class InstanceLaunchTemplateUpdate < Struct.new(
      :ec2_instance_profile_arn,
      :network_configuration,
      :storage_configuration,
      :monitoring,
      :instance_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance requirements for attribute-based instance type selection.
    # Instead of specifying exact instance types, you define requirements
    # such as vCPU count, memory size, network performance, and accelerator
    # specifications. Amazon ECS automatically selects Amazon EC2 instance
    # types that match these requirements, providing flexibility and helping
    # to mitigate capacity constraints.
    #
    # @!attribute [rw] v_cpu_count
    #   The minimum and maximum number of vCPUs for the instance types.
    #   Amazon ECS selects instance types that have vCPU counts within this
    #   range.
    #   @return [Types::VCpuCountRangeRequest]
    #
    # @!attribute [rw] memory_mi_b
    #   The minimum and maximum amount of memory in mebibytes (MiB) for the
    #   instance types. Amazon ECS selects instance types that have memory
    #   within this range.
    #   @return [Types::MemoryMiBRequest]
    #
    # @!attribute [rw] cpu_manufacturers
    #   The CPU manufacturers to include or exclude. You can specify
    #   `intel`, `amd`, or `amazon-web-services` to control which CPU types
    #   are used for your workloads.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_gi_b_per_v_cpu
    #   The minimum and maximum amount of memory per vCPU in gibibytes
    #   (GiB). This helps ensure that instance types have the appropriate
    #   memory-to-CPU ratio for your workloads.
    #   @return [Types::MemoryGiBPerVCpuRequest]
    #
    # @!attribute [rw] excluded_instance_types
    #   The instance types to exclude from selection. Use this to prevent
    #   Amazon ECS from selecting specific instance types that may not be
    #   suitable for your workloads.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_generations
    #   The instance generations to include. You can specify `current` to
    #   use the latest generation instances, or `previous` to include
    #   previous generation instances for cost optimization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] spot_max_price_percentage_over_lowest_price
    #   The maximum price for Spot instances as a percentage over the lowest
    #   priced On-Demand instance. This helps control Spot instance costs
    #   while maintaining access to capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] on_demand_max_price_percentage_over_lowest_price
    #   The price protection threshold for On-Demand Instances, as a
    #   percentage higher than an identified On-Demand price. The identified
    #   On-Demand price is the price of the lowest priced current generation
    #   C, M, or R instance type with your specified attributes. If no
    #   current generation C, M, or R instance type matches your attributes,
    #   then the identified price is from either the lowest priced current
    #   generation instance types or, failing that, the lowest priced
    #   previous generation instance types that match your attributes. When
    #   Amazon ECS selects instance types with your attributes, we will
    #   exclude instance types whose price exceeds your specified threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] bare_metal
    #   Indicates whether to include bare metal instance types. Set to
    #   `included` to allow bare metal instances, `excluded` to exclude
    #   them, or `required` to use only bare metal instances.
    #   @return [String]
    #
    # @!attribute [rw] burstable_performance
    #   Indicates whether to include burstable performance instance types
    #   (T2, T3, T3a, T4g). Set to `included` to allow burstable instances,
    #   `excluded` to exclude them, or `required` to use only burstable
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] require_hibernate_support
    #   Indicates whether the instance types must support hibernation. When
    #   set to `true`, only instance types that support hibernation are
    #   selected.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_count
    #   The minimum and maximum number of network interfaces for the
    #   instance types. This is useful for workloads that require multiple
    #   network interfaces.
    #   @return [Types::NetworkInterfaceCountRequest]
    #
    # @!attribute [rw] local_storage
    #   Indicates whether to include instance types with local storage. Set
    #   to `included` to allow local storage, `excluded` to exclude it, or
    #   `required` to use only instances with local storage.
    #   @return [String]
    #
    # @!attribute [rw] local_storage_types
    #   The local storage types to include. You can specify `hdd` for hard
    #   disk drives, `ssd` for solid state drives, or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] total_local_storage_gb
    #   The minimum and maximum total local storage in gigabytes (GB) for
    #   instance types with local storage.
    #   @return [Types::TotalLocalStorageGBRequest]
    #
    # @!attribute [rw] baseline_ebs_bandwidth_mbps
    #   The minimum and maximum baseline Amazon EBS bandwidth in megabits
    #   per second (Mbps). This is important for workloads with high storage
    #   I/O requirements.
    #   @return [Types::BaselineEbsBandwidthMbpsRequest]
    #
    # @!attribute [rw] accelerator_types
    #   The accelerator types to include. You can specify `gpu` for graphics
    #   processing units, `fpga` for field programmable gate arrays, or
    #   `inference` for machine learning inference accelerators.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_count
    #   The minimum and maximum number of accelerators for the instance
    #   types. This is used when you need instances with specific numbers of
    #   GPUs or other accelerators.
    #   @return [Types::AcceleratorCountRequest]
    #
    # @!attribute [rw] accelerator_manufacturers
    #   The accelerator manufacturers to include. You can specify `nvidia`,
    #   `amd`, `amazon-web-services`, or `xilinx` depending on your
    #   accelerator requirements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_names
    #   The specific accelerator names to include. For example, you can
    #   specify `a100`, `v100`, `k80`, or other specific accelerator models.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_total_memory_mi_b
    #   The minimum and maximum total accelerator memory in mebibytes (MiB).
    #   This is important for GPU workloads that require specific amounts of
    #   video memory.
    #   @return [Types::AcceleratorTotalMemoryMiBRequest]
    #
    # @!attribute [rw] network_bandwidth_gbps
    #   The minimum and maximum network bandwidth in gigabits per second
    #   (Gbps). This is crucial for network-intensive workloads that require
    #   high throughput.
    #   @return [Types::NetworkBandwidthGbpsRequest]
    #
    # @!attribute [rw] allowed_instance_types
    #   The instance types to include in the selection. When specified,
    #   Amazon ECS only considers these instance types, subject to the other
    #   requirements specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_spot_price_as_percentage_of_optimal_on_demand_price
    #   The maximum price for Spot instances as a percentage of the optimal
    #   On-Demand price. This provides more precise cost control for Spot
    #   instance selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InstanceRequirementsRequest AWS API Documentation
    #
    class InstanceRequirementsRequest < Struct.new(
      :v_cpu_count,
      :memory_mi_b,
      :cpu_manufacturers,
      :memory_gi_b_per_v_cpu,
      :excluded_instance_types,
      :instance_generations,
      :spot_max_price_percentage_over_lowest_price,
      :on_demand_max_price_percentage_over_lowest_price,
      :bare_metal,
      :burstable_performance,
      :require_hibernate_support,
      :network_interface_count,
      :local_storage,
      :local_storage_types,
      :total_local_storage_gb,
      :baseline_ebs_bandwidth_mbps,
      :accelerator_types,
      :accelerator_count,
      :accelerator_manufacturers,
      :accelerator_names,
      :accelerator_total_memory_mi_b,
      :network_bandwidth_gbps,
      :allowed_instance_types,
      :max_spot_price_as_percentage_of_optimal_on_demand_price)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter isn't valid. Review the available parameters
    # for the API request.
    #
    # For more information about service event errors, see [Amazon ECS
    # service event messages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-event-messages-list.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The Linux capabilities to add or remove from the default Docker
    # configuration for a container defined in the task definition. For more
    # detailed information about these Linux capabilities, see the
    # [capabilities(7)][1] Linux manual page.
    #
    # The following describes how Docker processes the Linux capabilities
    # specified in the `add` and `drop` request parameters. For information
    # about the latest behavior, see [Docker Compose: order of cap\_drop and
    # cap\_add][2] in the Docker Community Forum.
    #
    # * When the container is a privleged container, the container
    #   capabilities are all of the default Docker capabilities. The
    #   capabilities specified in the `add` request parameter, and the
    #   `drop` request parameter are ignored.
    #
    # * When the `add` request parameter is set to ALL, the container
    #   capabilities are all of the default Docker capabilities, excluding
    #   those specified in the `drop` request parameter.
    #
    # * When the `drop` request parameter is set to ALL, the container
    #   capabilities are the capabilities specified in the `add` request
    #   parameter.
    #
    # * When the `add` request parameter and the `drop` request parameter
    #   are both empty, the capabilities the container capabilities are all
    #   of the default Docker capabilities.
    #
    # * The default is to first drop the capabilities specified in the
    #   `drop` request parameter, and then add the capabilities specified in
    #   the `add` request parameter.
    #
    #
    #
    # [1]: http://man7.org/linux/man-pages/man7/capabilities.7.html
    # [2]: https://forums.docker.com/t/docker-compose-order-of-cap-drop-and-cap-add/97136/1
    #
    # @!attribute [rw] add
    #   The Linux capabilities for the container that have been added to the
    #   default configuration provided by Docker. This parameter maps to
    #   `CapAdd` in the docker container create command and the `--cap-add`
    #   option to docker run.
    #
    #   <note markdown="1"> Tasks launched on Fargate only support adding the `SYS_PTRACE`
    #   kernel capability.
    #
    #    </note>
    #
    #   Valid values: `"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
    #   "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
    #   "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
    #   "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
    #   "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
    #   "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" |
    #   "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT"
    #   | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" |
    #   "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] drop
    #   The Linux capabilities for the container that have been removed from
    #   the default configuration provided by Docker. This parameter maps to
    #   `CapDrop` in the docker container create command and the
    #   `--cap-drop` option to docker run.
    #
    #   Valid values: `"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" |
    #   "BLOCK_SUSPEND" | "CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" |
    #   "FOWNER" | "FSETID" | "IPC_LOCK" | "IPC_OWNER" | "KILL" | "LEASE" |
    #   "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" | "MKNOD" |
    #   "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" |
    #   "SETFCAP" | "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" |
    #   "SYS_BOOT" | "SYS_CHROOT" | "SYS_MODULE" | "SYS_NICE" | "SYS_PACCT"
    #   | "SYS_PTRACE" | "SYS_RAWIO" | "SYS_RESOURCE" | "SYS_TIME" |
    #   "SYS_TTY_CONFIG" | "SYSLOG" | "WAKE_ALARM"`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/KernelCapabilities AWS API Documentation
    #
    class KernelCapabilities < Struct.new(
      :add,
      :drop)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair object.
    #
    # @!attribute [rw] name
    #   The name of the key-value pair. For environment variables, this is
    #   the name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key-value pair. For environment variables, this is
    #   the value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit for the resource was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # The Linux-specific options that are applied to the container, such as
    # Linux [KernelCapabilities][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html
    #
    # @!attribute [rw] capabilities
    #   The Linux capabilities for the container that are added to or
    #   dropped from the default configuration provided by Docker.
    #
    #   <note markdown="1"> For tasks that use the Fargate launch type, `capabilities` is
    #   supported for all platform versions but the `add` parameter is only
    #   supported if using platform version 1.4.0 or later.
    #
    #    </note>
    #   @return [Types::KernelCapabilities]
    #
    # @!attribute [rw] devices
    #   Any host devices to expose to the container. This parameter maps to
    #   `Devices` in the docker container create command and the `--device`
    #   option to docker run.
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `devices` parameter isn't supported.
    #
    #    </note>
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] init_process_enabled
    #   Run an `init` process inside the container that forwards signals and
    #   reaps processes. This parameter maps to the `--init` option to
    #   docker run. This parameter requires version 1.25 of the Docker
    #   Remote API or greater on your container instance. To check the
    #   Docker Remote API version on your container instance, log in to your
    #   container instance and run the following command: `sudo docker
    #   version --format '{{.Server.APIVersion}}'`
    #   @return [Boolean]
    #
    # @!attribute [rw] shared_memory_size
    #   The value for the size (in MiB) of the `/dev/shm` volume. This
    #   parameter maps to the `--shm-size` option to docker run.
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `sharedMemorySize` parameter is not supported.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount. This parameter maps to the `--tmpfs` option to docker run.
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the `tmpfs`
    #   parameter isn't supported.
    #
    #    </note>
    #   @return [Array<Types::Tmpfs>]
    #
    # @!attribute [rw] max_swap
    #   The total amount of swap memory (in MiB) a container can use. This
    #   parameter will be translated to the `--memory-swap` option to docker
    #   run where the value would be the sum of the container memory plus
    #   the `maxSwap` value.
    #
    #   If a `maxSwap` value of `0` is specified, the container will not use
    #   swap. Accepted values are `0` or any positive integer. If the
    #   `maxSwap` parameter is omitted, the container will use the swap
    #   configuration for the container instance it is running on. A
    #   `maxSwap` value must be set for the `swappiness` parameter to be
    #   used.
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `maxSwap` parameter isn't supported.
    #
    #    If you're using tasks on Amazon Linux 2023 the `swappiness`
    #   parameter isn't supported.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] swappiness
    #   This allows you to tune a container's memory swappiness behavior. A
    #   `swappiness` value of `0` will cause swapping to not happen unless
    #   absolutely necessary. A `swappiness` value of `100` will cause pages
    #   to be swapped very aggressively. Accepted values are whole numbers
    #   between `0` and `100`. If the `swappiness` parameter is not
    #   specified, a default value of `60` is used. If a value is not
    #   specified for `maxSwap` then this parameter is ignored. This
    #   parameter maps to the `--memory-swappiness` option to docker run.
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `swappiness` parameter isn't supported.
    #
    #    If you're using tasks on Amazon Linux 2023 the `swappiness`
    #   parameter isn't supported.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LinuxParameters AWS API Documentation
    #
    class LinuxParameters < Struct.new(
      :capabilities,
      :devices,
      :init_process_enabled,
      :shared_memory_size,
      :tmpfs,
      :max_swap,
      :swappiness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the account setting you want to list the settings for.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the account settings to filter results with. You must
    #   also specify an account setting name to use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be a user, role, or the root
    #   user. If this field is omitted, the account settings are listed only
    #   for the authenticated user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #
    #   <note markdown="1"> Federated users assume the account setting of the root user and
    #   can't have explicit account settings set for them.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] effective_settings
    #   Determines whether to return the effective settings. If `true`, the
    #   account settings for the root user or the default setting for the
    #   `principalArn` are returned. If `false`, the account settings for
    #   the `principalArn` are returned if they're set. Otherwise, no
    #   account settings are returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListAccountSettings` request
    #   indicating that more results are available to fulfill the request
    #   and further calls will be needed. If `maxResults` was provided,
    #   it's possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of account setting results returned by
    #   `ListAccountSettings` in paginated output. When this parameter is
    #   used, `ListAccountSettings` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListAccountSettings` request with the returned `nextToken` value.
    #   This value can be between 1 and 10. If this parameter isn't used,
    #   then `ListAccountSettings` returns up to 10 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAccountSettingsRequest AWS API Documentation
    #
    class ListAccountSettingsRequest < Struct.new(
      :name,
      :value,
      :principal_arn,
      :effective_settings,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] settings
    #   The account settings for the resource.
    #   @return [Array<Types::Setting>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListAccountSettings`
    #   request. When the results of a `ListAccountSettings` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAccountSettingsResponse AWS API Documentation
    #
    class ListAccountSettingsResponse < Struct.new(
      :settings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   list attributes. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target to list attributes with.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute to filter the results with.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of the attribute to filter results with. You must also
    #   specify an attribute name to use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListAttributes` request
    #   indicating that more results are available to fulfill the request
    #   and further calls are needed. If `maxResults` was provided, it's
    #   possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results that `ListAttributes` returned
    #   in paginated output. When this parameter is used, `ListAttributes`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListAttributes` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter isn't used, then `ListAttributes` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributesRequest AWS API Documentation
    #
    class ListAttributesRequest < Struct.new(
      :cluster,
      :target_type,
      :attribute_name,
      :attribute_value,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   A list of attribute objects that meet the criteria of the request.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListAttributes`
    #   request. When the results of a `ListAttributes` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributesResponse AWS API Documentation
    #
    class ListAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListClusters` request
    #   indicating that more results are available to fulfill the request
    #   and further calls are needed. If `maxResults` was provided, it's
    #   possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results that `ListClusters` returned
    #   in paginated output. When this parameter is used, `ListClusters`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter isn't used, then `ListClusters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arns
    #   The list of full Amazon Resource Name (ARN) entries for each cluster
    #   that's associated with your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListClusters` request.
    #   When the results of a `ListClusters` request exceed `maxResults`,
    #   this value can be used to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :cluster_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instances to list. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   You can filter the results of a `ListContainerInstances` operation
    #   with cluster query language statements. For more information, see
    #   [Cluster Query Language][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListContainerInstances`
    #   request indicating that more results are available to fulfill the
    #   request and further calls are needed. If `maxResults` was provided,
    #   it's possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of container instance results that
    #   `ListContainerInstances` returned in paginated output. When this
    #   parameter is used, `ListContainerInstances` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListContainerInstances` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter isn't used, then `ListContainerInstances` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Filters the container instances by status. For example, if you
    #   specify the `DRAINING` status, the results include only container
    #   instances that have been set to `DRAINING` using
    #   [UpdateContainerInstancesState][1]. If you don't specify this
    #   parameter, the default is to include container instances set to all
    #   states other than `INACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateContainerInstancesState.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstancesRequest AWS API Documentation
    #
    class ListContainerInstancesRequest < Struct.new(
      :cluster,
      :filter,
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instance_arns
    #   The list of container instances with full ARN entries for each
    #   container instance associated with the specified cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListContainerInstances` request. When the results of a
    #   `ListContainerInstances` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstancesResponse AWS API Documentation
    #
    class ListContainerInstancesResponse < Struct.new(
      :container_instance_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The ARN or name of the service
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The cluster that hosts the service. This can either be the cluster
    #   name or ARN. Starting April 15, 2023, Amazon Web Services will not
    #   onboard new customers to Amazon Elastic Inference (EI), and will
    #   help current customers migrate their workloads to options that offer
    #   better price and performance. If you don't specify a cluster,
    #   `default` is used.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   An optional filter you can use to narrow the results. If you do not
    #   specify a status, then all status values are included in the result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   An optional filter you can use to narrow the results by the service
    #   creation date. If you do not specify a value, the result includes
    #   all services created before the current time. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Types::CreatedAt]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListServiceDeployments`
    #   request indicating that more results are available to fulfill the
    #   request and further calls are needed. If you provided `maxResults`,
    #   it's possible the number of results is fewer than `maxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of service deployment results that
    #   `ListServiceDeployments` returned in paginated output. When this
    #   parameter is used, `ListServiceDeployments` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListServiceDeployments` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter isn't used, then `ListServiceDeployments` returns up
    #   to 20 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServiceDeploymentsRequest AWS API Documentation
    #
    class ListServiceDeploymentsRequest < Struct.new(
      :service,
      :cluster,
      :status,
      :created_at,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_deployments
    #   An overview of the service deployment, including the following
    #   properties:
    #
    #   * The ARN of the service deployment.
    #
    #   * The ARN of the service being deployed.
    #
    #   * The ARN of the cluster that hosts the service in the service
    #     deployment.
    #
    #   * The time that the service deployment started.
    #
    #   * The time that the service deployment completed.
    #
    #   * The service deployment status.
    #
    #   * Information about why the service deployment is in the current
    #     state.
    #
    #   * The ARN of the service revision that is being deployed.
    #   @return [Array<Types::ServiceDeploymentBrief>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListServiceDeployments` request. When the results of a
    #   `ListServiceDeployments` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is null
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServiceDeploymentsResponse AWS API Documentation
    #
    class ListServiceDeploymentsResponse < Struct.new(
      :service_deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The namespace name or full Amazon Resource Name (ARN) of the Cloud
    #   Map namespace to list the services in.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value that's returned from a
    #   `ListServicesByNamespace` request. It indicates that more results
    #   are available to fulfill the request and further calls are needed.
    #   If `maxResults` is returned, it is possible the number of results is
    #   less than `maxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of service results that `ListServicesByNamespace`
    #   returns in paginated output. When this parameter is used,
    #   `ListServicesByNamespace` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListServicesByNamespace` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListServicesByNamespace` returns up to 10 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesByNamespaceRequest AWS API Documentation
    #
    class ListServicesByNamespaceRequest < Struct.new(
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arns
    #   The list of full ARN entries for each service that's associated
    #   with the specified namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListServicesByNamespace` request. When the results of a
    #   `ListServicesByNamespace` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. When there are no
    #   more results to return, this value is `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesByNamespaceResponse AWS API Documentation
    #
    class ListServicesByNamespaceResponse < Struct.new(
      :service_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   use when filtering the `ListServices` results. If you do not specify
    #   a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListServices` request
    #   indicating that more results are available to fulfill the request
    #   and further calls will be needed. If `maxResults` was provided, it
    #   is possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of service results that `ListServices` returned
    #   in paginated output. When this parameter is used, `ListServices`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListServices` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter isn't used, then `ListServices` returns up to 10
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type to use when filtering the `ListServices` results.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use when filtering the `ListServices`
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :cluster,
      :next_token,
      :max_results,
      :launch_type,
      :scheduling_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arns
    #   The list of full ARN entries for each service that's associated
    #   with the specified cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListServices` request.
    #   When the results of a `ListServices` request exceed `maxResults`,
    #   this value can be used to retrieve the next page of results. This
    #   value is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :service_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon ECS
    #   tasks, services, task definitions, clusters, and container
    #   instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] family_prefix
    #   The `familyPrefix` is a string that's used to filter the results of
    #   `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only
    #   task definition family names that begin with the `familyPrefix`
    #   string are returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition family status to filter the
    #   `ListTaskDefinitionFamilies` results with. By default, both `ACTIVE`
    #   and `INACTIVE` task definition families are listed. If this
    #   parameter is set to `ACTIVE`, only task definition families that
    #   have an `ACTIVE` task definition revision are returned. If this
    #   parameter is set to `INACTIVE`, only task definition families that
    #   do not have any `ACTIVE` task definition revisions are returned. If
    #   you paginate the resulting output, be sure to keep the `status`
    #   value constant in each subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListTaskDefinitionFamilies`
    #   request indicating that more results are available to fulfill the
    #   request and further calls will be needed. If `maxResults` was
    #   provided, it is possible the number of results to be fewer than
    #   `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task definition family results that
    #   `ListTaskDefinitionFamilies` returned in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitionFamilies` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter isn't used, then `ListTaskDefinitionFamilies` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamiliesRequest AWS API Documentation
    #
    class ListTaskDefinitionFamiliesRequest < Struct.new(
      :family_prefix,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] families
    #   The list of task definition family names that match the
    #   `ListTaskDefinitionFamilies` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListTaskDefinitionFamilies` request. When the results of a
    #   `ListTaskDefinitionFamilies` request exceed `maxResults`, this value
    #   can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamiliesResponse AWS API Documentation
    #
    class ListTaskDefinitionFamiliesResponse < Struct.new(
      :families,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] family_prefix
    #   The full family name to filter the `ListTaskDefinitions` results
    #   with. Specifying a `familyPrefix` limits the listed task definitions
    #   to task definition revisions that belong to that family.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition status to filter the `ListTaskDefinitions`
    #   results with. By default, only `ACTIVE` task definitions are listed.
    #   By setting this parameter to `INACTIVE`, you can view task
    #   definitions that are `INACTIVE` as long as an active task or service
    #   still references them. If you paginate the resulting output, be sure
    #   to keep the `status` value constant in each subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The order to sort the results in. Valid values are `ASC` and `DESC`.
    #   By default, (`ASC`) task definitions are listed lexicographically by
    #   family name and in ascending numerical order by revision so that the
    #   newest task definitions in a family are listed last. Setting this
    #   parameter to `DESC` reverses the sort order on family name and
    #   revision. This is so that the newest task definitions in a family
    #   are listed first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListTaskDefinitions` request
    #   indicating that more results are available to fulfill the request
    #   and further calls will be needed. If `maxResults` was provided, it
    #   is possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task definition results that
    #   `ListTaskDefinitions` returned in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitions` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListTaskDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionsRequest AWS API Documentation
    #
    class ListTaskDefinitionsRequest < Struct.new(
      :family_prefix,
      :status,
      :sort,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition_arns
    #   The list of task definition Amazon Resource Name (ARN) entries for
    #   the `ListTaskDefinitions` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListTaskDefinitions`
    #   request. When the results of a `ListTaskDefinitions` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionsResponse AWS API Documentation
    #
    class ListTaskDefinitionsResponse < Struct.new(
      :task_definition_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   use when filtering the `ListTasks` results. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance to
    #   use when filtering the `ListTasks` results. Specifying a
    #   `containerInstance` limits the results to tasks that belong to that
    #   container instance.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of the task definition family to use when filtering the
    #   `ListTasks` results. Specifying a `family` limits the results to
    #   tasks that belong to that family.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListTasks` request indicating
    #   that more results are available to fulfill the request and further
    #   calls will be needed. If `maxResults` was provided, it's possible
    #   the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task results that `ListTasks` returned in
    #   paginated output. When this parameter is used, `ListTasks` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListTasks` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter isn't used, then `ListTasks` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] started_by
    #   The `startedBy` value to filter the task results with. Specifying a
    #   `startedBy` value limits the results to tasks that were started with
    #   that value.
    #
    #   When you specify `startedBy` as the filter, it must be the only
    #   filter that you use.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service to use when filtering the `ListTasks`
    #   results. Specifying a `serviceName` limits the results to tasks that
    #   belong to that service.
    #   @return [String]
    #
    # @!attribute [rw] desired_status
    #   The task desired status to use when filtering the `ListTasks`
    #   results. Specifying a `desiredStatus` of `STOPPED` limits the
    #   results to tasks that Amazon ECS has set the desired status to
    #   `STOPPED`. This can be useful for debugging tasks that aren't
    #   starting properly or have died or finished. The default status
    #   filter is `RUNNING`, which shows tasks that Amazon ECS has set the
    #   desired status to `RUNNING`.
    #
    #   <note markdown="1"> Although you can filter results based on a desired status of
    #   `PENDING`, this doesn't return any results. Amazon ECS never sets
    #   the desired status of a task to that value (only a task's
    #   `lastStatus` may have a value of `PENDING`).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type to use when filtering the `ListTasks` results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasksRequest AWS API Documentation
    #
    class ListTasksRequest < Struct.new(
      :cluster,
      :container_instance,
      :family,
      :next_token,
      :max_results,
      :started_by,
      :service_name,
      :desired_status,
      :launch_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_arns
    #   The list of task ARN entries for the `ListTasks` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListTasks` request.
    #   When the results of a `ListTasks` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasksResponse AWS API Documentation
    #
    class ListTasksResponse < Struct.new(
      :task_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The load balancer configuration to use with a service or task set.
    #
    # When you add, update, or remove a load balancer configuration, Amazon
    # ECS starts a new deployment with the updated Elastic Load Balancing
    # configuration. This causes tasks to register to and deregister from
    # load balancers.
    #
    # We recommend that you verify this on a test environment before you
    # update the Elastic Load Balancing configuration.
    #
    # A service-linked role is required for services that use multiple
    # target groups. For more information, see [Using service-linked
    # roles][1] in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #
    # @!attribute [rw] target_group_arn
    #   The full Amazon Resource Name (ARN) of the Elastic Load Balancing
    #   target group or groups associated with a service or task set.
    #
    #   A target group ARN is only specified when using an Application Load
    #   Balancer or Network Load Balancer.
    #
    #   For services using the `ECS` deployment controller, you can specify
    #   one or multiple target groups. For more information, see
    #   [Registering multiple target groups with a service][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   For services using the `CODE_DEPLOY` deployment controller, you're
    #   required to define two target groups for the load balancer. For more
    #   information, see [Blue/green deployment with CodeDeploy][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   If your service's task definition uses the `awsvpc` network mode,
    #   you must choose `ip` as the target type, not `instance`. Do this
    #   when creating your target groups because tasks that use the `awsvpc`
    #   network mode are associated with an elastic network interface, not
    #   an Amazon EC2 instance. This network mode is required for the
    #   Fargate launch type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer to associate with the Amazon ECS
    #   service or task set.
    #
    #   If you are using an Application Load Balancer or a Network Load
    #   Balancer the load balancer name parameter should be omitted.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container (as it appears in a container definition)
    #   to associate with the load balancer.
    #
    #   You need to specify the container name when configuring the target
    #   group for an Amazon ECS load balancer.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port on the container to associate with the load balancer. This
    #   port must correspond to a `containerPort` in the task definition the
    #   tasks in the service are using. For tasks that use the EC2 launch
    #   type, the container instance they're launched on must allow ingress
    #   traffic on the `hostPort` of the port mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] advanced_configuration
    #   The advanced settings for the load balancer used in blue/green
    #   deployments. Specify the alternate target group, listener rules, and
    #   IAM role required for traffic shifting during blue/green
    #   deployments.
    #   @return [Types::AdvancedConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :target_group_arn,
      :load_balancer_name,
      :container_name,
      :container_port,
      :advanced_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration for the container. This parameter maps to
    # `LogConfig` in the docker container create command and the
    # `--log-driver` option to docker run.
    #
    # By default, containers use the same logging driver that the Docker
    # daemon uses. However, the container might use a different logging
    # driver than the Docker daemon by specifying a log driver configuration
    # in the container definition.
    #
    # Understand the following when specifying a log configuration for your
    # containers.
    #
    # * Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon. Additional log drivers may be
    #   available in future releases of the Amazon ECS container agent.
    #
    #   For tasks on Fargate, the supported log drivers are `awslogs`,
    #   `splunk`, and `awsfirelens`.
    #
    #   For tasks hosted on Amazon EC2 instances, the supported log drivers
    #   are `awslogs`, `fluentd`, `gelf`, `json-file`, `journald`,`syslog`,
    #   `splunk`, and `awsfirelens`.
    #
    # * This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance.
    #
    # * For tasks that are hosted on Amazon EC2 instances, the Amazon ECS
    #   container agent must register the available logging drivers with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS container agent
    #   configuration][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    # * For tasks that are on Fargate, because you don't have access to the
    #   underlying infrastructure your tasks are hosted on, any additional
    #   software needed must be installed outside of the task. For example,
    #   the Fluentd output aggregators or a remote host running Logstash to
    #   send Gelf logs to.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container.
    #
    #   For tasks on Fargate, the supported log drivers are `awslogs`,
    #   `splunk`, and `awsfirelens`.
    #
    #   For tasks hosted on Amazon EC2 instances, the supported log drivers
    #   are `awslogs`, `fluentd`, `gelf`, `json-file`, `journald`, `syslog`,
    #   `splunk`, and `awsfirelens`.
    #
    #   For more information about using the `awslogs` log driver, see [Send
    #   Amazon ECS logs to CloudWatch][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   For more information about using the `awsfirelens` log driver, see
    #   [Send Amazon ECS logs to an Amazon Web Services service or Amazon
    #   Web Services Partner][2].
    #
    #   <note markdown="1"> If you have a custom driver that isn't listed, you can fork the
    #   Amazon ECS container agent project that's [available on GitHub][3]
    #   and customize it to work with that driver. We encourage you to
    #   submit pull requests for changes that you would like to have
    #   included. However, we don't currently provide support for running
    #   modified copies of this software.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html
    #   [3]: https://github.com/aws/amazon-ecs-agent
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The configuration options to send to the log driver.
    #
    #   The options you can specify depend on the log driver. Some of the
    #   options you can specify when you use the `awslogs` log driver to
    #   route logs to Amazon CloudWatch include the following:
    #
    #   awslogs-create-group
    #
    #   : Required: No
    #
    #     Specify whether you want the log group to be created
    #     automatically. If this option isn't specified, it defaults to
    #     `false`.
    #
    #     <note markdown="1"> Your IAM policy must include the `logs:CreateLogGroup` permission
    #     before you attempt to use `awslogs-create-group`.
    #
    #      </note>
    #
    #   awslogs-region
    #
    #   : Required: Yes
    #
    #     Specify the Amazon Web Services Region that the `awslogs` log
    #     driver is to send your Docker logs to. You can choose to send all
    #     of your logs from clusters in different Regions to a single region
    #     in CloudWatch Logs. This is so that they're all visible in one
    #     location. Otherwise, you can separate them by Region for more
    #     granularity. Make sure that the specified log group exists in the
    #     Region that you specify with this option.
    #
    #   awslogs-group
    #
    #   : Required: Yes
    #
    #     Make sure to specify a log group that the `awslogs` log driver
    #     sends its log streams to.
    #
    #   awslogs-stream-prefix
    #
    #   : Required: Yes, when using Fargate.Optional when using EC2.
    #
    #     Use the `awslogs-stream-prefix` option to associate a log stream
    #     with the specified prefix, the container name, and the ID of the
    #     Amazon ECS task that the container belongs to. If you specify a
    #     prefix with this option, then the log stream takes the format
    #     `prefix-name/container-name/ecs-task-id`.
    #
    #     If you don't specify a prefix with this option, then the log
    #     stream is named after the container ID that's assigned by the
    #     Docker daemon on the container instance. Because it's difficult
    #     to trace logs back to the container that sent them with just the
    #     Docker container ID (which is only available on the container
    #     instance), we recommend that you specify a prefix with this
    #     option.
    #
    #     For Amazon ECS services, you can use the service name as the
    #     prefix. Doing so, you can trace log streams to the service that
    #     the container belongs to, the name of the container that sent
    #     them, and the ID of the task that the container belongs to.
    #
    #     You must specify a stream-prefix for your logs to have your logs
    #     appear in the Log pane when using the Amazon ECS console.
    #
    #   awslogs-datetime-format
    #
    #   : Required: No
    #
    #     This option defines a multiline start pattern in Python `strftime`
    #     format. A log message consists of a line that matches the pattern
    #     and any following lines that don’t match the pattern. The matched
    #     line is the delimiter between log messages.
    #
    #     One example of a use case for using this format is for parsing
    #     output such as a stack dump, which might otherwise be logged in
    #     multiple entries. The correct pattern allows it to be captured in
    #     a single entry.
    #
    #     For more information, see [awslogs-datetime-format][1].
    #
    #     You cannot configure both the `awslogs-datetime-format` and
    #     `awslogs-multiline-pattern` options.
    #
    #     <note markdown="1"> Multiline logging performs regular expression parsing and matching
    #     of all log messages. This might have a negative impact on logging
    #     performance.
    #
    #      </note>
    #
    #   awslogs-multiline-pattern
    #
    #   : Required: No
    #
    #     This option defines a multiline start pattern that uses a regular
    #     expression. A log message consists of a line that matches the
    #     pattern and any following lines that don’t match the pattern. The
    #     matched line is the delimiter between log messages.
    #
    #     For more information, see [awslogs-multiline-pattern][2].
    #
    #     This option is ignored if `awslogs-datetime-format` is also
    #     configured.
    #
    #     You cannot configure both the `awslogs-datetime-format` and
    #     `awslogs-multiline-pattern` options.
    #
    #     <note markdown="1"> Multiline logging performs regular expression parsing and matching
    #     of all log messages. This might have a negative impact on logging
    #     performance.
    #
    #      </note>
    #
    #   The following options apply to all supported log drivers.
    #
    #   mode
    #
    #   : Required: No
    #
    #     Valid values: `non-blocking` \| `blocking`
    #
    #     This option defines the delivery mode of log messages from the
    #     container to the log driver specified using `logDriver`. The
    #     delivery mode you choose affects application availability when the
    #     flow of logs from container is interrupted.
    #
    #     If you use the `blocking` mode and the flow of logs is
    #     interrupted, calls from container code to write to the `stdout`
    #     and `stderr` streams will block. The logging thread of the
    #     application will block as a result. This may cause the application
    #     to become unresponsive and lead to container healthcheck failure.
    #
    #     If you use the `non-blocking` mode, the container's logs are
    #     instead stored in an in-memory intermediate buffer configured with
    #     the `max-buffer-size` option. This prevents the application from
    #     becoming unresponsive when logs cannot be sent. We recommend using
    #     this mode if you want to ensure service availability and are okay
    #     with some log loss. For more information, see [Preventing log loss
    #     with non-blocking mode in the `awslogs` container log driver][3].
    #
    #     You can set a default `mode` for all containers in a specific
    #     Amazon Web Services Region by using the `defaultLogDriverMode`
    #     account setting. If you don't specify the `mode` option or
    #     configure the account setting, Amazon ECS will default to the
    #     `non-blocking` mode. For more information about the account
    #     setting, see [Default log driver mode][4] in the *Amazon Elastic
    #     Container Service Developer Guide*.
    #
    #     <note markdown="1"> On June 25, 2025, Amazon ECS changed the default log driver mode
    #     from `blocking` to `non-blocking` to prioritize task availability
    #     over logging. To continue using the `blocking` mode after this
    #     change, do one of the following:
    #
    #      * Set the `mode` option in your container definition's
    #       `logConfiguration` as `blocking`.
    #
    #     * Set the `defaultLogDriverMode` account setting to `blocking`.
    #
    #      </note>
    #
    #   max-buffer-size
    #
    #   : Required: No
    #
    #     Default value: `10m`
    #
    #     When `non-blocking` mode is used, the `max-buffer-size` log option
    #     controls the size of the buffer that's used for intermediate
    #     message storage. Make sure to specify an adequate buffer size
    #     based on your application. When the buffer fills up, further logs
    #     cannot be stored. Logs that cannot be stored are lost.
    #
    #   To route logs using the `splunk` log router, you need to specify a
    #   `splunk-token` and a `splunk-url`.
    #
    #   When you use the `awsfirelens` log router to route logs to an Amazon
    #   Web Services Service or Amazon Web Services Partner Network
    #   destination for log storage and analytics, you can set the
    #   `log-driver-buffer-limit` option to limit the number of events that
    #   are buffered in memory, before being sent to the log router
    #   container. It can help to resolve potential log loss issue because
    #   high throughput might result in memory running out for the buffer
    #   inside of Docker.
    #
    #   Other options you can specify when using `awsfirelens` to route logs
    #   depend on the destination. When you export logs to Amazon Data
    #   Firehose, you can specify the Amazon Web Services Region with
    #   `region` and a name for the log stream with `delivery_stream`.
    #
    #   When you export logs to Amazon Kinesis Data Streams, you can specify
    #   an Amazon Web Services Region with `region` and a data stream name
    #   with `stream`.
    #
    #   When you export logs to Amazon OpenSearch Service, you can specify
    #   options like `Name`, `Host` (OpenSearch Service endpoint without
    #   protocol), `Port`, `Index`, `Type`, `Aws_auth`, `Aws_region`,
    #   `Suppress_Type_Name`, and `tls`. For more information, see [Under
    #   the hood: FireLens for Amazon ECS Tasks][5].
    #
    #   When you export logs to Amazon S3, you can specify the bucket using
    #   the `bucket` option. You can also specify `region`,
    #   `total_file_size`, `upload_timeout`, and `use_put_object` as
    #   options.
    #
    #   This parameter requires version 1.19 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '{{.Server.APIVersion}}'`
    #
    #
    #
    #   [1]: https://docs.docker.com/config/containers/logging/awslogs/#awslogs-datetime-format
    #   [2]: https://docs.docker.com/config/containers/logging/awslogs/#awslogs-multiline-pattern
    #   [3]: http://aws.amazon.com/blogs/containers/preventing-log-loss-with-non-blocking-mode-in-the-awslogs-container-log-driver/
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#default-log-driver-mode
    #   [5]: http://aws.amazon.com/blogs/containers/under-the-hood-firelens-for-amazon-ecs-tasks/
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] secret_options
    #   The secrets to pass to the log configuration. For more information,
    #   see [Specifying sensitive data][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :log_driver,
      :options,
      :secret_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the managed agent status for the container.
    #
    # @!attribute [rw] last_started_at
    #   The Unix timestamp for the time when the managed agent was last
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the managed agent. When the execute command feature is
    #   turned on, the managed agent name is `ExecuteCommandAgent`.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for why the managed agent is in the state it is in.
    #   @return [String]
    #
    # @!attribute [rw] last_status
    #   The last known status of the managed agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedAgent AWS API Documentation
    #
    class ManagedAgent < Struct.new(
      :last_started_at,
      :name,
      :reason,
      :last_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a change in state for a managed agent.
    #
    # @!attribute [rw] container_name
    #   The name of the container that's associated with the managed agent.
    #   @return [String]
    #
    # @!attribute [rw] managed_agent_name
    #   The name of the managed agent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the managed agent.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the status of the managed agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedAgentStateChange AWS API Documentation
    #
    class ManagedAgentStateChange < Struct.new(
      :container_name,
      :managed_agent_name,
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for Amazon ECS Managed Instances. This
    # specifies the VPC subnets and security groups that instances use for
    # network connectivity. Amazon ECS Managed Instances support multiple
    # network modes including `awsvpc` (instances receive ENIs for task
    # isolation), `host` (instances share network namespace with tasks), and
    # `none` (no external network connectivity), ensuring backward
    # compatibility for migrating workloads from Fargate or Amazon EC2.
    #
    # @!attribute [rw] subnets
    #   The list of subnet IDs where Amazon ECS can launch Amazon ECS
    #   Managed Instances. Instances are distributed across the specified
    #   subnets for high availability. All subnets must be in the same VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The list of security group IDs to apply to Amazon ECS Managed
    #   Instances. These security groups control the network traffic allowed
    #   to and from the instances.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedInstancesNetworkConfiguration AWS API Documentation
    #
    class ManagedInstancesNetworkConfiguration < Struct.new(
      :subnets,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a Amazon ECS Managed Instances provider. Amazon
    # ECS uses this configuration to automatically launch, manage, and
    # terminate Amazon EC2 instances on your behalf. Managed instances
    # provide access to the full range of Amazon EC2 instance types and
    # features while offloading infrastructure management to Amazon Web
    # Services.
    #
    # @!attribute [rw] infrastructure_role_arn
    #   The Amazon Resource Name (ARN) of the infrastructure role that
    #   Amazon ECS assumes to manage instances. This role must include
    #   permissions for Amazon EC2 instance lifecycle management,
    #   networking, and any additional Amazon Web Services services required
    #   for your workloads.
    #
    #   For more information, see [Amazon ECS infrastructure IAM role][1] in
    #   the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] instance_launch_template
    #   The launch template that defines how Amazon ECS launches Amazon ECS
    #   Managed Instances. This includes the instance profile for your
    #   tasks, network and storage configuration, and instance requirements
    #   that determine which Amazon EC2 instance types can be used.
    #
    #   For more information, see [Store instance launch parameters in
    #   Amazon EC2 launch templates][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    #   @return [Types::InstanceLaunchTemplate]
    #
    # @!attribute [rw] propagate_tags
    #   Determines whether tags from the capacity provider are automatically
    #   applied to Amazon ECS Managed Instances. This helps with cost
    #   allocation and resource management by ensuring consistent tagging
    #   across your infrastructure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedInstancesProvider AWS API Documentation
    #
    class ManagedInstancesProvider < Struct.new(
      :infrastructure_role_arn,
      :instance_launch_template,
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The storage configuration for Amazon ECS Managed Instances. This
    # defines the root volume configuration for the instances.
    #
    # @!attribute [rw] storage_size_gi_b
    #   The size of the tasks volume.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedInstancesStorageConfiguration AWS API Documentation
    #
    class ManagedInstancesStorageConfiguration < Struct.new(
      :storage_size_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # The managed scaling settings for the Auto Scaling group capacity
    # provider.
    #
    # When managed scaling is turned on, Amazon ECS manages the scale-in and
    # scale-out actions of the Auto Scaling group. Amazon ECS manages a
    # target tracking scaling policy using an Amazon ECS managed CloudWatch
    # metric with the specified `targetCapacity` value as the target value
    # for the metric. For more information, see [Using managed scaling][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    # If managed scaling is off, the user must manage the scaling of the
    # Auto Scaling group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling
    #
    # @!attribute [rw] status
    #   Determines whether to use managed scaling for the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] target_capacity
    #   The target capacity utilization as a percentage for the capacity
    #   provider. The specified value must be greater than `0` and less than
    #   or equal to `100`. For example, if you want the capacity provider to
    #   maintain 10% spare capacity, then that means the utilization is 90%,
    #   so use a `targetCapacity` of `90`. The default value of `100`
    #   percent results in the Amazon EC2 instances in your Auto Scaling
    #   group being completely used.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_scaling_step_size
    #   The minimum number of Amazon EC2 instances that Amazon ECS will
    #   scale out at one time. The scale in process is not affected by this
    #   parameter If this parameter is omitted, the default value of `1` is
    #   used.
    #
    #   When additional capacity is required, Amazon ECS will scale up the
    #   minimum scaling step size even if the actual demand is less than the
    #   minimum scaling step size.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_scaling_step_size
    #   The maximum number of Amazon EC2 instances that Amazon ECS will
    #   scale out at one time. If this parameter is omitted, the default
    #   value of `10000` is used.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_warmup_period
    #   The period of time, in seconds, after a newly launched Amazon EC2
    #   instance can contribute to CloudWatch metrics for Auto Scaling
    #   group. If this parameter is omitted, the default value of `300`
    #   seconds is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedScaling AWS API Documentation
    #
    class ManagedScaling < Struct.new(
      :status,
      :target_capacity,
      :minimum_scaling_step_size,
      :maximum_scaling_step_size,
      :instance_warmup_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # The managed storage configuration for the cluster.
    #
    # @!attribute [rw] kms_key_id
    #   Specify a Key Management Service key ID to encrypt Amazon ECS
    #   managed storage.
    #
    #   When you specify a `kmsKeyId`, Amazon ECS uses the key to encrypt
    #   data volumes managed by Amazon ECS that are attached to tasks in the
    #   cluster. The following data volumes are managed by Amazon ECS:
    #   Amazon EBS. For more information about encryption of Amazon EBS
    #   volumes attached to Amazon ECS tasks, see [Encrypt data stored in
    #   Amazon EBS volumes for Amazon ECS][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   The key must be a single Region key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-kms-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] fargate_ephemeral_storage_kms_key_id
    #   Specify the Key Management Service key ID for Fargate ephemeral
    #   storage.
    #
    #   When you specify a `fargateEphemeralStorageKmsKeyId`, Amazon Web
    #   Services Fargate uses the key to encrypt data at rest in ephemeral
    #   storage. For more information about Fargate ephemeral storage
    #   encryption, see [Customer managed keys for Amazon Web Services
    #   Fargate ephemeral storage for Amazon ECS][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   The key must be a single Region key.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-storage-encryption.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedStorageConfiguration AWS API Documentation
    #
    class ManagedStorageConfiguration < Struct.new(
      :kms_key_id,
      :fargate_ephemeral_storage_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of memory per vCPU in gibibytes (GiB).
    # This helps ensure that instance types have the appropriate
    # memory-to-CPU ratio for your workloads.
    #
    # @!attribute [rw] min
    #   The minimum amount of memory per vCPU in GiB. Instance types with a
    #   lower memory-to-vCPU ratio are excluded from selection.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum amount of memory per vCPU in GiB. Instance types with a
    #   higher memory-to-vCPU ratio are excluded from selection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MemoryGiBPerVCpuRequest AWS API Documentation
    #
    class MemoryGiBPerVCpuRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum amount of memory in mebibytes (MiB) for
    # instance type selection. This ensures that selected instance types
    # have adequate memory for your workloads.
    #
    # @!attribute [rw] min
    #   The minimum amount of memory in MiB. Instance types with less memory
    #   than this value are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum amount of memory in MiB. Instance types with more memory
    #   than this value are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MemoryMiBRequest AWS API Documentation
    #
    class MemoryMiBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon ECS can't determine the current version of the Amazon ECS
    # container agent on the container instance and doesn't have enough
    # information to proceed with an update. This could be because the agent
    # running on the container instance is a previous or custom version that
    # doesn't use our version information.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MissingVersionException AWS API Documentation
    #
    class MissingVersionException < Aws::EmptyStructure; end

    # The details for a volume mount point that's used in a container
    # definition.
    #
    # @!attribute [rw] source_volume
    #   The name of the volume to mount. Must be a volume name referenced in
    #   the `name` parameter of task definition `volume`.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path on the container to mount the host volume at.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. If this value is `false`, then the container can write to
    #   the volume. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MountPoint AWS API Documentation
    #
    class MountPoint < Struct.new(
      :source_volume,
      :container_path,
      :read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified namespace wasn't found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NamespaceNotFoundException AWS API Documentation
    #
    class NamespaceNotFoundException < Aws::EmptyStructure; end

    # The minimum and maximum network bandwidth in gigabits per second
    # (Gbps) for instance type selection. This is important for
    # network-intensive workloads.
    #
    # @!attribute [rw] min
    #   The minimum network bandwidth in Gbps. Instance types with lower
    #   network bandwidth are excluded from selection.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum network bandwidth in Gbps. Instance types with higher
    #   network bandwidth are excluded from selection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkBandwidthGbpsRequest AWS API Documentation
    #
    class NetworkBandwidthGbpsRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on the network bindings between a container and its host
    # container instance. After a task reaches the `RUNNING` status, manual
    # and automatic host and container port assignments are visible in the
    # `networkBindings` section of [DescribeTasks][1] API responses.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #
    # @!attribute [rw] bind_ip
    #   The IP address that the container is bound to on the container
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port number on the container that's used with the network
    #   binding.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the host that's used with the network binding.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network binding.
    #   @return [String]
    #
    # @!attribute [rw] container_port_range
    #   The port number range on the container that's bound to the
    #   dynamically mapped host port range.
    #
    #   The following rules apply when you specify a `containerPortRange`:
    #
    #   * You must use either the `bridge` network mode or the `awsvpc`
    #     network mode.
    #
    #   * This parameter is available for both the EC2 and Fargate launch
    #     types.
    #
    #   * This parameter is available for both the Linux and Windows
    #     operating systems.
    #
    #   * The container instance must have at least version 1.67.0 of the
    #     container agent and at least version 1.67.0-1 of the `ecs-init`
    #     package
    #
    #   * You can specify a maximum of 100 port ranges per container.
    #
    #   * You do not specify a `hostPortRange`. The value of the
    #     `hostPortRange` is set as follows:
    #
    #     * For containers in a task with the `awsvpc` network mode, the
    #       `hostPortRange` is set to the same value as the
    #       `containerPortRange`. This is a static mapping strategy.
    #
    #     * For containers in a task with the `bridge` network mode, the
    #       Amazon ECS agent finds open host ports from the default
    #       ephemeral range and passes it to docker to bind them to the
    #       container ports.
    #   * The `containerPortRange` valid values are between 1 and 65535.
    #
    #   * A port can only be included in one port mapping per container.
    #
    #   * You cannot specify overlapping port ranges.
    #
    #   * The first port in the range must be less than last port in the
    #     range.
    #
    #   * Docker recommends that you turn off the docker-proxy in the Docker
    #     daemon config file when you have a large number of ports.
    #
    #     For more information, see [ Issue #11185][1] on the Github
    #     website.
    #
    #     For information about how to turn off the docker-proxy in the
    #     Docker daemon config file, see [Docker daemon][2] in the *Amazon
    #     ECS Developer Guide*.
    #
    #   You can call [ `DescribeTasks` ][3] to view the `hostPortRange`
    #   which are the host ports that are bound to the container ports.
    #
    #
    #
    #   [1]: https://github.com/moby/moby/issues/11185
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/bootstrap_container_instance.html#bootstrap_docker_daemon
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #   @return [String]
    #
    # @!attribute [rw] host_port_range
    #   The port number range on the host that's used with the network
    #   binding. This is assigned is assigned by Docker and delivered by the
    #   Amazon ECS agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkBinding AWS API Documentation
    #
    class NetworkBinding < Struct.new(
      :bind_ip,
      :container_port,
      :host_port,
      :protocol,
      :container_port_range,
      :host_port_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a task or service.
    #
    # @!attribute [rw] awsvpc_configuration
    #   The VPC subnets and security groups that are associated with a task.
    #
    #   <note markdown="1"> All specified subnets and security groups must be from the same VPC.
    #
    #    </note>
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the elastic network interface for tasks that
    # use the `awsvpc` network mode.
    #
    # @!attribute [rw] attachment_id
    #   The attachment ID for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ipv_4_address
    #   The private IPv4 address for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The private IPv6 address for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :attachment_id,
      :private_ipv_4_address,
      :ipv6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum number of network interfaces for instance type
    # selection. This is useful for workloads that require multiple network
    # interfaces.
    #
    # @!attribute [rw] min
    #   The minimum number of network interfaces. Instance types that
    #   support fewer network interfaces are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of network interfaces. Instance types that
    #   support more network interfaces are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkInterfaceCountRequest AWS API Documentation
    #
    class NetworkInterfaceCountRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # There's no update available for this Amazon ECS container agent. This
    # might be because the agent is already running the latest version or
    # because it's so old that there's no update path to the current
    # version.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NoUpdateAvailableException AWS API Documentation
    #
    class NoUpdateAvailableException < Aws::EmptyStructure; end

    # An object representing a constraint on task placement. For more
    # information, see [Task placement constraints][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # <note markdown="1"> If you're using the Fargate launch type, task placement constraints
    # aren't supported.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @!attribute [rw] type
    #   The type of constraint. Use `distinctInstance` to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use `memberOf` to restrict the selection to a group of
    #   valid candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. The
    #   expression can have a maximum length of 2000 characters. You can't
    #   specify an expression if the constraint type is `distinctInstance`.
    #   For more information, see [Cluster query language][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlacementConstraint AWS API Documentation
    #
    class PlacementConstraint < Struct.new(
      :type,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The task placement strategy for a task or service. For more
    # information, see [Task placement strategies][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The `random` placement strategy
    #   randomly places tasks on available candidates. The `spread`
    #   placement strategy spreads placement across available candidates
    #   evenly based on the `field` parameter. The `binpack` strategy places
    #   tasks on available candidates that have the least available amount
    #   of the resource that's specified with the `field` parameter. For
    #   example, if you binpack on memory, a task is placed on the instance
    #   with the least amount of remaining memory but still enough to run
    #   the task.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the `spread`
    #   placement strategy, valid values are `instanceId` (or `host`, which
    #   has the same effect), or any platform or custom attribute that's
    #   applied to a container instance, such as
    #   `attribute:ecs.availability-zone`. For the `binpack` placement
    #   strategy, valid values are `cpu` and `memory`. For the `random`
    #   placement strategy, this field is not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlacementStrategy AWS API Documentation
    #
    class PlacementStrategy < Struct.new(
      :type,
      :field)
      SENSITIVE = []
      include Aws::Structure
    end

    # The devices that are available on the container instance. The only
    # supported device type is a GPU.
    #
    # @!attribute [rw] id
    #   The ID for the GPUs on the container instance. The available GPU IDs
    #   can also be obtained on the container instance in the
    #   `/var/lib/ecs/gpu/nvidia_gpu_info.json` file.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of device that's available on the container instance. The
    #   only supported value is `GPU`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlatformDevice AWS API Documentation
    #
    class PlatformDevice < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified platform version doesn't satisfy the required
    # capabilities of the task definition.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlatformTaskDefinitionIncompatibilityException AWS API Documentation
    #
    class PlatformTaskDefinitionIncompatibilityException < Aws::EmptyStructure; end

    # The specified platform version doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlatformUnknownException AWS API Documentation
    #
    class PlatformUnknownException < Aws::EmptyStructure; end

    # Port mappings allow containers to access ports on the host container
    # instance to send or receive traffic. Port mappings are specified as
    # part of the container definition.
    #
    # If you use containers in a task with the `awsvpc` or `host` network
    # mode, specify the exposed ports using `containerPort`. The `hostPort`
    # can be left blank or it must be the same value as the `containerPort`.
    #
    # Most fields of this parameter (`containerPort`, `hostPort`,
    # `protocol`) maps to `PortBindings` in the docker container create
    # command and the `--publish` option to `docker run`. If the network
    # mode of a task definition is set to `host`, host ports must either be
    # undefined or match the container port in the port mapping.
    #
    # <note markdown="1"> You can't expose the same container port for multiple protocols. If
    # you attempt this, an error is returned.
    #
    #  </note>
    #
    # After a task reaches the `RUNNING` status, manual and automatic host
    # and container port assignments are visible in the `networkBindings`
    # section of [DescribeTasks][1] API responses.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #
    # @!attribute [rw] container_port
    #   The port number on the container that's bound to the user-specified
    #   or automatically assigned host port.
    #
    #   If you use containers in a task with the `awsvpc` or `host` network
    #   mode, specify the exposed ports using `containerPort`.
    #
    #   If you use containers in a task with the `bridge` network mode and
    #   you specify a container port and not a host port, your container
    #   automatically receives a host port in the ephemeral port range. For
    #   more information, see `hostPort`. Port mappings that are
    #   automatically assigned in this way do not count toward the 100
    #   reserved ports limit of a container instance.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the container instance to reserve for your
    #   container.
    #
    #   If you specify a `containerPortRange`, leave this field empty and
    #   the value of the `hostPort` is set as follows:
    #
    #   * For containers in a task with the `awsvpc` network mode, the
    #     `hostPort` is set to the same value as the `containerPort`. This
    #     is a static mapping strategy.
    #
    #   * For containers in a task with the `bridge` network mode, the
    #     Amazon ECS agent finds open ports on the host and automatically
    #     binds them to the container ports. This is a dynamic mapping
    #     strategy.
    #
    #   If you use containers in a task with the `awsvpc` or `host` network
    #   mode, the `hostPort` can either be left blank or set to the same
    #   value as the `containerPort`.
    #
    #   If you use containers in a task with the `bridge` network mode, you
    #   can specify a non-reserved host port for your container port
    #   mapping, or you can omit the `hostPort` (or set it to `0`) while
    #   specifying a `containerPort` and your container automatically
    #   receives a port in the ephemeral port range for your container
    #   instance operating system and Docker version.
    #
    #   The default ephemeral port range for Docker version 1.6.0 and later
    #   is listed on the instance under
    #   `/proc/sys/net/ipv4/ip_local_port_range`. If this kernel parameter
    #   is unavailable, the default ephemeral port range from 49153 through
    #   65535 (Linux) or 49152 through 65535 (Windows) is used. Do not
    #   attempt to specify a host port in the ephemeral port range as these
    #   are reserved for automatic assignment. In general, ports below 32768
    #   are outside of the ephemeral port range.
    #
    #   The default reserved ports are 22 for SSH, the Docker ports 2375 and
    #   2376, and the Amazon ECS container agent ports 51678-51680. Any host
    #   port that was previously specified in a running task is also
    #   reserved while the task is running. That is, after a task stops, the
    #   host port is released. The current reserved ports are displayed in
    #   the `remainingResources` of [DescribeContainerInstances][1] output.
    #   A container instance can have up to 100 reserved ports at a time.
    #   This number includes the default reserved ports. Automatically
    #   assigned ports aren't included in the 100 reserved ports quota.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeContainerInstances.html
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping. Valid values are `tcp` and
    #   `udp`. The default is `tcp`. `protocol` is immutable in a Service
    #   Connect service. Updating this field requires a service deletion and
    #   redeployment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that's used for the port mapping. This parameter is the
    #   name that you use in the `serviceConnectConfiguration` and the
    #   `vpcLatticeConfigurations` of a service. The name can include up to
    #   64 characters. The characters can include lowercase letters,
    #   numbers, underscores (\_), and hyphens (-). The name can't start
    #   with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] app_protocol
    #   The application protocol that's used for the port mapping. This
    #   parameter only applies to Service Connect. We recommend that you set
    #   this parameter to be consistent with the protocol that your
    #   application uses. If you set this parameter, Amazon ECS adds
    #   protocol-specific connection handling to the Service Connect proxy.
    #   If you set this parameter, Amazon ECS adds protocol-specific
    #   telemetry in the Amazon ECS console and CloudWatch.
    #
    #   If you don't set a value for this parameter, then TCP is used.
    #   However, Amazon ECS doesn't add protocol-specific telemetry for
    #   TCP.
    #
    #   `appProtocol` is immutable in a Service Connect service. Updating
    #   this field requires a service deletion and redeployment.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [String]
    #
    # @!attribute [rw] container_port_range
    #   The port number range on the container that's bound to the
    #   dynamically mapped host port range.
    #
    #   The following rules apply when you specify a `containerPortRange`:
    #
    #   * You must use either the `bridge` network mode or the `awsvpc`
    #     network mode.
    #
    #   * This parameter is available for both the EC2 and Fargate launch
    #     types.
    #
    #   * This parameter is available for both the Linux and Windows
    #     operating systems.
    #
    #   * The container instance must have at least version 1.67.0 of the
    #     container agent and at least version 1.67.0-1 of the `ecs-init`
    #     package
    #
    #   * You can specify a maximum of 100 port ranges per container.
    #
    #   * You do not specify a `hostPortRange`. The value of the
    #     `hostPortRange` is set as follows:
    #
    #     * For containers in a task with the `awsvpc` network mode, the
    #       `hostPortRange` is set to the same value as the
    #       `containerPortRange`. This is a static mapping strategy.
    #
    #     * For containers in a task with the `bridge` network mode, the
    #       Amazon ECS agent finds open host ports from the default
    #       ephemeral range and passes it to docker to bind them to the
    #       container ports.
    #   * The `containerPortRange` valid values are between 1 and 65535.
    #
    #   * A port can only be included in one port mapping per container.
    #
    #   * You cannot specify overlapping port ranges.
    #
    #   * The first port in the range must be less than last port in the
    #     range.
    #
    #   * Docker recommends that you turn off the docker-proxy in the Docker
    #     daemon config file when you have a large number of ports.
    #
    #     For more information, see [ Issue #11185][1] on the Github
    #     website.
    #
    #     For information about how to turn off the docker-proxy in the
    #     Docker daemon config file, see [Docker daemon][2] in the *Amazon
    #     ECS Developer Guide*.
    #
    #   You can call [ `DescribeTasks` ][3] to view the `hostPortRange`
    #   which are the host ports that are bound to the container ports.
    #
    #
    #
    #   [1]: https://github.com/moby/moby/issues/11185
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/bootstrap_container_instance.html#bootstrap_docker_daemon
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :container_port,
      :host_port,
      :protocol,
      :name,
      :app_protocol,
      :container_port_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the protection status details for a task. You
    # can set the protection status with the [UpdateTaskProtection][1] API
    # and get the status of tasks with the [GetTaskProtection][2] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateTaskProtection.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_GetTaskProtection.html
    #
    # @!attribute [rw] task_arn
    #   The task ARN.
    #   @return [String]
    #
    # @!attribute [rw] protection_enabled
    #   The protection status of the task. If scale-in protection is on for
    #   a task, the value is `true`. Otherwise, it is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] expiration_date
    #   The epoch time when protection for the task will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ProtectedTask AWS API Documentation
    #
    class ProtectedTask < Struct.new(
      :task_arn,
      :protection_enabled,
      :expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the App Mesh proxy.
    #
    # For tasks that use the EC2 launch type, the container instances
    # require at least version 1.26.0 of the container agent and at least
    # version 1.26.0-1 of the `ecs-init` package to use a proxy
    # configuration. If your container instances are launched from the
    # Amazon ECS optimized AMI version `20190301` or later, then they
    # contain the required versions of the container agent and `ecs-init`.
    # For more information, see [Amazon ECS-optimized Linux AMI][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #
    # @!attribute [rw] type
    #   The proxy type. The only supported value is `APPMESH`.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container that will serve as the App Mesh proxy.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The set of network configuration parameters to provide the Container
    #   Network Interface (CNI) plugin, specified as key-value pairs.
    #
    #   * `IgnoredUID` - (Required) The user ID (UID) of the proxy container
    #     as defined by the `user` parameter in a container definition. This
    #     is used to ensure the proxy ignores its own traffic. If
    #     `IgnoredGID` is specified, this field can be empty.
    #
    #   * `IgnoredGID` - (Required) The group ID (GID) of the proxy
    #     container as defined by the `user` parameter in a container
    #     definition. This is used to ensure the proxy ignores its own
    #     traffic. If `IgnoredUID` is specified, this field can be empty.
    #
    #   * `AppPorts` - (Required) The list of ports that the application
    #     uses. Network traffic to these ports is forwarded to the
    #     `ProxyIngressPort` and `ProxyEgressPort`.
    #
    #   * `ProxyIngressPort` - (Required) Specifies the port that incoming
    #     traffic to the `AppPorts` is directed to.
    #
    #   * `ProxyEgressPort` - (Required) Specifies the port that outgoing
    #     traffic from the `AppPorts` is directed to.
    #
    #   * `EgressIgnoredPorts` - (Required) The egress traffic going to the
    #     specified ports is ignored and not redirected to the
    #     `ProxyEgressPort`. It can be an empty list.
    #
    #   * `EgressIgnoredIPs` - (Required) The egress traffic going to the
    #     specified IP addresses is ignored and not redirected to the
    #     `ProxyEgressPort`. It can be an empty list.
    #   @return [Array<Types::KeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ProxyConfiguration AWS API Documentation
    #
    class ProxyConfiguration < Struct.new(
      :type,
      :container_name,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The resource name for which to modify the account setting.
    #
    #   The following are the valid values for the account setting name.
    #
    #   * `serviceLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The
    #     opt-in and opt-out account setting must be set for each Amazon ECS
    #     resource separately. The ARN and resource ID format of a resource
    #     is defined by the opt-in status of the user or role that created
    #     the resource. You must turn on this setting to use Amazon ECS
    #     features such as resource tagging.
    #
    #   * `taskLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The
    #     opt-in and opt-out account setting must be set for each Amazon ECS
    #     resource separately. The ARN and resource ID format of a resource
    #     is defined by the opt-in status of the user or role that created
    #     the resource. You must turn on this setting to use Amazon ECS
    #     features such as resource tagging.
    #
    #   * `containerInstanceLongArnFormat` - When modified, the Amazon
    #     Resource Name (ARN) and resource ID format of the resource type
    #     for a specified user, role, or the root user for an account is
    #     affected. The opt-in and opt-out account setting must be set for
    #     each Amazon ECS resource separately. The ARN and resource ID
    #     format of a resource is defined by the opt-in status of the user
    #     or role that created the resource. You must turn on this setting
    #     to use Amazon ECS features such as resource tagging.
    #
    #   * `awsvpcTrunking` - When modified, the elastic network interface
    #     (ENI) limit for any new container instances that support the
    #     feature is changed. If `awsvpcTrunking` is turned on, any new
    #     container instances that support the feature are launched have the
    #     increased ENI limits available to them. For more information, see
    #     [Elastic Network Interface Trunking][1] in the *Amazon Elastic
    #     Container Service Developer Guide*.
    #
    #   * `containerInsights` - Container Insights with enhanced
    #     observability provides all the Container Insights metrics, plus
    #     additional task and container metrics. This version supports
    #     enhanced observability for Amazon ECS clusters using the Amazon
    #     EC2 and Fargate launch types. After you configure Container
    #     Insights with enhanced observability on Amazon ECS, Container
    #     Insights auto-collects detailed infrastructure telemetry from the
    #     cluster level down to the container level in your environment and
    #     displays these critical performance data in curated dashboards
    #     removing the heavy lifting in observability set-up.
    #
    #     To use Container Insights with enhanced observability, set the
    #     `containerInsights` account setting to `enhanced`.
    #
    #     To use Container Insights, set the `containerInsights` account
    #     setting to `enabled`.
    #
    #     For more information, see [Monitor Amazon ECS containers using
    #     Container Insights with enhanced observability][2] in the *Amazon
    #     Elastic Container Service Developer Guide*.
    #
    #   * `dualStackIPv6` - When turned on, when using a VPC in dual stack
    #     mode, your tasks using the `awsvpc` network mode can have an IPv6
    #     address assigned. For more information on using IPv6 with tasks
    #     launched on Amazon EC2 instances, see [Using a VPC in dual-stack
    #     mode][3]. For more information on using IPv6 with tasks launched
    #     on Fargate, see [Using a VPC in dual-stack mode][4].
    #
    #   * `fargateFIPSMode` - If you specify `fargateFIPSMode`, Fargate FIPS
    #     140 compliance is affected.
    #
    #   * `fargateTaskRetirementWaitPeriod` - When Amazon Web Services
    #     determines that a security or infrastructure update is needed for
    #     an Amazon ECS task hosted on Fargate, the tasks need to be stopped
    #     and new tasks launched to replace them. Use
    #     `fargateTaskRetirementWaitPeriod` to configure the wait time to
    #     retire a Fargate task. For information about the Fargate tasks
    #     maintenance, see [Amazon Web Services Fargate task maintenance][5]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `tagResourceAuthorization` - Amazon ECS is introducing tagging
    #     authorization for resource creation. Users must have permissions
    #     for actions that create the resource, such as `ecsCreateCluster`.
    #     If tags are specified when you create a resource, Amazon Web
    #     Services performs additional authorization to verify if users or
    #     roles have permissions to create tags. Therefore, you must grant
    #     explicit permissions to use the `ecs:TagResource` action. For more
    #     information, see [Grant permission to tag resources on
    #     creation][6] in the *Amazon ECS Developer Guide*.
    #
    #   * `defaultLogDriverMode` -Amazon ECS supports setting a default
    #     delivery mode of log messages from a container to the `logDriver`
    #     that you specify in the container's `logConfiguration`. The
    #     delivery mode affects application stability when the flow of logs
    #     from the container to the log driver is interrupted. The
    #     `defaultLogDriverMode` setting supports two values: `blocking` and
    #     `non-blocking`. If you don't specify a delivery mode in your
    #     container definition's `logConfiguration`, the mode you specify
    #     using this account setting will be used as the default. For more
    #     information about log delivery modes, see [LogConfiguration][7].
    #
    #     <note markdown="1"> On June 25, 2025, Amazon ECS changed the default log driver mode
    #     from `blocking` to `non-blocking` to prioritize task availability
    #     over logging. To continue using the `blocking` mode after this
    #     change, do one of the following:
    #
    #      * Set the `mode` option in your container definition's
    #       `logConfiguration` as `blocking`.
    #
    #     * Set the `defaultLogDriverMode` account setting to `blocking`.
    #
    #      </note>
    #
    #   * `guardDutyActivate` - The `guardDutyActivate` parameter is
    #     read-only in Amazon ECS and indicates whether Amazon ECS Runtime
    #     Monitoring is enabled or disabled by your security administrator
    #     in your Amazon ECS account. Amazon GuardDuty controls this account
    #     setting on your behalf. For more information, see [Protecting
    #     Amazon ECS workloads with Amazon ECS Runtime Monitoring][8].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html
    #   [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html
    #   [7]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html
    #   [8]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `on`, `enhanced`, and `off`.
    #
    #   When you specify `fargateTaskRetirementWaitPeriod` for the `name`,
    #   the following are the valid values:
    #
    #   * `0` - Amazon Web Services sends the notification, and immediately
    #     retires the affected tasks.
    #
    #   * `7` - Amazon Web Services sends the notification, and waits 7
    #     calendar days to retire the tasks.
    #
    #   * `14` - Amazon Web Services sends the notification, and waits 14
    #     calendar days to retire the tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingDefaultRequest AWS API Documentation
    #
    class PutAccountSettingDefaultRequest < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] setting
    #   The current setting for a resource.
    #   @return [Types::Setting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingDefaultResponse AWS API Documentation
    #
    class PutAccountSettingDefaultResponse < Struct.new(
      :setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The Amazon ECS account setting name to modify.
    #
    #   The following are the valid values for the account setting name.
    #
    #   * `serviceLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The
    #     opt-in and opt-out account setting must be set for each Amazon ECS
    #     resource separately. The ARN and resource ID format of a resource
    #     is defined by the opt-in status of the user or role that created
    #     the resource. You must turn on this setting to use Amazon ECS
    #     features such as resource tagging.
    #
    #   * `taskLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The
    #     opt-in and opt-out account setting must be set for each Amazon ECS
    #     resource separately. The ARN and resource ID format of a resource
    #     is defined by the opt-in status of the user or role that created
    #     the resource. You must turn on this setting to use Amazon ECS
    #     features such as resource tagging.
    #
    #   * `containerInstanceLongArnFormat` - When modified, the Amazon
    #     Resource Name (ARN) and resource ID format of the resource type
    #     for a specified user, role, or the root user for an account is
    #     affected. The opt-in and opt-out account setting must be set for
    #     each Amazon ECS resource separately. The ARN and resource ID
    #     format of a resource is defined by the opt-in status of the user
    #     or role that created the resource. You must turn on this setting
    #     to use Amazon ECS features such as resource tagging.
    #
    #   * `awsvpcTrunking` - When modified, the elastic network interface
    #     (ENI) limit for any new container instances that support the
    #     feature is changed. If `awsvpcTrunking` is turned on, any new
    #     container instances that support the feature are launched have the
    #     increased ENI limits available to them. For more information, see
    #     [Elastic Network Interface Trunking][1] in the *Amazon Elastic
    #     Container Service Developer Guide*.
    #
    #   * `containerInsights` - Container Insights with enhanced
    #     observability provides all the Container Insights metrics, plus
    #     additional task and container metrics. This version supports
    #     enhanced observability for Amazon ECS clusters using the Amazon
    #     EC2 and Fargate launch types. After you configure Container
    #     Insights with enhanced observability on Amazon ECS, Container
    #     Insights auto-collects detailed infrastructure telemetry from the
    #     cluster level down to the container level in your environment and
    #     displays these critical performance data in curated dashboards
    #     removing the heavy lifting in observability set-up.
    #
    #     To use Container Insights with enhanced observability, set the
    #     `containerInsights` account setting to `enhanced`.
    #
    #     To use Container Insights, set the `containerInsights` account
    #     setting to `enabled`.
    #
    #     For more information, see [Monitor Amazon ECS containers using
    #     Container Insights with enhanced observability][2] in the *Amazon
    #     Elastic Container Service Developer Guide*.
    #
    #   * `dualStackIPv6` - When turned on, when using a VPC in dual stack
    #     mode, your tasks using the `awsvpc` network mode can have an IPv6
    #     address assigned. For more information on using IPv6 with tasks
    #     launched on Amazon EC2 instances, see [Using a VPC in dual-stack
    #     mode][3]. For more information on using IPv6 with tasks launched
    #     on Fargate, see [Using a VPC in dual-stack mode][4].
    #
    #   * `fargateTaskRetirementWaitPeriod` - When Amazon Web Services
    #     determines that a security or infrastructure update is needed for
    #     an Amazon ECS task hosted on Fargate, the tasks need to be stopped
    #     and new tasks launched to replace them. Use
    #     `fargateTaskRetirementWaitPeriod` to configure the wait time to
    #     retire a Fargate task. For information about the Fargate tasks
    #     maintenance, see [Amazon Web Services Fargate task maintenance][5]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `tagResourceAuthorization` - Amazon ECS is introducing tagging
    #     authorization for resource creation. Users must have permissions
    #     for actions that create the resource, such as `ecsCreateCluster`.
    #     If tags are specified when you create a resource, Amazon Web
    #     Services performs additional authorization to verify if users or
    #     roles have permissions to create tags. Therefore, you must grant
    #     explicit permissions to use the `ecs:TagResource` action. For more
    #     information, see [Grant permission to tag resources on
    #     creation][6] in the *Amazon ECS Developer Guide*.
    #
    #   * `defaultLogDriverMode` - Amazon ECS supports setting a default
    #     delivery mode of log messages from a container to the `logDriver`
    #     that you specify in the container's `logConfiguration`. The
    #     delivery mode affects application stability when the flow of logs
    #     from the container to the log driver is interrupted. The
    #     `defaultLogDriverMode` setting supports two values: `blocking` and
    #     `non-blocking`. If you don't specify a delivery mode in your
    #     container definition's `logConfiguration`, the mode you specify
    #     using this account setting will be used as the default. For more
    #     information about log delivery modes, see [LogConfiguration][7].
    #
    #     <note markdown="1"> On June 25, 2025, Amazon ECS changed the default log driver mode
    #     from `blocking` to `non-blocking` to prioritize task availability
    #     over logging. To continue using the `blocking` mode after this
    #     change, do one of the following:
    #
    #      * Set the `mode` option in your container definition's
    #       `logConfiguration` as `blocking`.
    #
    #     * Set the `defaultLogDriverMode` account setting to `blocking`.
    #
    #      </note>
    #
    #   * `guardDutyActivate` - The `guardDutyActivate` parameter is
    #     read-only in Amazon ECS and indicates whether Amazon ECS Runtime
    #     Monitoring is enabled or disabled by your security administrator
    #     in your Amazon ECS account. Amazon GuardDuty controls this account
    #     setting on your behalf. For more information, see [Protecting
    #     Amazon ECS workloads with Amazon ECS Runtime Monitoring][8].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html
    #   [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html
    #   [7]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html
    #   [8]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `enhanced`, `on`, and `off`.
    #
    #   When you specify `fargateTaskRetirementWaitPeriod` for the `name`,
    #   the following are the valid values:
    #
    #   * `0` - Amazon Web Services sends the notification, and immediately
    #     retires the affected tasks.
    #
    #   * `7` - Amazon Web Services sends the notification, and waits 7
    #     calendar days to retire the tasks.
    #
    #   * `14` - Amazon Web Services sends the notification, and waits 14
    #     calendar days to retire the tasks.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be a user, role, or the root
    #   user. If you specify the root user, it modifies the account setting
    #   for all users, roles, and the root user of the account unless a user
    #   or role explicitly overrides these settings. If this field is
    #   omitted, the setting is changed only for the authenticated user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #
    #   <note markdown="1"> You must use the root user when you set the Fargate wait time
    #   (`fargateTaskRetirementWaitPeriod`).
    #
    #    Federated users assume the account setting of the root user and
    #   can't have explicit account settings set for them.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingRequest AWS API Documentation
    #
    class PutAccountSettingRequest < Struct.new(
      :name,
      :value,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] setting
    #   The current account setting for a resource.
    #   @return [Types::Setting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingResponse AWS API Documentation
    #
    class PutAccountSettingResponse < Struct.new(
      :setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to apply attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to apply to your resource. You can specify up to 10
    #   custom attributes for each resource. You can specify up to 10
    #   attributes in a single call.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributesRequest AWS API Documentation
    #
    class PutAttributesRequest < Struct.new(
      :cluster,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes applied to your resource.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributesResponse AWS API Documentation
    #
    class PutAttributesResponse < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   modify the capacity provider settings for. If you don't specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] capacity_providers
    #   The name of one or more capacity providers to associate with the
    #   cluster.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the [CreateCapacityProvider][1] API
    #   operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_capacity_provider_strategy
    #   The capacity provider strategy to use by default for the cluster.
    #
    #   When creating a service or running a task on a cluster, if no
    #   capacity provider or launch type is specified then the default
    #   capacity provider strategy for the cluster is used.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in
    #   a capacity provider strategy. The [PutClusterCapacityProviders][1]
    #   API is used to associate a capacity provider with a cluster. Only
    #   capacity providers with an `ACTIVE` or `UPDATING` status can be
    #   used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the [CreateCapacityProvider][2] API
    #   operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutClusterCapacityProvidersRequest AWS API Documentation
    #
    class PutClusterCapacityProvidersRequest < Struct.new(
      :cluster,
      :capacity_providers,
      :default_capacity_provider_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Details about the cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutClusterCapacityProvidersResponse AWS API Documentation
    #
    class PutClusterCapacityProvidersResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   register your container instance with. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] instance_identity_document
    #   The instance identity document for the EC2 instance to register.
    #   This document can be found by running the following command from the
    #   instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/document/`
    #   @return [String]
    #
    # @!attribute [rw] instance_identity_document_signature
    #   The instance identity document signature for the EC2 instance to
    #   register. This signature can be found by running the following
    #   command from the instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/signature/`
    #   @return [String]
    #
    # @!attribute [rw] total_resources
    #   The resources available on the instance.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] version_info
    #   The version information for the Amazon ECS container agent and
    #   Docker daemon that runs on the container instance.
    #   @return [Types::VersionInfo]
    #
    # @!attribute [rw] container_instance_arn
    #   The ARN of the container instance (if it was previously registered).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The container instance attributes that this container instance
    #   supports.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] platform_devices
    #   The devices that are available on the container instance. The only
    #   supported device type is a GPU.
    #   @return [Array<Types::PlatformDevice>]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the container instance to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstanceRequest AWS API Documentation
    #
    class RegisterContainerInstanceRequest < Struct.new(
      :cluster,
      :instance_identity_document,
      :instance_identity_document_signature,
      :total_resources,
      :version_info,
      :container_instance_arn,
      :attributes,
      :platform_devices,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance that was registered.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstanceResponse AWS API Documentation
    #
    class RegisterContainerInstanceResponse < Struct.new(
      :container_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] family
    #   You must specify a `family` for a task definition. You can use it
    #   track multiple versions of the same task definition. The `family` is
    #   used as a name for your task definition. Up to 255 letters
    #   (uppercase and lowercase), numbers, underscores, and hyphens are
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the IAM role
    #   that containers in this task can assume. All containers in this task
    #   are granted the permissions that are specified in this role. For
    #   more information, see [IAM Roles for Tasks][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that
    #   grants the Amazon ECS container agent permission to make Amazon Web
    #   Services API calls on your behalf. For informationabout the required
    #   IAM roles for Amazon ECS, see [IAM roles for Amazon ECS][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. If no
    #   network mode is specified, the default is `bridge`.
    #
    #   For Amazon ECS tasks on Fargate, the `awsvpc` network mode is
    #   required. For Amazon ECS tasks on Amazon EC2 Linux instances, any
    #   network mode can be used. For Amazon ECS tasks on Amazon EC2 Windows
    #   instances, `<default>` or `awsvpc` can be used. If the network mode
    #   is set to `none`, you cannot specify port mappings in your container
    #   definitions, and the tasks containers do not have external
    #   connectivity. The `host` and `awsvpc` network modes offer the
    #   highest networking performance for containers because they use the
    #   EC2 network stack instead of the virtualized network stack provided
    #   by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   When using the `host` network mode, you should not run containers
    #   using the root user (UID 0). It is considered best practice to use a
    #   non-root user.
    #
    #   If the network mode is `awsvpc`, the task is allocated an elastic
    #   network interface, and you must specify a [NetworkConfiguration][1]
    #   value when you create a service or run a task with the task
    #   definition. For more information, see [Task Networking][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [String]
    #
    # @!attribute [rw] container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task.
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] volumes
    #   A list of volume definitions in JSON format that containers in your
    #   task might use.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify a maximum of 10 constraints for each task. This limit
    #   includes constraints in the task definition and those specified at
    #   runtime.
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] requires_compatibilities
    #   The task launch type that Amazon ECS validates the task definition
    #   against. A client exception is returned if the task definition
    #   doesn't validate against the compatibilities specified. If no value
    #   is specified, the parameter is omitted from the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units (for example, `1024`) or as a string using
    #   vCPUs (for example, `1 vCPU` or `1 vcpu`) in a task definition.
    #   String values are converted to an integer indicating the CPU units
    #   when the task definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If you're using the EC2 launch type or external launch type, this
    #   field is optional. Supported values are between `128` CPU units
    #   (`0.125` vCPUs) and `196608` CPU units (`192` vCPUs). If you do not
    #   specify a value, the parameter is ignored.
    #
    #   This field is required for Fargate. For information about the valid
    #   values, see [Task size][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) used by the task. It can be expressed
    #   as an integer using MiB (for example ,`1024`) or as a string using
    #   GB (for example, `1GB` or `1 GB`) in a task definition. String
    #   values are converted to an integer indicating the MiB when the task
    #   definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional.
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values. This determines your range of
    #   supported values for the `cpu` parameter.
    #
    #   The CPU units cannot be less than 1 vCPU when you use Windows
    #   containers on Fargate.
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #
    #   * Between 16 GB and 60 GB in 4 GB increments - Available `cpu`
    #     values: 8192 (8 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * Between 32GB and 120 GB in 8 GB increments - Available `cpu`
    #     values: 16384 (16 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task definition to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both of them.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] pid_mode
    #   The process namespace to use for the containers in the task. The
    #   valid values are `host` or `task`. On Fargate for Linux containers,
    #   the only valid value is `task`. For example, monitoring sidecars
    #   might need `pidMode` to access information about other containers
    #   running in the same task.
    #
    #   If `host` is specified, all containers within the tasks that
    #   specified the `host` PID mode on the same container instance share
    #   the same process namespace with the host Amazon EC2 instance.
    #
    #   If `task` is specified, all containers within the specified task
    #   share the same process namespace.
    #
    #   If no value is specified, the default is a private namespace for
    #   each container.
    #
    #   If the `host` PID mode is used, there's a heightened risk of
    #   undesired process namespace exposure.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   <note markdown="1"> This parameter is only supported for tasks that are hosted on
    #   Fargate if the tasks are using platform version `1.4.0` or later
    #   (Linux). This isn't supported for Windows containers on Fargate.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ipc_mode
    #   The IPC resource namespace to use for the containers in the task.
    #   The valid values are `host`, `task`, or `none`. If `host` is
    #   specified, then all containers within the tasks that specified the
    #   `host` IPC mode on the same container instance share the same IPC
    #   resources with the host Amazon EC2 instance. If `task` is specified,
    #   all containers within the specified task share the same IPC
    #   resources. If `none` is specified, then IPC resources within the
    #   containers of a task are private and not shared with other
    #   containers in a task or on the container instance. If no value is
    #   specified, then the IPC resource namespace sharing depends on the
    #   Docker daemon setting on the container instance.
    #
    #   If the `host` IPC mode is used, be aware that there is a heightened
    #   risk of undesired IPC namespace expose.
    #
    #   If you are setting namespaced kernel parameters using
    #   `systemControls` for the containers in the task, the following will
    #   apply to your IPC resource namespace. For more information, see
    #   [System Controls][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   * For tasks that use the `host` IPC mode, IPC namespace related
    #     `systemControls` are not supported.
    #
    #   * For tasks that use the `task` IPC mode, IPC namespace related
    #     `systemControls` will apply to all containers within a task.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
    #   @return [String]
    #
    # @!attribute [rw] proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #
    #   For tasks hosted on Amazon EC2 instances, the container instances
    #   require at least version `1.26.0` of the container agent and at
    #   least version `1.26.0-1` of the `ecs-init` package to use a proxy
    #   configuration. If your container instances are launched from the
    #   Amazon ECS-optimized AMI version `20190301` or later, then they
    #   contain the required versions of the container agent and `ecs-init`.
    #   For more information, see [Amazon ECS-optimized AMI versions][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerators to use for the containers in the
    #   task.
    #   @return [Array<Types::InferenceAccelerator>]
    #
    # @!attribute [rw] ephemeral_storage
    #   The amount of ephemeral storage to allocate for the task. This
    #   parameter is used to expand the total amount of ephemeral storage
    #   available, beyond the default amount, for tasks hosted on Fargate.
    #   For more information, see [Using data volumes in tasks][1] in the
    #   *Amazon ECS Developer Guide*.
    #
    #   <note markdown="1"> For tasks using the Fargate launch type, the task requires the
    #   following platforms:
    #
    #    * Linux platform version `1.4.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] runtime_platform
    #   The operating system that your tasks definitions run on. A platform
    #   family is specified only for tasks using the Fargate launch type.
    #   @return [Types::RuntimePlatform]
    #
    # @!attribute [rw] enable_fault_injection
    #   Enables fault injection when you register your task definition and
    #   allows for fault injection requests to be accepted from the task's
    #   containers. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinitionRequest AWS API Documentation
    #
    class RegisterTaskDefinitionRequest < Struct.new(
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :container_definitions,
      :volumes,
      :placement_constraints,
      :requires_compatibilities,
      :cpu,
      :memory,
      :tags,
      :pid_mode,
      :ipc_mode,
      :proxy_configuration,
      :inference_accelerators,
      :ephemeral_storage,
      :runtime_platform,
      :enable_fault_injection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_definition
    #   The full description of the registered task definition.
    #   @return [Types::TaskDefinition]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the task definition.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinitionResponse AWS API Documentation
    #
    class RegisterTaskDefinitionResponse < Struct.new(
      :task_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The repository credentials for private registry authentication.
    #
    # @!attribute [rw] credentials_parameter
    #   The Amazon Resource Name (ARN) of the secret containing the private
    #   repository credentials.
    #
    #   <note markdown="1"> When you use the Amazon ECS API, CLI, or Amazon Web Services SDK, if
    #   the secret exists in the same Region as the task that you're
    #   launching then you can use either the full ARN or the name of the
    #   secret. When you use the Amazon Web Services Management Console, you
    #   must specify the full ARN of the secret.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RepositoryCredentials AWS API Documentation
    #
    class RepositoryCredentials < Struct.new(
      :credentials_parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resolved configuration for a service revision, which contains the
    # actual resources your service revision uses, such as which target
    # groups serve traffic.
    #
    # @!attribute [rw] load_balancers
    #   The resolved load balancer configuration for the service revision.
    #   This includes information about which target groups serve traffic
    #   and which listener rules direct traffic to them.
    #   @return [Array<Types::ServiceRevisionLoadBalancer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ResolvedConfiguration AWS API Documentation
    #
    class ResolvedConfiguration < Struct.new(
      :load_balancers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resources available for a container instance.
    #
    # @!attribute [rw] name
    #   The name of the resource, such as `CPU`, `MEMORY`, `PORTS`,
    #   `PORTS_UDP`, or a user-defined resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource. Valid values: `INTEGER`, `DOUBLE`, `LONG`,
    #   or `STRINGSET`.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   When the `doubleValue` type is set, the value of the resource must
    #   be a double precision floating-point type.
    #   @return [Float]
    #
    # @!attribute [rw] long_value
    #   When the `longValue` type is set, the value of the resource must be
    #   an extended precision floating-point type.
    #   @return [Integer]
    #
    # @!attribute [rw] integer_value
    #   When the `integerValue` type is set, the value of the resource must
    #   be an integer.
    #   @return [Integer]
    #
    # @!attribute [rw] string_set_value
    #   When the `stringSetValue` type is set, the value of the resource
    #   must be a string type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :name,
      :type,
      :double_value,
      :long_value,
      :integer_value,
      :string_set_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in-use and can't be removed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Aws::EmptyStructure; end

    # The specified resource wasn't found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The type and amount of a resource to assign to a container. The
    # supported resource types are GPUs and Elastic Inference accelerators.
    # For more information, see [Working with GPUs on Amazon ECS][1] or
    # [Working with Amazon Elastic Inference on Amazon ECS][2] in the
    # *Amazon Elastic Container Service Developer Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html
    #
    # @!attribute [rw] value
    #   The value for the specified resource type.
    #
    #   When the type is `GPU`, the value is the number of physical `GPUs`
    #   the Amazon ECS container agent reserves for the container. The
    #   number of GPUs that's reserved for all containers in a task can't
    #   exceed the number of available GPUs on the container instance that
    #   the task is launched on.
    #
    #   When the type is `InferenceAccelerator`, the `value` matches the
    #   `deviceName` for an [InferenceAccelerator][1] specified in a task
    #   definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_InferenceAccelerator.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ResourceRequirement AWS API Documentation
    #
    class ResourceRequirement < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the service deployment rollback.
    #
    # @!attribute [rw] reason
    #   The reason the rollback happened. For example, the circuit breaker
    #   initiated the rollback operation.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   Time time that the rollback started. The format is yyyy-MM-dd
    #   HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] service_revision_arn
    #   The ARN of the service revision deployed as part of the rollback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Rollback AWS API Documentation
    #
    class Rollback < Struct.new(
      :reason,
      :started_at,
      :service_revision_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   When you use cluster auto scaling, you must specify
    #   `capacityProviderStrategy` and not `launchType`.
    #
    #   A capacity provider strategy can contain a maximum of 20 capacity
    #   providers.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   run your task on. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    #   Each account receives a default cluster the first time you use the
    #   service, but you may also create other clusters.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of instantiations of the specified task to place on your
    #   cluster. You can specify up to 10 tasks for each call.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to use Amazon ECS managed tags for the task. For
    #   more information, see [Tagging Your Amazon ECS Resources][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Determines whether to use the execute command functionality for the
    #   containers in this task. If `true`, this enables execute command
    #   functionality on all containers in the task.
    #
    #   If `true`, then the task definition must have a task role, or you
    #   must provide one as an override.
    #   @return [Boolean]
    #
    # @!attribute [rw] group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   `family:my-family-name`).
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The infrastructure to run your standalone task on. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   The `FARGATE` launch type runs your tasks on Fargate On-Demand
    #   infrastructure.
    #
    #   <note markdown="1"> Fargate Spot infrastructure is available for use but a capacity
    #   provider strategy must be used. For more information, see [Fargate
    #   capacity providers][2] in the *Amazon ECS Developer Guide*.
    #
    #    </note>
    #
    #   The `EC2` launch type runs your tasks on Amazon EC2 instances
    #   registered to your cluster.
    #
    #   The `EXTERNAL` launch type runs your tasks on your on-premises
    #   server or virtual machine (VM) capacity registered to your cluster.
    #
    #   A task can use either a launch type or a capacity provider strategy.
    #   If a `launchType` is specified, the `capacityProviderStrategy`
    #   parameter must be omitted.
    #
    #   When you use cluster auto scaling, you must specify
    #   `capacityProviderStrategy` and not `launchType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the task. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own elastic network interface, and it isn't supported for
    #   other network modes. For more information, see [Task networking][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] overrides
    #   A list of container overrides in JSON format that specify the name
    #   of a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that's specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker
    #   image) on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints for each task (including
    #   constraints in the task definition and those specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for the task. You can specify
    #   a maximum of 5 strategy rules for each task.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   The platform version the task uses. A platform version is only
    #   specified for tasks hosted on Fargate. If one isn't specified, the
    #   `LATEST` platform version is used. For more information, see
    #   [Fargate platform versions][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags aren't propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use the[TagResource][1] API
    #   action.
    #
    #   <note markdown="1"> An error will be received if you specify the `SERVICE` option when
    #   running a task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   This parameter is only used by Amazon ECS. It is not intended for
    #   use by customers.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example, if
    #   you automatically trigger a task to run a batch process job, you
    #   could apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a [ListTasks][1] call with the
    #   `startedBy` value. Up to 128 letters (uppercase and lowercase),
    #   numbers, hyphens (-), forward slash (/), and underscores (\_) are
    #   allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value,
    #   both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run. If a `revision` isn't specified, the latest
    #   `ACTIVE` revision is used.
    #
    #   The full ARN value must match the value that you specified as the
    #   `Resource` of the principal's permissions policy.
    #
    #   When you specify a task definition, you must either specify a
    #   specific revision, or all revisions in the ARN.
    #
    #   To specify a specific revision, include the revision number in the
    #   ARN. For example, to specify revision 2, use
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:2`.
    #
    #   To specify all revisions, use the wildcard (*) in the ARN. For
    #   example, to specify all revisions, use
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*`.
    #
    #   For more information, see [Policy Resources for Amazon ECS][1] in
    #   the Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 64
    #   characters are allowed. The valid characters are characters in the
    #   range of 33-126, inclusive. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in [TaskManagedEBSVolumeConfiguration][1]. The `name` of
    #   the volume must match the `name` from the task definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html
    #   @return [Array<Types::TaskVolumeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTaskRequest AWS API Documentation
    #
    class RunTaskRequest < Struct.new(
      :capacity_provider_strategy,
      :cluster,
      :count,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :launch_type,
      :network_configuration,
      :overrides,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :propagate_tags,
      :reference_id,
      :started_by,
      :tags,
      :task_definition,
      :client_token,
      :volume_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   A full description of the tasks that were run. The tasks that were
    #   successfully placed on your cluster are described here.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #
    #   For information about how to address failures, see [Service event
    #   messages][1] and [API failure reasons][2] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-event-messages.html#service-event-messages-list
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTaskResponse AWS API Documentation
    #
    class RunTaskResponse < Struct.new(
      :tasks,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the platform for the Amazon ECS service or task.
    #
    # For more information about `RuntimePlatform`, see [RuntimePlatform][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform
    #
    # @!attribute [rw] cpu_architecture
    #   The CPU architecture.
    #
    #   You can run your Linux tasks on an ARM-based platform by setting the
    #   value to `ARM64`. This option is available for tasks that run on
    #   Linux Amazon EC2 instance or Linux containers on Fargate.
    #   @return [String]
    #
    # @!attribute [rw] operating_system_family
    #   The operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RuntimePlatform AWS API Documentation
    #
    class RuntimePlatform < Struct.new(
      :cpu_architecture,
      :operating_system_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # A floating-point percentage of the desired number of tasks to place
    # and keep running in the task set.
    #
    # @!attribute [rw] value
    #   The value, specified as a percent total of a service's
    #   `desiredCount`, to scale the task set. Accepted values are numbers
    #   between 0 and 100.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measure for the scale value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Scale AWS API Documentation
    #
    class Scale < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the secret to expose to your container. Secrets
    # can be exposed to a container in the following ways:
    #
    # * To inject sensitive data into your containers as environment
    #   variables, use the `secrets` container definition parameter.
    #
    # * To reference sensitive information in the log configuration of a
    #   container, use the `secretOptions` container definition parameter.
    #
    # For more information, see [Specifying sensitive data][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container. The supported values are
    #   either the full ARN of the Secrets Manager secret or the full ARN of
    #   the parameter in the SSM Parameter Store.
    #
    #   For information about the require Identity and Access Management
    #   permissions, see [Required IAM permissions for Amazon ECS
    #   secrets][1] (for Secrets Manager) or [Required IAM permissions for
    #   Amazon ECS secrets][2] (for Systems Manager Parameter store) in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> If the SSM Parameter Store parameter exists in the same Region as
    #   the task you're launching, then you can use either the full ARN or
    #   name of the parameter. If the parameter exists in a different
    #   Region, then the full ARN must be specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-secrets.html#secrets-iam
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-parameters.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Secret AWS API Documentation
    #
    class Secret < Struct.new(
      :name,
      :value_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server issue.
    #
    # @!attribute [rw] message
    #   Message that describes the cause of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a service within a cluster.
    #
    # @!attribute [rw] service_arn
    #   The ARN that identifies the service. For more information about the
    #   ARN format, see [Amazon Resource Name (ARN)][1] in the *Amazon ECS
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, underscores, and hyphens are allowed. Service
    #   names must be unique within a cluster. However, you can have
    #   similarly named services in multiple clusters within a Region or
    #   across multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that hosts the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A list of Elastic Load Balancing load balancer objects. It contains
    #   the load balancer name, the container name, and the container port
    #   to access from the load balancer. The container name is as it
    #   appears in a container definition.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details for the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] status
    #   The status of the service. The valid values are `ACTIVE`,
    #   `DRAINING`, or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The desired number of instantiations of the task definition to keep
    #   running on the service. This value is specified when the service is
    #   created with [CreateService][1] , and it can be modified with
    #   [UpdateService][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the cluster that are in the `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the cluster that are in the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type the service is using. When using the
    #   DescribeServices API, this field is omitted if the service was
    #   created using a capacity provider strategy.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy the service uses. When using the
    #   DescribeServices API, this field is omitted if the service was
    #   created using a launch type.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version to run your service on. A platform version is
    #   only specified for tasks that are hosted on Fargate. If one isn't
    #   specified, the `LATEST` platform version is used. For more
    #   information, see [Fargate Platform Versions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] platform_family
    #   The operating system that your tasks in the service run on. A
    #   platform family is specified only for tasks using the Fargate launch
    #   type.
    #
    #   All tasks that run as part of this service must use the same
    #   `platformFamily` value as the service (for example, `LINUX`).
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition to use for tasks in the service. This value is
    #   specified when the service is created with [CreateService][1], and
    #   it can be modified with [UpdateService][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] task_sets
    #   Information about a set of Amazon ECS tasks in either an CodeDeploy
    #   or an `EXTERNAL` deployment. An Amazon ECS task set includes details
    #   such as the desired number of tasks, how many tasks are running, and
    #   whether the task set serves production traffic.
    #   @return [Array<Types::TaskSet>]
    #
    # @!attribute [rw] deployments
    #   The current state of deployments for the service.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that's associated with the service. It
    #   allows the Amazon ECS container agent to register container
    #   instances with an Elastic Load Balancing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The event stream for your service. A maximum of 100 of the latest
    #   events are displayed.
    #   @return [Array<Types::ServiceEvent>]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] placement_constraints
    #   The placement constraints for the tasks in the service.
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy that determines how tasks for the service are
    #   placed.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler ignores unhealthy Elastic Load Balancing, VPC Lattice, and
    #   container health checks after a task has first started.
    #
    #   If your service has more running tasks than desired, unhealthy tasks
    #   in the grace period might be stopped to reach the desired count.
    #   @return [Integer]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy to use for the service. For more
    #   information, see [Services][1].
    #
    #   There are two service scheduler strategies available.
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the
    #     service scheduler spreads tasks across Availability Zones. You can
    #     use task placement strategies and constraints to customize task
    #     placement decisions.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each active container instance. This task meets all of the task
    #     placement constraints that you specify in your cluster. The
    #     service scheduler also evaluates the task placement constraints
    #     for running tasks. It stop tasks that don't meet the placement
    #     constraints.
    #
    #     <note markdown="1"> Fargate tasks don't support the `DAEMON` scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_controller
    #   The deployment controller type the service is using.
    #   @return [Types::DeploymentController]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the service to help you categorize
    #   and organize them. Each tag consists of a key and an optional value.
    #   You define bot the key and value.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The principal that created the service.
    #   @return [String]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Determines whether to use Amazon ECS managed tags for the tasks in
    #   the service. For more information, see [Tagging Your Amazon ECS
    #   Resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] propagate_tags
    #   Determines whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags aren't
    #   propagated.
    #   @return [String]
    #
    # @!attribute [rw] enable_execute_command
    #   Determines whether the execute command functionality is turned on
    #   for the service. If `true`, the execute command functionality is
    #   turned on for all containers in tasks as part of the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] availability_zone_rebalancing
    #   Indicates whether to use Availability Zone rebalancing for the
    #   service.
    #
    #   For more information, see [Balancing an Amazon ECS service across
    #   Availability Zones][1] in the <i> <i>Amazon Elastic Container
    #   Service Developer Guide</i> </i>.
    #
    #   The default behavior of `AvailabilityZoneRebalancing` differs
    #   between create and update requests:
    #
    #   * For create service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults the value to
    #     `ENABLED`.
    #
    #   * For update service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults to the existing
    #     service’s `AvailabilityZoneRebalancing` value. If the service
    #     never had an `AvailabilityZoneRebalancing` value set, Amazon ECS
    #     treats this as `DISABLED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Service AWS API Documentation
    #
    class Service < Struct.new(
      :service_arn,
      :service_name,
      :cluster_arn,
      :load_balancers,
      :service_registries,
      :status,
      :desired_count,
      :running_count,
      :pending_count,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :platform_family,
      :task_definition,
      :deployment_configuration,
      :task_sets,
      :deployments,
      :role_arn,
      :events,
      :created_at,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy,
      :deployment_controller,
      :tags,
      :created_by,
      :enable_ecs_managed_tags,
      :propagate_tags,
      :enable_execute_command,
      :availability_zone_rebalancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each alias ("endpoint") is a fully-qualified name and port number
    # that other tasks ("clients") can use to connect to this service.
    #
    # Each name and port mapping must be unique within the namespace.
    #
    # Tasks that run in a namespace can use short names to connect to
    # services in the namespace. Tasks can connect to services across all of
    # the clusters in the namespace. Tasks connect through a managed proxy
    # container that collects logs and metrics for increased visibility.
    # Only the tasks that Amazon ECS services create are supported with
    # Service Connect. For more information, see [Service Connect][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @!attribute [rw] port
    #   The listening port number for the Service Connect proxy. This port
    #   is available inside of all of the tasks within the same namespace.
    #
    #   To avoid changing your applications in client Amazon ECS services,
    #   set this to the same port that the client application uses by
    #   default. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Integer]
    #
    # @!attribute [rw] dns_name
    #   The `dnsName` is the name that you use in the applications of client
    #   tasks to connect to this service. The name must be a valid DNS name
    #   but doesn't need to be fully-qualified. The name can include up to
    #   127 characters. The name can include lowercase letters, numbers,
    #   underscores (\_), hyphens (-), and periods (.). The name can't
    #   start with a hyphen.
    #
    #   If this parameter isn't specified, the default value of
    #   `discoveryName.namespace` is used. If the `discoveryName` isn't
    #   specified, the port mapping name from the task definition is used in
    #   `portName.namespace`.
    #
    #   To avoid changing your applications in client Amazon ECS services,
    #   set this to the same name that the client application uses by
    #   default. For example, a few common names are `database`, `db`, or
    #   the lowercase name of a database, such as `mysql` or `redis`. For
    #   more information, see [Service Connect][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [String]
    #
    # @!attribute [rw] test_traffic_rules
    #   The configuration for test traffic routing rules used during
    #   blue/green deployments with Amazon ECS Service Connect. This allows
    #   you to route a portion of traffic to the new service revision of
    #   your service for testing before shifting all production traffic.
    #   @return [Types::ServiceConnectTestTrafficRules]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectClientAlias AWS API Documentation
    #
    class ServiceConnectClientAlias < Struct.new(
      :port,
      :dns_name,
      :test_traffic_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Service Connect configuration of your Amazon ECS service. The
    # configuration for this service to discover and connect to services,
    # and be discovered by, and connected from, other services within a
    # namespace.
    #
    # Tasks that run in a namespace can use short names to connect to
    # services in the namespace. Tasks can connect to services across all of
    # the clusters in the namespace. Tasks connect through a managed proxy
    # container that collects logs and metrics for increased visibility.
    # Only the tasks that Amazon ECS services create are supported with
    # Service Connect. For more information, see [Service Connect][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @!attribute [rw] enabled
    #   Specifies whether to use Service Connect with this service.
    #   @return [Boolean]
    #
    # @!attribute [rw] namespace
    #   The namespace name or full Amazon Resource Name (ARN) of the Cloud
    #   Map namespace for use with Service Connect. The namespace must be in
    #   the same Amazon Web Services Region as the Amazon ECS service and
    #   cluster. The type of namespace doesn't affect Service Connect. For
    #   more information about Cloud Map, see [Working with Services][1] in
    #   the *Cloud Map Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/dg/working-with-services.html
    #   @return [String]
    #
    # @!attribute [rw] services
    #   The list of Service Connect service objects. These are names and
    #   aliases (also known as endpoints) that are used by other Amazon ECS
    #   services to connect to this service.
    #
    #   This field is not required for a "client" Amazon ECS service
    #   that's a member of a namespace only to connect to other services
    #   within the namespace. An example of this would be a frontend
    #   application that accepts incoming requests from either a load
    #   balancer that's attached to the service or by other means.
    #
    #   An object selects a port from the task definition, assigns a name
    #   for the Cloud Map service, and a list of aliases (endpoints) and
    #   ports for client applications to refer to this service.
    #   @return [Array<Types::ServiceConnectService>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration for the container. This parameter maps to
    #   `LogConfig` in the docker container create command and the
    #   `--log-driver` option to docker run.
    #
    #   By default, containers use the same logging driver that the Docker
    #   daemon uses. However, the container might use a different logging
    #   driver than the Docker daemon by specifying a log driver
    #   configuration in the container definition.
    #
    #   Understand the following when specifying a log configuration for
    #   your containers.
    #
    #   * Amazon ECS currently supports a subset of the logging drivers
    #     available to the Docker daemon. Additional log drivers may be
    #     available in future releases of the Amazon ECS container agent.
    #
    #     For tasks on Fargate, the supported log drivers are `awslogs`,
    #     `splunk`, and `awsfirelens`.
    #
    #     For tasks hosted on Amazon EC2 instances, the supported log
    #     drivers are `awslogs`, `fluentd`, `gelf`, `json-file`,
    #     `journald`,`syslog`, `splunk`, and `awsfirelens`.
    #
    #   * This parameter requires version 1.18 of the Docker Remote API or
    #     greater on your container instance.
    #
    #   * For tasks that are hosted on Amazon EC2 instances, the Amazon ECS
    #     container agent must register the available logging drivers with
    #     the `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #     containers placed on that instance can use these log configuration
    #     options. For more information, see [Amazon ECS container agent
    #     configuration][1] in the *Amazon Elastic Container Service
    #     Developer Guide*.
    #
    #   * For tasks that are on Fargate, because you don't have access to
    #     the underlying infrastructure your tasks are hosted on, any
    #     additional software needed must be installed outside of the task.
    #     For example, the Fluentd output aggregators or a remote host
    #     running Logstash to send Gelf logs to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectConfiguration AWS API Documentation
    #
    class ServiceConnectConfiguration < Struct.new(
      :enabled,
      :namespace,
      :services,
      :log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Service Connect service object configuration. For more
    # information, see [Service Connect][1] in the *Amazon Elastic Container
    # Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @!attribute [rw] port_name
    #   The `portName` must match the name of one of the `portMappings` from
    #   all the containers in the task definition of this Amazon ECS
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] discovery_name
    #   The `discoveryName` is the name of the new Cloud Map service that
    #   Amazon ECS creates for this Amazon ECS service. This must be unique
    #   within the Cloud Map namespace. The name can contain up to 64
    #   characters. The name can include lowercase letters, numbers,
    #   underscores (\_), and hyphens (-). The name can't start with a
    #   hyphen.
    #
    #   If the `discoveryName` isn't specified, the port mapping name from
    #   the task definition is used in `portName.namespace`.
    #   @return [String]
    #
    # @!attribute [rw] client_aliases
    #   The list of client aliases for this Service Connect service. You use
    #   these to assign names that can be used by client applications. The
    #   maximum number of client aliases that you can have in this list is
    #   1.
    #
    #   Each alias ("endpoint") is a fully-qualified name and port number
    #   that other Amazon ECS tasks ("clients") can use to connect to this
    #   service.
    #
    #   Each name and port mapping must be unique within the namespace.
    #
    #   For each `ServiceConnectService`, you must provide at least one
    #   `clientAlias` with one `port`.
    #   @return [Array<Types::ServiceConnectClientAlias>]
    #
    # @!attribute [rw] ingress_port_override
    #   The port number for the Service Connect proxy to listen on.
    #
    #   Use the value of this field to bypass the proxy for traffic on the
    #   port number specified in the named `portMapping` in the task
    #   definition of this application, and then use it in your VPC security
    #   groups to allow traffic into the proxy for this Amazon ECS service.
    #
    #   In `awsvpc` mode and Fargate, the default value is the container
    #   port number. The container port number is in the `portMapping` in
    #   the task definition. In bridge mode, the default value is the
    #   ephemeral port of the Service Connect proxy.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   A reference to an object that represents the configured timeouts for
    #   Service Connect.
    #   @return [Types::TimeoutConfiguration]
    #
    # @!attribute [rw] tls
    #   A reference to an object that represents a Transport Layer Security
    #   (TLS) configuration.
    #   @return [Types::ServiceConnectTlsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectService AWS API Documentation
    #
    class ServiceConnectService < Struct.new(
      :port_name,
      :discovery_name,
      :client_aliases,
      :ingress_port_override,
      :timeout,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Service Connect resource. Each configuration maps a discovery name
    # to a Cloud Map service name. The data is stored in Cloud Map as part
    # of the Service Connect configuration for each discovery name of this
    # Amazon ECS service.
    #
    # A task can resolve the `dnsName` for each of the `clientAliases` of a
    # service. However a task can't resolve the discovery names. If you
    # want to connect to a service, refer to the
    # `ServiceConnectConfiguration` of that service for the list of
    # `clientAliases` that you can use.
    #
    # @!attribute [rw] discovery_name
    #   The discovery name of this Service Connect resource.
    #
    #   The `discoveryName` is the name of the new Cloud Map service that
    #   Amazon ECS creates for this Amazon ECS service. This must be unique
    #   within the Cloud Map namespace. The name can contain up to 64
    #   characters. The name can include lowercase letters, numbers,
    #   underscores (\_), and hyphens (-). The name can't start with a
    #   hyphen.
    #
    #   If the `discoveryName` isn't specified, the port mapping name from
    #   the task definition is used in `portName.namespace`.
    #   @return [String]
    #
    # @!attribute [rw] discovery_arn
    #   The Amazon Resource Name (ARN) for the service in Cloud Map that
    #   matches the discovery name for this Service Connect resource. You
    #   can use this ARN in other integrations with Cloud Map. However,
    #   Service Connect can't ensure connectivity outside of Amazon ECS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectServiceResource AWS API Documentation
    #
    class ServiceConnectServiceResource < Struct.new(
      :discovery_name,
      :discovery_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The header matching rules for test traffic routing in Amazon ECS
    # blue/green deployments. These rules determine how incoming requests
    # are matched based on HTTP headers to route test traffic to the new
    # service revision.
    #
    # @!attribute [rw] exact
    #   The exact value that the HTTP header must match for the test traffic
    #   routing rule to apply. This provides precise control over which
    #   requests are routed to the new service revision during blue/green
    #   deployments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectTestTrafficHeaderMatchRules AWS API Documentation
    #
    class ServiceConnectTestTrafficHeaderMatchRules < Struct.new(
      :exact)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP header rules used to identify and route test traffic during
    # Amazon ECS blue/green deployments. These rules specify which HTTP
    # headers to examine and what values to match for routing decisions.
    #
    # For more information, see [Service Connect for Amazon ECS blue/green
    # deployments][1] in the <i> Amazon Elastic Container Service Developer
    # Guide</i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect-blue-green.html
    #
    # @!attribute [rw] name
    #   The name of the HTTP header to examine for test traffic routing.
    #   Common examples include custom headers like `X-Test-Version` or
    #   `X-Canary-Request` that can be used to identify test traffic.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The header value matching configuration that determines how the HTTP
    #   header value is evaluated for test traffic routing decisions.
    #   @return [Types::ServiceConnectTestTrafficHeaderMatchRules]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectTestTrafficHeaderRules AWS API Documentation
    #
    class ServiceConnectTestTrafficHeaderRules < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The test traffic routing configuration for Amazon ECS blue/green
    # deployments. This configuration allows you to define rules for routing
    # specific traffic to the new service revision during the deployment
    # process, allowing for safe testing before full production traffic
    # shift.
    #
    # For more information, see [Service Connect for Amazon ECS blue/green
    # deployments][1] in the <i> Amazon Elastic Container Service Developer
    # Guide</i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect-blue-green.html
    #
    # @!attribute [rw] header
    #   The HTTP header-based routing rules that determine which requests
    #   should be routed to the new service version during blue/green
    #   deployment testing. These rules provide fine-grained control over
    #   test traffic routing based on request headers.
    #   @return [Types::ServiceConnectTestTrafficHeaderRules]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectTestTrafficRules AWS API Documentation
    #
    class ServiceConnectTestTrafficRules < Struct.new(
      :header)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate root authority that secures your service.
    #
    # @!attribute [rw] aws_pca_authority_arn
    #   The ARN of the Amazon Web Services Private Certificate Authority
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectTlsCertificateAuthority AWS API Documentation
    #
    class ServiceConnectTlsCertificateAuthority < Struct.new(
      :aws_pca_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key that encrypts and decrypts your resources for Service Connect
    # TLS.
    #
    # @!attribute [rw] issuer_certificate_authority
    #   The signer certificate authority.
    #   @return [Types::ServiceConnectTlsCertificateAuthority]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Web Services Key Management Service key.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that's associated
    #   with the Service Connect TLS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectTlsConfiguration AWS API Documentation
    #
    class ServiceConnectTlsConfiguration < Struct.new(
      :issuer_certificate_authority,
      :kms_key,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the service deployment.
    #
    # Service deployments provide a comprehensive view of your deployments.
    # For information about service deployments, see [View service history
    # using Amazon ECS service deployments][1] in the <i> <i>Amazon Elastic
    # Container Service Developer Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployment.html
    #
    # @!attribute [rw] service_deployment_arn
    #   The ARN of the service deployment.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The ARN of the service for this service deployment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN of the cluster that hosts the service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the service deployment was created. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time the service deployment statred. The format is yyyy-MM-dd
    #   HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] finished_at
    #   The time the service deployment finished. The format is yyyy-MM-dd
    #   HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] stopped_at
    #   The time the service deployment stopped. The format is yyyy-MM-dd
    #   HH:mm:ss.SSSSSS.
    #
    #   The service deployment stops when any of the following actions
    #   happen:
    #
    #   * A user manually stops the deployment
    #
    #   * The rollback option is not in use for the failure detection
    #     mechanism (the circuit breaker or alarm-based) and the service
    #     fails.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time that the service deployment was last updated. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] source_service_revisions
    #   The currently deployed workload configuration.
    #   @return [Array<Types::ServiceRevisionSummary>]
    #
    # @!attribute [rw] target_service_revision
    #   The workload configuration being deployed.
    #   @return [Types::ServiceRevisionSummary]
    #
    # @!attribute [rw] status
    #   The service deployment state.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Information about why the service deployment is in the current
    #   status. For example, the circuit breaker detected a failure.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_stage
    #   The current lifecycle stage of the deployment. Possible values
    #   include:
    #
    #   * RECONCILE\_SERVICE
    #
    #     The reconciliation stage that only happens when you start a new
    #     service deployment with more than 1 service revision in an ACTIVE
    #     state.
    #
    #   * PRE\_SCALE\_UP
    #
    #     The green service revision has not started. The blue service
    #     revision is handling 100% of the production traffic. There is no
    #     test traffic.
    #
    #   * SCALE\_UP
    #
    #     The stage when the green service revision scales up to 100% and
    #     launches new tasks. The green service revision is not serving any
    #     traffic at this point.
    #
    #   * POST\_SCALE\_UP
    #
    #     The green service revision has started. The blue service revision
    #     is handling 100% of the production traffic. There is no test
    #     traffic.
    #
    #   * TEST\_TRAFFIC\_SHIFT
    #
    #     The blue and green service revisions are running. The blue service
    #     revision handles 100% of the production traffic. The green service
    #     revision is migrating from 0% to 100% of test traffic.
    #
    #   * POST\_TEST\_TRAFFIC\_SHIFT
    #
    #     The test traffic shift is complete. The green service revision
    #     handles 100% of the test traffic.
    #
    #   * PRODUCTION\_TRAFFIC\_SHIFT
    #
    #     Production traffic is shifting to the green service revision. The
    #     green service revision is migrating from 0% to 100% of production
    #     traffic.
    #
    #   * POST\_PRODUCTION\_TRAFFIC\_SHIFT
    #
    #     The production traffic shift is complete.
    #
    #   * BAKE\_TIME
    #
    #     The stage when both blue and green service revisions are running
    #     simultaneously after the production traffic has shifted.
    #
    #   * CLEAN\_UP
    #
    #     The stage when the blue service revision has completely scaled
    #     down to 0 running tasks. The green service revision is now the
    #     production service revision after this stage.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during a deployment and the ordering of stopping and starting tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] rollback
    #   The rollback options the service deployment uses when the deployment
    #   fails.
    #   @return [Types::Rollback]
    #
    # @!attribute [rw] deployment_circuit_breaker
    #   The circuit breaker configuration that determines a service
    #   deployment failed.
    #   @return [Types::ServiceDeploymentCircuitBreaker]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms that determine when a service deployment
    #   fails.
    #   @return [Types::ServiceDeploymentAlarms]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceDeployment AWS API Documentation
    #
    class ServiceDeployment < Struct.new(
      :service_deployment_arn,
      :service_arn,
      :cluster_arn,
      :created_at,
      :started_at,
      :finished_at,
      :stopped_at,
      :updated_at,
      :source_service_revisions,
      :target_service_revision,
      :status,
      :status_reason,
      :lifecycle_stage,
      :deployment_configuration,
      :rollback,
      :deployment_circuit_breaker,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CloudWatch alarms used to determine a service deployment failed.
    #
    # Amazon ECS considers the service deployment as failed when any of the
    # alarms move to the `ALARM` state. For more information, see [How
    # CloudWatch alarms detect Amazon ECS deployment failures][1] in the
    # Amazon ECS Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-alarm-failure.html
    #
    # @!attribute [rw] status
    #   The status of the alarms check. Amazon ECS is not using alarms for
    #   service deployment failures when the status is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] alarm_names
    #   The name of the CloudWatch alarms that determine when a service
    #   deployment failed. A "," separates the alarms.
    #   @return [Array<String>]
    #
    # @!attribute [rw] triggered_alarm_names
    #   One or more CloudWatch alarm names that have been triggered during
    #   the service deployment. A "," separates the alarm names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceDeploymentAlarms AWS API Documentation
    #
    class ServiceDeploymentAlarms < Struct.new(
      :status,
      :alarm_names,
      :triggered_alarm_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service deployment properties that are retured when you call
    # `ListServiceDeployments`.
    #
    # This provides a high-level overview of the service deployment.
    #
    # @!attribute [rw] service_deployment_arn
    #   The ARN of the service deployment.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The ARN of the service for this service deployment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN of the cluster that hosts the service.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time that the service deployment statred. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time that the service deployment was created. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] finished_at
    #   The time that the service deployment completed. The format is
    #   yyyy-MM-dd HH:mm:ss.SSSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] target_service_revision_arn
    #   The ARN of the service revision being deplyed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service deployment
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Information about why the service deployment is in the current
    #   status. For example, the circuit breaker detected a deployment
    #   failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceDeploymentBrief AWS API Documentation
    #
    class ServiceDeploymentBrief < Struct.new(
      :service_deployment_arn,
      :service_arn,
      :cluster_arn,
      :started_at,
      :created_at,
      :finished_at,
      :target_service_revision_arn,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the circuit breaker used to determine when a service
    # deployment has failed.
    #
    # The deployment circuit breaker is the rolling update mechanism that
    # determines if the tasks reach a steady state. The deployment circuit
    # breaker has an option that will automatically roll back a failed
    # deployment to the last cpompleted service revision. For more
    # information, see [How the Amazon ECS deployment circuit breaker
    # detects failures][1] in the<i> Amazon ECS Developer Guide</i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-circuit-breaker.html
    #
    # @!attribute [rw] status
    #   The circuit breaker status. Amazon ECS is not using the circuit
    #   breaker for service deployment failures when the status is
    #   `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] failure_count
    #   The number of times the circuit breaker detected a service
    #   deploymeny failure.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The threshhold which determines that the service deployment failed.
    #
    #   The deployment circuit breaker calculates the threshold value, and
    #   then uses the value to determine when to move the deployment to a
    #   FAILED state. The deployment circuit breaker has a minimum threshold
    #   of 3 and a maximum threshold of 200. and uses the values in the
    #   following formula to determine the deployment failure.
    #
    #   `0.5 * desired task count`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceDeploymentCircuitBreaker AWS API Documentation
    #
    class ServiceDeploymentCircuitBreaker < Struct.new(
      :status,
      :failure_count,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service deploy ARN that you specified in the
    # `StopServiceDeployment` doesn't exist. You can use
    # `ListServiceDeployments` to retrieve the service deployment ARNs.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceDeploymentNotFoundException AWS API Documentation
    #
    class ServiceDeploymentNotFoundException < Aws::EmptyStructure; end

    # The details for an event that's associated with a service.
    #
    # @!attribute [rw] id
    #   The ID string for the event.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the event was triggered.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The event message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceEvent AWS API Documentation
    #
    class ServiceEvent < Struct.new(
      :id,
      :created_at,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Amazon EBS volume that Amazon ECS creates
    # and manages on your behalf. These settings are used to create each
    # Amazon EBS volume, with one volume created for each task in the
    # service. For information about the supported launch types and
    # operating systems, see [Supported operating systems and launch
    # types][1] in the<i> Amazon Elastic Container Service Developer
    # Guide</i>.
    #
    # Many of these parameters map 1:1 with the Amazon EBS `CreateVolume`
    # API request parameters.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volumes-configuration
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the volume should be encrypted. If you turn on
    #   Region-level Amazon EBS encryption by default but set this value as
    #   `false`, the setting is overridden and the volume is encrypted with
    #   the KMS key specified for Amazon EBS encryption by default. This
    #   parameter maps 1:1 with the `Encrypted` parameter of the
    #   [CreateVolume API][1] in the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) identifier of the Amazon Web Services
    #   Key Management Service key to use for Amazon EBS encryption. When a
    #   key is specified using this parameter, it overrides Amazon EBS
    #   default encryption or any KMS key that you specified for
    #   cluster-level managed storage encryption. This parameter maps 1:1
    #   with the `KmsKeyId` parameter of the [CreateVolume API][1] in the
    #   *Amazon EC2 API Reference*. For more information about encrypting
    #   Amazon EBS volumes attached to tasks, see [Encrypt data stored in
    #   Amazon EBS volumes attached to Amazon ECS tasks][2].
    #
    #   Amazon Web Services authenticates the Amazon Web Services Key
    #   Management Service key asynchronously. Therefore, if you specify an
    #   ID, alias, or ARN that is invalid, the action can appear to
    #   complete, but eventually fails.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-kms-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type. This parameter maps 1:1 with the `VolumeType`
    #   parameter of the [CreateVolume API][1] in the *Amazon EC2 API
    #   Reference*. For more information, see [Amazon EBS volume types][2]
    #   in the *Amazon EC2 User Guide*.
    #
    #   The following are the supported volume types.
    #
    #   * General Purpose SSD: `gp2`\|`gp3`
    #
    #   * Provisioned IOPS SSD: `io1`\|`io2`
    #
    #   * Throughput Optimized HDD: `st1`
    #
    #   * Cold HDD: `sc1`
    #
    #   * Magnetic: `standard`
    #
    #     <note markdown="1"> The magnetic volume type is not supported on Fargate.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html
    #   @return [String]
    #
    # @!attribute [rw] size_in_gi_b
    #   The size of the volume in GiB. You must specify either a volume size
    #   or a snapshot ID. If you specify a snapshot ID, the snapshot size is
    #   used for the volume size by default. You can optionally specify a
    #   volume size greater than or equal to the snapshot size. This
    #   parameter maps 1:1 with the `Size` parameter of the [CreateVolume
    #   API][1] in the *Amazon EC2 API Reference*.
    #
    #   The following are the supported volume size values for each volume
    #   type.
    #
    #   * `gp2` and `gp3`: 1-16,384
    #
    #   * `io1` and `io2`: 4-16,384
    #
    #   * `st1` and `sc1`: 125-16,384
    #
    #   * `standard`: 1-1,024
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot that Amazon ECS uses to create volumes for attachment
    #   to tasks maintained by the service. You must specify either
    #   `snapshotId` or `sizeInGiB` in your volume configuration. This
    #   parameter maps 1:1 with the `SnapshotId` parameter of the
    #   [CreateVolume API][1] in the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [String]
    #
    # @!attribute [rw] volume_initialization_rate
    #   The rate, in MiB/s, at which data is fetched from a snapshot of an
    #   existing EBS volume to create new volumes for attachment to the
    #   tasks maintained by the service. This property can be specified only
    #   if you specify a `snapshotId`. For more information, see [Initialize
    #   Amazon EBS volumes][1] in the *Amazon EBS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ebs/latest/userguide/initalize-volume.html
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS). For `gp3`, `io1`,
    #   and `io2` volumes, this represents the number of IOPS that are
    #   provisioned for the volume. For `gp2` volumes, this represents the
    #   baseline performance of the volume and the rate at which the volume
    #   accumulates I/O credits for bursting.
    #
    #   The following are the supported values for each volume type.
    #
    #   * `gp3`: 3,000 - 16,000 IOPS
    #
    #   * `io1`: 100 - 64,000 IOPS
    #
    #   * `io2`: 100 - 256,000 IOPS
    #
    #   This parameter is required for `io1` and `io2` volume types. The
    #   default for `gp3` volumes is `3,000 IOPS`. This parameter is not
    #   supported for `st1`, `sc1`, or `standard` volume types.
    #
    #   This parameter maps 1:1 with the `Iops` parameter of the
    #   [CreateVolume API][1] in the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The throughput to provision for a volume, in MiB/s, with a maximum
    #   of 1,000 MiB/s. This parameter maps 1:1 with the `Throughput`
    #   parameter of the [CreateVolume API][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #   This parameter is only supported for the `gp3` volume type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] tag_specifications
    #   The tags to apply to the volume. Amazon ECS applies service-managed
    #   tags by default. This parameter maps 1:1 with the
    #   `TagSpecifications.N` parameter of the [CreateVolume API][1] in the
    #   *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Array<Types::EBSTagSpecification>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to associate with this volume. This is the
    #   Amazon ECS infrastructure IAM role that is used to manage your
    #   Amazon Web Services infrastructure. We recommend using the Amazon
    #   ECS-managed `AmazonECSInfrastructureRolePolicyForVolumes` IAM policy
    #   with this role. For more information, see [Amazon ECS infrastructure
    #   IAM role][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] filesystem_type
    #   The filesystem type for the volume. For volumes created from a
    #   snapshot, you must specify the same filesystem type that the volume
    #   was using when the snapshot was created. If there is a filesystem
    #   type mismatch, the tasks will fail to start.
    #
    #   The available Linux filesystem types are  `ext3`, `ext4`, and `xfs`.
    #   If no value is specified, the `xfs` filesystem type is used by
    #   default.
    #
    #   The available Windows filesystem types are `NTFS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceManagedEBSVolumeConfiguration AWS API Documentation
    #
    class ServiceManagedEBSVolumeConfiguration < Struct.new(
      :encrypted,
      :kms_key_id,
      :volume_type,
      :size_in_gi_b,
      :snapshot_id,
      :volume_initialization_rate,
      :iops,
      :throughput,
      :tag_specifications,
      :role_arn,
      :filesystem_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified service isn't active. You can't update a service
    # that's inactive. If you have previously deleted a service, you can
    # re-create it with [CreateService][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceNotActiveException AWS API Documentation
    #
    class ServiceNotActiveException < Aws::EmptyStructure; end

    # The specified service wasn't found. You can view your available
    # services with [ListServices][1]. Amazon ECS services are cluster
    # specific and Region specific.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceNotFoundException AWS API Documentation
    #
    class ServiceNotFoundException < Aws::EmptyStructure; end

    # The details for the service registry.
    #
    # Each service may be associated with one service registry. Multiple
    # service registries for each service are not supported.
    #
    # When you add, update, or remove the service registries configuration,
    # Amazon ECS starts a new deployment. New tasks are registered and
    # deregistered to the updated service registry configuration.
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the service registry. The
    #   currently supported service registry is Cloud Map. For more
    #   information, see [CreateService][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value used if your service discovery service specified an
    #   SRV record. This field might be used if both the `awsvpc` network
    #   mode and SRV records are used.
    #   @return [Integer]
    #
    # @!attribute [rw] container_name
    #   The container name value to be used for your service discovery
    #   service. It's already specified in the task definition. If the task
    #   definition that your service task specifies uses the `bridge` or
    #   `host` network mode, you must specify a `containerName` and
    #   `containerPort` combination from the task definition. If the task
    #   definition that your service task specifies uses the `awsvpc`
    #   network mode and a type SRV DNS record is used, you must specify
    #   either a `containerName` and `containerPort` combination or a `port`
    #   value. However, you can't specify both.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port value to be used for your service discovery service. It's
    #   already specified in the task definition. If the task definition
    #   your service task specifies uses the `bridge` or `host` network
    #   mode, you must specify a `containerName` and `containerPort`
    #   combination from the task definition. If the task definition your
    #   service task specifies uses the `awsvpc` network mode and a type SRV
    #   DNS record is used, you must specify either a `containerName` and
    #   `containerPort` combination or a `port` value. However, you can't
    #   specify both.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceRegistry AWS API Documentation
    #
    class ServiceRegistry < Struct.new(
      :registry_arn,
      :port,
      :container_name,
      :container_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the service revision.
    #
    # A service revision contains a record of the workload configuration
    # Amazon ECS is attempting to deploy. Whenever you create or deploy a
    # service, Amazon ECS automatically creates and captures the
    # configuration that you're trying to deploy in the service revision.
    # For information about service revisions, see [Amazon ECS service
    # revisions][1] in the <i> <i>Amazon Elastic Container Service Developer
    # Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html
    #
    # @!attribute [rw] service_revision_arn
    #   The ARN of the service revision.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The ARN of the service for the service revision.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN of the cluster that hosts the service.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition the service revision uses.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy the service revision uses.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] launch_type
    #   The launch type the service revision uses.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   For the Fargate launch type, the platform version the service
    #   revision uses.
    #   @return [String]
    #
    # @!attribute [rw] platform_family
    #   The platform family the service revision uses.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   The load balancers the service revision uses.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The service registries (for Service Discovery) the service revision
    #   uses.
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for a task or service.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] container_images
    #   The container images the service revision uses.
    #   @return [Array<Types::ContainerImage>]
    #
    # @!attribute [rw] guard_duty_enabled
    #   Indicates whether Runtime Monitoring is turned on.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_connect_configuration
    #   The Service Connect configuration of your Amazon ECS service. The
    #   configuration for this service to discover and connect to services,
    #   and be discovered by, and connected from, other services within a
    #   namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ServiceConnectConfiguration]
    #
    # @!attribute [rw] volume_configurations
    #   The volumes that are configured at deployment that the service
    #   revision uses.
    #   @return [Array<Types::ServiceVolumeConfiguration>]
    #
    # @!attribute [rw] fargate_ephemeral_storage
    #   The amount of ephemeral storage to allocate for the deployment.
    #   @return [Types::DeploymentEphemeralStorage]
    #
    # @!attribute [rw] created_at
    #   The time that the service revision was created. The format is
    #   yyyy-mm-dd HH:mm:ss.SSSSS.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_lattice_configurations
    #   The VPC Lattice configuration for the service revision.
    #   @return [Array<Types::VpcLatticeConfiguration>]
    #
    # @!attribute [rw] resolved_configuration
    #   The resolved configuration for the service revision which contains
    #   the actual resources your service revision uses, such as which
    #   target groups serve traffic.
    #   @return [Types::ResolvedConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceRevision AWS API Documentation
    #
    class ServiceRevision < Struct.new(
      :service_revision_arn,
      :service_arn,
      :cluster_arn,
      :task_definition,
      :capacity_provider_strategy,
      :launch_type,
      :platform_version,
      :platform_family,
      :load_balancers,
      :service_registries,
      :network_configuration,
      :container_images,
      :guard_duty_enabled,
      :service_connect_configuration,
      :volume_configurations,
      :fargate_ephemeral_storage,
      :created_at,
      :vpc_lattice_configurations,
      :resolved_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resolved load balancer configuration for a service revision. This
    # includes information about which target groups serve traffic and which
    # listener rules direct traffic to them.
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group associated with
    #   the service revision.
    #   @return [String]
    #
    # @!attribute [rw] production_listener_rule
    #   The Amazon Resource Name (ARN) of the production listener rule or
    #   listener that directs traffic to the target group associated with
    #   the service revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceRevisionLoadBalancer AWS API Documentation
    #
    class ServiceRevisionLoadBalancer < Struct.new(
      :target_group_arn,
      :production_listener_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the number of requested, pending, and running
    # tasks for a service revision.
    #
    # @!attribute [rw] arn
    #   The ARN of the service revision.
    #   @return [String]
    #
    # @!attribute [rw] requested_task_count
    #   The number of requested tasks for the service revision.
    #   @return [Integer]
    #
    # @!attribute [rw] running_task_count
    #   The number of running tasks for the service revision.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_task_count
    #   The number of pending tasks for the service revision.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceRevisionSummary AWS API Documentation
    #
    class ServiceRevisionSummary < Struct.new(
      :arn,
      :requested_task_count,
      :running_task_count,
      :pending_task_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a volume specified in the task definition as a
    # volume that is configured at launch time. Currently, the only
    # supported volume type is an Amazon EBS volume.
    #
    # @!attribute [rw] name
    #   The name of the volume. This value must match the volume name from
    #   the `Volume` object in the task definition.
    #   @return [String]
    #
    # @!attribute [rw] managed_ebs_volume
    #   The configuration for the Amazon EBS volume that Amazon ECS creates
    #   and manages on your behalf. These settings are used to create each
    #   Amazon EBS volume, with one volume created for each task in the
    #   service. The Amazon EBS volumes are visible in your account in the
    #   Amazon EC2 console once they are created.
    #   @return [Types::ServiceManagedEBSVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceVolumeConfiguration AWS API Documentation
    #
    class ServiceVolumeConfiguration < Struct.new(
      :name,
      :managed_ebs_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the execute command session.
    #
    # @!attribute [rw] session_id
    #   The ID of the execute command session.
    #   @return [String]
    #
    # @!attribute [rw] stream_url
    #   A URL to the managed agent on the container that the SSM Session
    #   Manager client uses to send commands and receive output from the
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value containing session and caller information.
    #   It's used to authenticate the connection to the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Session AWS API Documentation
    #
    class Session < Struct.new(
      :session_id,
      :stream_url,
      :token_value)
      SENSITIVE = [:token_value]
      include Aws::Structure
    end

    # The current account setting for a resource.
    #
    # @!attribute [rw] name
    #   The Amazon ECS resource name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Determines whether the account setting is on or off for the
    #   specified resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal. It can be a user, role, or the root user.
    #   If this field is omitted, the authenticated user is assumed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether Amazon Web Services manages the account setting,
    #   or if the user manages it.
    #
    #   `aws_managed` account settings are read-only, as Amazon Web Services
    #   manages such on the customer's behalf. Currently, the
    #   `guardDutyActivate` account setting is the only one Amazon Web
    #   Services manages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Setting AWS API Documentation
    #
    class Setting < Struct.new(
      :name,
      :value,
      :principal_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   where to start your task. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   The container instance IDs or full ARN entries for the container
    #   instances where you would like to place your task. You can specify
    #   up to 10 container instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to use Amazon ECS managed tags for the task. For
    #   more information, see [Tagging Your Amazon ECS Resources][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Whether or not the execute command functionality is turned on for
    #   the task. If `true`, this turns on the execute command functionality
    #   on all containers in the task.
    #   @return [Boolean]
    #
    # @!attribute [rw] group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] overrides
    #   A list of container overrides in JSON format that specify the name
    #   of a container in the specified task definition and the overrides it
    #   receives. You can override the default command for a container
    #   (that's specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker
    #   image) on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags aren't
    #   propagated.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   This parameter is only used by Amazon ECS. It is not intended for
    #   use by customers.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example, if
    #   you automatically trigger a task to run a batch process job, you
    #   could apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a [ListTasks][1] call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens (-), forward slash (/), and underscores (\_) are
    #   allowed.
    #
    #   If a task is started by an Amazon ECS service, the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value,
    #   both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to start. If a `revision` isn't specified, the
    #   latest `ACTIVE` revision is used.
    #   @return [String]
    #
    # @!attribute [rw] volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in [TaskManagedEBSVolumeConfiguration][1]. The `name` of
    #   the volume must match the `name` from the task definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html
    #   @return [Array<Types::TaskVolumeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTaskRequest AWS API Documentation
    #
    class StartTaskRequest < Struct.new(
      :cluster,
      :container_instances,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :network_configuration,
      :overrides,
      :propagate_tags,
      :reference_id,
      :started_by,
      :tags,
      :task_definition,
      :volume_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   A full description of the tasks that were started. Each task that
    #   was successfully placed on your container instances is described.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTaskResponse AWS API Documentation
    #
    class StartTaskResponse < Struct.new(
      :tasks,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_deployment_arn
    #   The ARN of the service deployment that you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] stop_type
    #   How you want Amazon ECS to stop the service.
    #
    #   The valid values are `ROLLBACK`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopServiceDeploymentRequest AWS API Documentation
    #
    class StopServiceDeploymentRequest < Struct.new(
      :service_deployment_arn,
      :stop_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_deployment_arn
    #   The ARN of the stopped service deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopServiceDeploymentResponse AWS API Documentation
    #
    class StopServiceDeploymentResponse < Struct.new(
      :service_deployment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task to stop. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   Thefull Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An optional message specified when a task is stopped. For example,
    #   if you're using a custom scheduler, you can use this parameter to
    #   specify the reason for stopping the task here, and the message
    #   appears in subsequent [DescribeTasks][1]&gt; API operations on this
    #   task.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTaskRequest AWS API Documentation
    #
    class StopTaskRequest < Struct.new(
      :cluster,
      :task,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task
    #   The task that was stopped.
    #   @return [Types::Task]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTaskResponse AWS API Documentation
    #
    class StopTaskResponse < Struct.new(
      :task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full ARN of the cluster that hosts the container
    #   instance the attachment belongs to.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   Any attachments associated with the state change request.
    #   @return [Array<Types::AttachmentStateChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitAttachmentStateChangesRequest AWS API Documentation
    #
    class SubmitAttachmentStateChangesRequest < Struct.new(
      :cluster,
      :attachments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acknowledgment
    #   Acknowledgement of the state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitAttachmentStateChangesResponse AWS API Documentation
    #
    class SubmitAttachmentStateChangesResponse < Struct.new(
      :acknowledgment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full ARN of the cluster that hosts the container.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full Amazon Resource Name (ARN) of the task that
    #   hosts the container.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container.
    #   @return [String]
    #
    # @!attribute [rw] runtime_id
    #   The ID of the Docker container.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the state change request.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code that's returned for the state change request.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   The reason for the state change request.
    #   @return [String]
    #
    # @!attribute [rw] network_bindings
    #   The network bindings of the container.
    #   @return [Array<Types::NetworkBinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChangeRequest AWS API Documentation
    #
    class SubmitContainerStateChangeRequest < Struct.new(
      :cluster,
      :task,
      :container_name,
      :runtime_id,
      :status,
      :exit_code,
      :reason,
      :network_bindings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acknowledgment
    #   Acknowledgement of the state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChangeResponse AWS API Documentation
    #
    class SubmitContainerStateChangeResponse < Struct.new(
      :acknowledgment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full ARN of the task in the state change request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the state change request.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the state change request.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   Any containers that's associated with the state change request.
    #   @return [Array<Types::ContainerStateChange>]
    #
    # @!attribute [rw] attachments
    #   Any attachments associated with the state change request.
    #   @return [Array<Types::AttachmentStateChange>]
    #
    # @!attribute [rw] managed_agents
    #   The details for the managed agent that's associated with the task.
    #   @return [Array<Types::ManagedAgentStateChange>]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix timestamp for the time when the container image pull
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix timestamp for the time when the container image pull
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_stopped_at
    #   The Unix timestamp for the time when the task execution stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChangeRequest AWS API Documentation
    #
    class SubmitTaskStateChangeRequest < Struct.new(
      :cluster,
      :task,
      :status,
      :reason,
      :containers,
      :attachments,
      :managed_agents,
      :pull_started_at,
      :pull_stopped_at,
      :execution_stopped_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acknowledgment
    #   Acknowledgement of the state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChangeResponse AWS API Documentation
    #
    class SubmitTaskStateChangeResponse < Struct.new(
      :acknowledgment)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of namespaced kernel parameters to set in the container. This
    # parameter maps to `Sysctls` in the docker container create command and
    # the `--sysctl` option to docker run. For example, you can configure
    # `net.ipv4.tcp_keepalive_time` setting to maintain longer lived
    # connections.
    #
    # We don't recommend that you specify network-related `systemControls`
    # parameters for multiple containers in a single task that also uses
    # either the `awsvpc` or `host` network mode. Doing this has the
    # following disadvantages:
    #
    # * For tasks that use the `awsvpc` network mode including Fargate, if
    #   you set `systemControls` for any container, it applies to all
    #   containers in the task. If you set different `systemControls` for
    #   multiple containers in a single task, the container that's started
    #   last determines which `systemControls` take effect.
    #
    # * For tasks that use the `host` network mode, the network namespace
    #   `systemControls` aren't supported.
    #
    # If you're setting an IPC resource namespace to use for the containers
    # in the task, the following conditions apply to your system controls.
    # For more information, see [IPC mode][1].
    #
    # * For tasks that use the `host` IPC mode, IPC namespace
    #   `systemControls` aren't supported.
    #
    # * For tasks that use the `task` IPC mode, IPC namespace
    #   `systemControls` values apply to all containers within a task.
    #
    # <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #  </note>
    #
    # <note markdown="1"> This parameter is only supported for tasks that are hosted on Fargate
    # if the tasks are using platform version `1.4.0` or later (Linux). This
    # isn't supported for Windows containers on Fargate.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_definition_ipcmode
    #
    # @!attribute [rw] namespace
    #   The namespaced kernel parameter to set a `value` for.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The namespaced kernel parameter to set a `value` for.
    #
    #   Valid IPC namespace values: `"kernel.msgmax" | "kernel.msgmnb" |
    #   "kernel.msgmni" | "kernel.sem" | "kernel.shmall" | "kernel.shmmax" |
    #   "kernel.shmmni" | "kernel.shm_rmid_forced"`, and `Sysctls` that
    #   start with `"fs.mqueue.*"`
    #
    #   Valid network namespace values: `Sysctls` that start with `"net.*"`.
    #   Only namespaced `Sysctls` that exist within the container starting
    #   with "net.* are accepted.
    #
    #   All of these values are supported by Fargate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SystemControl AWS API Documentation
    #
    class SystemControl < Struct.new(
      :namespace,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that you apply to a resource to help you categorize and
    # organize them. Each tag consists of a key and an optional value. You
    # define them.
    #
    # The following basic restrictions apply to tags:
    #
    # * Maximum number of tags per resource - 50
    #
    # * For each resource, each tag key must be unique, and each tag key can
    #   have only one value.
    #
    # * Maximum key length - 128 Unicode characters in UTF-8
    #
    # * Maximum value length - 256 Unicode characters in UTF-8
    #
    # * If your tagging schema is used across multiple services and
    #   resources, remember that other services may have restrictions on
    #   allowed characters. Generally allowed characters are: letters,
    #   numbers, and spaces representable in UTF-8, and the following
    #   characters: + - = . \_ : / @.
    #
    # * Tag keys and values are case-sensitive.
    #
    # * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #   such as a prefix for either keys or values as it is reserved for
    #   Amazon Web Services use. You cannot edit or delete tag keys or
    #   values with this prefix. Tags with this prefix do not count against
    #   your tags per resource limit.
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that make up a tag. A `key` is a
    #   general label that acts like a category for more specific tag
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that make up a tag. A `value`
    #   acts as a descriptor within a tag category (key).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   Currently, the supported resources are Amazon ECS capacity
    #   providers, tasks, services, task definitions, clusters, and
    #   container instances.
    #
    #   In order to tag a service that has the following ARN format, you
    #   need to migrate the service to the long ARN. For more information,
    #   see [Migrate an Amazon ECS short service ARN to a long ARN][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   `arn:aws:ecs:region:aws_account_id:service/service-name`
    #
    #   After the migration is complete, the service has the long ARN
    #   format, as shown below. Use this ARN to tag the service.
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #
    #   If you try to tag a service with a short ARN, you receive an
    #   `InvalidParameterException` error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-arn-migration.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The execute command cannot run. This error can be caused by any of the
    # following configuration issues:
    #
    # * Incorrect IAM permissions
    #
    # * The SSM agent is not installed or is not running
    #
    # * There is an interface Amazon VPC endpoint for Amazon ECS, but there
    #   is not one for Systems Manager Session Manager
    #
    # For information about how to troubleshoot the issues, see
    # [Troubleshooting issues with ECS Exec][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TargetNotConnectedException AWS API Documentation
    #
    class TargetNotConnectedException < Aws::EmptyStructure; end

    # The specified target wasn't found. You can view your available
    # container instances with [ListContainerInstances][1]. Amazon ECS
    # container instances are cluster-specific and Region-specific.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TargetNotFoundException AWS API Documentation
    #
    class TargetNotFoundException < Aws::EmptyStructure; end

    # Details on a task in a cluster.
    #
    # @!attribute [rw] attachments
    #   The Elastic Network Adapter that's associated with the task if the
    #   task uses the `awsvpc` network mode.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] attributes
    #   The attributes of the task
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the task.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_name
    #   The capacity provider that's associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN of the cluster that hosts the task.
    #   @return [String]
    #
    # @!attribute [rw] connectivity
    #   The connectivity status of a task.
    #   @return [String]
    #
    # @!attribute [rw] connectivity_at
    #   The Unix timestamp for the time when the task last went into
    #   `CONNECTED` status.
    #   @return [Time]
    #
    # @!attribute [rw] container_instance_arn
    #   The ARN of the container instances that host the task.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   The containers that's associated with the task.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task as expressed in a task
    #   definition. It can be expressed as an integer using CPU units (for
    #   example, `1024`). It can also be expressed as a string using vCPUs
    #   (for example, `1 vCPU` or `1 vcpu`). String values are converted to
    #   an integer that indicates the CPU units when the task definition is
    #   registered.
    #
    #   If you're using the EC2 launch type or the external launch type,
    #   this field is optional. Supported values are between `128` CPU units
    #   (`0.125` vCPUs) and `196608` CPU units (`192` vCPUs). If you do not
    #   specify a value, the parameter is ignored.
    #
    #   This field is required for Fargate. For information about the valid
    #   values, see [Task size][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the task was created. More
    #   specifically, it's for the time when the task entered the `PENDING`
    #   state.
    #   @return [Time]
    #
    # @!attribute [rw] desired_status
    #   The desired status of the task. For more information, see [Task
    #   Lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] enable_execute_command
    #   Determines whether execute command functionality is turned on for
    #   this task. If `true`, execute command functionality is turned on all
    #   the containers in the task.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_stopped_at
    #   The Unix timestamp for the time when the task execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] group
    #   The name of the task group that's associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The health status for the task. It's determined by the health of
    #   the essential containers in the task. If all essential containers in
    #   the task are reporting as `HEALTHY`, the task status also reports as
    #   `HEALTHY`. If any essential containers in the task are reporting as
    #   `UNHEALTHY` or `UNKNOWN`, the task status also reports as
    #   `UNHEALTHY` or `UNKNOWN`.
    #
    #   <note markdown="1"> The Amazon ECS container agent doesn't monitor or report on Docker
    #   health checks that are embedded in a container image and not
    #   specified in the container definition. For example, this includes
    #   those specified in a parent image or from the image's Dockerfile.
    #   Health check parameters that are specified in a container definition
    #   override any Docker health checks that are found in the container
    #   image.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerator that's associated with the task.
    #   @return [Array<Types::InferenceAccelerator>]
    #
    # @!attribute [rw] last_status
    #   The last known status for the task. For more information, see [Task
    #   Lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The infrastructure where your task runs on. For more information,
    #   see [Amazon ECS launch types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) that the task uses as expressed in a
    #   task definition. It can be expressed as an integer using MiB (for
    #   example, `1024`). If it's expressed as a string using GB (for
    #   example, `1GB` or `1 GB`), it's converted to an integer indicating
    #   the MiB when the task definition is registered.
    #
    #   If you use the EC2 launch type, this field is optional.
    #
    #   If you use the Fargate launch type, this field is required. You must
    #   use one of the following values. The value that you choose
    #   determines the range of supported values for the `cpu` parameter.
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #
    #   * Between 16 GB and 60 GB in 4 GB increments - Available `cpu`
    #     values: 8192 (8 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * Between 32GB and 120 GB in 8 GB increments - Available `cpu`
    #     values: 16384 (16 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   One or more container overrides.
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] platform_version
    #   The platform version where your task runs on. A platform version is
    #   only specified for tasks that use the Fargate launch type. If you
    #   didn't specify one, the `LATEST` platform version is used. For more
    #   information, see [Fargate Platform Versions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] platform_family
    #   The operating system that your tasks are running on. A platform
    #   family is specified only for tasks that use the Fargate launch type.
    #
    #   All tasks that run as part of this service must use the same
    #   `platformFamily` value as the service (for example, `LINUX.`).
    #   @return [String]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix timestamp for the time when the container image pull began.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix timestamp for the time when the container image pull
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for the time when the task started. More
    #   specifically, it's for the time when the task transitioned from the
    #   `PENDING` state to the `RUNNING` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_by
    #   The tag specified when a task is started. If an Amazon ECS service
    #   started the task, the `startedBy` parameter contains the deployment
    #   ID of that service.
    #   @return [String]
    #
    # @!attribute [rw] stop_code
    #   The stop code indicating why a task was stopped. The `stoppedReason`
    #   might contain additional details.
    #
    #   For more information about stop code, see [Stopped tasks error
    #   codes][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/stopped-task-error-codes.html
    #   @return [String]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp for the time when the task was stopped. More
    #   specifically, it's for the time when the task transitioned from the
    #   `RUNNING` state to the `STOPPED` state.
    #   @return [Time]
    #
    # @!attribute [rw] stopped_reason
    #   The reason that the task was stopped.
    #   @return [String]
    #
    # @!attribute [rw] stopping_at
    #   The Unix timestamp for the time when the task stops. More
    #   specifically, it's for the time when the task transitions from the
    #   `RUNNING` state to `STOPPING`.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize the task. Each tag consists of a key and an optional value.
    #   You define both the key and value.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition that creates the task.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the task. Every time a task experiences a
    #   change that starts a CloudWatch event, the version counter is
    #   incremented. If you replicate your Amazon ECS task state with
    #   CloudWatch Events, you can compare the version of a task reported by
    #   the Amazon ECS API actions with the version reported in CloudWatch
    #   Events for the task (inside the `detail` object) to verify that the
    #   version in your event stream is current.
    #   @return [Integer]
    #
    # @!attribute [rw] ephemeral_storage
    #   The ephemeral storage settings for the task.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] fargate_ephemeral_storage
    #   The Fargate ephemeral storage settings for the task.
    #   @return [Types::TaskEphemeralStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Task AWS API Documentation
    #
    class Task < Struct.new(
      :attachments,
      :attributes,
      :availability_zone,
      :capacity_provider_name,
      :cluster_arn,
      :connectivity,
      :connectivity_at,
      :container_instance_arn,
      :containers,
      :cpu,
      :created_at,
      :desired_status,
      :enable_execute_command,
      :execution_stopped_at,
      :group,
      :health_status,
      :inference_accelerators,
      :last_status,
      :launch_type,
      :memory,
      :overrides,
      :platform_version,
      :platform_family,
      :pull_started_at,
      :pull_stopped_at,
      :started_at,
      :started_by,
      :stop_code,
      :stopped_at,
      :stopped_reason,
      :stopping_at,
      :tags,
      :task_arn,
      :task_definition_arn,
      :version,
      :ephemeral_storage,
      :fargate_ephemeral_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a task definition which describes the container and
    # volume definitions of an Amazon Elastic Container Service task. You
    # can specify which Docker images to use, the required resources, and
    # other configurations related to launching the task definition through
    # an Amazon ECS service or task.
    #
    # @!attribute [rw] task_definition_arn
    #   The full Amazon Resource Name (ARN) of the task definition.
    #   @return [String]
    #
    # @!attribute [rw] container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task. For more information
    #   about container definition parameters and defaults, see [Amazon ECS
    #   Task Definitions][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] family
    #   The name of a family that this task definition is registered to. Up
    #   to 255 characters are allowed. Letters (both uppercase and lowercase
    #   letters), numbers, hyphens (-), and underscores (\_) are allowed.
    #
    #   A family groups multiple versions of a task definition. Amazon ECS
    #   gives the first task definition that you registered to a family a
    #   revision number of 1. Amazon ECS gives sequential revision numbers
    #   to each task definition that you add.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the Identity
    #   and Access Management role that grants containers in the task
    #   permission to call Amazon Web Services APIs on your behalf. For
    #   informationabout the required IAM roles for Amazon ECS, see [IAM
    #   roles for Amazon ECS][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that
    #   grants the Amazon ECS container agent permission to make Amazon Web
    #   Services API calls on your behalf. For informationabout the required
    #   IAM roles for Amazon ECS, see [IAM roles for Amazon ECS][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. If no
    #   network mode is specified, the default is `bridge`.
    #
    #   For Amazon ECS tasks on Fargate, the `awsvpc` network mode is
    #   required. For Amazon ECS tasks on Amazon EC2 Linux instances, any
    #   network mode can be used. For Amazon ECS tasks on Amazon EC2 Windows
    #   instances, `<default>` or `awsvpc` can be used. If the network mode
    #   is set to `none`, you cannot specify port mappings in your container
    #   definitions, and the tasks containers do not have external
    #   connectivity. The `host` and `awsvpc` network modes offer the
    #   highest networking performance for containers because they use the
    #   EC2 network stack instead of the virtualized network stack provided
    #   by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   When using the `host` network mode, you should not run containers
    #   using the root user (UID 0). It is considered best practice to use a
    #   non-root user.
    #
    #   If the network mode is `awsvpc`, the task is allocated an elastic
    #   network interface, and you must specify a [NetworkConfiguration][1]
    #   value when you create a service or run a task with the task
    #   definition. For more information, see [Task Networking][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the task in a particular family. The revision is a
    #   version number of a task definition in a family. When you register a
    #   task definition for the first time, the revision is `1`. Each time
    #   that you register a new revision of a task definition in the same
    #   family, the revision value always increases by one. This is even if
    #   you deregistered previous revisions in this family.
    #   @return [Integer]
    #
    # @!attribute [rw] volumes
    #   The list of data volume definitions for the task. For more
    #   information, see [Using data volumes in tasks][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> The `host` and `sourcePath` parameters aren't supported for tasks
    #   run on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] status
    #   The status of the task definition.
    #   @return [String]
    #
    # @!attribute [rw] requires_attributes
    #   The container instance attributes required by your task. When an
    #   Amazon EC2 instance is registered to your cluster, the Amazon ECS
    #   container agent assigns some standard attributes to the instance.
    #   You can apply custom attributes. These are specified as key-value
    #   pairs using the Amazon ECS console or the [PutAttributes][1] API.
    #   These attributes are used when determining task placement for tasks
    #   hosted on Amazon EC2 instances. For more information, see
    #   [Attributes][2] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   <note markdown="1"> This parameter isn't supported for tasks run on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAttributes.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for tasks.
    #
    #   <note markdown="1"> This parameter isn't supported for tasks run on Fargate.
    #
    #    </note>
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] compatibilities
    #   Amazon ECS validates the task definition parameters with those
    #   supported by the launch type. For more information, see [Amazon ECS
    #   launch types][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] runtime_platform
    #   The operating system that your task definitions are running on. A
    #   platform family is specified only for tasks using the Fargate launch
    #   type.
    #
    #   When you specify a task in a service, this value must match the
    #   `runtimePlatform` value of the service.
    #   @return [Types::RuntimePlatform]
    #
    # @!attribute [rw] requires_compatibilities
    #   The task launch types the task definition was validated against. The
    #   valid values are `EC2`, `FARGATE`, and `EXTERNAL`. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units used by the task. If you use the EC2
    #   launch type, this field is optional. Any value can be used. If you
    #   use the Fargate launch type, this field is required. You must use
    #   one of the following values. The value that you choose determines
    #   your range of valid values for the `memory` parameter.
    #
    #   If you're using the EC2 launch type or the external launch type,
    #   this field is optional. Supported values are between `128` CPU units
    #   (`0.125` vCPUs) and `196608` CPU units (`192` vCPUs).
    #
    #   This field is required for Fargate. For information about the valid
    #   values, see [Task size][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory used by the task.
    #
    #   If your tasks runs on Amazon EC2 instances, you must specify either
    #   a task-level memory value or a container-level memory value. This
    #   field is optional and any value can be used. If a task-level memory
    #   value is specified, the container-level memory value is optional.
    #   For more information regarding container-level memory and memory
    #   reservation, see [ContainerDefinition][1].
    #
    #   If your tasks runs on Fargate, this field is required. You must use
    #   one of the following values. The value you choose determines your
    #   range of valid values for the `cpu` parameter.
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values:
    #     256 (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available
    #     `cpu` values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
    #     - Available `cpu` values: 4096 (4 vCPU)
    #
    #   * Between 16 GB and 60 GB in 4 GB increments - Available `cpu`
    #     values: 8192 (8 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * Between 32GB and 120 GB in 8 GB increments - Available `cpu`
    #     values: 16384 (16 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerator that's associated with the task.
    #   @return [Array<Types::InferenceAccelerator>]
    #
    # @!attribute [rw] pid_mode
    #   The process namespace to use for the containers in the task. The
    #   valid values are `host` or `task`. On Fargate for Linux containers,
    #   the only valid value is `task`. For example, monitoring sidecars
    #   might need `pidMode` to access information about other containers
    #   running in the same task.
    #
    #   If `host` is specified, all containers within the tasks that
    #   specified the `host` PID mode on the same container instance share
    #   the same process namespace with the host Amazon EC2 instance.
    #
    #   If `task` is specified, all containers within the specified task
    #   share the same process namespace.
    #
    #   If no value is specified, the default is a private namespace for
    #   each container.
    #
    #   If the `host` PID mode is used, there's a heightened risk of
    #   undesired process namespace exposure.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   <note markdown="1"> This parameter is only supported for tasks that are hosted on
    #   Fargate if the tasks are using platform version `1.4.0` or later
    #   (Linux). This isn't supported for Windows containers on Fargate.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ipc_mode
    #   The IPC resource namespace to use for the containers in the task.
    #   The valid values are `host`, `task`, or `none`. If `host` is
    #   specified, then all containers within the tasks that specified the
    #   `host` IPC mode on the same container instance share the same IPC
    #   resources with the host Amazon EC2 instance. If `task` is specified,
    #   all containers within the specified task share the same IPC
    #   resources. If `none` is specified, then IPC resources within the
    #   containers of a task are private and not shared with other
    #   containers in a task or on the container instance. If no value is
    #   specified, then the IPC resource namespace sharing depends on the
    #   Docker daemon setting on the container instance.
    #
    #   If the `host` IPC mode is used, be aware that there is a heightened
    #   risk of undesired IPC namespace expose.
    #
    #   If you are setting namespaced kernel parameters using
    #   `systemControls` for the containers in the task, the following will
    #   apply to your IPC resource namespace. For more information, see
    #   [System Controls][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   * For tasks that use the `host` IPC mode, IPC namespace related
    #     `systemControls` are not supported.
    #
    #   * For tasks that use the `task` IPC mode, IPC namespace related
    #     `systemControls` will apply to all containers within a task.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
    #   @return [String]
    #
    # @!attribute [rw] proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #
    #   Your Amazon ECS container instances require at least version 1.26.0
    #   of the container agent and at least version 1.26.0-1 of the
    #   `ecs-init` package to use a proxy configuration. If your container
    #   instances are launched from the Amazon ECS optimized AMI version
    #   `20190301` or later, they contain the required versions of the
    #   container agent and `ecs-init`. For more information, see [Amazon
    #   ECS-optimized Linux AMI][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] registered_at
    #   The Unix timestamp for the time when the task definition was
    #   registered.
    #   @return [Time]
    #
    # @!attribute [rw] deregistered_at
    #   The Unix timestamp for the time when the task definition was
    #   deregistered.
    #   @return [Time]
    #
    # @!attribute [rw] registered_by
    #   The principal that registered the task definition.
    #   @return [String]
    #
    # @!attribute [rw] ephemeral_storage
    #   The ephemeral storage settings to use for tasks run with the task
    #   definition.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] enable_fault_injection
    #   Enables fault injection and allows for fault injection requests to
    #   be accepted from the task's containers. The default value is
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskDefinition AWS API Documentation
    #
    class TaskDefinition < Struct.new(
      :task_definition_arn,
      :container_definitions,
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :revision,
      :volumes,
      :status,
      :requires_attributes,
      :placement_constraints,
      :compatibilities,
      :runtime_platform,
      :requires_compatibilities,
      :cpu,
      :memory,
      :inference_accelerators,
      :pid_mode,
      :ipc_mode,
      :proxy_configuration,
      :registered_at,
      :deregistered_at,
      :registered_by,
      :ephemeral_storage,
      :enable_fault_injection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The constraint on task placement in the task definition. For more
    # information, see [Task placement constraints][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # <note markdown="1"> Task placement constraints aren't supported for tasks run on Fargate.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @!attribute [rw] type
    #   The type of constraint. The `MemberOf` constraint restricts
    #   selection to be from a group of valid candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. For
    #   more information, see [Cluster query language][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskDefinitionPlacementConstraint AWS API Documentation
    #
    class TaskDefinitionPlacementConstraint < Struct.new(
      :type,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of ephemeral storage to allocate for the task.
    #
    # @!attribute [rw] size_in_gi_b
    #   The total amount, in GiB, of the ephemeral storage to set for the
    #   task. The minimum supported value is `20` GiB and the maximum
    #   supported value is  `200` GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   Specify an Key Management Service key ID to encrypt the ephemeral
    #   storage for the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskEphemeralStorage AWS API Documentation
    #
    class TaskEphemeralStorage < Struct.new(
      :size_in_gi_b,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Amazon EBS volume that Amazon ECS creates
    # and manages on your behalf. These settings are used to create each
    # Amazon EBS volume, with one volume created for each task.
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the volume should be encrypted. If you turn on
    #   Region-level Amazon EBS encryption by default but set this value as
    #   `false`, the setting is overridden and the volume is encrypted with
    #   the KMS key specified for Amazon EBS encryption by default. This
    #   parameter maps 1:1 with the `Encrypted` parameter of the
    #   [CreateVolume API][1] in the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) identifier of the Amazon Web Services
    #   Key Management Service key to use for Amazon EBS encryption. When a
    #   key is specified using this parameter, it overrides Amazon EBS
    #   default encryption or any KMS key that you specified for
    #   cluster-level managed storage encryption. This parameter maps 1:1
    #   with the `KmsKeyId` parameter of the [CreateVolume API][1] in the
    #   *Amazon EC2 API Reference*. For more information about encrypting
    #   Amazon EBS volumes attached to a task, see [Encrypt data stored in
    #   Amazon EBS volumes attached to Amazon ECS tasks][2].
    #
    #   Amazon Web Services authenticates the Amazon Web Services Key
    #   Management Service key asynchronously. Therefore, if you specify an
    #   ID, alias, or ARN that is invalid, the action can appear to
    #   complete, but eventually fails.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-kms-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type. This parameter maps 1:1 with the `VolumeType`
    #   parameter of the [CreateVolume API][1] in the *Amazon EC2 API
    #   Reference*. For more information, see [Amazon EBS volume types][2]
    #   in the *Amazon EC2 User Guide*.
    #
    #   The following are the supported volume types.
    #
    #   * General Purpose SSD: `gp2`\|`gp3`
    #
    #   * Provisioned IOPS SSD: `io1`\|`io2`
    #
    #   * Throughput Optimized HDD: `st1`
    #
    #   * Cold HDD: `sc1`
    #
    #   * Magnetic: `standard`
    #
    #     <note markdown="1"> The magnetic volume type is not supported on Fargate.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html
    #   @return [String]
    #
    # @!attribute [rw] size_in_gi_b
    #   The size of the volume in GiB. You must specify either a volume size
    #   or a snapshot ID. If you specify a snapshot ID, the snapshot size is
    #   used for the volume size by default. You can optionally specify a
    #   volume size greater than or equal to the snapshot size. This
    #   parameter maps 1:1 with the `Size` parameter of the [CreateVolume
    #   API][1] in the *Amazon EC2 API Reference*.
    #
    #   The following are the supported volume size values for each volume
    #   type.
    #
    #   * `gp2` and `gp3`: 1-16,384
    #
    #   * `io1` and `io2`: 4-16,384
    #
    #   * `st1` and `sc1`: 125-16,384
    #
    #   * `standard`: 1-1,024
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot that Amazon ECS uses to create the volume. You must
    #   specify either a snapshot ID or a volume size. This parameter maps
    #   1:1 with the `SnapshotId` parameter of the [CreateVolume API][1] in
    #   the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [String]
    #
    # @!attribute [rw] volume_initialization_rate
    #   The rate, in MiB/s, at which data is fetched from a snapshot of an
    #   existing Amazon EBS volume to create a new volume for attachment to
    #   the task. This property can be specified only if you specify a
    #   `snapshotId`. For more information, see [Initialize Amazon EBS
    #   volumes][1] in the *Amazon EBS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ebs/latest/userguide/initalize-volume.html
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS). For `gp3`, `io1`,
    #   and `io2` volumes, this represents the number of IOPS that are
    #   provisioned for the volume. For `gp2` volumes, this represents the
    #   baseline performance of the volume and the rate at which the volume
    #   accumulates I/O credits for bursting.
    #
    #   The following are the supported values for each volume type.
    #
    #   * `gp3`: 3,000 - 16,000 IOPS
    #
    #   * `io1`: 100 - 64,000 IOPS
    #
    #   * `io2`: 100 - 256,000 IOPS
    #
    #   This parameter is required for `io1` and `io2` volume types. The
    #   default for `gp3` volumes is `3,000 IOPS`. This parameter is not
    #   supported for `st1`, `sc1`, or `standard` volume types.
    #
    #   This parameter maps 1:1 with the `Iops` parameter of the
    #   [CreateVolume API][1] in the *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The throughput to provision for a volume, in MiB/s, with a maximum
    #   of 1,000 MiB/s. This parameter maps 1:1 with the `Throughput`
    #   parameter of the [CreateVolume API][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #   This parameter is only supported for the `gp3` volume type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Integer]
    #
    # @!attribute [rw] tag_specifications
    #   The tags to apply to the volume. Amazon ECS applies service-managed
    #   tags by default. This parameter maps 1:1 with the
    #   `TagSpecifications.N` parameter of the [CreateVolume API][1] in the
    #   *Amazon EC2 API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVolume.html
    #   @return [Array<Types::EBSTagSpecification>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to associate with this volume. This is the
    #   Amazon ECS infrastructure IAM role that is used to manage your
    #   Amazon Web Services infrastructure. We recommend using the Amazon
    #   ECS-managed `AmazonECSInfrastructureRolePolicyForVolumes` IAM policy
    #   with this role. For more information, see [Amazon ECS infrastructure
    #   IAM role][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] termination_policy
    #   The termination policy for the volume when the task exits. This
    #   provides a way to control whether Amazon ECS terminates the Amazon
    #   EBS volume when the task stops.
    #   @return [Types::TaskManagedEBSVolumeTerminationPolicy]
    #
    # @!attribute [rw] filesystem_type
    #   The Linux filesystem type for the volume. For volumes created from a
    #   snapshot, you must specify the same filesystem type that the volume
    #   was using when the snapshot was created. If there is a filesystem
    #   type mismatch, the task will fail to start.
    #
    #   The available filesystem types are  `ext3`, `ext4`, and `xfs`. If no
    #   value is specified, the `xfs` filesystem type is used by default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskManagedEBSVolumeConfiguration AWS API Documentation
    #
    class TaskManagedEBSVolumeConfiguration < Struct.new(
      :encrypted,
      :kms_key_id,
      :volume_type,
      :size_in_gi_b,
      :snapshot_id,
      :volume_initialization_rate,
      :iops,
      :throughput,
      :tag_specifications,
      :role_arn,
      :termination_policy,
      :filesystem_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The termination policy for the Amazon EBS volume when the task exits.
    # For more information, see [Amazon ECS volume termination policy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the volume should be deleted on when the task
    #   stops. If a value of `true` is specified,  Amazon ECS deletes the
    #   Amazon EBS volume on your behalf when the task goes into the
    #   `STOPPED` state. If no value is specified, the  default value is
    #   `true` is used. When set to `false`, Amazon ECS leaves the volume in
    #   your  account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskManagedEBSVolumeTerminationPolicy AWS API Documentation
    #
    class TaskManagedEBSVolumeTerminationPolicy < Struct.new(
      :delete_on_termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that are associated with a task.
    #
    # @!attribute [rw] container_overrides
    #   One or more container overrides that are sent to a task.
    #   @return [Array<Types::ContainerOverride>]
    #
    # @!attribute [rw] cpu
    #   The CPU override for the task.
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerator_overrides
    #   The Elastic Inference accelerator override for the task.
    #   @return [Array<Types::InferenceAcceleratorOverride>]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role override
    #   for the task. For more information, see [Amazon ECS task execution
    #   IAM role][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The memory override for the task.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The Amazon Resource Name (ARN) of the role that containers in this
    #   task can assume. All containers in this task are granted the
    #   permissions that are specified in this role. For more information,
    #   see [IAM Role for Tasks][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] ephemeral_storage
    #   The ephemeral storage setting override for the task.
    #
    #   <note markdown="1"> This parameter is only supported for tasks hosted on Fargate that
    #   use the following platform versions:
    #
    #    * Linux platform version `1.4.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #    </note>
    #   @return [Types::EphemeralStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskOverride AWS API Documentation
    #
    class TaskOverride < Struct.new(
      :container_overrides,
      :cpu,
      :inference_accelerator_overrides,
      :execution_role_arn,
      :memory,
      :task_role_arn,
      :ephemeral_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a set of Amazon ECS tasks in either an CodeDeploy or
    # an `EXTERNAL` deployment. An Amazon ECS task set includes details such
    # as the desired number of tasks, how many tasks are running, and
    # whether the task set serves production traffic.
    #
    # @!attribute [rw] id
    #   The ID of the task set.
    #   @return [String]
    #
    # @!attribute [rw] task_set_arn
    #   The Amazon Resource Name (ARN) of the task set.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The Amazon Resource Name (ARN) of the service the task set exists
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that the service that
    #   hosts the task set exists in.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   The tag specified when a task set is started. If an CodeDeploy
    #   deployment created the task set, the `startedBy` parameter is
    #   `CODE_DEPLOY`. If an external deployment created the task set, the
    #   `startedBy` field isn't used.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID associated with the task set.
    #
    #   If an CodeDeploy deployment created a task set, the `externalId`
    #   parameter contains the CodeDeploy deployment ID.
    #
    #   If a task set is created for an external deployment and is
    #   associated with a service discovery registry, the `externalId`
    #   parameter contains the `ECS_TASK_SET_EXTERNAL_ID` Cloud Map
    #   attribute.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task set. The following describes each state.
    #
    #   PRIMARY
    #
    #   : The task set is serving production traffic.
    #
    #   ACTIVE
    #
    #   : The task set isn't serving production traffic.
    #
    #   DRAINING
    #
    #   : The tasks in the task set are being stopped, and their
    #     corresponding targets are being deregistered from their target
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition that the task set is using.
    #   @return [String]
    #
    # @!attribute [rw] computed_desired_count
    #   The computed desired count for the task set. This is calculated by
    #   multiplying the service's `desiredCount` by the task set's `scale`
    #   percentage. The result is always rounded up. For example, if the
    #   computed desired count is 1.2, it rounds up to 2 tasks.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_count
    #   The number of tasks in the task set that are in the `PENDING` status
    #   during a deployment. A task in the `PENDING` state is preparing to
    #   enter the `RUNNING` state. A task set enters the `PENDING` status
    #   when it launches for the first time or when it's restarted after
    #   being in the `STOPPED` state.
    #   @return [Integer]
    #
    # @!attribute [rw] running_count
    #   The number of tasks in the task set that are in the `RUNNING` status
    #   during a deployment. A task in the `RUNNING` state is running and
    #   ready for use.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for the time when the task set was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp for the time when the task set was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] launch_type
    #   The launch type the tasks in the task set are using. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy that are associated with the task
    #   set.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The Fargate platform version where the tasks in the task set are
    #   running. A platform version is only specified for tasks run on
    #   Fargate. For more information, see [Fargate platform versions][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] platform_family
    #   The operating system that your tasks in the set are running on. A
    #   platform family is specified only for tasks that use the Fargate
    #   launch type.
    #
    #   All tasks in the set must have the same value.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the task set.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] load_balancers
    #   Details on a load balancer that are used with a task set.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details for the service discovery registries to assign to this
    #   task set. For more information, see [Service discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] scale
    #   A floating-point percentage of your desired number of tasks to place
    #   and keep running in the task set.
    #   @return [Types::Scale]
    #
    # @!attribute [rw] stability_status
    #   The stability status. This indicates whether the task set has
    #   reached a steady state. If the following conditions are met, the
    #   task set are in `STEADY_STATE`:
    #
    #   * The task `runningCount` is equal to the `computedDesiredCount`.
    #
    #   * The `pendingCount` is `0`.
    #
    #   * There are no tasks that are running on container instances in the
    #     `DRAINING` status.
    #
    #   * All tasks are reporting a healthy status from the load balancers,
    #     service discovery, and container health checks.
    #
    #   If any of those conditions aren't met, the stability status returns
    #   `STABILIZING`.
    #   @return [String]
    #
    # @!attribute [rw] stability_status_at
    #   The Unix timestamp for the time when the task set stability status
    #   was retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task set to help you categorize
    #   and organize them. Each tag consists of a key and an optional value.
    #   You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key
    #     can have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination
    #     of such as a prefix for either keys or values as it is reserved
    #     for Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count
    #     against your tags per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] fargate_ephemeral_storage
    #   The Fargate ephemeral storage settings for the task set.
    #   @return [Types::DeploymentEphemeralStorage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskSet AWS API Documentation
    #
    class TaskSet < Struct.new(
      :id,
      :task_set_arn,
      :service_arn,
      :cluster_arn,
      :started_by,
      :external_id,
      :status,
      :task_definition,
      :computed_desired_count,
      :pending_count,
      :running_count,
      :created_at,
      :updated_at,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :platform_family,
      :network_configuration,
      :load_balancers,
      :service_registries,
      :scale,
      :stability_status,
      :stability_status_at,
      :tags,
      :fargate_ephemeral_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified task set wasn't found. You can view your available task
    # sets with [DescribeTaskSets][1]. Task sets are specific to each
    # cluster, service and Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTaskSets.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskSetNotFoundException AWS API Documentation
    #
    class TaskSetNotFoundException < Aws::EmptyStructure; end

    # Configuration settings for the task volume that was
    # `configuredAtLaunch` that weren't set during `RegisterTaskDef`.
    #
    # @!attribute [rw] name
    #   The name of the volume. This value must match the volume name from
    #   the `Volume` object in the task definition.
    #   @return [String]
    #
    # @!attribute [rw] managed_ebs_volume
    #   The configuration for the Amazon EBS volume that Amazon ECS creates
    #   and manages on your behalf. These settings are used to create each
    #   Amazon EBS volume, with one volume created for each task. The Amazon
    #   EBS volumes are visible in your account in the Amazon EC2 console
    #   once they are created.
    #   @return [Types::TaskManagedEBSVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskVolumeConfiguration AWS API Documentation
    #
    class TaskVolumeConfiguration < Struct.new(
      :name,
      :managed_ebs_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the timeout configurations for Service
    # Connect.
    #
    # <note markdown="1"> If `idleTimeout` is set to a time that is less than
    # `perRequestTimeout`, the connection will close when the `idleTimeout`
    # is reached and not the `perRequestTimeout`.
    #
    #  </note>
    #
    # @!attribute [rw] idle_timeout_seconds
    #   The amount of time in seconds a connection will stay active while
    #   idle. A value of `0` can be set to disable `idleTimeout`.
    #
    #   The `idleTimeout` default for `HTTP`/`HTTP2`/`GRPC` is 5 minutes.
    #
    #   The `idleTimeout` default for `TCP` is 1 hour.
    #   @return [Integer]
    #
    # @!attribute [rw] per_request_timeout_seconds
    #   The amount of time waiting for the upstream to respond with a
    #   complete response per request. A value of `0` can be set to disable
    #   `perRequestTimeout`. `perRequestTimeout` can only be set if Service
    #   Connect `appProtocol` isn't `TCP`. Only `idleTimeout` is allowed
    #   for `TCP` `appProtocol`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TimeoutConfiguration AWS API Documentation
    #
    class TimeoutConfiguration < Struct.new(
      :idle_timeout_seconds,
      :per_request_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container path, mount options, and size of the tmpfs mount.
    #
    # @!attribute [rw] container_path
    #   The absolute file path where the tmpfs volume is to be mounted.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The maximum size (in MiB) of the tmpfs volume.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_options
    #   The list of tmpfs volume mount options.
    #
    #   Valid values: `"defaults" | "ro" | "rw" | "suid" | "nosuid" | "dev"
    #   | "nodev" | "exec" | "noexec" | "sync" | "async" | "dirsync" |
    #   "remount" | "mand" | "nomand" | "atime" | "noatime" | "diratime" |
    #   "nodiratime" | "bind" | "rbind" | "unbindable" | "runbindable" |
    #   "private" | "rprivate" | "shared" | "rshared" | "slave" | "rslave" |
    #   "relatime" | "norelatime" | "strictatime" | "nostrictatime" | "mode"
    #   | "uid" | "gid" | "nr_inodes" | "nr_blocks" | "mpol"`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Tmpfs AWS API Documentation
    #
    class Tmpfs < Struct.new(
      :container_path,
      :size,
      :mount_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum total local storage in gigabytes (GB) for
    # instance types with local storage. This is useful for workloads that
    # require local storage for temporary data or caching.
    #
    # @!attribute [rw] min
    #   The minimum total local storage in GB. Instance types with less
    #   local storage are excluded from selection.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum total local storage in GB. Instance types with more
    #   local storage are excluded from selection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TotalLocalStorageGBRequest AWS API Documentation
    #
    class TotalLocalStorageGBRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ulimit` settings to pass to the container.
    #
    # Amazon ECS tasks hosted on Fargate use the default resource limit
    # values set by the operating system with the exception of the `nofile`
    # resource limit parameter which Fargate overrides. The `nofile`
    # resource limit sets a restriction on the number of open files that a
    # container can use. The default `nofile` soft limit is ` 65535` and the
    # default hard limit is `65535`.
    #
    # You can specify the `ulimit` settings for a container in a task
    # definition.
    #
    # @!attribute [rw] name
    #   The `type` of the `ulimit`.
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the `ulimit` type. The value can be specified in
    #   bytes, seconds, or as a count, depending on the `type` of the
    #   `ulimit`.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the `ulimit` type. The value can be specified in
    #   bytes, seconds, or as a count, depending on the `type` of the
    #   `ulimit`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Ulimit AWS API Documentation
    #
    class Ulimit < Struct.new(
      :name,
      :soft_limit,
      :hard_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified task isn't supported in this Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UnsupportedFeatureException AWS API Documentation
    #
    class UnsupportedFeatureException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   Currently, the supported resources are Amazon ECS capacity
    #   providers, tasks, services, task definitions, clusters, and
    #   container instances.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the capacity provider to update.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The name of the cluster that contains the capacity provider to
    #   update. Managed instances capacity providers are cluster-scoped and
    #   can only be updated within their associated cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_provider
    #   An object that represent the parameters to update for the Auto
    #   Scaling group capacity provider.
    #   @return [Types::AutoScalingGroupProviderUpdate]
    #
    # @!attribute [rw] managed_instances_provider
    #   The updated configuration for the Amazon ECS Managed Instances
    #   provider. You can modify the infrastructure role, instance launch
    #   template, and tag propagation settings. Changes take effect for new
    #   instances launched after the update.
    #   @return [Types::UpdateManagedInstancesProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateCapacityProviderRequest AWS API Documentation
    #
    class UpdateCapacityProviderRequest < Struct.new(
      :name,
      :cluster,
      :auto_scaling_group_provider,
      :managed_instances_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider
    #   Details about the capacity provider.
    #   @return [Types::CapacityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateCapacityProviderResponse AWS API Documentation
    #
    class UpdateCapacityProviderResponse < Struct.new(
      :capacity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The name of the cluster to modify the settings for.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The cluster settings for your cluster.
    #   @return [Array<Types::ClusterSetting>]
    #
    # @!attribute [rw] configuration
    #   The execute command configuration for the cluster.
    #   @return [Types::ClusterConfiguration]
    #
    # @!attribute [rw] service_connect_defaults
    #   Use this parameter to set a default Service Connect namespace. After
    #   you set a default Service Connect namespace, any new services with
    #   Service Connect turned on that are created in the cluster are added
    #   as client services in the namespace. This setting only applies to
    #   new services that set the `enabled` parameter to `true` in the
    #   `ServiceConnectConfiguration`. You can set the namespace of each
    #   service individually in the `ServiceConnectConfiguration` to
    #   override this default parameter.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ClusterServiceConnectDefaultsRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterRequest AWS API Documentation
    #
    class UpdateClusterRequest < Struct.new(
      :cluster,
      :settings,
      :configuration,
      :service_connect_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Details about the cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterResponse AWS API Documentation
    #
    class UpdateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The name of the cluster to modify the settings for.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The setting to use by default for a cluster. This parameter is used
    #   to turn on CloudWatch Container Insights for a cluster. If this
    #   value is specified, it overrides the `containerInsights` value set
    #   with [PutAccountSetting][1] or [PutAccountSettingDefault][2].
    #
    #   Currently, if you delete an existing cluster that does not have
    #   Container Insights turned on, and then create a new cluster with the
    #   same name with Container Insights tuned on, Container Insights will
    #   not actually be turned on. If you want to preserve the same name for
    #   your existing cluster and turn on Container Insights, you must wait
    #   7 days before you can re-create it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html
    #   @return [Array<Types::ClusterSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterSettingsRequest AWS API Documentation
    #
    class UpdateClusterSettingsRequest < Struct.new(
      :cluster,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Details about the cluster
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterSettingsResponse AWS API Documentation
    #
    class UpdateClusterSettingsResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your container instance is running on. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN entries for the container
    #   instance where you would like to update the Amazon ECS container
    #   agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgentRequest AWS API Documentation
    #
    class UpdateContainerAgentRequest < Struct.new(
      :cluster,
      :container_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instance
    #   The container instance that the container agent was updated for.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgentResponse AWS API Documentation
    #
    class UpdateContainerAgentResponse < Struct.new(
      :container_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to update. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   A list of up to 10 container instance IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The container instance state to update the container instance with.
    #   The only valid values for this action are `ACTIVE` and `DRAINING`. A
    #   container instance can only be updated to `DRAINING` status once it
    #   has reached an `ACTIVE` state. If a container instance is in
    #   `REGISTERING`, `DEREGISTERING`, or `REGISTRATION_FAILED` state you
    #   can describe the container instance but can't update the container
    #   instance state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesStateRequest AWS API Documentation
    #
    class UpdateContainerInstancesStateRequest < Struct.new(
      :cluster,
      :container_instances,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_instances
    #   The list of container instances.
    #   @return [Array<Types::ContainerInstance>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesStateResponse AWS API Documentation
    #
    class UpdateContainerInstancesStateResponse < Struct.new(
      :container_instances,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # There's already a current Amazon ECS container agent update in
    # progress on the container instance that's specified. If the container
    # agent becomes disconnected while it's in a transitional stage, such
    # as `PENDING` or `STAGING`, the update process can get stuck in that
    # state. However, when the agent reconnects, it resumes where it stopped
    # previously.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateInProgressException AWS API Documentation
    #
    class UpdateInProgressException < Aws::EmptyStructure; end

    # The updated configuration for a Amazon ECS Managed Instances provider.
    # You can modify the infrastructure role, instance launch template, and
    # tag propagation settings. Changes apply to new instances launched
    # after the update.
    #
    # @!attribute [rw] infrastructure_role_arn
    #   The updated Amazon Resource Name (ARN) of the infrastructure role.
    #   The new role must have the necessary permissions to manage instances
    #   and access required Amazon Web Services services.
    #
    #   For more information, see [Amazon ECS infrastructure IAM role][1] in
    #   the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/infrastructure_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] instance_launch_template
    #   The updated launch template configuration. Changes to the launch
    #   template affect new instances launched after the update, while
    #   existing instances continue to use their original configuration.
    #   @return [Types::InstanceLaunchTemplateUpdate]
    #
    # @!attribute [rw] propagate_tags
    #   The updated tag propagation setting. When changed, this affects only
    #   new instances launched after the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateManagedInstancesProviderConfiguration AWS API Documentation
    #
    class UpdateManagedInstancesProviderConfiguration < Struct.new(
      :infrastructure_role_arn,
      :instance_launch_template,
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task set exists in.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The short name or full Amazon Resource Name (ARN) of the service
    #   that the task set exists in.
    #   @return [String]
    #
    # @!attribute [rw] primary_task_set
    #   The short name or full Amazon Resource Name (ARN) of the task set to
    #   set as the primary task set in the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServicePrimaryTaskSetRequest AWS API Documentation
    #
    class UpdateServicePrimaryTaskSetRequest < Struct.new(
      :cluster,
      :service,
      :primary_task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_set
    #   The details about the task set.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServicePrimaryTaskSetResponse AWS API Documentation
    #
    class UpdateServicePrimaryTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your service runs on. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    #   You can't change the cluster name.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the service to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the task to place and keep running
    #   in your service.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used. If you modify the
    #   task definition with `UpdateService`, Amazon ECS spawns a task with
    #   the new version of the task definition and then stops an old task
    #   after the new version is running.
    #
    #   This parameter triggers a new service deployment.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The details of a capacity provider strategy. You can set a capacity
    #   provider when you create a cluster, run a task, or update a service.
    #
    #   When you use Fargate, the capacity providers are `FARGATE` or
    #   `FARGATE_SPOT`.
    #
    #   When you use Amazon EC2, the capacity providers are Auto Scaling
    #   groups.
    #
    #   You can change capacity providers for rolling deployments and
    #   blue/green deployments.
    #
    #   The following list provides the valid transitions:
    #
    #   * Update the Fargate launch type to an Auto Scaling group capacity
    #     provider.
    #
    #   * Update the Amazon EC2 launch type to a Fargate capacity provider.
    #
    #   * Update the Fargate capacity provider to an Auto Scaling group
    #     capacity provider.
    #
    #   * Update the Amazon EC2 capacity provider to a Fargate capacity
    #     provider.
    #
    #   * Update the Auto Scaling group or Fargate capacity provider back to
    #     the launch type.
    #
    #     Pass an empty list in the `capacityProviderStrategy` parameter.
    #
    #   For information about Amazon Web Services CDK considerations, see
    #   [Amazon Web Services CDK considerations][1].
    #
    #   This parameter doesn't trigger a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/update-service-parameters.html
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] availability_zone_rebalancing
    #   Indicates whether to use Availability Zone rebalancing for the
    #   service.
    #
    #   For more information, see [Balancing an Amazon ECS service across
    #   Availability Zones][1] in the <i> <i>Amazon Elastic Container
    #   Service Developer Guide</i> </i>.
    #
    #   The default behavior of `AvailabilityZoneRebalancing` differs
    #   between create and update requests:
    #
    #   * For create service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults the value to
    #     `ENABLED`.
    #
    #   * For update service requests, when no value is specified for
    #     `AvailabilityZoneRebalancing`, Amazon ECS defaults to the existing
    #     service’s `AvailabilityZoneRebalancing` value. If the service
    #     never had an `AvailabilityZoneRebalancing` value set, Amazon ECS
    #     treats this as `DISABLED`.
    #
    #   This parameter doesn't trigger a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   An object representing the network configuration for the service.
    #
    #   This parameter triggers a new service deployment.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] placement_constraints
    #   An array of task placement constraint objects to update the service
    #   to use. If no value is specified, the existing placement constraints
    #   for the service will remain unchanged. If this value is specified,
    #   it will override any existing placement constraints defined for the
    #   service. To remove all existing placement constraints, specify an
    #   empty array.
    #
    #   You can specify a maximum of 10 constraints for each task. This
    #   limit includes constraints in the task definition and those
    #   specified at runtime.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The task placement strategy objects to update the service to use. If
    #   no value is specified, the existing placement strategy for the
    #   service will remain unchanged. If this value is specified, it will
    #   override the existing placement strategy defined for the service. To
    #   remove an existing placement strategy, specify an empty object.
    #
    #   You can specify a maximum of five strategy rules for each service.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   The platform version that your tasks in the service run on. A
    #   platform version is only specified for tasks using the Fargate
    #   launch type. If a platform version is not specified, the `LATEST`
    #   platform version is used. For more information, see [Fargate
    #   Platform Versions][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   This parameter triggers a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] force_new_deployment
    #   Determines whether to force a new deployment of the service. By
    #   default, deployments aren't forced. You can use this option to
    #   start a new deployment with no service definition changes. For
    #   example, you can update a service's tasks to use a newer Docker
    #   image with the same image/tag combination (`my_image:latest`) or to
    #   roll Fargate tasks onto a newer platform version.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler ignores unhealthy Elastic Load Balancing, VPC Lattice, and
    #   container health checks after a task has first started. If you
    #   don't specify a health check grace period value, the default value
    #   of `0` is used. If you don't use any of the health checks, then
    #   `healthCheckGracePeriodSeconds` is unused.
    #
    #   If your service's tasks take a while to start and respond to health
    #   checks, you can specify a health check grace period of up to
    #   2,147,483,647 seconds (about 69 years). During that time, the Amazon
    #   ECS service scheduler ignores health check status. This grace period
    #   can prevent the service scheduler from marking tasks as unhealthy
    #   and stopping them before they have time to come up.
    #
    #   If your service has more running tasks than desired, unhealthy tasks
    #   in the grace period might be stopped to reach the desired count.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_controller
    #   The deployment controller to use for the service.
    #   @return [Types::DeploymentController]
    #
    # @!attribute [rw] enable_execute_command
    #   If `true`, this enables execute command functionality on all task
    #   containers.
    #
    #   If you do not want to override the value that was set when the
    #   service was created, you can set this to `null` when performing this
    #   action.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Determines whether to turn on Amazon ECS managed tags for the tasks
    #   in the service. For more information, see [Tagging Your Amazon ECS
    #   Resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   Only tasks launched after the update will reflect the update. To
    #   update the tags on all tasks, set `forceNewDeployment` to `true`, so
    #   that Amazon ECS starts new tasks with the updated tags.
    #
    #   This parameter doesn't trigger a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] load_balancers
    #   <note markdown="1"> You must have a service-linked role when you update this property
    #
    #    </note>
    #
    #   A list of Elastic Load Balancing load balancer objects. It contains
    #   the load balancer name, the container name, and the container port
    #   to access from the load balancer. The container name is as it
    #   appears in a container definition.
    #
    #   When you add, update, or remove a load balancer configuration,
    #   Amazon ECS starts new tasks with the updated Elastic Load Balancing
    #   configuration, and then stops the old tasks when the new tasks are
    #   running.
    #
    #   For services that use rolling updates, you can add, update, or
    #   remove Elastic Load Balancing target groups. You can update from a
    #   single target group to multiple target groups and from multiple
    #   target groups to a single target group.
    #
    #   For services that use blue/green deployments, you can update Elastic
    #   Load Balancing target groups by using ` CreateDeployment ` through
    #   CodeDeploy. Note that multiple target groups are not supported for
    #   blue/green deployments. For more information see [Register multiple
    #   target groups with a service][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   For services that use the external deployment controller, you can
    #   add, update, or remove load balancers by using [CreateTaskSet][2].
    #   Note that multiple target groups are not supported for external
    #   deployments. For more information see [Register multiple target
    #   groups with a service][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   You can remove existing `loadBalancers` by passing an empty list.
    #
    #   This parameter triggers a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] propagate_tags
    #   Determines whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags aren't
    #   propagated.
    #
    #   Only tasks launched after the update will reflect the update. To
    #   update the tags on all tasks, set `forceNewDeployment` to `true`, so
    #   that Amazon ECS starts new tasks with the updated tags.
    #
    #   This parameter doesn't trigger a new service deployment.
    #   @return [String]
    #
    # @!attribute [rw] service_registries
    #   <note markdown="1"> You must have a service-linked role when you update this property.
    #
    #    For more information about the role see the `CreateService` request
    #   parameter [ `role` ][1].
    #
    #    </note>
    #
    #   The details for the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][2].
    #
    #   When you add, update, or remove the service registries
    #   configuration, Amazon ECS starts new tasks with the updated service
    #   registries configuration, and then stops the old tasks when the new
    #   tasks are running.
    #
    #   You can remove existing `serviceRegistries` by passing an empty
    #   list.
    #
    #   This parameter triggers a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] service_connect_configuration
    #   The configuration for this service to discover and connect to
    #   services, and be discovered by, and connected from, other services
    #   within a namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all
    #   of the clusters in the namespace. Tasks connect through a managed
    #   proxy container that collects logs and metrics for increased
    #   visibility. Only the tasks that Amazon ECS services create are
    #   supported with Service Connect. For more information, see [Service
    #   Connect][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   This parameter triggers a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ServiceConnectConfiguration]
    #
    # @!attribute [rw] volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in [ServiceManagedEBSVolumeConfiguration][1]. The `name`
    #   of the volume must match the `name` from the task definition. If set
    #   to null, no new deployment is triggered. Otherwise, if this
    #   configuration differs from the existing one, it triggers a new
    #   deployment.
    #
    #   This parameter triggers a new service deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ServiceManagedEBSVolumeConfiguration.html
    #   @return [Array<Types::ServiceVolumeConfiguration>]
    #
    # @!attribute [rw] vpc_lattice_configurations
    #   An object representing the VPC Lattice configuration for the service
    #   being updated.
    #
    #   This parameter triggers a new service deployment.
    #   @return [Array<Types::VpcLatticeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :cluster,
      :service,
      :desired_count,
      :task_definition,
      :capacity_provider_strategy,
      :deployment_configuration,
      :availability_zone_rebalancing,
      :network_configuration,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :force_new_deployment,
      :health_check_grace_period_seconds,
      :deployment_controller,
      :enable_execute_command,
      :enable_ecs_managed_tags,
      :load_balancers,
      :propagate_tags,
      :service_registries,
      :service_connect_configuration,
      :volume_configurations,
      :vpc_lattice_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of your service following the update call.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task sets exist in.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of up to 10 task IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protection_enabled
    #   Specify `true` to mark a task for protection and `false` to unset
    #   protection, making it eligible for termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] expires_in_minutes
    #   If you set `protectionEnabled` to `true`, you can specify the
    #   duration for task protection in minutes. You can specify a value
    #   from 1 minute to up to 2,880 minutes (48 hours). During this time,
    #   your task will not be terminated by scale-in events from Service
    #   Auto Scaling or deployments. After this time period lapses,
    #   `protectionEnabled` will be reset to `false`.
    #
    #   If you don’t specify the time, then the task is automatically
    #   protected for 120 minutes (2 hours).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskProtectionRequest AWS API Documentation
    #
    class UpdateTaskProtectionRequest < Struct.new(
      :cluster,
      :tasks,
      :protection_enabled,
      :expires_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protected_tasks
    #   A list of tasks with the following information.
    #
    #   * `taskArn`: The task ARN.
    #
    #   * `protectionEnabled`: The protection status of the task. If
    #     scale-in protection is turned on for a task, the value is `true`.
    #     Otherwise, it is `false`.
    #
    #   * `expirationDate`: The epoch time when protection for the task will
    #     expire.
    #   @return [Array<Types::ProtectedTask>]
    #
    # @!attribute [rw] failures
    #   Any failures associated with the call.
    #   @return [Array<Types::Failure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskProtectionResponse AWS API Documentation
    #
    class UpdateTaskProtectionResponse < Struct.new(
      :protected_tasks,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task set is found in.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The short name or full Amazon Resource Name (ARN) of the service
    #   that the task set is found in.
    #   @return [String]
    #
    # @!attribute [rw] task_set
    #   The short name or full Amazon Resource Name (ARN) of the task set to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #   @return [Types::Scale]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskSetRequest AWS API Documentation
    #
    class UpdateTaskSetRequest < Struct.new(
      :cluster,
      :service,
      :task_set,
      :scale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_set
    #   Details about the task set.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskSetResponse AWS API Documentation
    #
    class UpdateTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum and maximum number of vCPUs for instance type selection.
    # This allows you to specify a range of vCPU counts that meet your
    # workload requirements.
    #
    # @!attribute [rw] min
    #   The minimum number of vCPUs. Instance types with fewer vCPUs than
    #   this value are excluded from selection.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of vCPUs. Instance types with more vCPUs than
    #   this value are excluded from selection.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VCpuCountRangeRequest AWS API Documentation
    #
    class VCpuCountRangeRequest < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Docker and Amazon ECS container agent version information about a
    # container instance.
    #
    # @!attribute [rw] agent_version
    #   The version number of the Amazon ECS container agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_hash
    #   The Git commit hash for the Amazon ECS container agent build on the
    #   [amazon-ecs-agent ][1] GitHub repository.
    #
    #
    #
    #   [1]: https://github.com/aws/amazon-ecs-agent
    #   @return [String]
    #
    # @!attribute [rw] docker_version
    #   The Docker version that's running on the container instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VersionInfo AWS API Documentation
    #
    class VersionInfo < Struct.new(
      :agent_version,
      :agent_hash,
      :docker_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data volume configuration for tasks launched using this task
    # definition. Specifying a volume configuration in a task definition is
    # optional. The volume configuration may contain multiple volumes but
    # only one volume configured at launch is supported. Each volume defined
    # in the volume configuration may only specify a `name` and one of
    # either `configuredAtLaunch`, `dockerVolumeConfiguration`,
    # `efsVolumeConfiguration`, `fsxWindowsFileServerVolumeConfiguration`,
    # or `host`. If an empty volume configuration is specified, by default
    # Amazon ECS uses a host volume. For more information, see [Using data
    # volumes in tasks][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, underscores, and hyphens are allowed.
    #
    #   When using a volume configured at launch, the `name` is required and
    #   must also be specified as the volume name in the
    #   `ServiceVolumeConfiguration` or `TaskVolumeConfiguration` parameter
    #   when creating your service or standalone task.
    #
    #   For all other types of volumes, this name is referenced in the
    #   `sourceVolume` parameter of the `mountPoints` object in the
    #   container definition.
    #
    #   When a volume is using the `efsVolumeConfiguration`, the name is
    #   required.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   This parameter is specified when you use bind mount host volumes.
    #   The contents of the `host` parameter determine whether your bind
    #   mount host volume persists on the host container instance and where
    #   it's stored. If the `host` parameter is empty, then the Docker
    #   daemon assigns a host path for your data volume. However, the data
    #   isn't guaranteed to persist after the containers that are
    #   associated with it stop running.
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers can't mount directories on a
    #   different drive, and mount point can't be across drives. For
    #   example, you can mount `C:\my\path:C:\my\path` and `D:\:D:`, but
    #   not `D:\my\path:C:\my\path` or `D:\:C:\my\path`.
    #   @return [Types::HostVolumeProperties]
    #
    # @!attribute [rw] docker_volume_configuration
    #   This parameter is specified when you use Docker volumes.
    #
    #   Windows containers only support the use of the `local` driver. To
    #   use bind mounts, specify the `host` parameter instead.
    #
    #   <note markdown="1"> Docker volumes aren't supported by tasks run on Fargate.
    #
    #    </note>
    #   @return [Types::DockerVolumeConfiguration]
    #
    # @!attribute [rw] efs_volume_configuration
    #   This parameter is specified when you use an Amazon Elastic File
    #   System file system for task storage.
    #   @return [Types::EFSVolumeConfiguration]
    #
    # @!attribute [rw] fsx_windows_file_server_volume_configuration
    #   This parameter is specified when you use Amazon FSx for Windows File
    #   Server file system for task storage.
    #   @return [Types::FSxWindowsFileServerVolumeConfiguration]
    #
    # @!attribute [rw] configured_at_launch
    #   Indicates whether the volume should be configured at launch time.
    #   This is used to create Amazon EBS volumes for standalone tasks or
    #   tasks created as part of a service. Each task definition revision
    #   may only have one volume configured at launch in the volume
    #   configuration.
    #
    #   To configure a volume at launch time, use this task definition
    #   revision and specify a `volumeConfigurations` object when calling
    #   the `CreateService`, `UpdateService`, `RunTask` or `StartTask` APIs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :name,
      :host,
      :docker_volume_configuration,
      :efs_volume_configuration,
      :fsx_windows_file_server_volume_configuration,
      :configured_at_launch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a data volume from another container in the same task
    # definition.
    #
    # @!attribute [rw] source_container
    #   The name of another container within the same task definition to
    #   mount volumes from.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. If this value is `false`, then the container can write to
    #   the volume. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VolumeFrom AWS API Documentation
    #
    class VolumeFrom < Struct.new(
      :source_container,
      :read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC Lattice configuration for your service that holds the
    # information for the target group(s) Amazon ECS tasks will be
    # registered to.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to associate with this VPC Lattice
    #   configuration. This is the Amazon ECS  infrastructure IAM role that
    #   is used to manage your VPC Lattice infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arn
    #   The full Amazon Resource Name (ARN) of the target group or groups
    #   associated with the VPC Lattice configuration that the Amazon ECS
    #   tasks will be registered to.
    #   @return [String]
    #
    # @!attribute [rw] port_name
    #   The name of the port mapping to register in the VPC Lattice target
    #   group. This is the name of the `portMapping` you defined in your
    #   task definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/VpcLatticeConfiguration AWS API Documentation
    #
    class VpcLatticeConfiguration < Struct.new(
      :role_arn,
      :target_group_arn,
      :port_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

