# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECS
  module Types

    # You do not have authorization to perform the requested action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # An object representing a container instance or task attachment.
    #
    # @!attribute [rw] id
    #   The unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attachment, such as `ElasticNetworkInterface`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the attachment. Valid values are `PRECREATED`,
    #   `CREATED`, `ATTACHING`, `ATTACHED`, `DETACHING`, `DETACHED`, and
    #   `DELETED`.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Details of the attachment. For elastic network interfaces, this
    #   includes the network interface ID, the MAC address, the subnet ID,
    #   and the private IPv4 address.
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
    # @note When making an API call, you may pass AttachmentStateChange
    #   data as a hash:
    #
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       }
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

    # An attribute is a name-value pair associated with an Amazon ECS
    # object. Attributes enable you to extend the Amazon ECS data model by
    # adding custom metadata to your resources. For more information, see
    # [Attributes][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #
    # @note When making an API call, you may pass Attribute
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute. Up to 128 letters (uppercase and
    #   lowercase), numbers, hyphens, underscores, and periods are allowed.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute. Up to 128 letters (uppercase and
    #   lowercase), numbers, hyphens, underscores, periods, at signs (@),
    #   forward slashes, colons, and spaces are allowed.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target with which to attach the attribute. This
    #   parameter is required if you use the short form ID for a resource
    #   instead of the full ARN.
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

    # You can apply up to 10 custom attributes per resource. You can view
    # the attributes of a resource with ListAttributes. You can remove
    # existing attributes on a resource with DeleteAttributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AttributeLimitExceededException AWS API Documentation
    #
    class AttributeLimitExceededException < Aws::EmptyStructure; end

    # The details of the Auto Scaling group for the capacity provider.
    #
    # @note When making an API call, you may pass AutoScalingGroupProvider
    #   data as a hash:
    #
    #       {
    #         auto_scaling_group_arn: "String", # required
    #         managed_scaling: {
    #           status: "ENABLED", # accepts ENABLED, DISABLED
    #           target_capacity: 1,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 1,
    #         },
    #         managed_termination_protection: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   The Amazon Resource Name (ARN) that identifies the Auto Scaling
    #   group.
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
    #   Scaling group has managed termination protection.
    #
    #   When using managed termination protection, managed scaling must also
    #   be used otherwise managed termination protection will not work.
    #
    #   When managed termination protection is enabled, Amazon ECS prevents
    #   the Amazon EC2 instances in an Auto Scaling group that contain tasks
    #   from being terminated during a scale-in action. The Auto Scaling
    #   group and each instance in the Auto Scaling group must have instance
    #   protection from scale-in actions enabled as well. For more
    #   information, see [Instance Protection][1] in the *AWS Auto Scaling
    #   User Guide*.
    #
    #   When managed termination protection is disabled, your Amazon EC2
    #   instances are not protected from termination when the Auto Scaling
    #   group scales in.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AutoScalingGroupProvider AWS API Documentation
    #
    class AutoScalingGroupProvider < Struct.new(
      :auto_scaling_group_arn,
      :managed_scaling,
      :managed_termination_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the networking details for a task or service.
    #
    # @note When making an API call, you may pass AwsVpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] subnets
    #   The subnets associated with the task or service. There is a limit of
    #   16 subnets that can be specified per `AwsVpcConfiguration`.
    #
    #   <note markdown="1"> All specified subnets must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the task or service. If you do
    #   not specify a security group, the default security group for the VPC
    #   is used. There is a limit of 5 security groups that can be specified
    #   per `AwsVpcConfiguration`.
    #
    #   <note markdown="1"> All specified security groups must be from the same VPC.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Whether the task's elastic network interface receives a public IP
    #   address. The default value is `DISABLED`.
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

    # Your AWS account has been blocked. For more information, contact [AWS
    # Support][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/BlockedException AWS API Documentation
    #
    class BlockedException < Aws::EmptyStructure; end

    # The details of a capacity provider.
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
    # @!attribute [rw] status
    #   The current status of the capacity provider. Only capacity providers
    #   in an `ACTIVE` state can be used in a cluster. When a capacity
    #   provider is successfully deleted, it will have an `INACTIVE` status.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_provider
    #   The Auto Scaling group settings for the capacity provider.
    #   @return [Types::AutoScalingGroupProvider]
    #
    # @!attribute [rw] update_status
    #   The update status of the capacity provider. The following are the
    #   possible states that will be returned.
    #
    #   DELETE\_IN\_PROGRESS
    #
    #   : The capacity provider is in the process of being deleted.
    #
    #   DELETE\_COMPLETE
    #
    #   : The capacity provider has been successfully deleted and will have
    #     an `INACTIVE` status.
    #
    #   DELETE\_FAILED
    #
    #   : The capacity provider was unable to be deleted. The update status
    #     reason will provide further details about why the delete failed.
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
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CapacityProvider AWS API Documentation
    #
    class CapacityProvider < Struct.new(
      :capacity_provider_arn,
      :name,
      :status,
      :auto_scaling_group_provider,
      :update_status,
      :update_status_reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a capacity provider strategy.
    #
    # @note When making an API call, you may pass CapacityProviderStrategyItem
    #   data as a hash:
    #
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       }
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The *weight* value designates the relative percentage of the total
    #   number of tasks launched that should use the specified capacity
    #   provider.
    #
    #   For example, if you have a strategy that contains two capacity
    #   providers and both have a weight of `1`, then when the `base` is
    #   satisfied, the tasks will be split evenly across the two capacity
    #   providers. Using that same logic, if you specify a weight of `1` for
    #   *capacityProviderA* and a weight of `4` for *capacityProviderB*,
    #   then for every one task that is run using *capacityProviderA*, four
    #   tasks would use *capacityProviderB*.
    #   @return [Integer]
    #
    # @!attribute [rw] base
    #   The *base* value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider. Only one capacity provider in a
    #   capacity provider strategy can have a *base* defined.
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

    # These errors are usually caused by a client action, such as using an
    # action or resource on behalf of a user that doesn't have permissions
    # to use the action or resource, or specifying an identifier that is not
    # valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A regional grouping of one or more container instances on which you
    # can run task requests. Each account receives a default cluster the
    # first time you use the Amazon ECS service, but you may also create
    # other clusters. Clusters may contain more than one instance type
    # simultaneously.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that identifies the cluster. The ARN
    #   contains the `arn:aws:ecs` namespace, followed by the Region of the
    #   cluster, the AWS account ID of the cluster owner, the `cluster`
    #   namespace, and then the cluster name. For example,
    #   `arn:aws:ecs:region:012345678910:cluster/test`.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A user-generated string that you use to identify your cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster. The following are the possible states
    #   that will be returned.
    #
    #   ACTIVE
    #
    #   : The cluster is ready to accept tasks and if applicable you can
    #     register container instances with the cluster.
    #
    #   PROVISIONING
    #
    #   : The cluster has capacity providers associated with it and the
    #     resources needed for the capacity provider are being created.
    #
    #   DEPROVISIONING
    #
    #   : The cluster has capacity providers associated with it and the
    #     resources needed for the capacity provider are being deleted.
    #
    #   FAILED
    #
    #   : The cluster has capacity providers associated with it and the
    #     resources needed for the capacity provider have failed to create.
    #
    #   INACTIVE
    #
    #   : The cluster has been deleted. Clusters with an `INACTIVE` status
    #     may remain discoverable in your account for a period of time.
    #     However, this behavior is subject to change in the future, so you
    #     should not rely on `INACTIVE` clusters persisting.
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
    #   `ACTIVE` state. You can view these services with ListServices.
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   Additional information about your clusters that are separated by
    #   launch type, including:
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
    #   and organize them. Each tag consists of a key and an optional value,
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] settings
    #   The settings for the cluster. This parameter indicates whether
    #   CloudWatch Container Insights is enabled or disabled for a cluster.
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
    #   with a cluster, the Auto Scaling plan that is created will be
    #   returned as a cluster attachment.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] attachments_status
    #   The status of the capacity providers associated with the cluster.
    #   The following are the states that will be returned:
    #
    #   UPDATE\_IN\_PROGRESS
    #
    #   : The available capacity providers for the cluster are updating.
    #     This occurs when the Auto Scaling plan is provisioning or
    #     deprovisioning.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :cluster_arn,
      :cluster_name,
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
      :attachments_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot delete a cluster that has registered container instances.
    # First, deregister the container instances before you can delete the
    # cluster. For more information, see DeregisterContainerInstance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsContainerInstancesException AWS API Documentation
    #
    class ClusterContainsContainerInstancesException < Aws::EmptyStructure; end

    # You cannot delete a cluster that contains services. First, update the
    # service to reduce its desired task count to 0 and then delete the
    # service. For more information, see UpdateService and DeleteService.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsServicesException AWS API Documentation
    #
    class ClusterContainsServicesException < Aws::EmptyStructure; end

    # You cannot delete a cluster that has active tasks.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsTasksException AWS API Documentation
    #
    class ClusterContainsTasksException < Aws::EmptyStructure; end

    # The specified cluster could not be found. You can view your available
    # clusters with ListClusters. Amazon ECS clusters are Region-specific.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterNotFoundException AWS API Documentation
    #
    class ClusterNotFoundException < Aws::EmptyStructure; end

    # The settings to use when creating a cluster. This parameter is used to
    # enable CloudWatch Container Insights for a cluster.
    #
    # @note When making an API call, you may pass ClusterSetting
    #   data as a hash:
    #
    #       {
    #         name: "containerInsights", # accepts containerInsights
    #         value: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the cluster setting. The only supported value is
    #   `containerInsights`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to set for the cluster setting. The supported values are
    #   `enabled` and `disabled`. If `enabled` is specified, CloudWatch
    #   Container Insights will be enabled for the cluster, otherwise it
    #   will be disabled unless the `containerInsights` account setting is
    #   enabled. If a cluster value is specified, it will override the
    #   `containerInsights` value set with PutAccountSetting or
    #   PutAccountSettingDefault.
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

    # A Docker container that is part of a task.
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
    #
    #   <note markdown="1"> The `imageDigest` is only returned if the container is using an
    #   image hosted in Amazon ECR, otherwise it is omitted.
    #
    #    </note>
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
    #   A short (255 max characters) human-readable string to provide
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
    #   The health status of the container. If health checks are not
    #   configured for this container in its task definition, then it
    #   reports the health status as `UNKNOWN`.
    #   @return [String]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units set for the container. The value will be `0`
    #   if no value was specified in the container definition when the task
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
    # @note When making an API call, you may pass ContainerDefinition
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         image: "String",
    #         repository_credentials: {
    #           credentials_parameter: "String", # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: ["String"],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         essential: false,
    #         entry_point: ["String"],
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         environment_files: [
    #           {
    #             value: "String", # required
    #             type: "s3", # required, accepts s3
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: "String",
    #             container_path: "String",
    #             read_only: false,
    #           },
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: "String",
    #             read_only: false,
    #           },
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #             add: ["String"],
    #             drop: ["String"],
    #           },
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["read"], # accepts read, write, mknod
    #             },
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"],
    #             },
    #           ],
    #           max_swap: 1,
    #           swappiness: 1,
    #         },
    #         secrets: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #         depends_on: [
    #           {
    #             container_name: "String", # required
    #             condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #           },
    #         ],
    #         start_timeout: 1,
    #         stop_timeout: 1,
    #         hostname: "String",
    #         user: "String",
    #         working_directory: "String",
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         dns_servers: ["String"],
    #         dns_search_domains: ["String"],
    #         extra_hosts: [
    #           {
    #             hostname: "String", # required
    #             ip_address: "String", # required
    #           },
    #         ],
    #         docker_security_options: ["String"],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           "String" => "String",
    #         },
    #         ulimits: [
    #           {
    #             name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #             soft_limit: 1, # required
    #             hard_limit: 1, # required
    #           },
    #         ],
    #         log_configuration: {
    #           log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #           options: {
    #             "String" => "String",
    #           },
    #           secret_options: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             },
    #           ],
    #         },
    #         health_check: {
    #           command: ["String"], # required
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1,
    #         },
    #         system_controls: [
    #           {
    #             namespace: "String",
    #             value: "String",
    #           },
    #         ],
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU", # required, accepts GPU, InferenceAccelerator
    #           },
    #         ],
    #         firelens_configuration: {
    #           type: "fluentd", # required, accepts fluentd, fluentbit
    #           options: {
    #             "String" => "String",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of a container. If you are linking multiple containers
    #   together in a task definition, the `name` of one container can be
    #   entered in the `links` of another container to connect the
    #   containers. Up to 255 letters (uppercase and lowercase), numbers,
    #   and hyphens are allowed. This parameter maps to `name` in the
    #   [Create a container][1] section of the [Docker Remote API][2] and
    #   the `--name` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. Images in the Docker Hub registry are
    #   available by default. Other repositories are specified with either `
    #   repository-url/image:tag ` or ` repository-url/image@digest `. Up to
    #   255 letters (uppercase and lowercase), numbers, hyphens,
    #   underscores, colons, periods, forward slashes, and number signs are
    #   allowed. This parameter maps to `Image` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the `IMAGE`
    #   parameter of [docker run][3].
    #
    #   * When a new task starts, the Amazon ECS container agent pulls the
    #     latest version of the specified image and tag for the container to
    #     use. However, subsequent updates to a repository image are not
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] repository_credentials
    #   The private repository authentication credentials to use.
    #   @return [Types::RepositoryCredentials]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container. This parameter
    #   maps to `CpuShares` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--cpu-shares` option to [docker
    #   run][3].
    #
    #   This field is optional for tasks using the Fargate launch type, and
    #   the only requirement is that the total amount of CPU reserved for
    #   all containers within a task be lower than the task-level `cpu`
    #   value.
    #
    #   <note markdown="1"> You can determine the number of CPU units that are available per EC2
    #   instance type by multiplying the vCPUs listed for that instance type
    #   on the [Amazon EC2 Instances][4] detail page by 1,024.
    #
    #    </note>
    #
    #   Linux containers share unallocated CPU units with other containers
    #   on the container instance with the same ratio as their allocated
    #   amount. For example, if you run a single-container task on a
    #   single-core instance type with 512 CPU units specified for that
    #   container, and that is the only task running on the container
    #   instance, that container could use the full 1,024 CPU unit share at
    #   any given time. However, if you launched another copy of the same
    #   task on that container instance, each task would be guaranteed a
    #   minimum of 512 CPU units when needed, and each container could float
    #   to higher CPU usage if the other container was not using it, but if
    #   both tasks were 100% active all of the time, they would be limited
    #   to 512 CPU units.
    #
    #   On Linux container instances, the Docker daemon on the container
    #   instance uses the CPU value to calculate the relative CPU share
    #   ratios for running containers. For more information, see [CPU share
    #   constraint][5] in the Docker documentation. The minimum valid CPU
    #   share value that the Linux kernel allows is 2. However, the CPU
    #   parameter is not required, and you can use CPU values below 2 in
    #   your container definitions. For CPU values below 2 (including null),
    #   the behavior varies based on your Amazon ECS container agent
    #   version:
    #
    #   * **Agent versions less than or equal to 1.1.0:** Null and zero CPU
    #     values are passed to Docker as 0, which Docker then converts to
    #     1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which
    #     the Linux kernel converts to two CPU shares.
    #
    #   * **Agent versions greater than or equal to 1.2.0:** Null, zero, and
    #     CPU values of 1 are passed to Docker as 2.
    #
    #   On Windows container instances, the CPU limit is enforced as an
    #   absolute limit, or a quota. Windows containers only have access to
    #   the specified amount of CPU that is described in the task
    #   definition.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: http://aws.amazon.com/ec2/instance-types/
    #   [5]: https://docs.docker.com/engine/reference/run/#cpu-share-constraint
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory to present to the container. If your
    #   container attempts to exceed the memory specified here, the
    #   container is killed. The total amount of memory reserved for all
    #   containers within a task must be lower than the task `memory` value,
    #   if one is specified. This parameter maps to `Memory` in the [Create
    #   a container][1] section of the [Docker Remote API][2] and the
    #   `--memory` option to [docker run][3].
    #
    #   If using the Fargate launch type, this parameter is optional.
    #
    #   If using the EC2 launch type, you must specify either a task-level
    #   memory value or a container-level memory value. If you specify both
    #   a container-level `memory` and `memoryReservation` value, `memory`
    #   must be greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance on which the
    #   container is placed. Otherwise, the value of `memory` is used.
    #
    #   The Docker daemon reserves a minimum of 4 MiB of memory for a
    #   container, so you should not specify fewer than 4 MiB of memory for
    #   your containers.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container. When
    #   system memory is under heavy contention, Docker attempts to keep the
    #   container memory to this soft limit. However, your container can
    #   consume more memory when it needs to, up to either the hard limit
    #   specified with the `memory` parameter (if applicable), or all of the
    #   available memory on the container instance, whichever comes first.
    #   This parameter maps to `MemoryReservation` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--memory-reservation` option to [docker run][3].
    #
    #   If a task-level memory value is not specified, you must specify a
    #   non-zero integer for one or both of `memory` or `memoryReservation`
    #   in a container definition. If you specify both, `memory` must be
    #   greater than `memoryReservation`. If you specify
    #   `memoryReservation`, then that value is subtracted from the
    #   available memory resources for the container instance on which the
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
    #   The Docker daemon reserves a minimum of 4 MiB of memory for a
    #   container, so you should not specify fewer than 4 MiB of memory for
    #   your containers.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] links
    #   The `links` parameter allows containers to communicate with each
    #   other without the need for port mappings. This parameter is only
    #   supported if the network mode of a task definition is `bridge`. The
    #   `name:internalName` construct is analogous to `name:alias` in Docker
    #   links. Up to 255 letters (uppercase and lowercase), numbers, and
    #   hyphens are allowed. For more information about linking Docker
    #   containers, go to [Legacy container links][1] in the Docker
    #   documentation. This parameter maps to `Links` in the [Create a
    #   container][2] section of the [Docker Remote API][3] and the `--link`
    #   option to [docker run][4].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   Containers that are collocated on a single container instance may be
    #   able to communicate with each other without requiring links or host
    #   port mappings. Network isolation is achieved on the container
    #   instance using security groups and VPC settings.
    #
    #
    #
    #   [1]: https://docs.docker.com/network/links/
    #   [2]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [3]: https://docs.docker.com/engine/api/v1.35/
    #   [4]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] port_mappings
    #   The list of port mappings for the container. Port mappings allow
    #   containers to access ports on the host container instance to send or
    #   receive traffic.
    #
    #   For task definitions that use the `awsvpc` network mode, you should
    #   only specify the `containerPort`. The `hostPort` can be left blank
    #   or it must be the same value as the `containerPort`.
    #
    #   Port mappings on Windows use the `NetNAT` gateway address rather
    #   than `localhost`. There is no loopback for port mappings on Windows,
    #   so you cannot access a container's mapped port from the host
    #   itself.
    #
    #   This parameter maps to `PortBindings` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--publish` option to
    #   [docker run][3]. If the network mode of a task definition is set to
    #   `none`, then you can't specify port mappings. If the network mode
    #   of a task definition is set to `host`, then host ports must either
    #   be undefined or they must match the container port in the port
    #   mapping.
    #
    #   <note markdown="1"> After a task reaches the `RUNNING` status, manual and automatic host
    #   and container port assignments are visible in the **Network
    #   Bindings** section of a container description for a selected task in
    #   the Amazon ECS console. The assignments are also visible in the
    #   `networkBindings` section DescribeTasks responses.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::PortMapping>]
    #
    # @!attribute [rw] essential
    #   If the `essential` parameter of a container is marked as `true`, and
    #   that container fails or stops for any reason, all other containers
    #   that are part of the task are stopped. If the `essential` parameter
    #   of a container is marked as `false`, then its failure does not
    #   affect the rest of the containers in a task. If this parameter is
    #   omitted, a container is assumed to be essential.
    #
    #   All tasks must have at least one essential container. If you have an
    #   application that is composed of multiple containers, you should
    #   group containers that are used for a common purpose into components,
    #   and separate the different components into multiple task
    #   definitions. For more information, see [Application Architecture][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html
    #   @return [Boolean]
    #
    # @!attribute [rw] entry_point
    #   Early versions of the Amazon ECS container agent do not properly
    #   handle `entryPoint` parameters. If you have problems using
    #   `entryPoint`, update your container agent or enter your commands and
    #   arguments as `command` array items instead.
    #
    #   The entry point that is passed to the container. This parameter maps
    #   to `Entrypoint` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--entrypoint` option to [docker
    #   run][3]. For more information, see
    #   [https://docs.docker.com/engine/reference/builder/#entrypoint][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#entrypoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   The command that is passed to the container. This parameter maps to
    #   `Cmd` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `COMMAND` parameter to [docker run][3]. For more
    #   information, see
    #   [https://docs.docker.com/engine/reference/builder/#cmd][4]. If there
    #   are multiple arguments, each argument should be a separated string
    #   in the array.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#cmd
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container. This parameter
    #   maps to `Env` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--env` option to [docker run][3].
    #
    #   We do not recommend using plaintext environment variables for
    #   sensitive information, such as credential data.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container. This parameter maps to the `--env-file` option to [docker
    #   run][1].
    #
    #   You can specify up to ten environment files. The file must have a
    #   `.env` file extension. Each line in an environment file should
    #   contain an environment variable in `VARIABLE=VALUE` format. Lines
    #   beginning with `#` are treated as comments and are ignored. For more
    #   information on the environment variable file syntax, see [Declare
    #   default environment variables in file][2].
    #
    #   If there are environment variables specified using the `environment`
    #   parameter in a container definition, they take precedence over the
    #   variables contained within an environment file. If multiple
    #   environment files are specified that contain the same variable, they
    #   are processed from the top down. It is recommended to use unique
    #   variable names. For more information, see [Specifying Environment
    #   Variables][3] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   This field is not valid for containers in tasks using the Fargate
    #   launch type.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   [2]: https://docs.docker.com/compose/env-file/
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html
    #   @return [Array<Types::EnvironmentFile>]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container.
    #
    #   This parameter maps to `Volumes` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--volume` option to
    #   [docker run][3].
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers cannot mount directories on a
    #   different drive, and mount point cannot be across drives.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::MountPoint>]
    #
    # @!attribute [rw] volumes_from
    #   Data volumes to mount from another container. This parameter maps to
    #   `VolumesFrom` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--volumes-from` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::VolumeFrom>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the container, such
    #   as Linux kernel capabilities. For more information see
    #   KernelCapabilities.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
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
    #   container can contain multiple dependencies. When a dependency is
    #   defined for container startup, for container shutdown it is
    #   reversed.
    #
    #   For tasks using the EC2 launch type, the container instances require
    #   at least version 1.26.0 of the container agent to enable container
    #   dependencies. However, we recommend using the latest container agent
    #   version. For information about checking your agent version and
    #   updating to the latest version, see [Updating the Amazon ECS
    #   Container Agent][1] in the *Amazon Elastic Container Service
    #   Developer Guide*. If you are using an Amazon ECS-optimized Linux
    #   AMI, your instance needs at least version 1.26.0-1 of the `ecs-init`
    #   package. If your container instances are launched from version
    #   `20190301` or later, then they contain the required versions of the
    #   container agent and `ecs-init`. For more information, see [Amazon
    #   ECS-optimized Linux AMI][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   For tasks using the Fargate launch type, the task or service
    #   requires platform version `1.3.0` or later.
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
    #   If a `startTimeout` value is specified for containerB and it does
    #   not reach the desired status within that time then containerA will
    #   give up and not start. This results in the task transitioning to a
    #   `STOPPED` state.
    #
    #   For tasks using the Fargate launch type, this parameter requires
    #   that the task or service uses platform version 1.3.0 or later. If
    #   this parameter is not specified, the default value of 3 minutes is
    #   used.
    #
    #   For tasks using the EC2 launch type, if the `startTimeout` parameter
    #   is not specified, the value set for the Amazon ECS container agent
    #   configuration variable `ECS_CONTAINER_START_TIMEOUT` is used by
    #   default. If neither the `startTimeout` parameter or the
    #   `ECS_CONTAINER_START_TIMEOUT` agent configuration variable are set,
    #   then the default values of 3 minutes for Linux containers and 8
    #   minutes on Windows containers are used. Your container instances
    #   require at least version 1.26.0 of the container agent to enable a
    #   container start timeout value. However, we recommend using the
    #   latest container agent version. For information about checking your
    #   agent version and updating to the latest version, see [Updating the
    #   Amazon ECS Container Agent][1] in the *Amazon Elastic Container
    #   Service Developer Guide*. If you are using an Amazon ECS-optimized
    #   Linux AMI, your instance needs at least version 1.26.0-1 of the
    #   `ecs-init` package. If your container instances are launched from
    #   version `20190301` or later, then they contain the required versions
    #   of the container agent and `ecs-init`. For more information, see
    #   [Amazon ECS-optimized Linux AMI][2] in the *Amazon Elastic Container
    #   Service Developer Guide*.
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
    #   requires platform version 1.3.0 or later. The max stop timeout value
    #   is 120 seconds and if the parameter is not specified, the default
    #   value of 30 seconds is used.
    #
    #   For tasks using the EC2 launch type, if the `stopTimeout` parameter
    #   is not specified, the value set for the Amazon ECS container agent
    #   configuration variable `ECS_CONTAINER_STOP_TIMEOUT` is used by
    #   default. If neither the `stopTimeout` parameter or the
    #   `ECS_CONTAINER_STOP_TIMEOUT` agent configuration variable are set,
    #   then the default values of 30 seconds for Linux containers and 30
    #   seconds on Windows containers are used. Your container instances
    #   require at least version 1.26.0 of the container agent to enable a
    #   container stop timeout value. However, we recommend using the latest
    #   container agent version. For information about checking your agent
    #   version and updating to the latest version, see [Updating the Amazon
    #   ECS Container Agent][1] in the *Amazon Elastic Container Service
    #   Developer Guide*. If you are using an Amazon ECS-optimized Linux
    #   AMI, your instance needs at least version 1.26.0-1 of the `ecs-init`
    #   package. If your container instances are launched from version
    #   `20190301` or later, then they contain the required versions of the
    #   container agent and `ecs-init`. For more information, see [Amazon
    #   ECS-optimized Linux AMI][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Integer]
    #
    # @!attribute [rw] hostname
    #   The hostname to use for your container. This parameter maps to
    #   `Hostname` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--hostname` option to [docker run][3].
    #
    #   <note markdown="1"> The `hostname` parameter is not supported if you are using the
    #   `awsvpc` network mode.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user name to use inside the container. This parameter maps to
    #   `User` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `--user` option to [docker run][3].
    #
    #   You can use the following formats. If specifying a UID or GID, you
    #   must specify it as a positive integer.
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The working directory in which to run commands inside the container.
    #   This parameter maps to `WorkingDir` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--workdir` option to
    #   [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] disable_networking
    #   When this parameter is true, networking is disabled within the
    #   container. This parameter maps to `NetworkDisabled` in the [Create a
    #   container][1] section of the [Docker Remote API][2].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   @return [Boolean]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   privileges on the host container instance (similar to the `root`
    #   user). This parameter maps to `Privileged` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--privileged` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   When this parameter is true, the container is given read-only access
    #   to its root file system. This parameter maps to `ReadonlyRootfs` in
    #   the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--read-only` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_servers
    #   A list of DNS servers that are presented to the container. This
    #   parameter maps to `Dns` in the [Create a container][1] section of
    #   the [Docker Remote API][2] and the `--dns` option to [docker
    #   run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_search_domains
    #   A list of DNS search domains that are presented to the container.
    #   This parameter maps to `DnsSearch` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--dns-search` option
    #   to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] extra_hosts
    #   A list of hostnames and IP address mappings to append to the
    #   `/etc/hosts` file on the container. This parameter maps to
    #   `ExtraHosts` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--add-host` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks that
    #   use the `awsvpc` network mode.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::HostEntry>]
    #
    # @!attribute [rw] docker_security_options
    #   A list of strings to provide custom labels for SELinux and AppArmor
    #   multi-level security systems. This field is not valid for containers
    #   in tasks using the Fargate launch type.
    #
    #   With Windows containers, this parameter can be used to reference a
    #   credential spec file when configuring a container for Active
    #   Directory authentication. For more information, see [Using gMSAs for
    #   Windows Containers][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   This parameter maps to `SecurityOpt` in the [Create a container][2]
    #   section of the [Docker Remote API][3] and the `--security-opt`
    #   option to [docker run][4].
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register with the `ECS_SELINUX_CAPABLE=true` or
    #   `ECS_APPARMOR_CAPABLE=true` environment variables before containers
    #   placed on that instance can use these security options. For more
    #   information, see [Amazon ECS Container Agent Configuration][5] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html
    #   [2]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [3]: https://docs.docker.com/engine/api/v1.35/
    #   [4]: https://docs.docker.com/engine/reference/run/
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] interactive
    #   When this parameter is `true`, this allows you to deploy
    #   containerized applications that require `stdin` or a `tty` to be
    #   allocated. This parameter maps to `OpenStdin` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--interactive` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] pseudo_terminal
    #   When this parameter is `true`, a TTY is allocated. This parameter
    #   maps to `Tty` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--tty` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] docker_labels
    #   A key/value map of labels to add to the container. This parameter
    #   maps to `Labels` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--label` option to [docker run][3].
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '\{\{.Server.APIVersion\}\}'`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimits` to set in the container. If a ulimit value is
    #   specified in a task definition, it will override the default values
    #   set by Docker. This parameter maps to `Ulimits` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--ulimit` option to [docker run][3]. Valid naming values are
    #   displayed in the Ulimit data type. This parameter requires version
    #   1.18 of the Docker Remote API or greater on your container instance.
    #   To check the Docker Remote API version on your container instance,
    #   log in to your container instance and run the following command:
    #   `sudo docker version --format '\{\{.Server.APIVersion\}\}'`
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   This parameter maps to `LogConfig` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--log-driver` option
    #   to [docker run][3]. By default, containers use the same logging
    #   driver that the Docker daemon uses. However the container may use a
    #   different logging driver than the Docker daemon by specifying a log
    #   driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information on the
    #   options for different supported log drivers, see [Configure logging
    #   drivers][4] in the Docker documentation.
    #
    #   <note markdown="1"> Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the LogConfiguration data
    #   type). Additional log drivers may be available in future releases of
    #   the Amazon ECS container agent.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '\{\{.Server.APIVersion\}\}'`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS Container Agent
    #   Configuration][5] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/admin/logging/overview/
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] health_check
    #   The container health check command and associated configuration
    #   parameters for the container. This parameter maps to `HealthCheck`
    #   in the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `HEALTHCHECK` parameter of [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Types::HealthCheck]
    #
    # @!attribute [rw] system_controls
    #   A list of namespaced kernel parameters to set in the container. This
    #   parameter maps to `Sysctls` in the [Create a container][1] section
    #   of the [Docker Remote API][2] and the `--sysctl` option to [docker
    #   run][3].
    #
    #   <note markdown="1"> It is not recommended that you specify network-related
    #   `systemControls` parameters for multiple containers in a single task
    #   that also uses either the `awsvpc` or `host` network modes. For
    #   tasks that use the `awsvpc` network mode, the container that is
    #   started last determines which `systemControls` parameters take
    #   effect. For tasks that use the `host` network mode, it changes the
    #   container instance's namespaced kernel parameters as well as the
    #   containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
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
      :firelens_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dependencies defined for container startup and shutdown. A
    # container can contain multiple dependencies. When a dependency is
    # defined for container startup, for container shutdown it is reversed.
    #
    # Your Amazon ECS container instances require at least version 1.26.0 of
    # the container agent to enable container dependencies. However, we
    # recommend using the latest container agent version. For information
    # about checking your agent version and updating to the latest version,
    # see [Updating the Amazon ECS Container Agent][1] in the *Amazon
    # Elastic Container Service Developer Guide*. If you are using an Amazon
    # ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1
    # of the `ecs-init` package. If your container instances are launched
    # from version `20190301` or later, then they contain the required
    # versions of the container agent and `ecs-init`. For more information,
    # see [Amazon ECS-optimized Linux AMI][2] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # <note markdown="1"> For tasks using the Fargate launch type, this parameter requires that
    # the task or service uses platform version 1.3.0 or later.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #
    # @note When making an API call, you may pass ContainerDependency
    #   data as a hash:
    #
    #       {
    #         container_name: "String", # required
    #         condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #       }
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
    #     script and then exit.
    #
    #   * `SUCCESS` - This condition is the same as `COMPLETE`, but it also
    #     requires that the container exits with a `zero` status.
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

    # An EC2 instance that is running the Amazon ECS agent and has been
    # registered with a cluster.
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the container instance. The ARN
    #   contains the `arn:aws:ecs` namespace, followed by the Region of the
    #   container instance, the AWS account ID of the container instance
    #   owner, the `container-instance` namespace, and then the container
    #   instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID`.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The EC2 instance ID of the container instance.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_name
    #   The capacity provider associated with the container instance.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version counter for the container instance. Every time a
    #   container instance experiences a change that triggers a CloudWatch
    #   event, the version counter is incremented. If you are replicating
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
    #   remaining CPU and memory that has not already been allocated to
    #   tasks and is therefore available for new tasks. For port resource
    #   types, this parameter describes the ports that were reserved by the
    #   Amazon ECS container agent (at instance registration time) and any
    #   task containers that have reserved port mappings on the host (with
    #   the `host` or `bridge` network mode). Any port that is not specified
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
    #   tasks. The `DRAINING` indicates that new tasks are not placed on the
    #   container instance and any service tasks running on the container
    #   instance are removed if possible. For more information, see
    #   [Container Instance Draining][1] in the *Amazon Elastic Container
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
    #   ECS. Registered instances with an agent that may be unhealthy or
    #   stopped return `false`. Only instances connected to an agent can
    #   accept placement requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] running_tasks_count
    #   The number of tasks on the container instance that are in the
    #   `RUNNING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_tasks_count
    #   The number of tasks on the container instance that are in the
    #   `PENDING` status.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_update_status
    #   The status of the most recent agent update. If an update has never
    #   been requested, this value is `NULL`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes set for the container instance, either by the Amazon
    #   ECS container agent at instance registration or manually with the
    #   PutAttributes operation.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] registered_at
    #   The Unix timestamp for when the container instance was registered.
    #   @return [Time]
    #
    # @!attribute [rw] attachments
    #   The resources attached to a container instance, such as elastic
    #   network interfaces.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the container instance to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that should be sent to a container. An empty container
    # override can be passed in. An example of an empty container override
    # would be `\{"containerOverrides": [ ] \}`. If a non-empty container
    # override is specified, the `name` parameter must be included.
    #
    # @note When making an API call, you may pass ContainerOverride
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         environment_files: [
    #           {
    #             value: "String", # required
    #             type: "s3", # required, accepts s3
    #           },
    #         ],
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU", # required, accepts GPU, InferenceAccelerator
    #           },
    #         ],
    #       }
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

    # An object representing a change in state for a container.
    #
    # @note When making an API call, you may pass ContainerStateChange
    #   data as a hash:
    #
    #       {
    #         container_name: "String",
    #         image_digest: "String",
    #         runtime_id: "String",
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #         reason: "String",
    #         status: "String",
    #       }
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
    #   Any network bindings associated with the container.
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

    # @note When making an API call, you may pass CreateCapacityProviderRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         auto_scaling_group_provider: { # required
    #           auto_scaling_group_arn: "String", # required
    #           managed_scaling: {
    #             status: "ENABLED", # accepts ENABLED, DISABLED
    #             target_capacity: 1,
    #             minimum_scaling_step_size: 1,
    #             maximum_scaling_step_size: 1,
    #           },
    #           managed_termination_protection: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the capacity provider. Up to 255 characters are allowed,
    #   including letters (upper and lowercase), numbers, underscores, and
    #   hyphens. The name cannot be prefixed with "`aws`", "`ecs`", or
    #   "`fargate`".
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_provider
    #   The details of the Auto Scaling group for the capacity provider.
    #   @return [Types::AutoScalingGroupProvider]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the capacity provider to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCapacityProviderRequest AWS API Documentation
    #
    class CreateCapacityProviderRequest < Struct.new(
      :name,
      :auto_scaling_group_provider,
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

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         settings: [
    #           {
    #             name: "containerInsights", # accepts containerInsights
    #             value: "String",
    #           },
    #         ],
    #         capacity_providers: ["String"],
    #         default_capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of your cluster. If you do not specify a name for your
    #   cluster, you create a cluster named `default`. Up to 255 letters
    #   (uppercase and lowercase), numbers, and hyphens are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the cluster to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] settings
    #   The setting to use when creating a cluster. This parameter is used
    #   to enable CloudWatch Container Insights for a cluster. If this value
    #   is specified, it will override the `containerInsights` value set
    #   with PutAccountSetting or PutAccountSettingDefault.
    #   @return [Array<Types::ClusterSetting>]
    #
    # @!attribute [rw] capacity_providers
    #   The short name of one or more capacity providers to associate with
    #   the cluster.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created and not already
    #   associated with another cluster. New capacity providers can be
    #   created with the CreateCapacityProvider API operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
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
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   If a default capacity provider strategy is not defined for a cluster
    #   during creation, it can be defined later with the
    #   PutClusterCapacityProviders API operation.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :tags,
      :settings,
      :capacity_providers,
      :default_capacity_provider_strategy)
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

    # @note When making an API call, you may pass CreateServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service_name: "String", # required
    #         task_definition: "String",
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         desired_count: 1,
    #         client_token: "String",
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         platform_version: "String",
    #         role: "String",
    #         deployment_configuration: {
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #         },
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "String",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "String",
    #           },
    #         ],
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         health_check_grace_period_seconds: 1,
    #         scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #         deployment_controller: {
    #           type: "ECS", # required, accepts ECS, CODE_DEPLOY, EXTERNAL
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your service. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, and hyphens are allowed. Service names must be
    #   unique within a cluster, but you can have similarly named services
    #   in multiple clusters within a Region or across multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used.
    #
    #   A task definition must be specified if the service is using the
    #   `ECS` deployment controller.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A load balancer object representing the load balancers to use with
    #   your service. For more information, see [Service Load Balancing][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the service is using the rolling update (`ECS`) deployment
    #   controller and using either an Application Load Balancer or Network
    #   Load Balancer, you can specify multiple target groups to attach to
    #   the service. The service-linked role is required for services that
    #   make use of multiple target groups. For more information, see [Using
    #   Service-Linked Roles for Amazon ECS][2] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If the service is using the `CODE_DEPLOY` deployment controller, the
    #   service is required to use either an Application Load Balancer or
    #   Network Load Balancer. When creating an AWS CodeDeploy deployment
    #   group, you specify two target groups (referred to as a
    #   `targetGroupPair`). During a deployment, AWS CodeDeploy determines
    #   which task set in your service has the status `PRIMARY` and
    #   associates one target group with it, and then associates the other
    #   target group with the replacement task set. The load balancer can
    #   also have up to two listeners: a required listener for production
    #   traffic and an optional listener that allows you perform validation
    #   tests with Lambda functions before routing production traffic to it.
    #
    #   After you create a service using the `ECS` deployment controller,
    #   the load balancer name or target group ARN, container name, and
    #   container port specified in the service definition are immutable. If
    #   you are using the `CODE_DEPLOY` deployment controller, these values
    #   can be changed when updating the service.
    #
    #   For Application Load Balancers and Network Load Balancers, this
    #   object must contain the load balancer target group ARN, the
    #   container name (as it appears in a container definition), and the
    #   container port to access from the load balancer. When a task from
    #   this service is placed on a container instance, the container
    #   instance and port combination is registered as a target in the
    #   target group specified here.
    #
    #   For Classic Load Balancers, this object must contain the load
    #   balancer name, the container name (as it appears in a container
    #   definition), and the container port to access from the load
    #   balancer. When a task from this service is placed on a container
    #   instance, the container instance is registered with the load
    #   balancer specified here.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers. Classic Load Balancers are not
    #   supported. Also, when you create any target groups for these
    #   services, you must choose `ip` as the target type, not `instance`,
    #   because tasks that use the `awsvpc` network mode are associated with
    #   an elastic network interface, not an Amazon EC2 instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][1].
    #
    #   <note markdown="1"> Service discovery is supported for Fargate tasks if you are using
    #   platform version v1.1.0 or later. For more information, see [AWS
    #   Fargate Platform Versions][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the specified task definition to
    #   place and keep running on your cluster.
    #
    #   This is required if `schedulingStrategy` is `REPLICA` or is not
    #   specified. If `schedulingStrategy` is `DAEMON` then this is not
    #   required.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 32 ASCII characters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which to run your service. For more information,
    #   see [Amazon ECS Launch Types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
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
    #   The capacity provider strategy to use for the service.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version that your tasks in the service are running on.
    #   A platform version is specified only for tasks using the Fargate
    #   launch type. If one isn't specified, the `LATEST` platform version
    #   is used by default. For more information, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
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
    #   balancer with your service and your task definition does not use the
    #   `awsvpc` network mode. If you specify the `role` parameter, you must
    #   also specify a load balancer object with the `loadBalancers`
    #   parameter.
    #
    #   If your account has already created the Amazon ECS service-linked
    #   role, that role is used by default for your service unless you
    #   specify a role here. The service-linked role is required if your
    #   task definition uses the `awsvpc` network mode or if the service is
    #   configured to use service discovery, an external deployment
    #   controller, multiple target groups, or Elastic Inference
    #   accelerators in which case you should not specify a role here. For
    #   more information, see [Using Service-Linked Roles for Amazon ECS][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (this is recommended) or prefix the
    #   role name with the path. For example, if a role with the name `bar`
    #   has a path of `/foo/` then you would specify `/foo/bar` as the role
    #   name. For more information, see [Friendly Names and Paths][2] in the
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
    #   service. You can specify a maximum of 10 constraints per task (this
    #   limit includes constraints in the task definition and those
    #   specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for tasks in your service. You
    #   can specify a maximum of five strategy rules per service.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the service. This parameter is
    #   required for task definitions that use the `awsvpc` network mode to
    #   receive their own elastic network interface, and it is not supported
    #   for other network modes. For more information, see [Task
    #   Networking][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler should ignore unhealthy Elastic Load Balancing target
    #   health checks after a task has first started. This is only used when
    #   your service is configured to use a load balancer. If your service
    #   has a load balancer defined and you don't specify a health check
    #   grace period value, the default value of `0` is used.
    #
    #   If your service's tasks take a while to start and respond to
    #   Elastic Load Balancing health checks, you can specify a health check
    #   grace period of up to 2,147,483,647 seconds. During that time, the
    #   Amazon ECS service scheduler ignores health check status. This grace
    #   period can prevent the service scheduler from marking tasks as
    #   unhealthy and stopping them before they have time to come up.
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
    #     service is using the `CODE_DEPLOY` or `EXTERNAL` deployment
    #     controller types.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each active container instance that meets all of the task
    #     placement constraints that you specify in your cluster. The
    #     service scheduler also evaluates the task placement constraints
    #     for running tasks and will stop tasks that do not meet the
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
    #   The deployment controller to use for the service.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the tasks
    #   within the service. For more information, see [Tagging Your Amazon
    #   ECS Resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition or
    #   the service to the tasks in the service. If no value is specified,
    #   the tags are not propagated. Tags can only be propagated to the
    #   tasks within the service during service creation. To add tags to a
    #   task after service creation, use the TagResource API action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :cluster,
      :service_name,
      :task_definition,
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
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The full description of your service following the create call.
    #
    #   If a service is using the `ECS` deployment controller, the
    #   `deploymentController` and `taskSets` parameters will not be
    #   returned.
    #
    #   If the service is using the `CODE_DEPLOY` deployment controller, the
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

    # @note When making an API call, you may pass CreateTaskSetRequest
    #   data as a hash:
    #
    #       {
    #         service: "String", # required
    #         cluster: "String", # required
    #         external_id: "String",
    #         task_definition: "String", # required
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1,
    #           },
    #         ],
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         platform_version: "String",
    #         scale: {
    #           value: 1.0,
    #           unit: "PERCENT", # accepts PERCENT
    #         },
    #         client_token: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
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
    #   `ECS_TASK_SET_EXTERNAL_ID` AWS Cloud Map attribute set to the
    #   provided value.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition for the tasks in the task set to use.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   An object representing the network configuration for a task or
    #   service.
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
    #   task set. For more information, see [Service Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] launch_type
    #   The launch type that new tasks in the task set will use. For more
    #   information, see [Amazon ECS Launch Types][1] in the *Amazon Elastic
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
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version that the tasks in the task set should use. A
    #   platform version is specified only for tasks using the Fargate
    #   launch type. If one isn't specified, the `LATEST` platform version
    #   is used by default.
    #   @return [String]
    #
    # @!attribute [rw] scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #   @return [Types::Scale]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 32 ASCII characters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task set to help you categorize
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
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
    #   Information about a set of Amazon ECS tasks in either an AWS
    #   CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    #   includes details such as the desired number of tasks, how many tasks
    #   are running, and whether the task set serves production traffic.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateTaskSetResponse AWS API Documentation
    #
    class CreateTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountSettingRequest
    #   data as a hash:
    #
    #       {
    #         name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights
    #         principal_arn: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The resource name for which to disable the account setting. If
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
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. If you specify the root user, it disables the account
    #   setting for all IAM users, IAM roles, and the root user of the
    #   account unless an IAM user or role explicitly overrides these
    #   settings. If this field is omitted, the setting is changed only for
    #   the authenticated user.
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

    # @note When making an API call, you may pass DeleteAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to delete attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to delete from your resource. You can specify up to
    #   10 attributes per request. For custom attributes, specify the
    #   attribute name and target ID, but do not specify the value. If you
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

    # @note When making an API call, you may pass DeleteCapacityProviderRequest
    #   data as a hash:
    #
    #       {
    #         capacity_provider: "String", # required
    #       }
    #
    # @!attribute [rw] capacity_provider
    #   The short name or full Amazon Resource Name (ARN) of the capacity
    #   provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProviderRequest AWS API Documentation
    #
    class DeleteCapacityProviderRequest < Struct.new(
      :capacity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider
    #   The details of a capacity provider.
    #   @return [Types::CapacityProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProviderResponse AWS API Documentation
    #
    class DeleteCapacityProviderResponse < Struct.new(
      :capacity_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service: "String", # required
    #         force: false,
    #       }
    #
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
    #   If `true`, allows you to delete a service even if it has not been
    #   scaled down to zero tasks. It is only necessary to use this if the
    #   service is using the `REPLICA` scheduling strategy.
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

    # @note When making an API call, you may pass DeleteTaskSetRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         service: "String", # required
    #         task_set: "String", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the service that the task set exists in to delete.
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
    #   If `true`, this allows you to delete a task set even if it hasn't
    #   been scaled down to zero.
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
    #   Information about a set of Amazon ECS tasks in either an AWS
    #   CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    #   includes details such as the desired number of tasks, how many tasks
    #   are running, and whether the task set serves production traffic.
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
    #   The status of the deployment. The following describes each state:
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
    # @!attribute [rw] created_at
    #   The Unix timestamp for when the service deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp for when the service deployment was last updated.
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
    #   The platform version on which your tasks in the service are running.
    #   A platform version is only specified for tasks using the Fargate
    #   launch type. If one is not specified, the `LATEST` platform version
    #   is used by default. For more information, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC subnet and security group configuration for tasks that
    #   receive their own elastic network interface by using the `awsvpc`
    #   networking mode.
    #   @return [Types::NetworkConfiguration]
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
      :created_at,
      :updated_at,
      :capacity_provider_strategy,
      :launch_type,
      :platform_version,
      :network_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional deployment parameters that control how many tasks run during
    # a deployment and the ordering of stopping and starting tasks.
    #
    # @note When making an API call, you may pass DeploymentConfiguration
    #   data as a hash:
    #
    #       {
    #         maximum_percent: 1,
    #         minimum_healthy_percent: 1,
    #       }
    #
    # @!attribute [rw] maximum_percent
    #   If a service is using the rolling update (`ECS`) deployment type,
    #   the **maximum percent** parameter represents an upper limit on the
    #   number of tasks in a service that are allowed in the `RUNNING` or
    #   `PENDING` state during a deployment, as a percentage of the desired
    #   number of tasks (rounded down to the nearest integer), and while any
    #   container instances are in the `DRAINING` state if the service
    #   contains tasks using the EC2 launch type. This parameter enables you
    #   to define the deployment batch size. For example, if your service
    #   has a desired number of four tasks and a maximum percent value of
    #   200%, the scheduler may start four new tasks before stopping the
    #   four older tasks (provided that the cluster resources required to do
    #   this are available). The default value for maximum percent is 200%.
    #
    #   If a service is using the blue/green (`CODE_DEPLOY`) or `EXTERNAL`
    #   deployment types and tasks that use the EC2 launch type, the
    #   **maximum percent** value is set to the default value and is used to
    #   define the upper limit on the number of the tasks in the service
    #   that remain in the `RUNNING` state while the container instances are
    #   in the `DRAINING` state. If the tasks in the service use the Fargate
    #   launch type, the maximum percent value is not used, although it is
    #   returned when describing your service.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_healthy_percent
    #   If a service is using the rolling update (`ECS`) deployment type,
    #   the **minimum healthy percent** represents a lower limit on the
    #   number of tasks in a service that must remain in the `RUNNING` state
    #   during a deployment, as a percentage of the desired number of tasks
    #   (rounded up to the nearest integer), and while any container
    #   instances are in the `DRAINING` state if the service contains tasks
    #   using the EC2 launch type. This parameter enables you to deploy
    #   without using additional cluster capacity. For example, if your
    #   service has a desired number of four tasks and a minimum healthy
    #   percent of 50%, the scheduler may stop two existing tasks to free up
    #   cluster capacity before starting two new tasks. Tasks for services
    #   that *do not* use a load balancer are considered healthy if they are
    #   in the `RUNNING` state; tasks for services that *do* use a load
    #   balancer are considered healthy if they are in the `RUNNING` state
    #   and they are reported as healthy by the load balancer. The default
    #   value for minimum healthy percent is 100%.
    #
    #   If a service is using the blue/green (`CODE_DEPLOY`) or `EXTERNAL`
    #   deployment types and tasks that use the EC2 launch type, the
    #   **minimum healthy percent** value is set to the default value and is
    #   used to define the lower limit on the number of the tasks in the
    #   service that remain in the `RUNNING` state while the container
    #   instances are in the `DRAINING` state. If the tasks in the service
    #   use the Fargate launch type, the minimum healthy percent value is
    #   not used, although it is returned when describing your service.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :maximum_percent,
      :minimum_healthy_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment controller to use for the service. For more
    # information, see [Amazon ECS Deployment Types][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @note When making an API call, you may pass DeploymentController
    #   data as a hash:
    #
    #       {
    #         type: "ECS", # required, accepts ECS, CODE_DEPLOY, EXTERNAL
    #       }
    #
    # @!attribute [rw] type
    #   The deployment controller type to use.
    #
    #   There are three deployment controller types available:
    #
    #   ECS
    #
    #   : The rolling update (`ECS`) deployment type involves replacing the
    #     current running version of the container with the latest version.
    #     The number of containers Amazon ECS adds or removes from the
    #     service during a rolling update is controlled by adjusting the
    #     minimum and maximum number of healthy tasks allowed during a
    #     service deployment, as specified in the DeploymentConfiguration.
    #
    #   CODE\_DEPLOY
    #
    #   : The blue/green (`CODE_DEPLOY`) deployment type uses the blue/green
    #     deployment model powered by AWS CodeDeploy, which allows you to
    #     verify a new deployment of a service before sending production
    #     traffic to it.
    #
    #   EXTERNAL
    #
    #   : The external (`EXTERNAL`) deployment type enables you to use any
    #     third-party deployment controller for full control over the
    #     deployment process for an Amazon ECS service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentController AWS API Documentation
    #
    class DeploymentController < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterContainerInstanceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to deregister. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance to
    #   deregister. The ARN contains the `arn:aws:ecs` namespace, followed
    #   by the Region of the container instance, the AWS account ID of the
    #   container instance owner, the `container-instance` namespace, and
    #   then the container instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID`.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces the deregistration of the container instance. If you have
    #   tasks running on the container instance when you deregister it with
    #   the `force` option, these tasks remain running until you terminate
    #   the instance or the tasks stop through some other means, but they
    #   are orphaned (no longer monitored or accounted for by Amazon ECS).
    #   If an orphaned task on your container instance is part of an Amazon
    #   ECS service, then the service scheduler starts another copy of that
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

    # @note When making an API call, you may pass DeregisterTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         task_definition: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeCapacityProvidersRequest
    #   data as a hash:
    #
    #       {
    #         capacity_providers: ["String"],
    #         include: ["TAGS"], # accepts TAGS
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] capacity_providers
    #   The short name or full Amazon Resource Name (ARN) of one or more
    #   capacity providers. Up to `100` capacity providers can be described
    #   in an action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Specifies whether or not you want to see the resource tags for the
    #   capacity provider. If `TAGS` is specified, the tags are included in
    #   the response. If this field is omitted, tags are not included in the
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

    # @note When making an API call, you may pass DescribeClustersRequest
    #   data as a hash:
    #
    #       {
    #         clusters: ["String"],
    #         include: ["ATTACHMENTS"], # accepts ATTACHMENTS, SETTINGS, STATISTICS, TAGS
    #       }
    #
    # @!attribute [rw] clusters
    #   A list of up to 100 cluster names or full cluster Amazon Resource
    #   Name (ARN) entries. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Whether to include additional information about your clusters in the
    #   response. If this field is omitted, the attachments, statistics, and
    #   tags are not included.
    #
    #   If `ATTACHMENTS` is specified, the attachments for the container
    #   instances or tasks within the cluster are included.
    #
    #   If `SETTINGS` is specified, the settings for the cluster are
    #   included.
    #
    #   If `STATISTICS` is specified, the following additional information,
    #   separated by launch type, is included:
    #
    #   * runningEC2TasksCount
    #
    #   * runningFargateTasksCount
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

    # @note When making an API call, you may pass DescribeContainerInstancesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instances: ["String"], # required
    #         include: ["TAGS"], # accepts TAGS
    #       }
    #
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
    #   the response. If this field is omitted, tags are not included in the
    #   response.
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

    # @note When making an API call, you may pass DescribeServicesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         services: ["String"], # required
    #         include: ["TAGS"], # accepts TAGS
    #       }
    #
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
    #   Specifies whether you want to see the resource tags for the service.
    #   If `TAGS` is specified, the tags are included in the response. If
    #   this field is omitted, tags are not included in the response.
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

    # @note When making an API call, you may pass DescribeTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         task_definition: "String", # required
    #         include: ["TAGS"], # accepts TAGS
    #       }
    #
    # @!attribute [rw] task_definition
    #   The `family` for the latest `ACTIVE` revision, `family` and
    #   `revision` (`family:revision`) for a specific revision in the
    #   family, or full Amazon Resource Name (ARN) of the task definition to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] include
    #   Specifies whether to see the resource tags for the task definition.
    #   If `TAGS` is specified, the tags are included in the response. If
    #   this field is omitted, tags are not included in the response.
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
    #   The metadata that is applied to the task definition to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
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

    # @note When making an API call, you may pass DescribeTaskSetsRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         service: "String", # required
    #         task_sets: ["String"],
    #         include: ["TAGS"], # accepts TAGS
    #       }
    #
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
    #   field is omitted, tags are not included in the response.
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

    # @note When making an API call, you may pass DescribeTasksRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         tasks: ["String"], # required
    #         include: ["TAGS"], # accepts TAGS
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task or tasks to describe. If you do not specify a
    #   cluster, the default cluster is assumed. This parameter is required
    #   if the task or tasks you are describing were launched in any cluster
    #   other than the default cluster.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include
    #   Specifies whether you want to see the resource tags for the task. If
    #   `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags are not included in the response.
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
    # @note When making an API call, you may pass Device
    #   data as a hash:
    #
    #       {
    #         host_path: "String", # required
    #         container_path: "String",
    #         permissions: ["read"], # accepts read, write, mknod
    #       }
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

    # @note When making an API call, you may pass DiscoverPollEndpointRequest
    #   data as a hash:
    #
    #       {
    #         container_instance: "String",
    #         cluster: "String",
    #       }
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance. The
    #   ARN contains the `arn:aws:ecs` namespace, followed by the Region of
    #   the container instance, the AWS account ID of the container instance
    #   owner, the `container-instance` namespace, and then the container
    #   instance ID. For example,
    #   `arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID`.
    #   @return [String]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   which the container instance belongs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpointResponse AWS API Documentation
    #
    class DiscoverPollEndpointResponse < Struct.new(
      :endpoint,
      :telemetry_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter is specified when you are using Docker volumes. Docker
    # volumes are only supported when you are using the EC2 launch type.
    # Windows containers only support the use of the `local` driver. To use
    # bind mounts, specify a `host` instead.
    #
    # @note When making an API call, you may pass DockerVolumeConfiguration
    #   data as a hash:
    #
    #       {
    #         scope: "task", # accepts task, shared
    #         autoprovision: false,
    #         driver: "String",
    #         driver_opts: {
    #           "String" => "String",
    #         },
    #         labels: {
    #           "String" => "String",
    #         },
    #       }
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
    #   If this value is `true`, the Docker volume is created if it does not
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
    #   method, use Docker plugin discovery to retrieve the driver name. For
    #   more information, see [Docker plugin discovery][1]. This parameter
    #   maps to `Driver` in the [Create a volume][2] section of the [Docker
    #   Remote API][3] and the `xxdriver` option to [docker volume
    #   create][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery
    #   [2]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [3]: https://docs.docker.com/engine/api/v1.35/
    #   [4]: https://docs.docker.com/engine/reference/commandline/volume_create/
    #   @return [String]
    #
    # @!attribute [rw] driver_opts
    #   A map of Docker driver-specific options passed through. This
    #   parameter maps to `DriverOpts` in the [Create a volume][1] section
    #   of the [Docker Remote API][2] and the `xxopt` option to [docker
    #   volume create][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/commandline/volume_create/
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] labels
    #   Custom metadata to add to your Docker volume. This parameter maps to
    #   `Labels` in the [Create a volume][1] section of the [Docker Remote
    #   API][2] and the `xxlabel` option to [docker volume create][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/commandline/volume_create/
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

    # The authorization configuration details for the Amazon EFS file
    # system.
    #
    # @note When making an API call, you may pass EFSAuthorizationConfig
    #   data as a hash:
    #
    #       {
    #         access_point_id: "String",
    #         iam: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] access_point_id
    #   The Amazon EFS access point ID to use. If an access point is
    #   specified, the root directory value specified in the
    #   `EFSVolumeConfiguration` will be relative to the directory set for
    #   the access point. If an access point is used, transit encryption
    #   must be enabled in the `EFSVolumeConfiguration`. For more
    #   information, see [Working with Amazon EFS Access Points][1] in the
    #   *Amazon Elastic File System User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Whether or not to use the Amazon ECS task IAM role defined in a task
    #   definition when mounting the Amazon EFS file system. If enabled,
    #   transit encryption must be enabled in the `EFSVolumeConfiguration`.
    #   If this parameter is omitted, the default value of `DISABLED` is
    #   used. For more information, see [Using Amazon EFS Access Points][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
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

    # This parameter is specified when you are using an Amazon Elastic File
    # System file system for task storage. For more information, see [Amazon
    # EFS Volumes][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html
    #
    # @note When making an API call, you may pass EFSVolumeConfiguration
    #   data as a hash:
    #
    #       {
    #         file_system_id: "String", # required
    #         root_directory: "String",
    #         transit_encryption: "ENABLED", # accepts ENABLED, DISABLED
    #         transit_encryption_port: 1,
    #         authorization_config: {
    #           access_point_id: "String",
    #           iam: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
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
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption
    #   Whether or not to enable encryption for Amazon EFS data in transit
    #   between the Amazon ECS host and the Amazon EFS server. Transit
    #   encryption must be enabled if Amazon EFS IAM authorization is used.
    #   If this parameter is omitted, the default value of `DISABLED` is
    #   used. For more information, see [Encrypting Data in Transit][1] in
    #   the *Amazon Elastic File System User Guide*.
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
    #   Amazon EFS mount helper uses. For more information, see [EFS Mount
    #   Helper][1] in the *Amazon Elastic File System User Guide*.
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
    # beginning with `#` are treated as comments and are ignored. For more
    # information on the environment variable file syntax, see [Declare
    # default environment variables in file][1].
    #
    # If there are environment variables specified using the `environment`
    # parameter in a container definition, they take precedence over the
    # variables contained within an environment file. If multiple
    # environment files are specified that contain the same variable, they
    # are processed from the top down. It is recommended to use unique
    # variable names. For more information, see [Specifying Environment
    # Variables][2] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # This field is not valid for containers in tasks using the Fargate
    # launch type.
    #
    #
    #
    # [1]: https://docs.docker.com/compose/env-file/
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html
    #
    # @note When making an API call, you may pass EnvironmentFile
    #   data as a hash:
    #
    #       {
    #         value: "String", # required
    #         type: "s3", # required, accepts s3
    #       }
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the Amazon S3 object containing
    #   the environment variable file.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The file type to use. The only supported value is `s3`.
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

    # A failed resource.
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
    # see [Custom Log Routing][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html
    #
    # @note When making an API call, you may pass FirelensConfiguration
    #   data as a hash:
    #
    #       {
    #         type: "fluentd", # required, accepts fluentd, fluentbit
    #         options: {
    #           "String" => "String",
    #         },
    #       }
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
    #   `"options":\{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"\}`.
    #   For more information, see [Creating a Task Definition that Uses a
    #   FireLens Configuration][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
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

    # An object representing a container health check. Health check
    # parameters that are specified in a container definition override any
    # Docker health checks that exist in the container image (such as those
    # specified in a parent image or from the image's Dockerfile).
    #
    # You can view the health status of both individual containers and a
    # task with the DescribeTasks API operation or when viewing the task
    # details in the console.
    #
    # The following describes the possible `healthStatus` values for a
    # container:
    #
    # * `HEALTHY`-The container health check has passed successfully.
    #
    # * `UNHEALTHY`-The container health check has failed.
    #
    # * `UNKNOWN`-The container health check is being evaluated or there is
    #   no container health check defined.
    #
    # The following describes the possible `healthStatus` values for a task.
    # The container health check status of nonessential containers do not
    # have an effect on the health status of a task.
    #
    # * `HEALTHY`-All essential containers within the task have passed their
    #   health checks.
    #
    # * `UNHEALTHY`-One or more essential containers have failed their
    #   health check.
    #
    # * `UNKNOWN`-The essential containers within the task are still having
    #   their health checks evaluated or there are no container health
    #   checks defined.
    #
    # If a task is run manually, and not as part of a service, the task will
    # continue its lifecycle regardless of its health status. For tasks that
    # are part of a service, if the task reports as unhealthy then the task
    # will be stopped and the service scheduler will replace it.
    #
    # The following are notes about container health check support:
    #
    # * Container health checks require version 1.17.0 or greater of the
    #   Amazon ECS container agent. For more information, see [Updating the
    #   Amazon ECS Container Agent][1].
    #
    # * Container health checks are supported for Fargate tasks if you are
    #   using platform version 1.1.0 or greater. For more information, see
    #   [AWS Fargate Platform Versions][2].
    #
    # * Container health checks are not supported for tasks that are part of
    #   a service that is configured to use a Classic Load Balancer.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @note When making an API call, you may pass HealthCheck
    #   data as a hash:
    #
    #       {
    #         command: ["String"], # required
    #         interval: 1,
    #         timeout: 1,
    #         retries: 1,
    #         start_period: 1,
    #       }
    #
    # @!attribute [rw] command
    #   A string array representing the command that the container runs to
    #   determine if it is healthy. The string array must start with `CMD`
    #   to execute the command arguments directly, or `CMD-SHELL` to run the
    #   command with the container's default shell. For example:
    #
    #   `[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]`
    #
    #   An exit code of 0 indicates success, and non-zero exit code
    #   indicates failure. For more information, see `HealthCheck` in the
    #   [Create a container][1] section of the [Docker Remote API][2].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   @return [Array<String>]
    #
    # @!attribute [rw] interval
    #   The time period in seconds between each health check execution. You
    #   may specify between 5 and 300 seconds. The default value is 30
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time period in seconds to wait for a health check to succeed
    #   before it is considered a failure. You may specify between 2 and 60
    #   seconds. The default value is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of times to retry a failed health check before the
    #   container is considered unhealthy. You may specify between 1 and 10
    #   retries. The default value is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] start_period
    #   The optional grace period within which to provide containers time to
    #   bootstrap before failed health checks count towards the maximum
    #   number of retries. You may specify between 0 and 300 seconds. The
    #   `startPeriod` is disabled by default.
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
    # ContainerDefinition.
    #
    # @note When making an API call, you may pass HostEntry
    #   data as a hash:
    #
    #       {
    #         hostname: "String", # required
    #         ip_address: "String", # required
    #       }
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
    # @note When making an API call, you may pass HostVolumeProperties
    #   data as a hash:
    #
    #       {
    #         source_path: "String",
    #       }
    #
    # @!attribute [rw] source_path
    #   When the `host` parameter is used, specify a `sourcePath` to declare
    #   the path on the host container instance that is presented to the
    #   container. If this parameter is empty, then the Docker daemon has
    #   assigned a host path for you. If the `host` parameter contains a
    #   `sourcePath` file location, then the data volume persists at the
    #   specified location on the host container instance until you delete
    #   it manually. If the `sourcePath` value does not exist on the host
    #   container instance, the Docker daemon creates it. If the location
    #   does exist, the contents of the source path folder are exported.
    #
    #   If you are using the Fargate launch type, the `sourcePath` parameter
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

    # Details on a Elastic Inference accelerator. For more information, see
    # [Working with Amazon Elastic Inference on Amazon ECS][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html
    #
    # @note When making an API call, you may pass InferenceAccelerator
    #   data as a hash:
    #
    #       {
    #         device_name: "String", # required
    #         device_type: "String", # required
    #       }
    #
    # @!attribute [rw] device_name
    #   The Elastic Inference accelerator device name. The `deviceName` must
    #   also be referenced in a container definition as a
    #   ResourceRequirement.
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
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html
    #
    # @note When making an API call, you may pass InferenceAcceleratorOverride
    #   data as a hash:
    #
    #       {
    #         device_name: "String",
    #         device_type: "String",
    #       }
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

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The Linux capabilities for the container that are added to or dropped
    # from the default configuration provided by Docker. For more
    # information on the default capabilities and the non-default available
    # capabilities, see [Runtime privilege and Linux capabilities][1] in the
    # *Docker run reference*. For more detailed information on these Linux
    # capabilities, see the [capabilities(7)][2] Linux manual page.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities
    # [2]: http://man7.org/linux/man-pages/man7/capabilities.7.html
    #
    # @note When making an API call, you may pass KernelCapabilities
    #   data as a hash:
    #
    #       {
    #         add: ["String"],
    #         drop: ["String"],
    #       }
    #
    # @!attribute [rw] add
    #   The Linux capabilities for the container that have been added to the
    #   default configuration provided by Docker. This parameter maps to
    #   `CapAdd` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cap-add` option to [docker run][3].
    #
    #   <note markdown="1"> The `SYS_PTRACE` capability is supported for tasks that use the
    #   Fargate launch type if they are also using platform version 1.4.0.
    #   The other capabilities are not supported for any platform versions.
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<String>]
    #
    # @!attribute [rw] drop
    #   The Linux capabilities for the container that have been removed from
    #   the default configuration provided by Docker. This parameter maps to
    #   `CapDrop` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cap-drop` option to [docker run][3].
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
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
    # @note When making an API call, you may pass KeyValuePair
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #       }
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

    # The limit for the resource has been exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # Linux-specific options that are applied to the container, such as
    # Linux KernelCapabilities.
    #
    # @note When making an API call, you may pass LinuxParameters
    #   data as a hash:
    #
    #       {
    #         capabilities: {
    #           add: ["String"],
    #           drop: ["String"],
    #         },
    #         devices: [
    #           {
    #             host_path: "String", # required
    #             container_path: "String",
    #             permissions: ["read"], # accepts read, write, mknod
    #           },
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: "String", # required
    #             size: 1, # required
    #             mount_options: ["String"],
    #           },
    #         ],
    #         max_swap: 1,
    #         swappiness: 1,
    #       }
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
    #   `Devices` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--device` option to [docker run][3].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `devices` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] init_process_enabled
    #   Run an `init` process inside the container that forwards signals and
    #   reaps processes. This parameter maps to the `--init` option to
    #   [docker run][1]. This parameter requires version 1.25 of the Docker
    #   Remote API or greater on your container instance. To check the
    #   Docker Remote API version on your container instance, log in to your
    #   container instance and run the following command: `sudo docker
    #   version --format '\{\{.Server.APIVersion\}\}'`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] shared_memory_size
    #   The value for the size (in MiB) of the `/dev/shm` volume. This
    #   parameter maps to the `--shm-size` option to [docker run][1].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `sharedMemorySize` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount. This parameter maps to the `--tmpfs` option to [docker
    #   run][1].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the `tmpfs`
    #   parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Tmpfs>]
    #
    # @!attribute [rw] max_swap
    #   The total amount of swap memory (in MiB) a container can use. This
    #   parameter will be translated to the `--memory-swap` option to
    #   [docker run][1] where the value would be the sum of the container
    #   memory plus the `maxSwap` value.
    #
    #   If a `maxSwap` value of `0` is specified, the container will not use
    #   swap. Accepted values are `0` or any positive integer. If the
    #   `maxSwap` parameter is omitted, the container will use the swap
    #   configuration for the container instance it is running on. A
    #   `maxSwap` value must be set for the `swappiness` parameter to be
    #   used.
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `maxSwap` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
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
    #   parameter maps to the `--memory-swappiness` option to [docker
    #   run][1].
    #
    #   <note markdown="1"> If you are using tasks that use the Fargate launch type, the
    #   `swappiness` parameter is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
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

    # @note When making an API call, you may pass ListAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         name: "serviceLongArnFormat", # accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights
    #         value: "String",
    #         principal_arn: "String",
    #         effective_settings: false,
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the account setting you want to list the settings for.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the account settings with which to filter results. You
    #   must also specify an account setting name to use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. If this field is omitted, the account settings are listed
    #   only for the authenticated user.
    #   @return [String]
    #
    # @!attribute [rw] effective_settings
    #   Specifies whether to return the effective settings. If `true`, the
    #   account settings for the root user or the default setting for the
    #   `principalArn` are returned. If `false`, the account settings for
    #   the `principalArn` are returned if they are set. Otherwise, no
    #   account settings are returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListAccountSettings` request
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
    #   The maximum number of account setting results returned by
    #   `ListAccountSettings` in paginated output. When this parameter is
    #   used, `ListAccountSettings` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListAccountSettings` request with the returned `nextToken` value.
    #   This value can be between 1 and 10. If this parameter is not used,
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

    # @note When making an API call, you may pass ListAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         target_type: "container-instance", # required, accepts container-instance
    #         attribute_name: "String",
    #         attribute_value: "String",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   list attributes. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target with which to list attributes.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute with which to filter the results.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of the attribute with which to filter results. You must
    #   also specify an attribute name to use this parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListAttributes` request
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
    #   The maximum number of cluster results returned by `ListAttributes`
    #   in paginated output. When this parameter is used, `ListAttributes`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListAttributes` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListAttributes` returns up to
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

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListClusters` request
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
    #   The maximum number of cluster results returned by `ListClusters` in
    #   paginated output. When this parameter is used, `ListClusters` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListClusters` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListClusters` returns up to 100
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
    #   associated with your account.
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

    # @note When making an API call, you may pass ListContainerInstancesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         filter: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         status: "ACTIVE", # accepts ACTIVE, DRAINING, REGISTERING, DEREGISTERING, REGISTRATION_FAILED
    #       }
    #
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
    #   The maximum number of container instance results returned by
    #   `ListContainerInstances` in paginated output. When this parameter is
    #   used, `ListContainerInstances` only returns `maxResults` results in
    #   a single page along with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `ListContainerInstances` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListContainerInstances` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Filters the container instances by status. For example, if you
    #   specify the `DRAINING` status, the results include only container
    #   instances that have been set to `DRAINING` using
    #   UpdateContainerInstancesState. If you do not specify this parameter,
    #   the default is to include container instances set to all states
    #   other than `INACTIVE`.
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

    # @note When making an API call, you may pass ListServicesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the services to list. If you do not specify a cluster,
    #   the default cluster is assumed.
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
    #   The maximum number of service results returned by `ListServices` in
    #   paginated output. When this parameter is used, `ListServices` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListServices` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListServices` returns up to 10
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   The launch type for the services to list.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_strategy
    #   The scheduling strategy for services to list.
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
    #   The list of full ARN entries for each service associated with the
    #   specified cluster.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. Currently, the supported resources are
    #   Amazon ECS tasks, services, task definitions, clusters, and
    #   container instances.
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

    # @note When making an API call, you may pass ListTaskDefinitionFamiliesRequest
    #   data as a hash:
    #
    #       {
    #         family_prefix: "String",
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE, ALL
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] family_prefix
    #   The `familyPrefix` is a string that is used to filter the results of
    #   `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only
    #   task definition family names that begin with the `familyPrefix`
    #   string are returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition family status with which to filter the
    #   `ListTaskDefinitionFamilies` results. By default, both `ACTIVE` and
    #   `INACTIVE` task definition families are listed. If this parameter is
    #   set to `ACTIVE`, only task definition families that have an `ACTIVE`
    #   task definition revision are returned. If this parameter is set to
    #   `INACTIVE`, only task definition families that do not have any
    #   `ACTIVE` task definition revisions are returned. If you paginate the
    #   resulting output, be sure to keep the `status` value constant in
    #   each subsequent request.
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
    #   The maximum number of task definition family results returned by
    #   `ListTaskDefinitionFamilies` in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitionFamilies` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListTaskDefinitionFamilies` returns up
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

    # @note When making an API call, you may pass ListTaskDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         family_prefix: "String",
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #         sort: "ASC", # accepts ASC, DESC
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] family_prefix
    #   The full family name with which to filter the `ListTaskDefinitions`
    #   results. Specifying a `familyPrefix` limits the listed task
    #   definitions to task definition revisions that belong to that family.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task definition status with which to filter the
    #   `ListTaskDefinitions` results. By default, only `ACTIVE` task
    #   definitions are listed. By setting this parameter to `INACTIVE`, you
    #   can view task definitions that are `INACTIVE` as long as an active
    #   task or service still references them. If you paginate the resulting
    #   output, be sure to keep the `status` value constant in each
    #   subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The order in which to sort the results. Valid values are `ASC` and
    #   `DESC`. By default (`ASC`), task definitions are listed
    #   lexicographically by family name and in ascending numerical order by
    #   revision so that the newest task definitions in a family are listed
    #   last. Setting this parameter to `DESC` reverses the sort order on
    #   family name and revision so that the newest task definitions in a
    #   family are listed first.
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
    #   The maximum number of task definition results returned by
    #   `ListTaskDefinitions` in paginated output. When this parameter is
    #   used, `ListTaskDefinitions` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListTaskDefinitions` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListTaskDefinitions` returns up to 100 results and a
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

    # @note When making an API call, you may pass ListTasksRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String",
    #         family: "String",
    #         next_token: "String",
    #         max_results: 1,
    #         started_by: "String",
    #         service_name: "String",
    #         desired_status: "RUNNING", # accepts RUNNING, PENDING, STOPPED
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the tasks to list. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN of the container instance with
    #   which to filter the `ListTasks` results. Specifying a
    #   `containerInstance` limits the results to tasks that belong to that
    #   container instance.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of the family with which to filter the `ListTasks` results.
    #   Specifying a `family` limits the results to tasks that belong to
    #   that family.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a `ListTasks` request indicating
    #   that more results are available to fulfill the request and further
    #   calls will be needed. If `maxResults` was provided, it is possible
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
    #   The maximum number of task results returned by `ListTasks` in
    #   paginated output. When this parameter is used, `ListTasks` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListTasks` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListTasks` returns up to 100
    #   results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] started_by
    #   The `startedBy` value with which to filter the task results.
    #   Specifying a `startedBy` value limits the results to tasks that were
    #   started with that value.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service with which to filter the `ListTasks`
    #   results. Specifying a `serviceName` limits the results to tasks that
    #   belong to that service.
    #   @return [String]
    #
    # @!attribute [rw] desired_status
    #   The task desired status with which to filter the `ListTasks`
    #   results. Specifying a `desiredStatus` of `STOPPED` limits the
    #   results to tasks that Amazon ECS has set the desired status to
    #   `STOPPED`. This can be useful for debugging tasks that are not
    #   starting properly or have died or finished. The default status
    #   filter is `RUNNING`, which shows tasks that Amazon ECS has set the
    #   desired status to `RUNNING`.
    #
    #   <note markdown="1"> Although you can filter results based on a desired status of
    #   `PENDING`, this does not return any results. Amazon ECS never sets
    #   the desired status of a task to that value (only a task's
    #   `lastStatus` may have a value of `PENDING`).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type for services to list.
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
    # For specific notes and restrictions regarding the use of load
    # balancers with services and task sets, see the CreateService and
    # CreateTaskSet actions.
    #
    # @note When making an API call, you may pass LoadBalancer
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The full Amazon Resource Name (ARN) of the Elastic Load Balancing
    #   target group or groups associated with a service or task set.
    #
    #   A target group ARN is only specified when using an Application Load
    #   Balancer or Network Load Balancer. If you are using a Classic Load
    #   Balancer the target group ARN should be omitted.
    #
    #   For services using the `ECS` deployment controller, you can specify
    #   one or multiple target groups. For more information, see
    #   [Registering Multiple Target Groups with a Service][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   For services using the `CODE_DEPLOY` deployment controller, you are
    #   required to define two target groups for the load balancer. For more
    #   information, see [Blue/Green Deployment with CodeDeploy][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   If your service's task definition uses the `awsvpc` network mode
    #   (which is required for the Fargate launch type), you must choose
    #   `ip` as the target type, not `instance`, when creating your target
    #   groups because tasks that use the `awsvpc` network mode are
    #   associated with an elastic network interface, not an Amazon EC2
    #   instance.
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
    #   A load balancer name is only specified when using a Classic Load
    #   Balancer. If you are using an Application Load Balancer or a Network
    #   Load Balancer the load balancer name parameter should be omitted.
    #   @return [String]
    #
    # @!attribute [rw] container_name
    #   The name of the container (as it appears in a container definition)
    #   to associate with the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port on the container to associate with the load balancer. This
    #   port must correspond to a `containerPort` in the task definition the
    #   tasks in the service are using. For tasks that use the EC2 launch
    #   type, the container instance they are launched on must allow ingress
    #   traffic on the `hostPort` of the port mapping.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :target_group_arn,
      :load_balancer_name,
      :container_name,
      :container_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log configuration specification for the container.
    #
    # This parameter maps to `LogConfig` in the [Create a container][1]
    # section of the [Docker Remote API][2] and the `--log-driver` option to
    # [ `docker run` ][3]. By default, containers use the same logging
    # driver that the Docker daemon uses; however the container may use a
    # different logging driver than the Docker daemon by specifying a log
    # driver with this parameter in the container definition. To use a
    # different logging driver for a container, the log system must be
    # configured properly on the container instance (or on a different log
    # server for remote logging options). For more information on the
    # options for different supported log drivers, see [Configure logging
    # drivers][4] in the Docker documentation.
    #
    # The following should be noted when specifying a log configuration for
    # your containers:
    #
    # * Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the valid values below).
    #   Additional log drivers may be available in future releases of the
    #   Amazon ECS container agent.
    #
    # * This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance.
    #
    # * For tasks using the EC2 launch type, the Amazon ECS container agent
    #   running on a container instance must register the logging drivers
    #   available on that instance with the `ECS_AVAILABLE_LOGGING_DRIVERS`
    #   environment variable before containers placed on that instance can
    #   use these log configuration options. For more information, see
    #   [Amazon ECS Container Agent Configuration][5] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    # * For tasks using the Fargate launch type, because you do not have
    #   access to the underlying infrastructure your tasks are hosted on,
    #   any additional software needed will have to be installed outside of
    #   the task. For example, the Fluentd output aggregators or a remote
    #   host running Logstash to send Gelf logs to.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/commandline/run/
    # [4]: https://docs.docker.com/engine/admin/logging/overview/
    # [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #
    # @note When making an API call, you may pass LogConfiguration
    #   data as a hash:
    #
    #       {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #         options: {
    #           "String" => "String",
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container. The valid values listed
    #   earlier are log drivers that the Amazon ECS container agent can
    #   communicate with by default.
    #
    #   For tasks using the Fargate launch type, the supported log drivers
    #   are `awslogs`, `splunk`, and `awsfirelens`.
    #
    #   For tasks using the EC2 launch type, the supported log drivers are
    #   `awslogs`, `fluentd`, `gelf`, `json-file`, `journald`,
    #   `logentries`,`syslog`, `splunk`, and `awsfirelens`.
    #
    #   For more information about using the `awslogs` log driver, see
    #   [Using the awslogs Log Driver][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   For more information about using the `awsfirelens` log driver, see
    #   [Custom Log Routing][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   <note markdown="1"> If you have a custom driver that is not listed, you can fork the
    #   Amazon ECS container agent project that is [available on GitHub][3]
    #   and customize it to work with that driver. We encourage you to
    #   submit pull requests for changes that you would like to have
    #   included. However, we do not currently provide support for running
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
    #   The configuration options to send to the log driver. This parameter
    #   requires version 1.19 of the Docker Remote API or greater on your
    #   container instance. To check the Docker Remote API version on your
    #   container instance, log in to your container instance and run the
    #   following command: `sudo docker version --format
    #   '\{\{.Server.APIVersion\}\}'`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] secret_options
    #   The secrets to pass to the log configuration. For more information,
    #   see [Specifying Sensitive Data][1] in the *Amazon Elastic Container
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

    # The managed scaling settings for the Auto Scaling group capacity
    # provider.
    #
    # When managed scaling is enabled, Amazon ECS manages the scale-in and
    # scale-out actions of the Auto Scaling group. Amazon ECS manages a
    # target tracking scaling policy using an Amazon ECS-managed CloudWatch
    # metric with the specified `targetCapacity` value as the target value
    # for the metric. For more information, see [Using Managed Scaling][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    # If managed scaling is disabled, the user must manage the scaling of
    # the Auto Scaling group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling
    #
    # @note When making an API call, you may pass ManagedScaling
    #   data as a hash:
    #
    #       {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #       }
    #
    # @!attribute [rw] status
    #   Whether or not to enable managed scaling for the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] target_capacity
    #   The target capacity value for the capacity provider. The specified
    #   value must be greater than `0` and less than or equal to `100`. A
    #   value of `100` will result in the Amazon EC2 instances in your Auto
    #   Scaling group being completely utilized.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_scaling_step_size
    #   The minimum number of container instances that Amazon ECS will scale
    #   in or scale out at one time. If this parameter is omitted, the
    #   default value of `1` is used.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_scaling_step_size
    #   The maximum number of container instances that Amazon ECS will scale
    #   in or scale out at one time. If this parameter is omitted, the
    #   default value of `10000` is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ManagedScaling AWS API Documentation
    #
    class ManagedScaling < Struct.new(
      :status,
      :target_capacity,
      :minimum_scaling_step_size,
      :maximum_scaling_step_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon ECS is unable to determine the current version of the Amazon
    # ECS container agent on the container instance and does not have enough
    # information to proceed with an update. This could be because the agent
    # running on the container instance is an older or custom version that
    # does not use our version information.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/MissingVersionException AWS API Documentation
    #
    class MissingVersionException < Aws::EmptyStructure; end

    # Details on a volume mount point that is used in a container
    # definition.
    #
    # @note When making an API call, you may pass MountPoint
    #   data as a hash:
    #
    #       {
    #         source_volume: "String",
    #         container_path: "String",
    #         read_only: false,
    #       }
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

    # Details on the network bindings between a container and its host
    # container instance. After a task reaches the `RUNNING` status, manual
    # and automatic host and container port assignments are visible in the
    # `networkBindings` section of DescribeTasks API responses.
    #
    # @note When making an API call, you may pass NetworkBinding
    #   data as a hash:
    #
    #       {
    #         bind_ip: "String",
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #       }
    #
    # @!attribute [rw] bind_ip
    #   The IP address that the container is bound to on the container
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port number on the container that is used with the network
    #   binding.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the host that is used with the network binding.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the network binding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NetworkBinding AWS API Documentation
    #
    class NetworkBinding < Struct.new(
      :bind_ip,
      :container_port,
      :host_port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the network configuration for a task or
    # service.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] awsvpc_configuration
    #   The VPC subnets and security groups associated with a task.
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

    # There is no update available for this Amazon ECS container agent. This
    # could be because the agent is already running the latest version, or
    # it is so old that there is no update path to the current version.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/NoUpdateAvailableException AWS API Documentation
    #
    class NoUpdateAvailableException < Aws::EmptyStructure; end

    # An object representing a constraint on task placement. For more
    # information, see [Task Placement Constraints][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # <note markdown="1"> If you are using the Fargate launch type, task placement constraints
    # are not supported.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @note When making an API call, you may pass PlacementConstraint
    #   data as a hash:
    #
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of constraint. Use `distinctInstance` to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use `memberOf` to restrict the selection to a group of
    #   valid candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`. For more information, see [Cluster Query
    #   Language][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
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
    # information, see [Task Placement Strategies][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html
    #
    # @note When making an API call, you may pass PlacementStrategy
    #   data as a hash:
    #
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The `random` placement strategy
    #   randomly places tasks on available candidates. The `spread`
    #   placement strategy spreads placement across available candidates
    #   evenly based on the `field` parameter. The `binpack` strategy places
    #   tasks on available candidates that have the least available amount
    #   of the resource that is specified with the `field` parameter. For
    #   example, if you binpack on memory, a task is placed on the instance
    #   with the least amount of remaining memory (but still enough to run
    #   the task).
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the `spread`
    #   placement strategy, valid values are `instanceId` (or `host`, which
    #   has the same effect), or any platform or custom attribute that is
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
    # @note When making an API call, you may pass PlatformDevice
    #   data as a hash:
    #
    #       {
    #         id: "String", # required
    #         type: "GPU", # required, accepts GPU
    #       }
    #
    # @!attribute [rw] id
    #   The ID for the GPU(s) on the container instance. The available GPU
    #   IDs can also be obtained on the container instance in the
    #   `/var/lib/ecs/gpu/nvidia_gpu_info.json` file.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of device that is available on the container instance. The
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

    # The specified platform version does not satisfy the task definition's
    # required capabilities.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlatformTaskDefinitionIncompatibilityException AWS API Documentation
    #
    class PlatformTaskDefinitionIncompatibilityException < Aws::EmptyStructure; end

    # The specified platform version does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PlatformUnknownException AWS API Documentation
    #
    class PlatformUnknownException < Aws::EmptyStructure; end

    # Port mappings allow containers to access ports on the host container
    # instance to send or receive traffic. Port mappings are specified as
    # part of the container definition.
    #
    # If you are using containers in a task with the `awsvpc` or `host`
    # network mode, exposed ports should be specified using `containerPort`.
    # The `hostPort` can be left blank or it must be the same value as the
    # `containerPort`.
    #
    # After a task reaches the `RUNNING` status, manual and automatic host
    # and container port assignments are visible in the `networkBindings`
    # section of DescribeTasks API responses.
    #
    # @note When making an API call, you may pass PortMapping
    #   data as a hash:
    #
    #       {
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #       }
    #
    # @!attribute [rw] container_port
    #   The port number on the container that is bound to the user-specified
    #   or automatically assigned host port.
    #
    #   If you are using containers in a task with the `awsvpc` or `host`
    #   network mode, exposed ports should be specified using
    #   `containerPort`.
    #
    #   If you are using containers in a task with the `bridge` network mode
    #   and you specify a container port and not a host port, your container
    #   automatically receives a host port in the ephemeral port range. For
    #   more information, see `hostPort`. Port mappings that are
    #   automatically assigned in this way do not count toward the 100
    #   reserved ports limit of a container instance.
    #
    #   You cannot expose the same container port for multiple protocols. An
    #   error will be returned if this is attempted.
    #   @return [Integer]
    #
    # @!attribute [rw] host_port
    #   The port number on the container instance to reserve for your
    #   container.
    #
    #   If you are using containers in a task with the `awsvpc` or `host`
    #   network mode, the `hostPort` can either be left blank or set to the
    #   same value as the `containerPort`.
    #
    #   If you are using containers in a task with the `bridge` network
    #   mode, you can specify a non-reserved host port for your container
    #   port mapping, or you can omit the `hostPort` (or set it to `0`)
    #   while specifying a `containerPort` and your container automatically
    #   receives a port in the ephemeral port range for your container
    #   instance operating system and Docker version.
    #
    #   The default ephemeral port range for Docker version 1.6.0 and later
    #   is listed on the instance under
    #   `/proc/sys/net/ipv4/ip_local_port_range`. If this kernel parameter
    #   is unavailable, the default ephemeral port range from 49153 through
    #   65535 is used. Do not attempt to specify a host port in the
    #   ephemeral port range as these are reserved for automatic assignment.
    #   In general, ports below 32768 are outside of the ephemeral port
    #   range.
    #
    #   <note markdown="1"> The default ephemeral port range from 49153 through 65535 is always
    #   used for Docker versions before 1.6.0.
    #
    #    </note>
    #
    #   The default reserved ports are 22 for SSH, the Docker ports 2375 and
    #   2376, and the Amazon ECS container agent ports 51678-51680. Any host
    #   port that was previously specified in a running task is also
    #   reserved while the task is running (after a task stops, the host
    #   port is released). The current reserved ports are displayed in the
    #   `remainingResources` of DescribeContainerInstances output. A
    #   container instance can have up to 100 reserved ports at a time,
    #   including the default reserved ports. Automatically assigned ports
    #   don't count toward the 100 reserved ports limit.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping. Valid values are `tcp` and
    #   `udp`. The default is `tcp`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :container_port,
      :host_port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the App Mesh proxy.
    #
    # For tasks using the EC2 launch type, the container instances require
    # at least version 1.26.0 of the container agent and at least version
    # 1.26.0-1 of the `ecs-init` package to enable a proxy configuration. If
    # your container instances are launched from the Amazon ECS-optimized
    # AMI version `20190301` or later, then they contain the required
    # versions of the container agent and `ecs-init`. For more information,
    # see [Amazon ECS-optimized Linux AMI][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # For tasks using the Fargate launch type, the task or service requires
    # platform version 1.3.0 or later.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #
    # @note When making an API call, you may pass ProxyConfiguration
    #   data as a hash:
    #
    #       {
    #         type: "APPMESH", # accepts APPMESH
    #         container_name: "String", # required
    #         properties: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
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

    # @note When making an API call, you may pass PutAccountSettingDefaultRequest
    #   data as a hash:
    #
    #       {
    #         name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The resource name for which to modify the account setting. If
    #   `serviceLongArnFormat` is specified, the ARN for your Amazon ECS
    #   services is affected. If `taskLongArnFormat` is specified, the ARN
    #   and resource ID for your Amazon ECS tasks is affected. If
    #   `containerInstanceLongArnFormat` is specified, the ARN and resource
    #   ID for your Amazon ECS container instances is affected. If
    #   `awsvpcTrunking` is specified, the ENI limit for your Amazon ECS
    #   container instances is affected. If `containerInsights` is
    #   specified, the default setting for CloudWatch Container Insights for
    #   your clusters is affected.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled` and `disabled`.
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
    #   The current account setting for a resource.
    #   @return [Types::Setting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingDefaultResponse AWS API Documentation
    #
    class PutAccountSettingDefaultResponse < Struct.new(
      :setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAccountSettingRequest
    #   data as a hash:
    #
    #       {
    #         name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights
    #         value: "String", # required
    #         principal_arn: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The Amazon ECS resource name for which to modify the account
    #   setting. If `serviceLongArnFormat` is specified, the ARN for your
    #   Amazon ECS services is affected. If `taskLongArnFormat` is
    #   specified, the ARN and resource ID for your Amazon ECS tasks is
    #   affected. If `containerInstanceLongArnFormat` is specified, the ARN
    #   and resource ID for your Amazon ECS container instances is affected.
    #   If `awsvpcTrunking` is specified, the elastic network interface
    #   (ENI) limit for your Amazon ECS container instances is affected. If
    #   `containerInsights` is specified, the default setting for CloudWatch
    #   Container Insights for your clusters is affected.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled` and `disabled`.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. If you specify the root user, it modifies the account
    #   setting for all IAM users, IAM roles, and the root user of the
    #   account unless an IAM user or role explicitly overrides these
    #   settings. If this field is omitted, the setting is changed only for
    #   the authenticated user.
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

    # @note When making an API call, you may pass PutAttributesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that contains the resource to apply attributes. If you do not
    #   specify a cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes to apply to your resource. You can specify up to 10
    #   custom attributes per resource. You can specify up to 10 attributes
    #   in a single call.
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

    # @note When making an API call, you may pass PutClusterCapacityProvidersRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         capacity_providers: ["String"], # required
    #         default_capacity_provider_strategy: [ # required
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   modify the capacity provider settings for. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] capacity_providers
    #   The name of one or more capacity providers to associate with the
    #   cluster.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
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
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
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
    #   A regional grouping of one or more container instances on which you
    #   can run task requests. Each account receives a default cluster the
    #   first time you use the Amazon ECS service, but you may also create
    #   other clusters. Clusters may contain more than one instance type
    #   simultaneously.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutClusterCapacityProvidersResponse AWS API Documentation
    #
    class PutClusterCapacityProvidersResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterContainerInstanceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         instance_identity_document: "String",
    #         instance_identity_document_signature: "String",
    #         total_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"],
    #           },
    #         ],
    #         version_info: {
    #           agent_version: "String",
    #           agent_hash: "String",
    #           docker_version: "String",
    #         },
    #         container_instance_arn: "String",
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance", # accepts container-instance
    #             target_id: "String",
    #           },
    #         ],
    #         platform_devices: [
    #           {
    #             id: "String", # required
    #             type: "GPU", # required, accepts GPU
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   with which to register your container instance. If you do not
    #   specify a cluster, the default cluster is assumed.
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
    #   Docker daemon running on the container instance.
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
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
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

    # @note When making an API call, you may pass RegisterTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         family: "String", # required
    #         task_role_arn: "String",
    #         execution_role_arn: "String",
    #         network_mode: "bridge", # accepts bridge, host, awsvpc, none
    #         container_definitions: [ # required
    #           {
    #             name: "String",
    #             image: "String",
    #             repository_credentials: {
    #               credentials_parameter: "String", # required
    #             },
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #             links: ["String"],
    #             port_mappings: [
    #               {
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp", # accepts tcp, udp
    #               },
    #             ],
    #             essential: false,
    #             entry_point: ["String"],
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             environment_files: [
    #               {
    #                 value: "String", # required
    #                 type: "s3", # required, accepts s3
    #               },
    #             ],
    #             mount_points: [
    #               {
    #                 source_volume: "String",
    #                 container_path: "String",
    #                 read_only: false,
    #               },
    #             ],
    #             volumes_from: [
    #               {
    #                 source_container: "String",
    #                 read_only: false,
    #               },
    #             ],
    #             linux_parameters: {
    #               capabilities: {
    #                 add: ["String"],
    #                 drop: ["String"],
    #               },
    #               devices: [
    #                 {
    #                   host_path: "String", # required
    #                   container_path: "String",
    #                   permissions: ["read"], # accepts read, write, mknod
    #                 },
    #               ],
    #               init_process_enabled: false,
    #               shared_memory_size: 1,
    #               tmpfs: [
    #                 {
    #                   container_path: "String", # required
    #                   size: 1, # required
    #                   mount_options: ["String"],
    #                 },
    #               ],
    #               max_swap: 1,
    #               swappiness: 1,
    #             },
    #             secrets: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               },
    #             ],
    #             depends_on: [
    #               {
    #                 container_name: "String", # required
    #                 condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #               },
    #             ],
    #             start_timeout: 1,
    #             stop_timeout: 1,
    #             hostname: "String",
    #             user: "String",
    #             working_directory: "String",
    #             disable_networking: false,
    #             privileged: false,
    #             readonly_root_filesystem: false,
    #             dns_servers: ["String"],
    #             dns_search_domains: ["String"],
    #             extra_hosts: [
    #               {
    #                 hostname: "String", # required
    #                 ip_address: "String", # required
    #               },
    #             ],
    #             docker_security_options: ["String"],
    #             interactive: false,
    #             pseudo_terminal: false,
    #             docker_labels: {
    #               "String" => "String",
    #             },
    #             ulimits: [
    #               {
    #                 name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #                 soft_limit: 1, # required
    #                 hard_limit: 1, # required
    #               },
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #               options: {
    #                 "String" => "String",
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 },
    #               ],
    #             },
    #             health_check: {
    #               command: ["String"], # required
    #               interval: 1,
    #               timeout: 1,
    #               retries: 1,
    #               start_period: 1,
    #             },
    #             system_controls: [
    #               {
    #                 namespace: "String",
    #                 value: "String",
    #               },
    #             ],
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU", # required, accepts GPU, InferenceAccelerator
    #               },
    #             ],
    #             firelens_configuration: {
    #               type: "fluentd", # required, accepts fluentd, fluentbit
    #               options: {
    #                 "String" => "String",
    #               },
    #             },
    #           },
    #         ],
    #         volumes: [
    #           {
    #             name: "String",
    #             host: {
    #               source_path: "String",
    #             },
    #             docker_volume_configuration: {
    #               scope: "task", # accepts task, shared
    #               autoprovision: false,
    #               driver: "String",
    #               driver_opts: {
    #                 "String" => "String",
    #               },
    #               labels: {
    #                 "String" => "String",
    #               },
    #             },
    #             efs_volume_configuration: {
    #               file_system_id: "String", # required
    #               root_directory: "String",
    #               transit_encryption: "ENABLED", # accepts ENABLED, DISABLED
    #               transit_encryption_port: 1,
    #               authorization_config: {
    #                 access_point_id: "String",
    #                 iam: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #             },
    #           },
    #         ],
    #         placement_constraints: [
    #           {
    #             type: "memberOf", # accepts memberOf
    #             expression: "String",
    #           },
    #         ],
    #         requires_compatibilities: ["EC2"], # accepts EC2, FARGATE
    #         cpu: "String",
    #         memory: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         pid_mode: "host", # accepts host, task
    #         ipc_mode: "host", # accepts host, task, none
    #         proxy_configuration: {
    #           type: "APPMESH", # accepts APPMESH
    #           container_name: "String", # required
    #           properties: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #         },
    #         inference_accelerators: [
    #           {
    #             device_name: "String", # required
    #             device_type: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] family
    #   You must specify a `family` for a task definition, which allows you
    #   to track multiple versions of the same task definition. The `family`
    #   is used as a name for your task definition. Up to 255 letters
    #   (uppercase and lowercase), numbers, and hyphens are allowed.
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
    #   grants the Amazon ECS container agent permission to make AWS API
    #   calls on your behalf. The task execution IAM role is required
    #   depending on the requirements of your task. For more information,
    #   see [Amazon ECS task execution IAM role][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. The
    #   default Docker network mode is `bridge`. If you are using the
    #   Fargate launch type, the `awsvpc` network mode is required. If you
    #   are using the EC2 launch type, any network mode can be used. If the
    #   network mode is set to `none`, you cannot specify port mappings in
    #   your container definitions, and the tasks containers do not have
    #   external connectivity. The `host` and `awsvpc` network modes offer
    #   the highest networking performance for containers because they use
    #   the EC2 network stack instead of the virtualized network stack
    #   provided by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   If the network mode is `awsvpc`, the task is allocated an elastic
    #   network interface, and you must specify a NetworkConfiguration value
    #   when you create a service or run a task with the task definition.
    #   For more information, see [Task Networking][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> Currently, only Amazon ECS-optimized AMIs, other Amazon Linux
    #   variants with the `ecs-init` package, or AWS Fargate infrastructure
    #   support the `awsvpc` network mode.
    #
    #    </note>
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #   Docker for Windows uses different network modes than Docker for
    #   Linux. When you register a task definition with Windows containers,
    #   you must not specify a network mode. If you use the console to
    #   register a task definition with Windows containers, you must choose
    #   the `<default>` network mode object.
    #
    #   For more information, see [Network settings][2] in the *Docker run
    #   reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   [2]: https://docs.docker.com/engine/reference/run/#network-settings
    #   @return [String]
    #
    # @!attribute [rw] container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task.
    #   @return [Array<Types::ContainerDefinition>]
    #
    # @!attribute [rw] volumes
    #   A list of volume definitions in JSON format that containers in your
    #   task may use.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify a maximum of 10 constraints per task (this limit
    #   includes constraints in the task definition and those specified at
    #   runtime).
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] requires_compatibilities
    #   The launch type required by the task. If no value is specified, it
    #   defaults to `EC2`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units, for example `1024`, or as a string using
    #   vCPUs, for example `1 vCPU` or `1 vcpu`, in a task definition.
    #   String values are converted to an integer indicating the CPU units
    #   when the task definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If you are using the EC2 launch type, this field is optional.
    #   Supported values are between `128` CPU units (`0.125` vCPUs) and
    #   `10240` CPU units (`10` vCPUs).
    #
    #   If you are using the Fargate launch type, this field is required and
    #   you must use one of the following values, which determines your
    #   range of supported values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) used by the task. It can be expressed
    #   as an integer using MiB, for example `1024`, or as a string using
    #   GB, for example `1GB` or `1 GB`, in a task definition. String values
    #   are converted to an integer indicating the MiB when the task
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
    #   must use one of the following values, which determines your range of
    #   supported values for the `cpu` parameter:
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
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task definition to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] pid_mode
    #   The process namespace to use for the containers in the task. The
    #   valid values are `host` or `task`. If `host` is specified, then all
    #   containers within the tasks that specified the `host` PID mode on
    #   the same container instance share the same process namespace with
    #   the host Amazon EC2 instance. If `task` is specified, all containers
    #   within the specified task share the same process namespace. If no
    #   value is specified, the default is a private namespace. For more
    #   information, see [PID settings][1] in the *Docker run reference*.
    #
    #   If the `host` PID mode is used, be aware that there is a heightened
    #   risk of undesired process namespace expose. For more information,
    #   see [Docker security][2].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#pid-settings---pid
    #   [2]: https://docs.docker.com/engine/security/security/
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
    #   Docker daemon setting on the container instance. For more
    #   information, see [IPC settings][1] in the *Docker run reference*.
    #
    #   If the `host` IPC mode is used, be aware that there is a heightened
    #   risk of undesired IPC namespace expose. For more information, see
    #   [Docker security][2].
    #
    #   If you are setting namespaced kernel parameters using
    #   `systemControls` for the containers in the task, the following will
    #   apply to your IPC resource namespace. For more information, see
    #   [System Controls][3] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   * For tasks that use the `host` IPC mode, IPC namespace related
    #     `systemControls` are not supported.
    #
    #   * For tasks that use the `task` IPC mode, IPC namespace related
    #     `systemControls` will apply to all containers within a task.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
    #   [2]: https://docs.docker.com/engine/security/security/
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
    #   @return [String]
    #
    # @!attribute [rw] proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #
    #   For tasks using the EC2 launch type, the container instances require
    #   at least version 1.26.0 of the container agent and at least version
    #   1.26.0-1 of the `ecs-init` package to enable a proxy configuration.
    #   If your container instances are launched from the Amazon
    #   ECS-optimized AMI version `20190301` or later, then they contain the
    #   required versions of the container agent and `ecs-init`. For more
    #   information, see [Amazon ECS-optimized Linux AMI][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   For tasks using the Fargate launch type, the task or service
    #   requires platform version 1.3.0 or later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerators to use for the containers in the
    #   task.
    #   @return [Array<Types::InferenceAccelerator>]
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
      :inference_accelerators)
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
    # @note When making an API call, you may pass RepositoryCredentials
    #   data as a hash:
    #
    #       {
    #         credentials_parameter: "String", # required
    #       }
    #
    # @!attribute [rw] credentials_parameter
    #   The Amazon Resource Name (ARN) of the secret containing the private
    #   repository credentials.
    #
    #   <note markdown="1"> When you are using the Amazon ECS API, AWS CLI, or AWS SDK, if the
    #   secret exists in the same Region as the task that you are launching
    #   then you can use either the full ARN or the name of the secret. When
    #   you are using the AWS Management Console, you must specify the full
    #   ARN of the secret.
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

    # Describes the resources available for a container instance.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         type: "String",
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the resource, such as `CPU`, `MEMORY`, `PORTS`,
    #   `PORTS_UDP`, or a user-defined resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource, such as `INTEGER`, `DOUBLE`, `LONG`, or
    #   `STRINGSET`.
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

    # The specified resource is in-use and cannot be removed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Aws::EmptyStructure; end

    # The specified resource could not be found.
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
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html
    #
    # @note When making an API call, you may pass ResourceRequirement
    #   data as a hash:
    #
    #       {
    #         value: "String", # required
    #         type: "GPU", # required, accepts GPU, InferenceAccelerator
    #       }
    #
    # @!attribute [rw] value
    #   The value for the specified resource type.
    #
    #   If the `GPU` type is used, the value is the number of physical
    #   `GPUs` the Amazon ECS container agent will reserve for the
    #   container. The number of GPUs reserved for all containers in a task
    #   should not exceed the number of available GPUs on the container
    #   instance the task is launched on.
    #
    #   If the `InferenceAccelerator` type is used, the `value` should match
    #   the `deviceName` for an InferenceAccelerator specified in a task
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. The supported values
    #   are `GPU` or `InferenceAccelerator`.
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

    # @note When making an API call, you may pass RunTaskRequest
    #   data as a hash:
    #
    #       {
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         cluster: "String",
    #         count: 1,
    #         enable_ecs_managed_tags: false,
    #         group: "String",
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               environment_files: [
    #                 {
    #                   value: "String", # required
    #                   type: "s3", # required, accepts s3
    #                 },
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU", # required, accepts GPU, InferenceAccelerator
    #                 },
    #               ],
    #             },
    #           ],
    #           cpu: "String",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String",
    #             },
    #           ],
    #           execution_role_arn: "String",
    #           memory: "String",
    #           task_role_arn: "String",
    #         },
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "String",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "String",
    #           },
    #         ],
    #         platform_version: "String",
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE
    #         reference_id: "String",
    #         started_by: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         task_definition: "String", # required
    #       }
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to run your task. If you do not specify a cluster, the default
    #   cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of instantiations of the specified task to place on your
    #   cluster. You can specify up to 10 tasks per call.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the task.
    #   For more information, see [Tagging Your Amazon ECS Resources][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which to run your task. For more information, see
    #   [Amazon ECS Launch Types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   If a `launchType` is specified, the `capacityProviderStrategy`
    #   parameter must be omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the task. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own elastic network interface, and it is not supported for
    #   other network modes. For more information, see [Task Networking][1]
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
    #   (that is specified in the task definition or Docker image) with a
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
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints per task (including constraints in
    #   the task definition and those specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for the task. You can specify
    #   a maximum of five strategy rules per task.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   The platform version the task should run. A platform version is only
    #   specified for tasks using the Fargate launch type. If one is not
    #   specified, the `LATEST` platform version is used by default. For
    #   more information, see [AWS Fargate Platform Versions][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags are not propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use the TagResource API action.
    #
    #   <note markdown="1"> An error will be received if you specify the `SERVICE` option when
    #   running a task.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example, if
    #   you automatically trigger a task to run a batch process job, you
    #   could apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run. If a `revision` is not specified, the latest
    #   `ACTIVE` revision is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTaskRequest AWS API Documentation
    #
    class RunTaskRequest < Struct.new(
      :capacity_provider_strategy,
      :cluster,
      :count,
      :enable_ecs_managed_tags,
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
      :task_definition)
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

    # A floating-point percentage of the desired number of tasks to place
    # and keep running in the task set.
    #
    # @note When making an API call, you may pass Scale
    #   data as a hash:
    #
    #       {
    #         value: 1.0,
    #         unit: "PERCENT", # accepts PERCENT
    #       }
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
    # For more information, see [Specifying Sensitive Data][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #
    # @note When making an API call, you may pass Secret
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value_from: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container. The supported values are
    #   either the full ARN of the AWS Secrets Manager secret or the full
    #   ARN of the parameter in the AWS Systems Manager Parameter Store.
    #
    #   <note markdown="1"> If the AWS Systems Manager Parameter Store parameter exists in the
    #   same Region as the task you are launching, then you can use either
    #   the full ARN or name of the parameter. If the parameter exists in a
    #   different Region, then the full ARN must be specified.
    #
    #    </note>
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a service within a cluster
    #
    # @!attribute [rw] service_arn
    #   The ARN that identifies the service. The ARN contains the
    #   `arn:aws:ecs` namespace, followed by the Region of the service, the
    #   AWS account ID of the service owner, the `service` namespace, and
    #   then the service name. For example,
    #   `arn:aws:ecs:region:012345678910:service/my-service`.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of your service. Up to 255 letters (uppercase and
    #   lowercase), numbers, and hyphens are allowed. Service names must be
    #   unique within a cluster, but you can have similarly named services
    #   in multiple clusters within a Region or across multiple Regions.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that hosts the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] load_balancers
    #   A list of Elastic Load Balancing load balancer objects, containing
    #   the load balancer name, the container name (as it appears in a
    #   container definition), and the container port to access from the
    #   load balancer.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registries to assign to this
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
    #   created with CreateService, and it can be modified with
    #   UpdateService.
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
    #   The launch type on which your service is running. If no value is
    #   specified, it will default to `EC2`. Valid values include `EC2` and
    #   `FARGATE`. For more information, see [Amazon ECS Launch Types][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy associated with the service.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which to run your service. A platform
    #   version is only specified for tasks using the Fargate launch type.
    #   If one is not specified, the `LATEST` platform version is used by
    #   default. For more information, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition to use for tasks in the service. This value is
    #   specified when the service is created with CreateService, and it can
    #   be modified with UpdateService.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] task_sets
    #   Information about a set of Amazon ECS tasks in either an AWS
    #   CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    #   includes details such as the desired number of tasks, how many tasks
    #   are running, and whether the task set serves production traffic.
    #   @return [Array<Types::TaskSet>]
    #
    # @!attribute [rw] deployments
    #   The current state of deployments for the service.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role associated with the service that allows the
    #   Amazon ECS container agent to register container instances with an
    #   Elastic Load Balancing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The event stream for your service. A maximum of 100 of the latest
    #   events are displayed.
    #   @return [Array<Types::ServiceEvent>]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for when the service was created.
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
    #   scheduler ignores unhealthy Elastic Load Balancing target health
    #   checks after a task has first started.
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
    #     placement decisions.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task
    #     on each active container instance that meets all of the task
    #     placement constraints that you specify in your cluster. The
    #     service scheduler also evaluates the task placement constraints
    #     for running tasks and will stop tasks that do not meet the
    #     placement constraints.
    #
    #     <note markdown="1"> Fargate tasks do not support the `DAEMON` scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_controller
    #   The deployment controller type the service is using. When using the
    #   DescribeServices API, this field is omitted if the service is using
    #   the `ECS` deployment controller type.
    #   @return [Types::DeploymentController]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the service to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_by
    #   The principal that created the service.
    #   @return [String]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the tasks in
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
    #   Specifies whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags are not
    #   propagated.
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
      :propagate_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on an event associated with a service.
    #
    # @!attribute [rw] id
    #   The ID string of the event.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for when the event was triggered.
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

    # The specified service is not active. You can't update a service that
    # is inactive. If you have previously deleted a service, you can
    # re-create it with CreateService.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceNotActiveException AWS API Documentation
    #
    class ServiceNotActiveException < Aws::EmptyStructure; end

    # The specified service could not be found. You can view your available
    # services with ListServices. Amazon ECS services are cluster-specific
    # and Region-specific.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceNotFoundException AWS API Documentation
    #
    class ServiceNotFoundException < Aws::EmptyStructure; end

    # Details of the service registry.
    #
    # @note When making an API call, you may pass ServiceRegistry
    #   data as a hash:
    #
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       }
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the service registry. The
    #   currently supported service registry is AWS Cloud Map. For more
    #   information, see [CreateService][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value used if your service discovery service specified an
    #   SRV record. This field may be used if both the `awsvpc` network mode
    #   and SRV records are used.
    #   @return [Integer]
    #
    # @!attribute [rw] container_name
    #   The container name value, already specified in the task definition,
    #   to be used for your service discovery service. If the task
    #   definition that your service task specifies uses the `bridge` or
    #   `host` network mode, you must specify a `containerName` and
    #   `containerPort` combination from the task definition. If the task
    #   definition that your service task specifies uses the `awsvpc`
    #   network mode and a type SRV DNS record is used, you must specify
    #   either a `containerName` and `containerPort` combination or a `port`
    #   value, but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_port
    #   The port value, already specified in the task definition, to be used
    #   for your service discovery service. If the task definition your
    #   service task specifies uses the `bridge` or `host` network mode, you
    #   must specify a `containerName` and `containerPort` combination from
    #   the task definition. If the task definition your service task
    #   specifies uses the `awsvpc` network mode and a type SRV DNS record
    #   is used, you must specify either a `containerName` and
    #   `containerPort` combination or a `port` value, but not both.
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

    # The current account setting for a resource.
    #
    # @!attribute [rw] name
    #   The Amazon ECS resource name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Whether the account setting is enabled or disabled for the specified
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. If this field is omitted, the authenticated user is
    #   assumed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Setting AWS API Documentation
    #
    class Setting < Struct.new(
      :name,
      :value,
      :principal_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTaskRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instances: ["String"], # required
    #         enable_ecs_managed_tags: false,
    #         group: "String",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               environment_files: [
    #                 {
    #                   value: "String", # required
    #                   type: "s3", # required, accepts s3
    #                 },
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU", # required, accepts GPU, InferenceAccelerator
    #                 },
    #               ],
    #             },
    #           ],
    #           cpu: "String",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String",
    #             },
    #           ],
    #           execution_role_arn: "String",
    #           memory: "String",
    #           task_role_arn: "String",
    #         },
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE
    #         reference_id: "String",
    #         started_by: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         task_definition: "String", # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster on
    #   which to start your task. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   The container instance IDs or full ARN entries for the container
    #   instances on which you would like to place your task. You can
    #   specify up to 10 container instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the task.
    #   For more information, see [Tagging Your Amazon ECS Resources][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
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
    #   should receive. You can override the default command for a container
    #   (that is specified in the task definition or Docker image) with a
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
    #   the service to the task. If no value is specified, the tags are not
    #   propagated.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example, if
    #   you automatically trigger a task to run a batch process job, you
    #   could apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to start. If a `revision` is not specified, the
    #   latest `ACTIVE` revision is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTaskRequest AWS API Documentation
    #
    class StartTaskRequest < Struct.new(
      :cluster,
      :container_instances,
      :enable_ecs_managed_tags,
      :group,
      :network_configuration,
      :overrides,
      :propagate_tags,
      :reference_id,
      :started_by,
      :tags,
      :task_definition)
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

    # @note When making an API call, you may pass StopTaskRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String", # required
    #         reason: "String",
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task to stop. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID or full Amazon Resource Name (ARN) of the task to stop.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An optional message specified when a task is stopped. For example,
    #   if you are using a custom scheduler, you can use this parameter to
    #   specify the reason for stopping the task here, and the message
    #   appears in subsequent DescribeTasks API operations on this task. Up
    #   to 255 characters are allowed in this message.
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

    # @note When making an API call, you may pass SubmitAttachmentStateChangesRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         attachments: [ # required
    #           {
    #             attachment_arn: "String", # required
    #             status: "String", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass SubmitContainerStateChangeRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String",
    #         container_name: "String",
    #         runtime_id: "String",
    #         status: "String",
    #         exit_code: 1,
    #         reason: "String",
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #           },
    #         ],
    #       }
    #
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
    #   The exit code returned for the state change request.
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

    # @note When making an API call, you may pass SubmitTaskStateChangeRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         task: "String",
    #         status: "String",
    #         reason: "String",
    #         containers: [
    #           {
    #             container_name: "String",
    #             image_digest: "String",
    #             runtime_id: "String",
    #             exit_code: 1,
    #             network_bindings: [
    #               {
    #                 bind_ip: "String",
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp", # accepts tcp, udp
    #               },
    #             ],
    #             reason: "String",
    #             status: "String",
    #           },
    #         ],
    #         attachments: [
    #           {
    #             attachment_arn: "String", # required
    #             status: "String", # required
    #           },
    #         ],
    #         pull_started_at: Time.now,
    #         pull_stopped_at: Time.now,
    #         execution_stopped_at: Time.now,
    #       }
    #
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
    #   Any containers associated with the state change request.
    #   @return [Array<Types::ContainerStateChange>]
    #
    # @!attribute [rw] attachments
    #   Any attachments associated with the state change request.
    #   @return [Array<Types::AttachmentStateChange>]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix timestamp for when the container image pull began.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix timestamp for when the container image pull completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_stopped_at
    #   The Unix timestamp for when the task execution stopped.
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
    # parameter maps to `Sysctls` in the [Create a container][1] section of
    # the [Docker Remote API][2] and the `--sysctl` option to [docker
    # run][3].
    #
    # It is not recommended that you specify network-related
    # `systemControls` parameters for multiple containers in a single task
    # that also uses either the `awsvpc` or `host` network mode for the
    # following reasons:
    #
    # * For tasks that use the `awsvpc` network mode, if you set
    #   `systemControls` for any container, it applies to all containers in
    #   the task. If you set different `systemControls` for multiple
    #   containers in a single task, the container that is started last
    #   determines which `systemControls` take effect.
    #
    # * For tasks that use the `host` network mode, the `systemControls`
    #   parameter applies to the container instance's kernel parameter as
    #   well as that of all containers of any tasks running on that
    #   container instance.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/run/
    #
    # @note When making an API call, you may pass SystemControl
    #   data as a hash:
    #
    #       {
    #         namespace: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespaced kernel parameter for which to set a `value`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the namespaced kernel parameter specified in
    #   `namespace`.
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
    # organize them. Each tag consists of a key and an optional value, both
    # of which you define.
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
    #   such as a prefix for either keys or values as it is reserved for AWS
    #   use. You cannot edit or delete tag keys or values with this prefix.
    #   Tags with this prefix do not count against your tags per resource
    #   limit.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   Currently, the supported resources are Amazon ECS capacity
    #   providers, tasks, services, task definitions, clusters, and
    #   container instances.
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
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

    # The specified target could not be found. You can view your available
    # container instances with ListContainerInstances. Amazon ECS container
    # instances are cluster-specific and Region-specific.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TargetNotFoundException AWS API Documentation
    #
    class TargetNotFoundException < Aws::EmptyStructure; end

    # Details on a task in a cluster.
    #
    # @!attribute [rw] attachments
    #   The Elastic Network Adapter associated with the task if the task
    #   uses the `awsvpc` network mode.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] attributes
    #   The attributes of the task
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone of the task.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_name
    #   The capacity provider associated with the task.
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
    #   The Unix timestamp for when the task last went into `CONNECTED`
    #   status.
    #   @return [Time]
    #
    # @!attribute [rw] container_instance_arn
    #   The ARN of the container instances that host the task.
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   The containers associated with the task.
    #   @return [Array<Types::Container>]
    #
    # @!attribute [rw] cpu
    #   The number of CPU units used by the task as expressed in a task
    #   definition. It can be expressed as an integer using CPU units, for
    #   example `1024`. It can also be expressed as a string using vCPUs,
    #   for example `1 vCPU` or `1 vcpu`. String values are converted to an
    #   integer indicating the CPU units when the task definition is
    #   registered.
    #
    #   If you are using the EC2 launch type, this field is optional.
    #   Supported values are between `128` CPU units (`0.125` vCPUs) and
    #   `10240` CPU units (`10` vCPUs).
    #
    #   If you are using the Fargate launch type, this field is required and
    #   you must use one of the following values, which determines your
    #   range of supported values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for when the task was created (the task entered
    #   the `PENDING` state).
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
    # @!attribute [rw] execution_stopped_at
    #   The Unix timestamp for when the task execution stopped.
    #   @return [Time]
    #
    # @!attribute [rw] group
    #   The name of the task group associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The health status for the task, which is determined by the health of
    #   the essential containers in the task. If all essential containers in
    #   the task are reporting as `HEALTHY`, then the task status also
    #   reports as `HEALTHY`. If any essential containers in the task are
    #   reporting as `UNHEALTHY` or `UNKNOWN`, then the task status also
    #   reports as `UNHEALTHY` or `UNKNOWN`, accordingly.
    #
    #   <note markdown="1"> The Amazon ECS container agent does not monitor or report on Docker
    #   health checks that are embedded in a container image (such as those
    #   specified in a parent image or from the image's Dockerfile) and not
    #   specified in the container definition. Health check parameters that
    #   are specified in a container definition override any Docker health
    #   checks that exist in the container image.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerator associated with the task.
    #   @return [Array<Types::InferenceAccelerator>]
    #
    # @!attribute [rw] last_status
    #   The last known status of the task. For more information, see [Task
    #   Lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   The launch type on which your task is running. For more information,
    #   see [Amazon ECS Launch Types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount of memory (in MiB) used by the task as expressed in a
    #   task definition. It can be expressed as an integer using MiB, for
    #   example `1024`. It can also be expressed as a string using GB, for
    #   example `1GB` or `1 GB`. String values are converted to an integer
    #   indicating the MiB when the task definition is registered.
    #
    #   If you are using the EC2 launch type, this field is optional.
    #
    #   If you are using the Fargate launch type, this field is required and
    #   you must use one of the following values, which determines your
    #   range of supported values for the `cpu` parameter:
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
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   One or more container overrides.
    #   @return [Types::TaskOverride]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which your task is running. A platform
    #   version is only specified for tasks using the Fargate launch type.
    #   If one is not specified, the `LATEST` platform version is used by
    #   default. For more information, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] pull_started_at
    #   The Unix timestamp for when the container image pull began.
    #   @return [Time]
    #
    # @!attribute [rw] pull_stopped_at
    #   The Unix timestamp for when the container image pull completed.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for when the task started (the task transitioned
    #   from the `PENDING` state to the `RUNNING` state).
    #   @return [Time]
    #
    # @!attribute [rw] started_by
    #   The tag specified when a task is started. If the task is started by
    #   an Amazon ECS service, then the `startedBy` parameter contains the
    #   deployment ID of the service that starts it.
    #   @return [String]
    #
    # @!attribute [rw] stop_code
    #   The stop code indicating why a task was stopped. The `stoppedReason`
    #   may contain additional details.
    #   @return [String]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp for when the task was stopped (the task
    #   transitioned from the `RUNNING` state to the `STOPPED` state).
    #   @return [Time]
    #
    # @!attribute [rw] stopped_reason
    #   The reason that the task was stopped.
    #   @return [String]
    #
    # @!attribute [rw] stopping_at
    #   The Unix timestamp for when the task stops (transitions from the
    #   `RUNNING` state to `STOPPED`).
    #   @return [Time]
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
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
    #   change that triggers a CloudWatch event, the version counter is
    #   incremented. If you are replicating your Amazon ECS task state with
    #   CloudWatch Events, you can compare the version of a task reported by
    #   the Amazon ECS API actions with the version reported in CloudWatch
    #   Events for the task (inside the `detail` object) to verify that the
    #   version in your event stream is current.
    #   @return [Integer]
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
      :execution_stopped_at,
      :group,
      :health_status,
      :inference_accelerators,
      :last_status,
      :launch_type,
      :memory,
      :overrides,
      :platform_version,
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
      :version)
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
    #   to 255 letters (uppercase and lowercase), numbers, hyphens, and
    #   underscores are allowed.
    #
    #   A family groups multiple versions of a task definition. Amazon ECS
    #   gives the first task definition that you registered to a family a
    #   revision number of 1. Amazon ECS gives sequential revision numbers
    #   to each task definition that you add.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the AWS
    #   Identity and Access Management (IAM) role that grants containers in
    #   the task permission to call AWS APIs on your behalf. For more
    #   information, see [Amazon ECS Task Role][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   IAM roles for tasks on Windows require that the `-EnableTaskIAMRole`
    #   option is set when you launch the Amazon ECS-optimized Windows AMI.
    #   Your containers must also run some configuration code in order to
    #   take advantage of the feature. For more information, see [Windows
    #   IAM Roles for Tasks][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that
    #   grants the Amazon ECS container agent permission to make AWS API
    #   calls on your behalf. The task execution IAM role is required
    #   depending on the requirements of your task. For more information,
    #   see [Amazon ECS task execution IAM role][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] network_mode
    #   The Docker networking mode to use for the containers in the task.
    #   The valid values are `none`, `bridge`, `awsvpc`, and `host`. The
    #   default Docker network mode is `bridge`. If you are using the
    #   Fargate launch type, the `awsvpc` network mode is required. If you
    #   are using the EC2 launch type, any network mode can be used. If the
    #   network mode is set to `none`, you cannot specify port mappings in
    #   your container definitions, and the tasks containers do not have
    #   external connectivity. The `host` and `awsvpc` network modes offer
    #   the highest networking performance for containers because they use
    #   the EC2 network stack instead of the virtualized network stack
    #   provided by the `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for
    #   the `awsvpc` network mode), so you cannot take advantage of dynamic
    #   host port mappings.
    #
    #   If the network mode is `awsvpc`, the task is allocated an elastic
    #   network interface, and you must specify a NetworkConfiguration value
    #   when you create a service or run a task with the task definition.
    #   For more information, see [Task Networking][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> Currently, only Amazon ECS-optimized AMIs, other Amazon Linux
    #   variants with the `ecs-init` package, or AWS Fargate infrastructure
    #   support the `awsvpc` network mode.
    #
    #    </note>
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
    #
    #   Docker for Windows uses different network modes than Docker for
    #   Linux. When you register a task definition with Windows containers,
    #   you must not specify a network mode. If you use the console to
    #   register a task definition with Windows containers, you must choose
    #   the `<default>` network mode object.
    #
    #   For more information, see [Network settings][2] in the *Docker run
    #   reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   [2]: https://docs.docker.com/engine/reference/run/#network-settings
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the task in a particular family. The revision is a
    #   version number of a task definition in a family. When you register a
    #   task definition for the first time, the revision is `1`. Each time
    #   that you register a new revision of a task definition in the same
    #   family, the revision value always increases by one, even if you have
    #   deregistered previous revisions in this family.
    #   @return [Integer]
    #
    # @!attribute [rw] volumes
    #   The list of volume definitions for the task.
    #
    #   If your tasks are using the Fargate launch type, the `host` and
    #   `sourcePath` parameters are not supported.
    #
    #   For more information about volume definition parameters and
    #   defaults, see [Amazon ECS Task Definitions][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] status
    #   The status of the task definition.
    #   @return [String]
    #
    # @!attribute [rw] requires_attributes
    #   The container instance attributes required by your task. This field
    #   is not valid if you are using the Fargate launch type for your task.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for tasks. This
    #   field is not valid if you are using the Fargate launch type for your
    #   task.
    #   @return [Array<Types::TaskDefinitionPlacementConstraint>]
    #
    # @!attribute [rw] compatibilities
    #   The launch type to use with your task. For more information, see
    #   [Amazon ECS Launch Types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] requires_compatibilities
    #   The launch type the task requires. If no value is specified, it will
    #   default to `EC2`. Valid values include `EC2` and `FARGATE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units used by the task. If you are using the EC2
    #   launch type, this field is optional and any value can be used. If
    #   you are using the Fargate launch type, this field is required and
    #   you must use one of the following values, which determines your
    #   range of valid values for the `memory` parameter:
    #
    #   * 256 (.25 vCPU) - Available `memory` values: 512 (0.5 GB), 1024 (1
    #     GB), 2048 (2 GB)
    #
    #   * 512 (.5 vCPU) - Available `memory` values: 1024 (1 GB), 2048 (2
    #     GB), 3072 (3 GB), 4096 (4 GB)
    #
    #   * 1024 (1 vCPU) - Available `memory` values: 2048 (2 GB), 3072 (3
    #     GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8
    #     GB)
    #
    #   * 2048 (2 vCPU) - Available `memory` values: Between 4096 (4 GB) and
    #     16384 (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: Between 8192 (8 GB) and
    #     30720 (30 GB) in increments of 1024 (1 GB)
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The amount (in MiB) of memory used by the task.
    #
    #   If using the EC2 launch type, this field is optional and any value
    #   can be used. If a task-level memory value is specified then the
    #   container-level memory value is optional.
    #
    #   If using the Fargate launch type, this field is required and you
    #   must use one of the following values, which determines your range of
    #   valid values for the `cpu` parameter:
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
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerators
    #   The Elastic Inference accelerator associated with the task.
    #   @return [Array<Types::InferenceAccelerator>]
    #
    # @!attribute [rw] pid_mode
    #   The process namespace to use for the containers in the task. The
    #   valid values are `host` or `task`. If `host` is specified, then all
    #   containers within the tasks that specified the `host` PID mode on
    #   the same container instance share the same process namespace with
    #   the host Amazon EC2 instance. If `task` is specified, all containers
    #   within the specified task share the same process namespace. If no
    #   value is specified, the default is a private namespace. For more
    #   information, see [PID settings][1] in the *Docker run reference*.
    #
    #   If the `host` PID mode is used, be aware that there is a heightened
    #   risk of undesired process namespace expose. For more information,
    #   see [Docker security][2].
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#pid-settings---pid
    #   [2]: https://docs.docker.com/engine/security/security/
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
    #   Docker daemon setting on the container instance. For more
    #   information, see [IPC settings][1] in the *Docker run reference*.
    #
    #   If the `host` IPC mode is used, be aware that there is a heightened
    #   risk of undesired IPC namespace expose. For more information, see
    #   [Docker security][2].
    #
    #   If you are setting namespaced kernel parameters using
    #   `systemControls` for the containers in the task, the following will
    #   apply to your IPC resource namespace. For more information, see
    #   [System Controls][3] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   * For tasks that use the `host` IPC mode, IPC namespace related
    #     `systemControls` are not supported.
    #
    #   * For tasks that use the `task` IPC mode, IPC namespace related
    #     `systemControls` will apply to all containers within a task.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks
    #   using the Fargate launch type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
    #   [2]: https://docs.docker.com/engine/security/security/
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
    #   @return [String]
    #
    # @!attribute [rw] proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #
    #   Your Amazon ECS container instances require at least version 1.26.0
    #   of the container agent and at least version 1.26.0-1 of the
    #   `ecs-init` package to enable a proxy configuration. If your
    #   container instances are launched from the Amazon ECS-optimized AMI
    #   version `20190301` or later, then they contain the required versions
    #   of the container agent and `ecs-init`. For more information, see
    #   [Amazon ECS-optimized Linux AMI][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
    #   @return [Types::ProxyConfiguration]
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
      :requires_compatibilities,
      :cpu,
      :memory,
      :inference_accelerators,
      :pid_mode,
      :ipc_mode,
      :proxy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a constraint on task placement in the task
    # definition. For more information, see [Task Placement Constraints][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    # <note markdown="1"> If you are using the Fargate launch type, task placement constraints
    # are not supported.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @note When making an API call, you may pass TaskDefinitionPlacementConstraint
    #   data as a hash:
    #
    #       {
    #         type: "memberOf", # accepts memberOf
    #         expression: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of constraint. The `MemberOf` constraint restricts
    #   selection to be from a group of valid candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. For
    #   more information, see [Cluster Query Language][1] in the *Amazon
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

    # The overrides associated with a task.
    #
    # @note When making an API call, you may pass TaskOverride
    #   data as a hash:
    #
    #       {
    #         container_overrides: [
    #           {
    #             name: "String",
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #               },
    #             ],
    #             environment_files: [
    #               {
    #                 value: "String", # required
    #                 type: "s3", # required, accepts s3
    #               },
    #             ],
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU", # required, accepts GPU, InferenceAccelerator
    #               },
    #             ],
    #           },
    #         ],
    #         cpu: "String",
    #         inference_accelerator_overrides: [
    #           {
    #             device_name: "String",
    #             device_type: "String",
    #           },
    #         ],
    #         execution_role_arn: "String",
    #         memory: "String",
    #         task_role_arn: "String",
    #       }
    #
    # @!attribute [rw] container_overrides
    #   One or more container overrides sent to a task.
    #   @return [Array<Types::ContainerOverride>]
    #
    # @!attribute [rw] cpu
    #   The cpu override for the task.
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerator_overrides
    #   The Elastic Inference accelerator override for the task.
    #   @return [Array<Types::InferenceAcceleratorOverride>]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution IAM role
    #   override for the task.
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The memory override for the task.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that containers in
    #   this task can assume. All containers in this task are granted the
    #   permissions that are specified in this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskOverride AWS API Documentation
    #
    class TaskOverride < Struct.new(
      :container_overrides,
      :cpu,
      :inference_accelerator_overrides,
      :execution_role_arn,
      :memory,
      :task_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a set of Amazon ECS tasks in either an AWS
    # CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    # includes details such as the desired number of tasks, how many tasks
    # are running, and whether the task set serves production traffic.
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
    #   The tag specified when a task set is started. If the task set is
    #   created by an AWS CodeDeploy deployment, the `startedBy` parameter
    #   is `CODE_DEPLOY`. For a task set created for an external deployment,
    #   the startedBy field isn't used.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID associated with the task set.
    #
    #   If a task set is created by an AWS CodeDeploy deployment, the
    #   `externalId` parameter contains the AWS CodeDeploy deployment ID.
    #
    #   If a task set is created for an external deployment and is
    #   associated with a service discovery registry, the `externalId`
    #   parameter contains the `ECS_TASK_SET_EXTERNAL_ID` AWS Cloud Map
    #   attribute.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task set. The following describes each state:
    #
    #   PRIMARY
    #
    #   : The task set is serving production traffic.
    #
    #   ACTIVE
    #
    #   : The task set is not serving production traffic.
    #
    #   DRAINING
    #
    #   : The tasks in the task set are being stopped and their
    #     corresponding targets are being deregistered from their target
    #     group.
    #   @return [String]
    #
    # @!attribute [rw] task_definition
    #   The task definition the task set is using.
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
    #   when it launches for the first time or when it is restarted after
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
    #   The Unix timestamp for when the task set was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp for when the task set was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] launch_type
    #   The launch type the tasks in the task set are using. For more
    #   information, see [Amazon ECS Launch Types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy associated with the task set.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which the tasks in the task set are running.
    #   A platform version is only specified for tasks using the Fargate
    #   launch type. If one is not specified, the `LATEST` platform version
    #   is used by default. For more information, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the task set.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] load_balancers
    #   Details on a load balancer that is used with a task set.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] service_registries
    #   The details of the service discovery registries to assign to this
    #   task set. For more information, see [Service Discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #   @return [Array<Types::ServiceRegistry>]
    #
    # @!attribute [rw] scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #   @return [Types::Scale]
    #
    # @!attribute [rw] stability_status
    #   The stability status, which indicates whether the task set has
    #   reached a steady state. If the following conditions are met, the
    #   task set will be in `STEADY_STATE`\:
    #
    #   * The task `runningCount` is equal to the `computedDesiredCount`.
    #
    #   * The `pendingCount` is `0`.
    #
    #   * There are no tasks running on container instances in the
    #     `DRAINING` status.
    #
    #   * All tasks are reporting a healthy status from the load balancers,
    #     service discovery, and container health checks.
    #
    #   If any of those conditions are not met, the stability status returns
    #   `STABILIZING`.
    #   @return [String]
    #
    # @!attribute [rw] stability_status_at
    #   The Unix timestamp for when the task set stability status was
    #   retrieved.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task set to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
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
    #     for AWS use. You cannot edit or delete tag keys or values with
    #     this prefix. Tags with this prefix do not count against your tags
    #     per resource limit.
    #   @return [Array<Types::Tag>]
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
      :network_configuration,
      :load_balancers,
      :service_registries,
      :scale,
      :stability_status,
      :stability_status_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified task set could not be found. You can view your available
    # task sets with DescribeTaskSets. Task sets are specific to each
    # cluster, service and Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskSetNotFoundException AWS API Documentation
    #
    class TaskSetNotFoundException < Aws::EmptyStructure; end

    # The container path, mount options, and size of the tmpfs mount.
    #
    # @note When making an API call, you may pass Tmpfs
    #   data as a hash:
    #
    #       {
    #         container_path: "String", # required
    #         size: 1, # required
    #         mount_options: ["String"],
    #       }
    #
    # @!attribute [rw] container_path
    #   The absolute file path where the tmpfs volume is to be mounted.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size (in MiB) of the tmpfs volume.
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

    # The `ulimit` settings to pass to the container.
    #
    # @note When making an API call, you may pass Ulimit
    #   data as a hash:
    #
    #       {
    #         name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #         soft_limit: 1, # required
    #         hard_limit: 1, # required
    #       }
    #
    # @!attribute [rw] name
    #   The `type` of the `ulimit`.
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the ulimit type.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the ulimit type.
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

    # The specified task is not supported in this Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UnsupportedFeatureException AWS API Documentation
    #
    class UnsupportedFeatureException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Currently, the supported resources are Amazon ECS capacity
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

    # @note When making an API call, you may pass UpdateClusterSettingsRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         settings: [ # required
    #           {
    #             name: "containerInsights", # accepts containerInsights
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster
    #   The name of the cluster to modify the settings for.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The setting to use by default for a cluster. This parameter is used
    #   to enable CloudWatch Container Insights for a cluster. If this value
    #   is specified, it will override the `containerInsights` value set
    #   with PutAccountSetting or PutAccountSettingDefault.
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
    #   A regional grouping of one or more container instances on which you
    #   can run task requests. Each account receives a default cluster the
    #   first time you use the Amazon ECS service, but you may also create
    #   other clusters. Clusters may contain more than one instance type
    #   simultaneously.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterSettingsResponse AWS API Documentation
    #
    class UpdateClusterSettingsResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContainerAgentRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instance: "String", # required
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your container instance is running on. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instance
    #   The container instance ID or full ARN entries for the container
    #   instance on which you would like to update the Amazon ECS container
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
    #   The container instance for which the container agent was updated.
    #   @return [Types::ContainerInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgentResponse AWS API Documentation
    #
    class UpdateContainerAgentResponse < Struct.new(
      :container_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContainerInstancesStateRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         container_instances: ["String"], # required
    #         status: "ACTIVE", # required, accepts ACTIVE, DRAINING, REGISTERING, DEREGISTERING, REGISTRATION_FAILED
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the container instance to update. If you do not specify a
    #   cluster, the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] container_instances
    #   A list of container instance IDs or full ARN entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The container instance state with which to update the container
    #   instance. The only valid values for this action are `ACTIVE` and
    #   `DRAINING`. A container instance can only be updated to `DRAINING`
    #   status once it has reached an `ACTIVE` state. If a container
    #   instance is in `REGISTERING`, `DEREGISTERING`, or
    #   `REGISTRATION_FAILED` state you can describe the container instance
    #   but will be unable to update the container instance state.
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

    # There is already a current Amazon ECS container agent update in
    # progress on the specified container instance. If the container agent
    # becomes disconnected while it is in a transitional stage, such as
    # `PENDING` or `STAGING`, the update process can get stuck in that
    # state. However, when the agent reconnects, it resumes where it stopped
    # previously.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateInProgressException AWS API Documentation
    #
    class UpdateInProgressException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateServicePrimaryTaskSetRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         service: "String", # required
    #         primary_task_set: "String", # required
    #       }
    #
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
    #   Information about a set of Amazon ECS tasks in either an AWS
    #   CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    #   includes details such as the desired number of tasks, how many tasks
    #   are running, and whether the task set serves production traffic.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServicePrimaryTaskSetResponse AWS API Documentation
    #
    class UpdateServicePrimaryTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String",
    #         service: "String", # required
    #         desired_count: 1,
    #         task_definition: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         deployment_configuration: {
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #         },
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "String",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "String",
    #           },
    #         ],
    #         platform_version: "String",
    #         force_new_deployment: false,
    #         health_check_grace_period_seconds: 1,
    #       }
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that your service is running on. If you do not specify a cluster,
    #   the default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The name of the service to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_count
    #   The number of instantiations of the task to place and keep running
    #   in your service.
    #   @return [Integer]
    #
    # @!attribute [rw] task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used. If you modify the
    #   task definition with `UpdateService`, Amazon ECS spawns a task with
    #   the new version of the task definition and then stops an old task
    #   after the new version is running.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to update the service to use.
    #
    #   If the service is using the default capacity provider strategy for
    #   the cluster, the service can be updated to use one or more capacity
    #   providers as opposed to the default capacity provider strategy.
    #   However, when a service is using a capacity provider strategy that
    #   is not the default capacity provider strategy, the service cannot be
    #   updated to use the cluster's default capacity provider strategy.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in
    #   a capacity provider strategy. The PutClusterCapacityProviders API is
    #   used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group,
    #   the capacity provider must already be created. New capacity
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a AWS Fargate capacity provider, specify either the `FARGATE`
    #   or `FARGATE_SPOT` capacity providers. The AWS Fargate capacity
    #   providers are available to all accounts and only need to be
    #   associated with a cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] deployment_configuration
    #   Optional deployment parameters that control how many tasks run
    #   during the deployment and the ordering of stopping and starting
    #   tasks.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   An object representing the network configuration for a task or
    #   service.
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
    #   You can specify a maximum of 10 constraints per task (this limit
    #   includes constraints in the task definition and those specified at
    #   runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The task placement strategy objects to update the service to use. If
    #   no value is specified, the existing placement strategy for the
    #   service will remain unchanged. If this value is specified, it will
    #   override the existing placement strategy defined for the service. To
    #   remove an existing placement strategy, specify an empty object.
    #
    #   You can specify a maximum of five strategy rules per service.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   The platform version on which your tasks in the service are running.
    #   A platform version is only specified for tasks using the Fargate
    #   launch type. If a platform version is not specified, the `LATEST`
    #   platform version is used by default. For more information, see [AWS
    #   Fargate Platform Versions][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] force_new_deployment
    #   Whether to force a new deployment of the service. Deployments are
    #   not forced by default. You can use this option to trigger a new
    #   deployment with no service definition changes. For example, you can
    #   update a service's tasks to use a newer Docker image with the same
    #   image/tag combination (`my_image:latest`) or to roll Fargate tasks
    #   onto a newer platform version.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service
    #   scheduler should ignore unhealthy Elastic Load Balancing target
    #   health checks after a task has first started. This is only valid if
    #   your service is configured to use a load balancer. If your
    #   service's tasks take a while to start and respond to Elastic Load
    #   Balancing health checks, you can specify a health check grace period
    #   of up to 2,147,483,647 seconds. During that time, the Amazon ECS
    #   service scheduler ignores the Elastic Load Balancing health check
    #   status. This grace period can prevent the ECS service scheduler from
    #   marking tasks as unhealthy and stopping them before they have time
    #   to come up.
    #   @return [Integer]
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
      :network_configuration,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :force_new_deployment,
      :health_check_grace_period_seconds)
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

    # @note When making an API call, you may pass UpdateTaskSetRequest
    #   data as a hash:
    #
    #       {
    #         cluster: "String", # required
    #         service: "String", # required
    #         task_set: "String", # required
    #         scale: { # required
    #           value: 1.0,
    #           unit: "PERCENT", # accepts PERCENT
    #         },
    #       }
    #
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
    #   Information about a set of Amazon ECS tasks in either an AWS
    #   CodeDeploy or an `EXTERNAL` deployment. An Amazon ECS task set
    #   includes details such as the desired number of tasks, how many tasks
    #   are running, and whether the task set serves production traffic.
    #   @return [Types::TaskSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskSetResponse AWS API Documentation
    #
    class UpdateTaskSetResponse < Struct.new(
      :task_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Docker and Amazon ECS container agent version information about a
    # container instance.
    #
    # @note When making an API call, you may pass VersionInfo
    #   data as a hash:
    #
    #       {
    #         agent_version: "String",
    #         agent_hash: "String",
    #         docker_version: "String",
    #       }
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
    #   [1]: https://github.com/aws/amazon-ecs-agent/commits/master
    #   @return [String]
    #
    # @!attribute [rw] docker_version
    #   The Docker version running on the container instance.
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

    # A data volume used in a task definition. For tasks that use Amazon
    # Elastic File System (Amazon EFS) file storage, specify an
    # `efsVolumeConfiguration`. For tasks that use a Docker volume, specify
    # a `DockerVolumeConfiguration`. For tasks that use a bind mount host
    # volume, specify a `host` and optional `sourcePath`. For more
    # information, see [Using Data Volumes in Tasks][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #
    # @note When making an API call, you may pass Volume
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         host: {
    #           source_path: "String",
    #         },
    #         docker_volume_configuration: {
    #           scope: "task", # accepts task, shared
    #           autoprovision: false,
    #           driver: "String",
    #           driver_opts: {
    #             "String" => "String",
    #           },
    #           labels: {
    #             "String" => "String",
    #           },
    #         },
    #         efs_volume_configuration: {
    #           file_system_id: "String", # required
    #           root_directory: "String",
    #           transit_encryption: "ENABLED", # accepts ENABLED, DISABLED
    #           transit_encryption_port: 1,
    #           authorization_config: {
    #             access_point_id: "String",
    #             iam: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, and hyphens are allowed. This name is referenced in the
    #   `sourceVolume` parameter of container definition `mountPoints`.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   This parameter is specified when you are using bind mount host
    #   volumes. The contents of the `host` parameter determine whether your
    #   bind mount host volume persists on the host container instance and
    #   where it is stored. If the `host` parameter is empty, then the
    #   Docker daemon assigns a host path for your data volume. However, the
    #   data is not guaranteed to persist after the containers associated
    #   with it stop running.
    #
    #   Windows containers can mount whole directories on the same drive as
    #   `$env:ProgramData`. Windows containers cannot mount directories on a
    #   different drive, and mount point cannot be across drives. For
    #   example, you can mount `C:\my\path:C:\my\path` and `D:\:D:`, but
    #   not `D:\my\path:C:\my\path` or `D:\:C:\my\path`.
    #   @return [Types::HostVolumeProperties]
    #
    # @!attribute [rw] docker_volume_configuration
    #   This parameter is specified when you are using Docker volumes.
    #   Docker volumes are only supported when you are using the EC2 launch
    #   type. Windows containers only support the use of the `local` driver.
    #   To use bind mounts, specify the `host` parameter instead.
    #   @return [Types::DockerVolumeConfiguration]
    #
    # @!attribute [rw] efs_volume_configuration
    #   This parameter is specified when you are using an Amazon Elastic
    #   File System file system for task storage.
    #   @return [Types::EFSVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :name,
      :host,
      :docker_volume_configuration,
      :efs_volume_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on a data volume from another container in the same task
    # definition.
    #
    # @note When making an API call, you may pass VolumeFrom
    #   data as a hash:
    #
    #       {
    #         source_container: "String",
    #         read_only: false,
    #       }
    #
    # @!attribute [rw] source_container
    #   The name of another container within the same task definition from
    #   which to mount volumes.
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

  end
end
