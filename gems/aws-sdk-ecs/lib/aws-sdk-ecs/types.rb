# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECS
  module Types

    # You don't have authorization to perform the requested action.
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
    #   `CREATED`, `ATTACHING`, `ATTACHED`, `DETACHING`, `DETACHED`,
    #   `DELETED`, and `FAILED`.
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
    # view the attributes of a resource with ListAttributes. You can remove
    # existing attributes on a resource with DeleteAttributes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AttributeLimitExceededException AWS API Documentation
    #
    class AttributeLimitExceededException < Aws::EmptyStructure; end

    # The details of the Auto Scaling group for the capacity provider.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AutoScalingGroupProvider AWS API Documentation
    #
    class AutoScalingGroupProvider < Struct.new(
      :auto_scaling_group_arn,
      :managed_scaling,
      :managed_termination_protection)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/AutoScalingGroupProviderUpdate AWS API Documentation
    #
    class AutoScalingGroupProviderUpdate < Struct.new(
      :managed_scaling,
      :managed_termination_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the networking details for a task or service.
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets associated with the task or service. There's
    #   a limit of 16 subnets that can be specified per
    #   `AwsVpcConfiguration`.
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
    #   be specified per `AwsVpcConfiguration`.
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

    # The details of a capacity provider strategy. A capacity provider
    # strategy can be set when using the RunTask or CreateCluster APIs or as
    # the default capacity provider strategy for a cluster with the
    # CreateCluster API.
    #
    # Only capacity providers that are already associated with a cluster and
    # have an `ACTIVE` or `UPDATING` status can be used in a capacity
    # provider strategy. The PutClusterCapacityProviders API is used to
    # associate a capacity provider with a cluster.
    #
    # If specifying a capacity provider that uses an Auto Scaling group, the
    # capacity provider must already be created. New Auto Scaling group
    # capacity providers can be created with the CreateCapacityProvider API
    # operation.
    #
    # To use a Fargate capacity provider, specify either the `FARGATE` or
    # `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    # available to all accounts and only need to be associated with a
    # cluster to be used in a capacity provider strategy.
    #
    # A capacity provider strategy may contain a maximum of 6 capacity
    # providers.
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
    #   An example scenario for using weights is defining a strategy that
    #   contains two capacity providers and both have a weight of `1`, then
    #   when the `base` is satisfied, the tasks will be split evenly across
    #   the two capacity providers. Using that same logic, if you specify a
    #   weight of `1` for *capacityProviderA* and a weight of `4` for
    #   *capacityProviderB*, then for every one task that's run using
    #   *capacityProviderA*, four tasks would use *capacityProviderB*.
    #   @return [Integer]
    #
    # @!attribute [rw] base
    #   The *base* value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider. Only one capacity provider in a
    #   capacity provider strategy can have a *base* defined. If no value is
    #   specified, the default value of `0` is used.
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
    # have permissions to use the action or resource,. Or, it might be
    # specifying an identifier that isn't valid.
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
    #   The execute command configuration for the cluster.
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
    #   `ACTIVE` state. You can view these services with ListServices.
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

    # The execute command configuration for the cluster.
    #
    # @!attribute [rw] execute_command_configuration
    #   The details of the execute command configuration.
    #   @return [Types::ExecuteCommandConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterConfiguration AWS API Documentation
    #
    class ClusterConfiguration < Struct.new(
      :execute_command_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't delete a cluster that has registered container instances.
    # First, deregister the container instances before you can delete the
    # cluster. For more information, see DeregisterContainerInstance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ClusterContainsContainerInstancesException AWS API Documentation
    #
    class ClusterContainsContainerInstancesException < Aws::EmptyStructure; end

    # You can't delete a cluster that contains services. First, update the
    # service to reduce its desired task count to 0, and then delete the
    # service. For more information, see UpdateService and DeleteService.
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
    # clusters with ListClusters. Amazon ECS clusters are Region specific.
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
    #   can't include hyphens (-), tilde (~), greater than (&gt;), less
    #   than (&lt;), or slash (/).
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
    #   If you update the service with an empty string `""` for the
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
    # turn on CloudWatch Container Insights for a cluster.
    #
    # @!attribute [rw] name
    #   The name of the cluster setting. The value is `containerInsights` .
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to set for the cluster setting. The supported values are
    #   `enabled` and `disabled`.
    #
    #   If you set `name` to `containerInsights` and `value` to `enabled`,
    #   CloudWatch Container Insights will be on for the cluster, otherwise
    #   it will be off unless the `containerInsights` account setting is
    #   turned on. If a cluster value is specified, it will override the
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
    #   in the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--name` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. By default, images in the Docker Hub registry
    #   are available. Other repositories are specified with either `
    #   repository-url/image:tag ` or ` repository-url/image@digest `. Up to
    #   255 letters (uppercase and lowercase), numbers, hyphens,
    #   underscores, colons, periods, forward slashes, and number signs are
    #   allowed. This parameter maps to `Image` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the `IMAGE`
    #   parameter of [docker run][3].
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   ratios for running containers. For more information, see [CPU share
    #   constraint][5] in the Docker documentation. The minimum valid CPU
    #   share value that the Linux kernel allows is 2. However, the CPU
    #   parameter isn't required, and you can use CPU values below 2 in
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
    #   the specified amount of CPU that's described in the task
    #   definition. A null or zero CPU value is passed to Docker as `0`,
    #   which Windows interprets as 1% of one CPU.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Integer]
    #
    # @!attribute [rw] links
    #   The `links` parameter allows containers to communicate with each
    #   other without the need for port mappings. This parameter is only
    #   supported if the network mode of a task definition is `bridge`. The
    #   `name:internalName` construct is analogous to `name:alias` in Docker
    #   links. Up to 255 letters (uppercase and lowercase), numbers,
    #   underscores, and hyphens are allowed. For more information about
    #   linking Docker containers, go to [Legacy container links][1] in the
    #   Docker documentation. This parameter maps to `Links` in the [Create
    #   a container][2] section of the [Docker Remote API][3] and the
    #   `--link` option to [docker run][4].
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
    #   [4]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    # @!attribute [rw] entry_point
    #   Early versions of the Amazon ECS container agent don't properly
    #   handle `entryPoint` parameters. If you have problems using
    #   `entryPoint`, update your container agent or enter your commands and
    #   arguments as `command` array items instead.
    #
    #   The entry point that's passed to the container. This parameter maps
    #   to `Entrypoint` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--entrypoint` option to [docker
    #   run][3]. For more information, see
    #   [https://docs.docker.com/engine/reference/builder/#entrypoint][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   [4]: https://docs.docker.com/engine/reference/builder/#entrypoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] command
    #   The command that's passed to the container. This parameter maps to
    #   `Cmd` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `COMMAND` parameter to [docker run][3]. For more
    #   information, see
    #   [https://docs.docker.com/engine/reference/builder/#cmd][4]. If there
    #   are multiple arguments, each argument is a separated string in the
    #   array.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   [4]: https://docs.docker.com/engine/reference/builder/#cmd
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container. This parameter
    #   maps to `Env` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--env` option to [docker run][3].
    #
    #   We don't recommend that you use plaintext environment variables for
    #   sensitive information, such as credential data.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container. This parameter maps to the `--env-file` option to [docker
    #   run][1].
    #
    #   You can specify up to ten environment files. The file must have a
    #   `.env` file extension. Each line in an environment file contains an
    #   environment variable in `VARIABLE=VALUE` format. Lines beginning
    #   with `#` are treated as comments and are ignored. For more
    #   information about the environment variable file syntax, see [Declare
    #   default environment variables in file][2].
    #
    #   If there are environment variables specified using the `environment`
    #   parameter in a container definition, they take precedence over the
    #   variables contained within an environment file. If multiple
    #   environment files are specified that contain the same variable,
    #   they're processed from the top down. We recommend that you use
    #   unique variable names. For more information, see [Specifying
    #   Environment Variables][3] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   `$env:ProgramData`. Windows containers can't mount directories on a
    #   different drive, and mount point can't be across drives.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   The max stop timeout value is 120 seconds and if the parameter is
    #   not specified, the default value of 30 seconds is used.
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
    #   <note markdown="1"> The `hostname` parameter is not supported if you're using the
    #   `awsvpc` network mode.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The user to use inside the container. This parameter maps to `User`
    #   in the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--user` option to [docker run][3].
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The working directory to run commands inside the container in. This
    #   parameter maps to `WorkingDir` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--workdir` option to
    #   [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [String]
    #
    # @!attribute [rw] disable_networking
    #   When this parameter is true, networking is off within the container.
    #   This parameter maps to `NetworkDisabled` in the [Create a
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
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Array<String>]
    #
    # @!attribute [rw] extra_hosts
    #   A list of hostnames and IP address mappings to append to the
    #   `/etc/hosts` file on the container. This parameter maps to
    #   `ExtraHosts` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--add-host` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter isn't supported for Windows containers or tasks that
    #   use the `awsvpc` network mode.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Array<Types::HostEntry>]
    #
    # @!attribute [rw] docker_security_options
    #   A list of strings to provide custom configuration for multiple
    #   security systems. For more information about valid values, see
    #   [Docker Run Security Configuration][1]. This field isn't valid for
    #   containers in tasks using the Fargate launch type.
    #
    #   For Linux tasks on EC2, this parameter can be used to reference
    #   custom labels for SELinux and AppArmor multi-level security systems.
    #
    #   For any tasks on EC2, this parameter can be used to reference a
    #   credential spec file that configures a container for Active
    #   Directory authentication. For more information, see [Using gMSAs for
    #   Windows Containers][2] and [Using gMSAs for Linux Containers][3] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   This parameter maps to `SecurityOpt` in the [Create a container][4]
    #   section of the [Docker Remote API][5] and the `--security-opt`
    #   option to [docker run][1].
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register with the `ECS_SELINUX_CAPABLE=true` or
    #   `ECS_APPARMOR_CAPABLE=true` environment variables before containers
    #   placed on that instance can use these security options. For more
    #   information, see [Amazon ECS Container Agent Configuration][6] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #   For more information about valid values, see [Docker Run Security
    #   Configuration][1].
    #
    #   Valid values: "no-new-privileges" \| "apparmor:PROFILE" \|
    #   "label:value" \| "credentialspec:CredentialSpecFilePath"
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/linux-gmsa.html
    #   [4]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [5]: https://docs.docker.com/engine/api/v1.35/
    #   [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] interactive
    #   When this parameter is `true`, you can deploy containerized
    #   applications that require `stdin` or a `tty` to be allocated. This
    #   parameter maps to `OpenStdin` in the [Create a container][1] section
    #   of the [Docker Remote API][2] and the `--interactive` option to
    #   [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimits` to set in the container. If a `ulimit` value is
    #   specified in a task definition, it overrides the default values set
    #   by Docker. This parameter maps to `Ulimits` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--ulimit` option to [docker run][3]. Valid naming values are
    #   displayed in the Ulimit data type.
    #
    #   Amazon ECS tasks hosted on Fargate use the default resource limit
    #   values set by the operating system with the exception of the
    #   `nofile` resource limit parameter which Fargate overrides. The
    #   `nofile` resource limit sets a restriction on the number of open
    #   files that a container can use. The default `nofile` soft limit is
    #   `1024` and the default hard limit is `4096`.
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version
    #   --format '\{\{.Server.APIVersion\}\}'`
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   This parameter maps to `LogConfig` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--log-driver` option
    #   to [docker run][3]. By default, containers use the same logging
    #   driver that the Docker daemon uses. However the container can use a
    #   different logging driver than the Docker daemon by specifying a log
    #   driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information about the
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Types::HealthCheck]
    #
    # @!attribute [rw] system_controls
    #   A list of namespaced kernel parameters to set in the container. This
    #   parameter maps to `Sysctls` in the [Create a container][1] section
    #   of the [Docker Remote API][2] and the `--sysctl` option to [docker
    #   run][3].
    #
    #   <note markdown="1"> We don't recommended that you specify network-related
    #   `systemControls` parameters for multiple containers in a single task
    #   that also uses either the `awsvpc` or `host` network modes. For
    #   tasks that use the `awsvpc` network mode, the container that's
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   A list of ARNs in SSM or Amazon S3 to a credential spec
    #   (`credspec`code&gt;) file that configures a container for Active
    #   Directory authentication. This parameter is only used with
    #   domainless authentication.
    #
    #   The format for each ARN is `credentialspecdomainless:MyARN`. Replace
    #   `MyARN` with the ARN in SSM or Amazon S3.
    #
    #   The `credspec` must provide a ARN in Secrets Manager for a secret
    #   containing the username, password, and the domain to connect to. For
    #   better security, the instance isn't joined to the domain for
    #   domainless authentication. Other applications on the instance can't
    #   use the domainless credentials. You can use this parameter to run
    #   tasks on the same instance, even it the tasks need to join different
    #   domains. For more information, see [Using gMSAs for Windows
    #   Containers][1] and [Using gMSAs for Linux Containers][2].
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
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
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
    #   The status of the most recent agent update. If an update wasn't
    #   ever requested, this value is `NULL`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes set for the container instance, either by the Amazon
    #   ECS container agent at instance registration or manually with the
    #   PutAttributes operation.
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
    # is `\{"containerOverrides": [ ] \}`. If a non-empty container override
    # is specified, the `name` parameter must be included.
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
    # @!attribute [rw] auto_scaling_group_provider
    #   The details of the Auto Scaling group for the capacity provider.
    #   @return [Types::AutoScalingGroupProvider]
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
    #   with PutAccountSetting or PutAccountSettingDefault.
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
    #   PutClusterCapacityProviders API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
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
    # @!attribute [rw] load_balancers
    #   A load balancer object representing the load balancers to use with
    #   your service. For more information, see [Service load balancing][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the service uses the rolling update (`ECS`) deployment controller
    #   and using either an Application Load Balancer or Network Load
    #   Balancer, you must specify one or more target group ARNs to attach
    #   to the service. The service-linked role is required for services
    #   that use multiple target groups. For more information, see [Using
    #   service-linked roles for Amazon ECS][2] in the *Amazon Elastic
    #   Container Service Developer Guide*.
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
    #   request. It must be unique and is case sensitive. Up to 32 ASCII
    #   characters are allowed.
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
    #   capacity providers][2] in the *Amazon ECS User Guide for Fargate*.
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
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html
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
    #   A capacity provider strategy may contain a maximum of 6 capacity
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
    #   scheduler ignores unhealthy Elastic Load Balancing target health
    #   checks after a task has first started. This is only used when your
    #   service is configured to use a load balancer. If your service has a
    #   load balancer defined and you don't specify a health check grace
    #   period value, the default value of `0` is used.
    #
    #   If you do not use an Elastic Load Balancing, we recommend that you
    #   use the `startPeriod` in the task definition health check
    #   parameters. For more information, see [Health check][1].
    #
    #   If your service's tasks take a while to start and respond to
    #   Elastic Load Balancing health checks, you can specify a health check
    #   grace period of up to 2,147,483,647 seconds (about 69 years). During
    #   that time, the Amazon ECS service scheduler ignores health check
    #   status. This grace period can prevent the service scheduler from
    #   marking tasks as unhealthy and stopping them before they have time
    #   to come up.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html
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
    #   When you use Amazon ECS managed tags, you need to set the
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
    #   The default is `NONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
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
      :propagate_tags,
      :enable_execute_command,
      :service_connect_configuration)
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
    #   The task definition for the tasks in the task set to use.
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
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #   The PutClusterCapacityProviders API operation is used to update the
    #   list of available capacity providers for a cluster after the cluster
    #   is created.
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
    #   The identifier that you provide to ensure the idempotency of the
    #   request. It's case sensitive and must be unique. It can be up to 32
    #   ASCII characters are allowed.
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
    #   The Amazon Resource Name (ARN) of the principal. It can be an user,
    #   role, or the root user. If you specify the root user, it disables
    #   the account setting for all users, roles, and the root user of the
    #   account unless a user or role explicitly overrides these settings.
    #   If this field is omitted, the setting is changed only for the
    #   authenticated user.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProviderRequest AWS API Documentation
    #
    class DeleteCapacityProviderRequest < Struct.new(
      :capacity_provider)
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
    #   For more information, see DeploymentCircuitBreaker.
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
      :service_connect_resources)
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
    # the `DeploymentController` is set to `ECS` (rolling update).
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
    # @!attribute [rw] enable
    #   Determines whether to use the CloudWatch alarm option in the service
    #   deployment process.
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback
    #   Determines whether to configure Amazon ECS to roll back the service
    #   if a service deployment fails. If rollback is used, when a service
    #   deployment fails, the service is rolled back to the last deployment
    #   that completed successfully.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentAlarms AWS API Documentation
    #
    class DeploymentAlarms < Struct.new(
      :alarm_names,
      :enable,
      :rollback)
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
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html
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
    #   If a service is using either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types and tasks that use the EC2 launch type,
    #   the **maximum percent** value is set to the default value and is
    #   used to define the upper limit on the number of the tasks in the
    #   service that remain in the `RUNNING` state while the container
    #   instances are in the `DRAINING` state. If the tasks in the service
    #   use the Fargate launch type, the maximum percent value is not used,
    #   although it is returned when describing your service.
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
    #   For services are that *do* use a load balancer, the following should
    #   be noted:
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
    #   If a service is using either the blue/green (`CODE_DEPLOY`) or
    #   `EXTERNAL` deployment types and is running tasks that use the EC2
    #   launch type, the **minimum healthy percent** value is set to the
    #   default value and is used to define the lower limit on the number of
    #   the tasks in the service that remain in the `RUNNING` state while
    #   the container instances are in the `DRAINING` state. If a service is
    #   using either the blue/green (`CODE_DEPLOY`) or `EXTERNAL` deployment
    #   types and is running tasks that use the Fargate launch type, the
    #   minimum healthy percent value is not used, although it is returned
    #   when describing your service.
    #   @return [Integer]
    #
    # @!attribute [rw] alarms
    #   Information about the CloudWatch alarms.
    #   @return [Types::DeploymentAlarms]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :deployment_circuit_breaker,
      :maximum_percent,
      :minimum_healthy_percent,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deployment controller to use for the service. For more
    # information, see [Amazon ECS deployment types][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
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
    #     deployment model powered by CodeDeploy, which allows you to verify
    #     a new deployment of a service before sending production traffic to
    #     it.
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
    # beginning with `#` are treated as comments and are ignored. For more
    # information about the environment variable file syntax, see [Declare
    # default environment variables in file][1].
    #
    # If there are environment variables specified using the `environment`
    # parameter in a container definition, they take precedence over the
    # variables contained within an environment file. If multiple
    # environment files are specified that contain the same variable,
    # they're processed from the top down. We recommend that you use unique
    # variable names. For more information, see [Specifying environment
    # variables][2] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # This parameter is only supported for tasks hosted on Fargate using the
    # following platform versions:
    #
    # * Linux platform version `1.4.0` or later.
    #
    # * Windows platform version `1.0.0` or later.
    #
    #
    #
    # [1]: https://docs.docker.com/compose/env-file/
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html
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

    # The amount of ephemeral storage to allocate for the task. This
    # parameter is used to expand the total amount of ephemeral storage
    # available, beyond the default amount, for tasks hosted on Fargate. For
    # more information, see [Fargate task storage][1] in the *Amazon ECS
    # User Guide for Fargate*.
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
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html
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
    #   `"options":\{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"\}`.
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
    # configuration maps to the `HEALTHCHECK` parameter of [docker run][1].
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
    # The following describes the possible `healthStatus` values for a
    # container:
    #
    # * `HEALTHY`-The container health check has passed successfully.
    #
    # * `UNHEALTHY`-The container health check has failed.
    #
    # * `UNKNOWN`-The container health check is being evaluated or there's
    #   no container health check defined.
    #
    # The following describes the possible `healthStatus` values for a task.
    # The container health check status of non-essential containers don't
    # have an effect on the health status of a task.
    #
    # * `HEALTHY`-All essential containers within the task have passed their
    #   health checks.
    #
    # * `UNHEALTHY`-One or more essential containers have failed their
    #   health check.
    #
    # * `UNKNOWN`-The essential containers within the task are still having
    #   their health checks evaluated, there are only nonessential
    #   containers with health checks defined, or there are no container
    #   health checks defined.
    #
    # If a task is run manually, and not as part of a service, the task will
    # continue its lifecycle regardless of its health status. For tasks that
    # are part of a service, if the task reports as unhealthy then the task
    # will be stopped and the service scheduler will replace it.
    #
    # The following are notes about container health check support:
    #
    # * When the Amazon ECS agent cannot connect to the Amazon ECS service,
    #   the service reports the container as `UNHEALTHY`.
    #
    # * The health check statuses are the "last heard from" response from
    #   the Amazon ECS agent. There are no assumptions made about the status
    #   of the container health checks.
    #
    # * Container health checks require version 1.17.0 or greater of the
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
    #
    #
    # [1]: https://docs.docker.com/engine/reference/run/
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
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
    #   The optional grace period to provide containers time to bootstrap
    #   before failed health checks count towards the maximum number of
    #   retries. You can specify between 0 and 300 seconds. By default, the
    #   `startPeriod` is off.
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

    # The specified parameter isn't valid. Review the available parameters
    # for the API request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The Linux capabilities for the container that are added to or dropped
    # from the default configuration provided by Docker. For more
    # information about the default capabilities and the non-default
    # available capabilities, see [Runtime privilege and Linux
    # capabilities][1] in the *Docker run reference*. For more detailed
    # information about these Linux capabilities, see the
    # [capabilities(7)][2] Linux manual page.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities
    # [2]: http://man7.org/linux/man-pages/man7/capabilities.7.html
    #
    # @!attribute [rw] add
    #   The Linux capabilities for the container that have been added to the
    #   default configuration provided by Docker. This parameter maps to
    #   `CapAdd` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cap-add` option to [docker run][3].
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
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   `Devices` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--device` option to [docker run][3].
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `devices` parameter isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount. This parameter maps to the `--tmpfs` option to [docker
    #   run][1].
    #
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the `tmpfs`
    #   parameter isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `maxSwap` parameter isn't supported.
    #
    #    If you're using tasks on Amazon Linux 2023 the `swappiness`
    #   parameter isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   <note markdown="1"> If you're using tasks that use the Fargate launch type, the
    #   `swappiness` parameter isn't supported.
    #
    #    If you're using tasks on Amazon Linux 2023 the `swappiness`
    #   parameter isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/#security-configuration
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
    #   UpdateContainerInstancesState. If you don't specify this parameter,
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
    #   Balancer or Network Load Balancer. If you're using a Classic Load
    #   Balancer, omit the target group ARN.
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
    #   type, the container instance they're launched on must allow ingress
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

    # The log configuration for the container. This parameter maps to
    # `LogConfig` in the [Create a container][1] section of the [Docker
    # Remote API][2] and the `--log-driver` option to [ `docker run` ][3].
    #
    # By default, containers use the same logging driver that the Docker
    # daemon uses. However, the container might use a different logging
    # driver than the Docker daemon by specifying a log driver configuration
    # in the container definition. For more information about the options
    # for different supported log drivers, see [Configure logging
    # drivers][4] in the Docker documentation.
    #
    # Understand the following when specifying a log configuration for your
    # containers.
    #
    # * Amazon ECS currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the valid values below).
    #   Additional log drivers may be available in future releases of the
    #   Amazon ECS container agent.
    #
    # * This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance.
    #
    # * For tasks that are hosted on Amazon EC2 instances, the Amazon ECS
    #   container agent must register the available logging drivers with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS container agent
    #   configuration][5] in the *Amazon Elastic Container Service Developer
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
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/commandline/run/
    # [4]: https://docs.docker.com/engine/admin/logging/overview/
    # [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container.
    #
    #   For tasks on Fargate, the supported log drivers are `awslogs`,
    #   `splunk`, and `awsfirelens`.
    #
    #   For tasks hosted on Amazon EC2 instances, the supported log drivers
    #   are `awslogs`, `fluentd`, `gelf`, `json-file`, `journald`,
    #   `logentries`,`syslog`, `splunk`, and `awsfirelens`.
    #
    #   For more information about using the `awslogs` log driver, see
    #   [Using the awslogs log driver][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   For more information about using the `awsfirelens` log driver, see
    #   [Custom log routing][2] in the *Amazon Elastic Container Service
    #   Developer Guide*.
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
    #
    #   If you use a capacity provider with an Auto Scaling group configured
    #   with more than one Amazon EC2 instance type or Availability Zone,
    #   Amazon ECS will scale up by the exact minimum scaling step size
    #   value and will ignore both the maximum scaling step size as well as
    #   the capacity demand.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_scaling_step_size
    #   The maximum number of Amazon EC2 instances that Amazon ECS will
    #   scale out at one time. The scale in process is not affected by this
    #   parameter. If this parameter is omitted, the default value of `1` is
    #   used.
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

    # Details on the network bindings between a container and its host
    # container instance. After a task reaches the `RUNNING` status, manual
    # and automatic host and container port assignments are visible in the
    # `networkBindings` section of DescribeTasks API responses.
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
    #       `hostPort` is set to the same value as the `containerPort`. This
    #       is a static mapping strategy.
    #
    #     * For containers in a task with the `bridge` network mode, the
    #       Amazon ECS agent finds open host ports from the default
    #       ephemeral range and passes it to docker to bind them to the
    #       container ports.
    #
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
    # `protocol`) maps to `PortBindings` in the [Create a container][1]
    # section of the [Docker Remote API][2] and the `--publish` option to [
    # `docker run` ][3]. If the network mode of a task definition is set to
    # `host`, host ports must either be undefined or match the container
    # port in the port mapping.
    #
    # <note markdown="1"> You can't expose the same container port for multiple protocols. If
    # you attempt this, an error is returned.
    #
    #  </note>
    #
    # After a task reaches the `RUNNING` status, manual and automatic host
    # and container port assignments are visible in the `networkBindings`
    # section of DescribeTasks API responses.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/commandline/run/
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
    #   65535 is used. Do not attempt to specify a host port in the
    #   ephemeral port range as these are reserved for automatic assignment.
    #   In general, ports below 32768 are outside of the ephemeral port
    #   range.
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
    #   `udp`. The default is `tcp`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that's used for the port mapping. This parameter only
    #   applies to Service Connect. This parameter is the name that you use
    #   in the `serviceConnectConfiguration` of a service. The name can
    #   include up to 64 characters. The characters can include lowercase
    #   letters, numbers, underscores (\_), and hyphens (-). The name can't
    #   start with a hyphen.
    #
    #   For more information, see [Service Connect][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
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
    #       `hostPort` is set to the same value as the `containerPort`. This
    #       is a static mapping strategy.
    #
    #     * For containers in a task with the `bridge` network mode, the
    #       Amazon ECS agent finds open host ports from the default
    #       ephemeral range and passes it to docker to bind them to the
    #       container ports.
    #
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
    # can set the protection status with the UpdateTaskProtection API and
    # get the status of tasks with the GetTaskProtection API.
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
    #   The resource name for which to modify the account setting. If
    #   `serviceLongArnFormat` is specified, the ARN for your Amazon ECS
    #   services is affected. If `taskLongArnFormat` is specified, the ARN
    #   and resource ID for your Amazon ECS tasks is affected. If
    #   `containerInstanceLongArnFormat` is specified, the ARN and resource
    #   ID for your Amazon ECS container instances is affected. If
    #   `awsvpcTrunking` is specified, the ENI limit for your Amazon ECS
    #   container instances is affected. If `containerInsights` is
    #   specified, the default setting for Amazon Web Services CloudWatch
    #   Container Insights for your clusters is affected. If
    #   `tagResourceAuthorization` is specified, the opt-in option for
    #   tagging resources on creation is affected. For information about the
    #   opt-in timeline, see [Tagging authorization timeline][1] in the
    #   *Amazon ECS Developer Guide*.
    #
    #   When you specify `fargateFIPSMode` for the `name` and `enabled` for
    #   the `value`, Fargate uses FIPS-140 compliant cryptographic
    #   algorithms on your tasks. For more information about FIPS-140
    #   compliance with Fargate, see [ Amazon Web Services Fargate Federal
    #   Information Processing Standard (FIPS) 140-2 compliance][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#tag-resources
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-fips-compliance.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `on`, and `off`.
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
    #   The Amazon ECS resource name for which to modify the account
    #   setting. If `serviceLongArnFormat` is specified, the ARN for your
    #   Amazon ECS services is affected. If `taskLongArnFormat` is
    #   specified, the ARN and resource ID for your Amazon ECS tasks is
    #   affected. If `containerInstanceLongArnFormat` is specified, the ARN
    #   and resource ID for your Amazon ECS container instances is affected.
    #   If `awsvpcTrunking` is specified, the elastic network interface
    #   (ENI) limit for your Amazon ECS container instances is affected. If
    #   `containerInsights` is specified, the default setting for Amazon Web
    #   Services CloudWatch Container Insights for your clusters is
    #   affected. If `fargateFIPSMode` is specified, Fargate FIPS 140
    #   compliance is affected. If `tagResourceAuthorization` is specified,
    #   the opt-in option for tagging resources on creation is affected. For
    #   information about the opt-in timeline, see [Tagging authorization
    #   timeline][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#tag-resources
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `on`, and `off`.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be a user, role, or the root
    #   user. If you specify the root user, it modifies the account setting
    #   for all users, roles, and the root user of the account unless a user
    #   or role explicitly overrides these settings. If this field is
    #   omitted, the setting is changed only for the authenticated user.
    #
    #   <note markdown="1"> Federated users assume the account setting of the root user and
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
    #   providers can be created with the CreateCapacityProvider API
    #   operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
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
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
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
    #   Services API calls on your behalf. The task execution IAM role is
    #   required depending on the requirements of your task. For more
    #   information, see [Amazon ECS task execution IAM role][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
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
    #   network interface, and you must specify a NetworkConfiguration value
    #   when you create a service or run a task with the task definition.
    #   For more information, see [Task Networking][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
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
    #   If you're using the EC2 launch type, this field is optional.
    #   Supported values are between `128` CPU units (`0.125` vCPUs) and
    #   `10240` CPU units (`10` vCPUs). If you do not specify a value, the
    #   parameter is ignored.
    #
    #   If you're using the Fargate launch type, this field is required and
    #   you must use one of the following values, which determines your
    #   range of supported values for the `memory` parameter:
    #
    #   The CPU units cannot be less than 1 vCPU when you use Windows
    #   containers on Fargate.
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
    #   * 2048 (2 vCPU) - Available `memory` values: 4096 (4 GB) and 16384
    #     (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: 8192 (8 GB) and 30720
    #     (30 GB) in increments of 1024 (1 GB)
    #
    #   * 8192 (8 vCPU) - Available `memory` values: 16 GB and 60 GB in 4 GB
    #     increments
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * 16384 (16vCPU) - Available `memory` values: 32GB and 120 GB in 8
    #     GB increments
    #
    #     This option requires Linux platform `1.4.0` or later.
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
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
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
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
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
    #   For more information, see [Fargate task storage][1] in the *Amazon
    #   ECS User Guide for Fargate*.
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
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] runtime_platform
    #   The operating system that your tasks definitions run on. A platform
    #   family is specified only for tasks using the Fargate launch type.
    #
    #   When you specify a task definition in a service, this value must
    #   match the `runtimePlatform` value of the service.
    #   @return [Types::RuntimePlatform]
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
      :runtime_platform)
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
    #   If the `GPU` type is used, the value is the number of physical
    #   `GPUs` the Amazon ECS container agent reserves for the container.
    #   The number of GPUs that's reserved for all containers in a task
    #   can't exceed the number of available GPUs on the container instance
    #   that the task is launched on.
    #
    #   If the `InferenceAccelerator` type is used, the `value` matches the
    #   `deviceName` for an [InferenceAccelerator][1] specified in a task
    #   definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_InferenceAccelerator.html
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
    #   A capacity provider strategy may contain a maximum of 6 capacity
    #   providers.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   run your task on. If you do not specify a cluster, the default
    #   cluster is assumed.
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
    #   capacity providers][2] in the *Amazon ECS User Guide for Fargate*.
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
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html
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
    #   tags to a task after task creation, use the TagResource API action.
    #
    #   <note markdown="1"> An error will be received if you specify the `SERVICE` option when
    #   running a task.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task. The reference ID can have a
    #   maximum length of 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] started_by
    #   An optional tag specified when a task is started. For example, if
    #   you automatically trigger a task to run a batch process job, you
    #   could apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a ListTasks call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens (-), and underscores (\_) are allowed.
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
    #   When you create a policy for run-task, you can set the resource to
    #   be the latest task definition revision, or a specific revision.
    #
    #   The full ARN value must match the value that you specified as the
    #   `Resource` of the principal's permissions policy.
    #
    #   When you specify the policy resource as the latest task definition
    #   version (by setting the `Resource` in the policy to
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName`),
    #   then set this value to
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName`.
    #
    #   When you specify the policy resource as a specific task definition
    #   version (by setting the `Resource` in the policy to
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1`
    #   or
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*`),
    #   then set this value to
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1`.
    #
    #   For more information, see [Policy Resources for Amazon ECS][1] in
    #   the Amazon Elastic Container Service developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources
    #   @return [String]
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
    #   scheduler ignores unhealthy Elastic Load Balancing target health
    #   checks after a task has first started.
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
      :enable_execute_command)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectClientAlias AWS API Documentation
    #
    class ServiceConnectClientAlias < Struct.new(
      :port,
      :dns_name)
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
    #   `LogConfig` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--log-driver` option to [ `docker run` ][3].
    #
    #   By default, containers use the same logging driver that the Docker
    #   daemon uses. However, the container might use a different logging
    #   driver than the Docker daemon by specifying a log driver
    #   configuration in the container definition. For more information
    #   about the options for different supported log drivers, see
    #   [Configure logging drivers][4] in the Docker documentation.
    #
    #   Understand the following when specifying a log configuration for
    #   your containers.
    #
    #   * Amazon ECS currently supports a subset of the logging drivers
    #     available to the Docker daemon (shown in the valid values below).
    #     Additional log drivers may be available in future releases of the
    #     Amazon ECS container agent.
    #
    #   * This parameter requires version 1.18 of the Docker Remote API or
    #     greater on your container instance.
    #
    #   * For tasks that are hosted on Amazon EC2 instances, the Amazon ECS
    #     container agent must register the available logging drivers with
    #     the `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #     containers placed on that instance can use these log configuration
    #     options. For more information, see [Amazon ECS container agent
    #     configuration][5] in the *Amazon Elastic Container Service
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
    #   [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    #   [2]: https://docs.docker.com/engine/api/v1.35/
    #   [3]: https://docs.docker.com/engine/reference/commandline/run/
    #   [4]: https://docs.docker.com/engine/admin/logging/overview/
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceConnectService AWS API Documentation
    #
    class ServiceConnectService < Struct.new(
      :port_name,
      :discovery_name,
      :client_aliases,
      :ingress_port_override)
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
    #   The Amazon Resource Name (ARN) for the namespace in Cloud Map that
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

    # The specified service isn't active. You can't update a service
    # that's inactive. If you have previously deleted a service, you can
    # re-create it with CreateService.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ServiceNotActiveException AWS API Documentation
    #
    class ServiceNotActiveException < Aws::EmptyStructure; end

    # The specified service wasn't found. You can view your available
    # services with ListServices. Amazon ECS services are cluster specific
    # and Region specific.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Setting AWS API Documentation
    #
    class Setting < Struct.new(
      :name,
      :value,
      :principal_arn)
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
    #   numbers, hyphens (-), and underscores (\_) are allowed.
    #
    #   If a task is started by an Amazon ECS service, the `startedBy`
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

    # @!attribute [rw] cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster
    #   that hosts the task to stop. If you do not specify a cluster, the
    #   default cluster is assumed.
    #   @return [String]
    #
    # @!attribute [rw] task
    #   The task ID of the task to stop.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An optional message specified when a task is stopped. For example,
    #   if you're using a custom scheduler, you can use this parameter to
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
    # parameter maps to `Sysctls` in the [Create a container][1] section of
    # the [Docker Remote API][2] and the `--sysctl` option to [docker
    # run][3].
    #
    # We don't recommend that you specify network-related `systemControls`
    # parameters for multiple containers in a single task. This task also
    # uses either the `awsvpc` or `host` network mode. It does it for the
    # following reasons.
    #
    # * For tasks that use the `awsvpc` network mode, if you set
    #   `systemControls` for any container, it applies to all containers in
    #   the task. If you set different `systemControls` for multiple
    #   containers in a single task, the container that's started last
    #   determines which `systemControls` take effect.
    #
    # * For tasks that use the `host` network mode, the `systemControls`
    #   parameter applies to the container instance's kernel parameter and
    #   that of all containers of any tasks running on that container
    #   instance.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate
    # [2]: https://docs.docker.com/engine/api/v1.35/
    # [3]: https://docs.docker.com/engine/reference/run/#security-configuration
    #
    # @!attribute [rw] namespace
    #   The namespaced kernel parameter to set a `value` for.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the namespaced kernel parameter that's specified in
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
    # container instances with ListContainerInstances. Amazon ECS container
    # instances are cluster-specific and Region-specific.
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
    #   If you use the EC2 launch type, this field is optional. Supported
    #   values are between `128` CPU units (`0.125` vCPUs) and `10240` CPU
    #   units (`10` vCPUs).
    #
    #   If you use the Fargate launch type, this field is required. You must
    #   use one of the following values. These values determine the range of
    #   supported values for the `memory` parameter:
    #
    #   The CPU units cannot be less than 1 vCPU when you use Windows
    #   containers on Fargate.
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
    #   * 2048 (2 vCPU) - Available `memory` values: 4096 (4 GB) and 16384
    #     (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: 8192 (8 GB) and 30720
    #     (30 GB) in increments of 1024 (1 GB)
    #
    #   * 8192 (8 vCPU) - Available `memory` values: 16 GB and 60 GB in 4 GB
    #     increments
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * 16384 (16vCPU) - Available `memory` values: 32GB and 120 GB in 8
    #     GB increments
    #
    #     This option requires Linux platform `1.4.0` or later.
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
    #   The following are valid values:
    #
    #   * `TaskFailedToStart`
    #
    #   * `EssentialContainerExited`
    #
    #   * `UserInitiated`
    #
    #   * `TerminationNotice`
    #
    #   * `ServiceSchedulerInitiated`
    #
    #   * `SpotInterruption`
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
    #   `RUNNING` state to `STOPPED`.
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
      :ephemeral_storage)
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
    #   permission to call Amazon Web Services APIs on your behalf. For more
    #   information, see [Amazon ECS Task Role][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   IAM roles for tasks on Windows require that the `-EnableTaskIAMRole`
    #   option is set when you launch the Amazon ECS-optimized Windows AMI.
    #   Your containers must also run some configuration code to use the
    #   feature. For more information, see [Windows IAM roles for tasks][2]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that
    #   grants the Amazon ECS container agent permission to make Amazon Web
    #   Services API calls on your behalf. The task execution IAM role is
    #   required depending on the requirements of your task. For more
    #   information, see [Amazon ECS task execution IAM role][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
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
    #   network interface, and you must specify a NetworkConfiguration value
    #   when you create a service or run a task with the task definition.
    #   For more information, see [Task Networking][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you cannot run multiple
    #   instantiations of the same task on a single container instance when
    #   port mappings are used.
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
    #   pairs using the Amazon ECS console or the PutAttributes API. These
    #   attributes are used when determining task placement for tasks hosted
    #   on Amazon EC2 instances. For more information, see [Attributes][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #   <note markdown="1"> This parameter isn't supported for tasks run on Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
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
    #   The task launch types the task definition validated against during
    #   task definition registration. For more information, see [Amazon ECS
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
    #   The task launch types the task definition was validated against. For
    #   more information, see [Amazon ECS launch types][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
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
    #   The CPU units cannot be less than 1 vCPU when you use Windows
    #   containers on Fargate.
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
    #   * 2048 (2 vCPU) - Available `memory` values: 4096 (4 GB) and 16384
    #     (16 GB) in increments of 1024 (1 GB)
    #
    #   * 4096 (4 vCPU) - Available `memory` values: 8192 (8 GB) and 30720
    #     (30 GB) in increments of 1024 (1 GB)
    #
    #   * 8192 (8 vCPU) - Available `memory` values: 16 GB and 60 GB in 4 GB
    #     increments
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * 16384 (16vCPU) - Available `memory` values: 32GB and 120 GB in 8
    #     GB increments
    #
    #     This option requires Linux platform `1.4.0` or later.
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
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
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
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run
    #   on Fargate.
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
      :ephemeral_storage)
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified task set wasn't found. You can view your available task
    # sets with DescribeTaskSets. Task sets are specific to each cluster,
    # service and Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TaskSetNotFoundException AWS API Documentation
    #
    class TaskSetNotFoundException < Aws::EmptyStructure; end

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

    # The `ulimit` settings to pass to the container.
    #
    # Amazon ECS tasks hosted on Fargate use the default resource limit
    # values set by the operating system with the exception of the `nofile`
    # resource limit parameter which Fargate overrides. The `nofile`
    # resource limit sets a restriction on the number of open files that a
    # container can use. The default `nofile` soft limit is `1024` and the
    # default hard limit is `4096`.
    #
    # You can specify the `ulimit` settings for a container in a task
    # definition.
    #
    # @!attribute [rw] name
    #   The `type` of the `ulimit`.
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the `ulimit` type.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the `ulimit` type.
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
    # @!attribute [rw] auto_scaling_group_provider
    #   An object that represent the parameters to update for the Auto
    #   Scaling group capacity provider.
    #   @return [Types::AutoScalingGroupProviderUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateCapacityProviderRequest AWS API Documentation
    #
    class UpdateCapacityProviderRequest < Struct.new(
      :name,
      :auto_scaling_group_provider)
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
    #   with PutAccountSetting or PutAccountSettingDefault.
    #
    #   Currently, if you delete an existing cluster that does not have
    #   Container Insights turned on, and then create a new cluster with the
    #   same name with Container Insights tuned on, Container Insights will
    #   not actually be turned on. If you want to preserve the same name for
    #   your existing cluster and turn on Container Insights, you must wait
    #   7 days before you can re-create it.
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
    #   if the service uses the default capacity provider strategy for the
    #   cluster, the service can be updated to use one or more capacity
    #   providers as opposed to the default capacity provider strategy.
    #   However, when a service is using a capacity provider strategy
    #   that's not the default capacity provider strategy, the service
    #   can't be updated to use the cluster's default capacity provider
    #   strategy.
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
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers
    #   are available to all accounts and only need to be associated with a
    #   cluster to be used.
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
    #   An object representing the network configuration for the service.
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
    #   scheduler ignores unhealthy Elastic Load Balancing target health
    #   checks after a task has first started. This is only valid if your
    #   service is configured to use a load balancer. If your service's
    #   tasks take a while to start and respond to Elastic Load Balancing
    #   health checks, you can specify a health check grace period of up to
    #   2,147,483,647 seconds. During that time, the Amazon ECS service
    #   scheduler ignores the Elastic Load Balancing health check status.
    #   This grace period can prevent the ECS service scheduler from marking
    #   tasks as unhealthy and stopping them before they have time to come
    #   up.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_execute_command
    #   If `true`, this enables execute command functionality on all task
    #   containers.
    #
    #   If you do not want to override the value that was set when the
    #   service was created, you can set this to `null` when performing this
    #   action.
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] load_balancers
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
    #   @return [String]
    #
    # @!attribute [rw] service_registries
    #   The details for the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][1].
    #
    #   When you add, update, or remove the service registries
    #   configuration, Amazon ECS starts new tasks with the updated service
    #   registries configuration, and then stops the old tasks when the new
    #   tasks are running.
    #
    #   You can remove existing `serviceRegistries` by passing an empty
    #   list.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #   @return [Types::ServiceConnectConfiguration]
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
      :health_check_grace_period_seconds,
      :enable_execute_command,
      :enable_ecs_managed_tags,
      :load_balancers,
      :propagate_tags,
      :service_registries,
      :service_connect_configuration)
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
    #   [1]: https://github.com/aws/amazon-ecs-agent/commits/master
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

    # A data volume that's used in a task definition. For tasks that use
    # the Amazon Elastic File System (Amazon EFS), specify an
    # `efsVolumeConfiguration`. For Windows tasks that use Amazon FSx for
    # Windows File Server file system, specify a
    # `fsxWindowsFileServerVolumeConfiguration`. For tasks that use a Docker
    # volume, specify a `DockerVolumeConfiguration`. For tasks that use a
    # bind mount host volume, specify a `host` and optional `sourcePath`.
    # For more information, see [Using Data Volumes in Tasks][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, underscores, and hyphens are allowed. This name is
    #   referenced in the `sourceVolume` parameter of container definition
    #   `mountPoints`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :name,
      :host,
      :docker_volume_configuration,
      :efs_volume_configuration,
      :fsx_windows_file_server_volume_configuration)
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

  end
end
