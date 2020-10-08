# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridge
  module Types

    # @note When making an API call, you may pass ActivateEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to activate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ActivateEventSourceRequest AWS API Documentation
    #
    class ActivateEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the VPC subnets and security groups for the
    # task, and whether a public IP address is to be used. This structure is
    # relevant only for ECS tasks that use the `awsvpc` network mode.
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
    #   Specifies the subnets associated with the task. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   Specifies the security groups associated with the task. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Specifies whether the task's elastic network interface receives a
    #   public IP address. You can specify `ENABLED` only when `LaunchType`
    #   in `EcsParameters` is set to `FARGATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The array properties for the submitted job, such as the size of the
    # array. The array size can be between 2 and 10,000. If you specify
    # array properties for a job, it becomes an array job. This parameter is
    # used only if the target is an AWS Batch job.
    #
    # @note When making an API call, you may pass BatchArrayProperties
    #   data as a hash:
    #
    #       {
    #         size: 1,
    #       }
    #
    # @!attribute [rw] size
    #   The size of the array, if this is an array batch job. Valid values
    #   are integers between 2 and 10,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/BatchArrayProperties AWS API Documentation
    #
    class BatchArrayProperties < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an AWS Batch job.
    #
    # @note When making an API call, you may pass BatchParameters
    #   data as a hash:
    #
    #       {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #       }
    #
    # @!attribute [rw] job_definition
    #   The ARN or name of the job definition to use if the event target is
    #   an AWS Batch job. This job definition must already exist.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name to use for this execution of the job, if the target is an
    #   AWS Batch job.
    #   @return [String]
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. This parameter
    #   is used only if the target is an AWS Batch job.
    #   @return [Types::BatchArrayProperties]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs, if the target is an AWS
    #   Batch job. The retry strategy is the number of times to retry the
    #   failed job execution. Valid values are 1–10. When you specify a
    #   retry strategy here, it overrides the retry strategy defined in the
    #   job definition.
    #   @return [Types::BatchRetryStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/BatchParameters AWS API Documentation
    #
    class BatchParameters < Struct.new(
      :job_definition,
      :job_name,
      :array_properties,
      :retry_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry strategy to use for failed jobs, if the target is an AWS
    # Batch job. If you specify a retry strategy here, it overrides the
    # retry strategy defined in the job definition.
    #
    # @note When making an API call, you may pass BatchRetryStrategy
    #   data as a hash:
    #
    #       {
    #         attempts: 1,
    #       }
    #
    # @!attribute [rw] attempts
    #   The number of times to attempt to retry, if the job fails. Valid
    #   values are 1–10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/BatchRetryStrategy AWS API Documentation
    #
    class BatchRetryStrategy < Struct.new(
      :attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is concurrent modification on a rule or target.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Aws::EmptyStructure; end

    # A JSON string which you can use to limit the event bus permissions you
    # are granting to only accounts that fulfill the condition. Currently,
    # the only supported condition is membership in a certain AWS
    # organization. The string must contain `Type`, `Key`, and `Value`
    # fields. The `Value` field specifies the ID of the AWS organization.
    # Following is an example value for `Condition`\:
    #
    # `'\{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value":
    # "o-1234567890"\}'`
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         type: "String", # required
    #         key: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] type
    #   Specifies the type of condition. Currently the only supported value
    #   is `StringEquals`.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Specifies the key for the condition. Currently the only supported
    #   key is `aws:PrincipalOrgID`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the value for the key. Currently, this must be the ID of
    #   the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :type,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusName", # required
    #         event_source_name: "EventSourceName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the new event bus.
    #
    #   Event bus names cannot contain the / character. You can't use the
    #   name `default` for a custom event bus, as this name is already used
    #   for your account's default event bus.
    #
    #   If this is a partner event bus, the name must exactly match the name
    #   of the partner event source that this event bus is matched to.
    #   @return [String]
    #
    # @!attribute [rw] event_source_name
    #   If you are creating a partner event bus, this specifies the partner
    #   event source that the new event bus will be matched with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the event bus.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/CreateEventBusRequest AWS API Documentation
    #
    class CreateEventBusRequest < Struct.new(
      :name,
      :event_source_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The ARN of the new event bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/CreateEventBusResponse AWS API Documentation
    #
    class CreateEventBusResponse < Struct.new(
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #         account: "AccountId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source. This name must be unique and
    #   must be in the format ` partner_name/event_namespace/event_name `.
    #   The AWS account that wants to use this partner event source must
    #   create a partner event bus with a name that matches the name of the
    #   partner event source.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The AWS account ID that is permitted to create a matching partner
    #   event bus for this partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/CreatePartnerEventSourceRequest AWS API Documentation
    #
    class CreatePartnerEventSourceRequest < Struct.new(
      :name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/CreatePartnerEventSourceResponse AWS API Documentation
    #
    class CreatePartnerEventSourceResponse < Struct.new(
      :event_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeactivateEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to deactivate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DeactivateEventSourceRequest AWS API Documentation
    #
    class DeactivateEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `DeadLetterConfig` object that contains information about a
    # dead-letter queue configuration.
    #
    # @note When making an API call, you may pass DeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the SQS queue specified as the target for the dead-letter
    #   queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event bus to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DeleteEventBusRequest AWS API Documentation
    #
    class DeleteEventBusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #         account: "AccountId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event source to delete.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The AWS account ID of the AWS customer that the event source was
    #   created for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DeletePartnerEventSourceRequest AWS API Documentation
    #
    class DeletePartnerEventSourceRequest < Struct.new(
      :name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #         force: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If this is a managed rule, created by an AWS service on your behalf,
    #   you must specify `Force` as `True` to delete the rule. This
    #   parameter is ignored for rules that are not managed rules. You can
    #   check whether a rule is a managed rule by using `DescribeRule` or
    #   `ListRules` and checking the `ManagedBy` field of the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :name,
      :event_bus_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event bus to show details for. If you omit this, the
    #   default event bus is displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeEventBusRequest AWS API Documentation
    #
    class DescribeEventBusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event bus. Currently, this is always `default`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account permitted to write
    #   events to the current account.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that enables the external account to send events to your
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeEventBusResponse AWS API Documentation
    #
    class DescribeEventBusResponse < Struct.new(
      :name,
      :arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to display the details of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeEventSourceRequest AWS API Documentation
    #
    class DescribeEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The name of the SaaS partner that created the event source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire if you do not
    #   create a matching event bus.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeEventSourceResponse AWS API Documentation
    #
    class DescribeEventSourceResponse < Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event source to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribePartnerEventSourceRequest AWS API Documentation
    #
    class DescribePartnerEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the event source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribePartnerEventSourceResponse AWS API Documentation
    #
    class DescribePartnerEventSourceResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeRuleRequest AWS API Documentation
    #
    class DescribeRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   If this is a managed rule, created by an AWS service on your behalf,
    #   this field displays the principal name of the AWS service that
    #   created the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DescribeRuleResponse AWS API Documentation
    #
    class DescribeRuleResponse < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :schedule_expression,
      :state,
      :description,
      :role_arn,
      :managed_by,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/DisableRuleRequest AWS API Documentation
    #
    class DisableRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an Amazon ECS
    # task.
    #
    # @note When making an API call, you may pass EcsParameters
    #   data as a hash:
    #
    #       {
    #         task_definition_arn: "Arn", # required
    #         task_count: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         group: "String",
    #       }
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition to use if the event target is an
    #   Amazon ECS task.
    #   @return [String]
    #
    # @!attribute [rw] task_count
    #   The number of tasks to create based on `TaskDefinition`. The default
    #   is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   Specifies the launch type on which your task is running. The launch
    #   type that you specify here must match one of the launch type
    #   (compatibilities) of the target task. The `FARGATE` value is
    #   supported only in the Regions where AWS Fargate with Amazon ECS is
    #   supported. For more information, see [AWS Fargate on Amazon ECS][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Use this structure if the ECS task uses the `awsvpc` network mode.
    #   This structure specifies the VPC subnets and security groups
    #   associated with the task, and whether a public IP address is to be
    #   used. This structure is required if `LaunchType` is `FARGATE`
    #   because the `awsvpc` mode is required for Fargate tasks.
    #
    #   If you specify `NetworkConfiguration` when the target ECS task does
    #   not use the `awsvpc` network mode, the task fails.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] platform_version
    #   Specifies the platform version for the task. Specify only the
    #   numeric portion of the platform version, such as `1.1.0`.
    #
    #   This structure is used only if `LaunchType` is `FARGATE`. For more
    #   information about valid platform versions, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] group
    #   Specifies an ECS task group for the task. The maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/EcsParameters AWS API Documentation
    #
    class EcsParameters < Struct.new(
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/EnableRuleRequest AWS API Documentation
    #
    class EnableRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event bus receives events from a source and routes them to rules
    # associated with that event bus. Your account's default event bus
    # receives rules from AWS services. A custom event bus can receive rules
    # from AWS services as well as your custom applications and services. A
    # partner event bus receives events from an event source created by an
    # SaaS partner. These events come from the partners services or
    # applications.
    #
    # @!attribute [rw] name
    #   The name of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The permissions policy of the event bus, describing which other AWS
    #   accounts can write events to this event bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/EventBus AWS API Documentation
    #
    class EventBus < Struct.new(
      :name,
      :arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partner event source is created by an SaaS partner. If a customer
    # creates a partner event bus that matches this event source, that AWS
    # account can receive events from the partner's applications or
    # services.
    #
    # @!attribute [rw] arn
    #   The ARN of the event source.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The name of the partner that created the event source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire, if the AWS
    #   account doesn't create a matching event bus for it.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the event source.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/EventSource AWS API Documentation
    #
    class EventSource < Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameter to be used when the target is an API
    # Gateway REST APIs.
    #
    # @note When making an API call, you may pass HttpParameters
    #   data as a hash:
    #
    #       {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       }
    #
    # @!attribute [rw] path_parameter_values
    #   The path parameter values to be used to populate API Gateway REST
    #   API path wildcards ("*").
    #   @return [Array<String>]
    #
    # @!attribute [rw] header_parameters
    #   The headers that need to be sent as part of request invoking the API
    #   Gateway REST API.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] query_string_parameters
    #   The query string keys/values that need to be sent as part of request
    #   invoking the API Gateway REST API.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/HttpParameters AWS API Documentation
    #
    class HttpParameters < Struct.new(
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters needed for you to provide custom input to a
    # target based on one or more pieces of data extracted from the event.
    #
    # @note When making an API call, you may pass InputTransformer
    #   data as a hash:
    #
    #       {
    #         input_paths_map: {
    #           "InputTransformerPathKey" => "TargetInputPath",
    #         },
    #         input_template: "TransformerInput", # required
    #       }
    #
    # @!attribute [rw] input_paths_map
    #   Map of JSON paths to be extracted from the event. You can then
    #   insert these in the template in `InputTemplate` to produce the
    #   output you want to be sent to the target.
    #
    #   `InputPathsMap` is an array key-value pairs, where each value is a
    #   valid JSON path. You can have as many as 10 key-value pairs. You
    #   must use JSON dot notation, not bracket notation.
    #
    #   The keys cannot start with "AWS."
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_template
    #   Input template where you specify placeholders that will be filled
    #   with the values of the keys from `InputPathsMap` to customize the
    #   data sent to the target. Enclose each `InputPathsMaps` value in
    #   brackets: &lt;*value*&gt; The InputTemplate must be valid JSON.
    #
    #   If `InputTemplate` is a JSON object (surrounded by curly braces),
    #   the following restrictions apply:
    #
    #   * The placeholder cannot be used as an object key.
    #
    #   * Object values cannot include quote marks.
    #
    #   The following example shows the syntax for using `InputPathsMap` and
    #   `InputTemplate`.
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state <status>"`
    #
    #   `\}`
    #
    #   To have the `InputTemplate` include quote marks within a JSON
    #   string, escape each quote marks with a slash, as in the following
    #   example:
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state "<status>""`
    #
    #   `\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/InputTransformer AWS API Documentation
    #
    class InputTransformer < Struct.new(
      :input_paths_map,
      :input_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs due to unexpected causes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/InternalException AWS API Documentation
    #
    class InternalException < Aws::EmptyStructure; end

    # The event pattern is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/InvalidEventPatternException AWS API Documentation
    #
    class InvalidEventPatternException < Aws::EmptyStructure; end

    # The specified state is not a valid state for an event source.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Aws::EmptyStructure; end

    # This object enables you to specify a JSON path to extract from the
    # event and use as the partition key for the Amazon Kinesis data stream,
    # so that you can control the shard to which the event goes. If you do
    # not include this parameter, the default is to use the `eventId` as the
    # partition key.
    #
    # @note When making an API call, you may pass KinesisParameters
    #   data as a hash:
    #
    #       {
    #         partition_key_path: "TargetPartitionKeyPath", # required
    #       }
    #
    # @!attribute [rw] partition_key_path
    #   The JSON path to be extracted from the event and used as the
    #   partition key. For more information, see [Amazon Kinesis Streams Key
    #   Concepts][1] in the *Amazon Kinesis Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/KinesisParameters AWS API Documentation
    #
    class KinesisParameters < Struct.new(
      :partition_key_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # You tried to create more rules or add more targets to a rule than is
    # allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListEventBusesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "EventBusName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   Specifying this limits the results to only those event buses with
    #   names that start with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListEventBusesRequest AWS API Documentation
    #
    class ListEventBusesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_buses
    #   This list of event buses.
    #   @return [Array<Types::EventBus>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListEventBusesResponse AWS API Documentation
    #
    class ListEventBusesResponse < Struct.new(
      :event_buses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventSourcesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "EventSourceNamePrefix",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   Specifying this limits the results to only those partner event
    #   sources with names that start with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListEventSourcesRequest AWS API Documentation
    #
    class ListEventSourcesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_sources
    #   The list of event sources.
    #   @return [Array<Types::EventSource>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListEventSourcesResponse AWS API Documentation
    #
    class ListEventSourcesResponse < Struct.new(
      :event_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPartnerEventSourceAccountsRequest
    #   data as a hash:
    #
    #       {
    #         event_source_name: "EventSourceName", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] event_source_name
    #   The name of the partner event source to display account information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListPartnerEventSourceAccountsRequest AWS API Documentation
    #
    class ListPartnerEventSourceAccountsRequest < Struct.new(
      :event_source_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_event_source_accounts
    #   The list of partner event sources returned by the operation.
    #   @return [Array<Types::PartnerEventSourceAccount>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListPartnerEventSourceAccountsResponse AWS API Documentation
    #
    class ListPartnerEventSourceAccountsResponse < Struct.new(
      :partner_event_source_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPartnerEventSourcesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "PartnerEventSourceNamePrefix", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   If you specify this, the results are limited to only those partner
    #   event sources that start with the string you specify.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   pecifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListPartnerEventSourcesRequest AWS API Documentation
    #
    class ListPartnerEventSourcesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_event_sources
    #   The list of partner event sources returned by the operation.
    #   @return [Array<Types::PartnerEventSource>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListPartnerEventSourcesResponse AWS API Documentation
    #
    class ListPartnerEventSourcesResponse < Struct.new(
      :partner_event_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRuleNamesByTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetArn", # required
    #         event_bus_name: "EventBusName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   Limits the results to show only the rules associated with the
    #   specified event bus.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListRuleNamesByTargetRequest AWS API Documentation
    #
    class ListRuleNamesByTargetRequest < Struct.new(
      :target_arn,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_names
    #   The names of the rules that can invoke the given target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListRuleNamesByTargetResponse AWS API Documentation
    #
    class ListRuleNamesByTargetResponse < Struct.new(
      :rule_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "RuleName",
    #         event_bus_name: "EventBusName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   The prefix matching the rule name.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   Limits the results to show only the rules associated with the
    #   specified event bus.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :name_prefix,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   The rules that match the specified criteria.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsByRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListTargetsByRuleRequest AWS API Documentation
    #
    class ListTargetsByRuleRequest < Struct.new(
      :rule,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The targets assigned to the rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ListTargetsByRuleResponse AWS API Documentation
    #
    class ListTargetsByRuleResponse < Struct.new(
      :targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This rule was created by an AWS service on behalf of your account. It
    # is managed by that service. If you see this error in response to
    # `DeleteRule` or `RemoveTargets`, you can use the `Force` parameter in
    # those calls to delete the rule or remove targets from the rule. You
    # cannot modify these managed rules by using `DisableRule`,
    # `EnableRule`, `PutTargets`, `PutRule`, `TagResource`, or
    # `UntagResource`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ManagedRuleException AWS API Documentation
    #
    class ManagedRuleException < Aws::EmptyStructure; end

    # This structure specifies the network configuration for an ECS task.
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
    #   Use this structure to specify the VPC subnets and security groups
    #   for the task, and whether a public IP address is to be used. This
    #   structure is relevant only for ECS tasks that use the `awsvpc`
    #   network mode.
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation you are attempting is not available in this region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/OperationDisabledException AWS API Documentation
    #
    class OperationDisabledException < Aws::EmptyStructure; end

    # A partner event source is created by an SaaS partner. If a customer
    # creates a partner event bus that matches this event source, that AWS
    # account can receive events from the partner's applications or
    # services.
    #
    # @!attribute [rw] arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PartnerEventSource AWS API Documentation
    #
    class PartnerEventSource < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS account that a partner event source has been offered to.
    #
    # @!attribute [rw] account
    #   The AWS account ID that the partner event source was offered to.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire, if the AWS
    #   account doesn't create a matching event bus for it.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PartnerEventSourceAccount AWS API Documentation
    #
    class PartnerEventSourceAccount < Struct.new(
      :account,
      :creation_time,
      :expiration_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event bus policy is too long. For more information, see the
    # limits.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PolicyLengthExceededException AWS API Documentation
    #
    class PolicyLengthExceededException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "String",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #             event_bus_name: "NonPartnerEventBusName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #   @return [Array<Types::PutEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event to be submitted.
    #
    # @note When making an API call, you may pass PutEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #         event_bus_name: "NonPartnerEventBusName",
    #       }
    #
    # @!attribute [rw] time
    #   The time stamp of the event, per [RFC3339][1]. If no time stamp is
    #   provided, the time stamp of the PutEvents call is used.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339.txt
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source of the event.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   AWS resources, identified by Amazon Resource Name (ARN), which the
    #   event primarily concerns. Any number, including zero, may be
    #   present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   Free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A valid JSON string. There is no other schema imposed. The JSON
    #   string may contain fields and nested subobjects.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus that will receive the event. Only the rules that are
    #   associated with this event bus will be able to match the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutEventsRequestEntry AWS API Documentation
    #
    class PutEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   The successfully and unsuccessfully ingested events results. If the
    #   ingestion was successful, the entry has the event ID in it.
    #   Otherwise, you can use the error code and error message to identify
    #   the problem with the entry.
    #   @return [Array<Types::PutEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event that failed to be submitted.
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the event submission failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the event submission failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutEventsResultEntry AWS API Documentation
    #
    class PutEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPartnerEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "EventSourceName",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The list of events to write to the event bus.
    #   @return [Array<Types::PutPartnerEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutPartnerEventsRequest AWS API Documentation
    #
    class PutPartnerEventsRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about an event generated by an SaaS partner.
    #
    # @note When making an API call, you may pass PutPartnerEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "EventSourceName",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       }
    #
    # @!attribute [rw] time
    #   The date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The event source that is generating the evntry.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   AWS resources, identified by Amazon Resource Name (ARN), which the
    #   event primarily concerns. Any number, including zero, may be
    #   present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   A free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A valid JSON string. There is no other schema imposed. The JSON
    #   string may contain fields and nested subobjects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutPartnerEventsRequestEntry AWS API Documentation
    #
    class PutPartnerEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of events from this operation that could not be written
    #   to the partner event bus.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   The list of events from this operation that were successfully
    #   written to the partner event bus.
    #   @return [Array<Types::PutPartnerEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutPartnerEventsResponse AWS API Documentation
    #
    class PutPartnerEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event that a partner tried to generate, but failed.
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the event submission failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the event submission failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutPartnerEventsResultEntry AWS API Documentation
    #
    class PutPartnerEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPermissionRequest
    #   data as a hash:
    #
    #       {
    #         event_bus_name: "NonPartnerEventBusName",
    #         action: "Action", # required
    #         principal: "Principal", # required
    #         statement_id: "StatementId", # required
    #         condition: {
    #           type: "String", # required
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #       }
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that you are enabling the other account to perform.
    #   Currently, this must be `events:PutEvents`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The 12-digit AWS account ID that you are permitting to put events to
    #   your default event bus. Specify "*" to permit any account to put
    #   events to your default event bus.
    #
    #   If you specify "*" without specifying `Condition`, avoid creating
    #   rules that may match undesirable events. To create more secure
    #   rules, make sure that the event pattern for each rule contains an
    #   `account` field with a specific account ID from which to receive
    #   events. Rules with an account field do not match any events sent
    #   from other accounts.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   An identifier string for the external account that you are granting
    #   permissions to. If you later want to revoke the permission for this
    #   external account, specify this `StatementId` when you run
    #   RemovePermission.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   This parameter enables you to limit the permission to accounts that
    #   fulfill a certain condition, such as being a member of a certain AWS
    #   organization. For more information about AWS Organizations, see
    #   [What Is AWS Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #   If you specify `Condition` with an AWS organization ID, and specify
    #   "*" as the value for `Principal`, you grant permission to all the
    #   accounts in the named organization.
    #
    #   The `Condition` is a JSON string which must contain `Type`, `Key`,
    #   and `Value` fields.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html
    #   @return [Types::Condition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutPermissionRequest AWS API Documentation
    #
    class PutPermissionRequest < Struct.new(
      :event_bus_name,
      :action,
      :principal,
      :statement_id,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         schedule_expression: "ScheduleExpression",
    #         event_pattern: "EventPattern",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "RuleDescription",
    #         role_arn: "RoleArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         event_bus_name: "EventBusName",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule that you are creating or updating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)" or
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus to associate with this rule. If you omit this, the
    #   default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutRuleRequest AWS API Documentation
    #
    class PutRuleRequest < Struct.new(
      :name,
      :schedule_expression,
      :event_pattern,
      :state,
      :description,
      :role_arn,
      :tags,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutRuleResponse AWS API Documentation
    #
    class PutRuleResponse < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             arn: "TargetArn", # required
    #             role_arn: "RoleArn",
    #             input: "TargetInput",
    #             input_path: "TargetInputPath",
    #             input_transformer: {
    #               input_paths_map: {
    #                 "InputTransformerPathKey" => "TargetInputPath",
    #               },
    #               input_template: "TransformerInput", # required
    #             },
    #             kinesis_parameters: {
    #               partition_key_path: "TargetPartitionKeyPath", # required
    #             },
    #             run_command_parameters: {
    #               run_command_targets: [ # required
    #                 {
    #                   key: "RunCommandTargetKey", # required
    #                   values: ["RunCommandTargetValue"], # required
    #                 },
    #               ],
    #             },
    #             ecs_parameters: {
    #               task_definition_arn: "Arn", # required
    #               task_count: 1,
    #               launch_type: "EC2", # accepts EC2, FARGATE
    #               network_configuration: {
    #                 awsvpc_configuration: {
    #                   subnets: ["String"], # required
    #                   security_groups: ["String"],
    #                   assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               },
    #               platform_version: "String",
    #               group: "String",
    #             },
    #             batch_parameters: {
    #               job_definition: "String", # required
    #               job_name: "String", # required
    #               array_properties: {
    #                 size: 1,
    #               },
    #               retry_strategy: {
    #                 attempts: 1,
    #               },
    #             },
    #             sqs_parameters: {
    #               message_group_id: "MessageGroupId",
    #             },
    #             http_parameters: {
    #               path_parameter_values: ["PathParameter"],
    #               header_parameters: {
    #                 "HeaderKey" => "HeaderValue",
    #               },
    #               query_string_parameters: {
    #                 "QueryStringKey" => "QueryStringValue",
    #               },
    #             },
    #             redshift_data_parameters: {
    #               secret_manager_arn: "RedshiftSecretManagerArn",
    #               database: "Database", # required
    #               db_user: "DbUser",
    #               sql: "Sql", # required
    #               statement_name: "StatementName",
    #               with_event: false,
    #             },
    #             dead_letter_config: {
    #               arn: "ResourceArn",
    #             },
    #             retry_policy: {
    #               maximum_retry_attempts: 1,
    #               maximum_event_age_in_seconds: 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus associated with the rule. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to update or add to the rule.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutTargetsRequest AWS API Documentation
    #
    class PutTargetsRequest < Struct.new(
      :rule,
      :event_bus_name,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::PutTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutTargetsResponse AWS API Documentation
    #
    class PutTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target that failed to be added to a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target addition failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target addition failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/PutTargetsResultEntry AWS API Documentation
    #
    class PutTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameters to be used when the target is a Redshift
    # cluster to invoke the Redshift Data API ExecuteStatement based on
    # EventBridge events.
    #
    # @note When making an API call, you may pass RedshiftDataParameters
    #   data as a hash:
    #
    #       {
    #         secret_manager_arn: "RedshiftSecretManagerArn",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         sql: "Sql", # required
    #         statement_name: "StatementName",
    #         with_event: false,
    #       }
    #
    # @!attribute [rw] secret_manager_arn
    #   The name or ARN of the secret that enables access to the database.
    #   Required when authenticating using AWS Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database. Required when authenticating using
    #   temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. Required when authenticating using temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement text to run.
    #   @return [String]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement. You can name the SQL statement when
    #   you create it to identify the query.
    #   @return [String]
    #
    # @!attribute [rw] with_event
    #   Indicates whether to send an event back to EventBridge after the SQL
    #   statement runs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RedshiftDataParameters AWS API Documentation
    #
    class RedshiftDataParameters < Struct.new(
      :secret_manager_arn,
      :database,
      :db_user,
      :sql,
      :statement_name,
      :with_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         statement_id: "StatementId", # required
    #         event_bus_name: "NonPartnerEventBusName",
    #       }
    #
    # @!attribute [rw] statement_id
    #   The statement ID corresponding to the account that is no longer
    #   allowed to put events to the default event bus.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus to revoke permissions for. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :statement_id,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusName",
    #         ids: ["TargetId"], # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus associated with the rule.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   The IDs of the targets to remove from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force
    #   If this is a managed rule, created by an AWS service on your behalf,
    #   you must specify `Force` as `True` to remove targets. This parameter
    #   is ignored for rules that are not managed rules. You can check
    #   whether a rule is a managed rule by using `DescribeRule` or
    #   `ListRules` and checking the `ManagedBy` field of the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RemoveTargetsRequest AWS API Documentation
    #
    class RemoveTargetsRequest < Struct.new(
      :rule,
      :event_bus_name,
      :ids,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::RemoveTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RemoveTargetsResponse AWS API Documentation
    #
    class RemoveTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target that failed to be removed from a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target removal failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target removal failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RemoveTargetsResultEntry AWS API Documentation
    #
    class RemoveTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are trying to create already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An entity that you specified does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # A `RetryPolicy` object that includes information about the retry
    # policy settings.
    #
    # @note When making an API call, you may pass RetryPolicy
    #   data as a hash:
    #
    #       {
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of retry attempts to make before the request
    #   fails. Retry attempts continue until either the maximum number of
    #   attempts is made or until the duration of the
    #   `MaximumEventAgeInSeconds` is met.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum amount of time, in seconds, to continue to make retry
    #   attempts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RetryPolicy AWS API Documentation
    #
    class RetryPolicy < Struct.new(
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a rule in Amazon EventBridge.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern of the rule. For more information, see [Events and
    #   Event Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that is used for target
    #   invocation.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   If the rule was created on behalf of your account by an AWS service,
    #   this field displays the principal name of the service that created
    #   the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The event bus associated with the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :state,
      :description,
      :schedule_expression,
      :role_arn,
      :managed_by,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter contains the criteria (either InstanceIds or a tag)
    # used to specify which EC2 instances are to be sent the command.
    #
    # @note When making an API call, you may pass RunCommandParameters
    #   data as a hash:
    #
    #       {
    #         run_command_targets: [ # required
    #           {
    #             key: "RunCommandTargetKey", # required
    #             values: ["RunCommandTargetValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] run_command_targets
    #   Currently, we support including only one RunCommandTarget block,
    #   which specifies either an array of InstanceIds or a tag.
    #   @return [Array<Types::RunCommandTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RunCommandParameters AWS API Documentation
    #
    class RunCommandParameters < Struct.new(
      :run_command_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the EC2 instances that are to be sent the command,
    # specified as key-value pairs. Each `RunCommandTarget` block can
    # include only one key, but this key may specify multiple values.
    #
    # @note When making an API call, you may pass RunCommandTarget
    #   data as a hash:
    #
    #       {
    #         key: "RunCommandTargetKey", # required
    #         values: ["RunCommandTargetValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   Can be either `tag:` *tag-key* or `InstanceIds`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   If `Key` is `tag:` *tag-key*, `Values` is a list of tag values. If
    #   `Key` is `InstanceIds`, `Values` is a list of Amazon EC2 instance
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/RunCommandTarget AWS API Documentation
    #
    class RunCommandTarget < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure includes the custom parameter to be used when the
    # target is an SQS FIFO queue.
    #
    # @note When making an API call, you may pass SqsParameters
    #   data as a hash:
    #
    #       {
    #         message_group_id: "MessageGroupId",
    #       }
    #
    # @!attribute [rw] message_group_id
    #   The FIFO message group ID to use as the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/SqsParameters AWS API Documentation
    #
    class SqsParameters < Struct.new(
      :message_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair associated with an AWS resource. In EventBridge,
    # rules and event buses support tagging.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A string you can use to assign a value. The combination of tag keys
    #   and values can help you organize and categorize your resources.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/Tag AWS API Documentation
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
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Targets are the resources to be invoked when a rule is triggered. For
    # a complete list of services and resources that can be set as a target,
    # see PutTargets.
    #
    # If you are setting the event bus of another account as the target, and
    # that account granted permission to your account through an
    # organization instead of directly by the account ID, then you must
    # specify a `RoleArn` with proper permissions in the `Target` structure.
    # For more information, see [Sending and Receiving Events Between AWS
    # Accounts][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath",
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             },
    #           ],
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2", # accepts EC2, FARGATE
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           platform_version: "String",
    #           group: "String",
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1,
    #           },
    #           retry_strategy: {
    #             attempts: 1,
    #           },
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId",
    #         },
    #         http_parameters: {
    #           path_parameter_values: ["PathParameter"],
    #           header_parameters: {
    #             "HeaderKey" => "HeaderValue",
    #           },
    #           query_string_parameters: {
    #             "QueryStringKey" => "QueryStringValue",
    #           },
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: "RedshiftSecretManagerArn",
    #           database: "Database", # required
    #           db_user: "DbUser",
    #           sql: "Sql", # required
    #           statement_name: "StatementName",
    #           with_event: false,
    #         },
    #         dead_letter_config: {
    #           arn: "ResourceArn",
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be used for this
    #   target when the rule is triggered. If one rule triggers multiple
    #   targets, you can use a different IAM role for each target.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Valid JSON text passed to the target. In this case, nothing from the
    #   event itself is passed to the target. For more information, see [The
    #   JavaScript Object Notation (JSON) Data Interchange Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The value of the JSONPath that is used for extracting part of the
    #   matched event when passing it to the target. You must use JSON dot
    #   notation, not bracket notation. For more information about JSON
    #   paths, see [JSONPath][1].
    #
    #
    #
    #   [1]: http://goessner.net/articles/JsonPath/
    #   @return [String]
    #
    # @!attribute [rw] input_transformer
    #   Settings to enable you to provide custom input to a target based on
    #   certain event data. You can extract one or more key-value pairs from
    #   the event and then use that data to send customized input to the
    #   target.
    #   @return [Types::InputTransformer]
    #
    # @!attribute [rw] kinesis_parameters
    #   The custom parameter you can use to control the shard assignment,
    #   when the target is a Kinesis data stream. If you do not include this
    #   parameter, the default is to use the `eventId` as the partition key.
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] run_command_parameters
    #   Parameters used when you are using the rule to invoke Amazon EC2 Run
    #   Command.
    #   @return [Types::RunCommandParameters]
    #
    # @!attribute [rw] ecs_parameters
    #   Contains the Amazon ECS task definition and task count to be used,
    #   if the event target is an Amazon ECS task. For more information
    #   about Amazon ECS tasks, see [Task Definitions ][1] in the *Amazon
    #   EC2 Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    #   @return [Types::EcsParameters]
    #
    # @!attribute [rw] batch_parameters
    #   If the event target is an AWS Batch job, this contains the job
    #   definition, job name, and other parameters. For more information,
    #   see [Jobs][1] in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/jobs.html
    #   @return [Types::BatchParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   Contains the message group ID to use when the target is a FIFO
    #   queue.
    #
    #   If you specify an SQS FIFO queue as a target, the queue must have
    #   content-based deduplication enabled.
    #   @return [Types::SqsParameters]
    #
    # @!attribute [rw] http_parameters
    #   Contains the HTTP parameters to use when the target is a API Gateway
    #   REST endpoint.
    #
    #   If you specify an API Gateway REST API as a target, you can use this
    #   parameter to specify headers, path parameter, query string
    #   keys/values as part of your target invoking request.
    #   @return [Types::HttpParameters]
    #
    # @!attribute [rw] redshift_data_parameters
    #   Contains the Redshift Data API parameters to use when the target is
    #   a Redshift cluster.
    #
    #   If you specify a Redshift Cluster as a Target, you can use this to
    #   specify parameters to invoke the Redshift Data API ExecuteStatement
    #   based on EventBridge events.
    #   @return [Types::RedshiftDataParameters]
    #
    # @!attribute [rw] dead_letter_config
    #   The `DeadLetterConfig` that defines the target queue to send
    #   dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] retry_policy
    #   The `RetryPolicy` object that contains the retry policy
    #   configuration to use for the dead-letter queue.
    #   @return [Types::RetryPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/Target AWS API Documentation
    #
    class Target < Struct.new(
      :id,
      :arn,
      :role_arn,
      :input,
      :input_path,
      :input_transformer,
      :kinesis_parameters,
      :run_command_parameters,
      :ecs_parameters,
      :batch_parameters,
      :sqs_parameters,
      :http_parameters,
      :redshift_data_parameters,
      :dead_letter_config,
      :retry_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestEventPatternRequest
    #   data as a hash:
    #
    #       {
    #         event_pattern: "EventPattern", # required
    #         event: "String", # required
    #       }
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event, in JSON format, to test against the event pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/TestEventPatternRequest AWS API Documentation
    #
    class TestEventPatternRequest < Struct.new(
      :event_pattern,
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   Indicates whether the event matches the event pattern.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/TestEventPatternResponse AWS API Documentation
    #
    class TestEventPatternResponse < Struct.new(
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource from which you are removing
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/eventbridge-2015-10-07/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

  end
end
