# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Scheduler
  module Types

    # This structure specifies the VPC subnets and security groups for the
    # task, and whether a public IP address is to be used. This structure is
    # relevant only for ECS tasks that use the awsvpc network mode.
    #
    # @!attribute [rw] assign_public_ip
    #   Specifies whether the task's elastic network interface receives a
    #   public IP address. You can specify `ENABLED` only when `LaunchType`
    #   in `EcsParameters` is set to `FARGATE`.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Specifies the security groups associated with the task. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   Specifies the subnets associated with the task. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :assign_public_ip,
      :security_groups,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a capacity provider strategy.
    #
    # @!attribute [rw] base
    #   The base value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider. Only one capacity provider in a
    #   capacity provider strategy can have a base defined. If no value is
    #   specified, the default value of `0` is used.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight value designates the relative percentage of the total
    #   number of tasks launched that should use the specified capacity
    #   provider. The weight value is taken into consideration after the
    #   base value, if defined, is satisfied.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CapacityProviderStrategyItem AWS API Documentation
    #
    class CapacityProviderStrategyItem < Struct.new(
      :base,
      :capacity_provider,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting the resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule group that you are creating.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to associate with the schedule group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateScheduleGroupInput AWS API Documentation
    #
    class CreateScheduleGroupInput < Struct.new(
      :client_token,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedule_group_arn
    #   The Amazon Resource Name (ARN) of the schedule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateScheduleGroupOutput AWS API Documentation
    #
    class CreateScheduleGroupOutput < Struct.new(
      :schedule_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description you specify for the schedule.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date, in UTC, before which the schedule can invoke its target.
    #   Depending on the schedule's recurrence expression, invocations
    #   might stop on, or before, the `EndDate` you specify. EventBridge
    #   Scheduler ignores `EndDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] flexible_time_window
    #   Allows you to configure a time window during which EventBridge
    #   Scheduler invokes the schedule.
    #   @return [Types::FlexibleTimeWindow]
    #
    # @!attribute [rw] group_name
    #   The name of the schedule group to associate with this schedule. If
    #   you omit this, the default schedule group is used.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) for the customer managed KMS key that
    #   EventBridge Scheduler will use to encrypt and decrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule that you are creating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The expression that defines when the schedule runs. The following
    #   formats are supported.
    #
    #   * `at` expression - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * `rate` expression - `rate(unit value)`
    #
    #   * `cron` expression - `cron(fields)`
    #
    #   You can use `at` expressions to create one-time schedules that
    #   invoke a target once, at the time and in the time zone, that you
    #   specify. You can use `rate` and `cron` expressions to create
    #   recurring schedules. Rate-based schedules are useful when you want
    #   to invoke a target at regular intervals, such as every 15 minutes or
    #   every five days. Cron-based schedules are useful when you want to
    #   invoke a target periodically at a specific time, such as at 8:00 am
    #   (UTC+0) every 1st day of the month.
    #
    #   A `cron` expression consists of six fields separated by white
    #   spaces: `(minutes hours day_of_month month day_of_week year)`.
    #
    #   A `rate` expression consists of a *value* as a positive integer, and
    #   a *unit* with the following options: `minute` \| `minutes` \| `hour`
    #   \| `hours` \| `day` \| `days`
    #
    #   For more information and examples, see [Schedule types on
    #   EventBridge Scheduler][1] in the *EventBridge Scheduler User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone in which the scheduling expression is evaluated.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date, in UTC, after which the schedule can begin invoking its
    #   target. Depending on the schedule's recurrence expression,
    #   invocations might occur on, or after, the `StartDate` you specify.
    #   EventBridge Scheduler ignores `StartDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Specifies whether the schedule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The schedule's target.
    #   @return [Types::Target]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateScheduleInput AWS API Documentation
    #
    class CreateScheduleInput < Struct.new(
      :client_token,
      :description,
      :end_date,
      :flexible_time_window,
      :group_name,
      :kms_key_arn,
      :name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_date,
      :state,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedule_arn
    #   The Amazon Resource Name (ARN) of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/CreateScheduleOutput AWS API Documentation
    #
    class CreateScheduleOutput < Struct.new(
      :schedule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an Amazon SQS queue that
    # EventBridge Scheduler uses as a dead-letter queue for your schedule.
    # If specified, EventBridge Scheduler delivers failed events that could
    # not be successfully delivered to a target to the queue.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the SQS queue specified as the
    #   destination for the dead-letter queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteScheduleGroupInput AWS API Documentation
    #
    class DeleteScheduleGroupInput < Struct.new(
      :client_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteScheduleGroupOutput AWS API Documentation
    #
    class DeleteScheduleGroupOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the schedule group associated with this schedule. If you
    #   omit this, the default schedule group is used.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteScheduleInput AWS API Documentation
    #
    class DeleteScheduleInput < Struct.new(
      :client_token,
      :group_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/DeleteScheduleOutput AWS API Documentation
    #
    class DeleteScheduleOutput < Aws::EmptyStructure; end

    # The templated target type for the Amazon ECS [ `RunTask` ][1] API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the task.
    #   For more information, see [Tagging Your Amazon ECS Resources][1] in
    #   the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Whether or not to enable the execute command functionality for the
    #   containers in this task. If true, this enables execute command
    #   functionality on all containers in the task.
    #   @return [Boolean]
    #
    # @!attribute [rw] group
    #   Specifies an ECS task group for the task. The maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   Specifies the launch type on which your task is running. The launch
    #   type that you specify here must match one of the launch type
    #   (compatibilities) of the target task. The `FARGATE` value is
    #   supported only in the Regions where Fargate with Amazon ECS is
    #   supported. For more information, see [AWS Fargate on Amazon ECS][1]
    #   in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   This structure specifies the network configuration for an ECS task.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints per task (including constraints in
    #   the task definition and those specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The task placement strategy for a task or service.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   Specifies the platform version for the task. Specify only the
    #   numeric portion of the platform version, such as `1.1.0`.
    #   @return [String]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags are not propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use Amazon ECS's [
    #   `TagResource` ][1] API action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value,
    #   both of which you define. For more information, see [ `RunTask` ][1]
    #   in the *Amazon ECS API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] task_count
    #   The number of tasks to create based on `TaskDefinition`. The default
    #   is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] task_definition_arn
    #   The Amazon Resource Name (ARN) of the task definition to use if the
    #   event target is an Amazon ECS task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/EcsParameters AWS API Documentation
    #
    class EcsParameters < Struct.new(
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :launch_type,
      :network_configuration,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :propagate_tags,
      :reference_id,
      :tags,
      :task_count,
      :task_definition_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The templated target type for the EventBridge [ `PutEvents` ][1] API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html
    #
    # @!attribute [rw] detail_type
    #   A free-form string, with a maximum of 128 characters, used to decide
    #   what fields to expect in the event detail.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/EventBridgeParameters AWS API Documentation
    #
    class EventBridgeParameters < Struct.new(
      :detail_type,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to configure a time window during which EventBridge
    # Scheduler invokes the schedule.
    #
    # @!attribute [rw] maximum_window_in_minutes
    #   The maximum time window during which a schedule can be invoked.
    #   @return [Integer]
    #
    # @!attribute [rw] mode
    #   Determines whether the schedule is invoked within a flexible time
    #   window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/FlexibleTimeWindow AWS API Documentation
    #
    class FlexibleTimeWindow < Struct.new(
      :maximum_window_in_minutes,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the schedule group to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetScheduleGroupInput AWS API Documentation
    #
    class GetScheduleGroupInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the schedule group.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time at which the schedule group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_date
    #   The time at which the schedule group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the schedule group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies the state of the schedule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetScheduleGroupOutput AWS API Documentation
    #
    class GetScheduleGroupOutput < Struct.new(
      :arn,
      :creation_date,
      :last_modification_date,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the schedule group associated with this schedule. If you
    #   omit this, EventBridge Scheduler assumes that the schedule is
    #   associated with the default group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetScheduleInput AWS API Documentation
    #
    class GetScheduleInput < Struct.new(
      :group_name,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time at which the schedule was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date, in UTC, before which the schedule can invoke its target.
    #   Depending on the schedule's recurrence expression, invocations
    #   might stop on, or before, the `EndDate` you specify. EventBridge
    #   Scheduler ignores `EndDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] flexible_time_window
    #   Allows you to configure a time window during which EventBridge
    #   Scheduler invokes the schedule.
    #   @return [Types::FlexibleTimeWindow]
    #
    # @!attribute [rw] group_name
    #   The name of the schedule group associated with this schedule.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN for a customer managed KMS Key that is be used to encrypt
    #   and decrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] last_modification_date
    #   The time at which the schedule was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The expression that defines when the schedule runs. The following
    #   formats are supported.
    #
    #   * `at` expression - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * `rate` expression - `rate(unit value)`
    #
    #   * `cron` expression - `cron(fields)`
    #
    #   You can use `at` expressions to create one-time schedules that
    #   invoke a target once, at the time and in the time zone, that you
    #   specify. You can use `rate` and `cron` expressions to create
    #   recurring schedules. Rate-based schedules are useful when you want
    #   to invoke a target at regular intervals, such as every 15 minutes or
    #   every five days. Cron-based schedules are useful when you want to
    #   invoke a target periodically at a specific time, such as at 8:00 am
    #   (UTC+0) every 1st day of the month.
    #
    #   A `cron` expression consists of six fields separated by white
    #   spaces: `(minutes hours day_of_month month day_of_week year)`.
    #
    #   A `rate` expression consists of a *value* as a positive integer, and
    #   a *unit* with the following options: `minute` \| `minutes` \| `hour`
    #   \| `hours` \| `day` \| `days`
    #
    #   For more information and examples, see [Schedule types on
    #   EventBridge Scheduler][1] in the *EventBridge Scheduler User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone in which the scheduling expression is evaluated.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date, in UTC, after which the schedule can begin invoking its
    #   target. Depending on the schedule's recurrence expression,
    #   invocations might occur on, or after, the `StartDate` you specify.
    #   EventBridge Scheduler ignores `StartDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Specifies whether the schedule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The schedule target.
    #   @return [Types::Target]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/GetScheduleOutput AWS API Documentation
    #
    class GetScheduleOutput < Struct.new(
      :arn,
      :creation_date,
      :description,
      :end_date,
      :flexible_time_window,
      :group_name,
      :kms_key_arn,
      :last_modification_date,
      :name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_date,
      :state,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error encountered while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The templated target type for the Amazon Kinesis [ `PutRecord`
    # ](kinesis/latest/APIReference/API_PutRecord.html) API operation.
    #
    # @!attribute [rw] partition_key
    #   Specifies the shard to which EventBridge Scheduler sends the event.
    #   For more information, see [Amazon Kinesis Data Streams terminology
    #   and concepts][1] in the *Amazon Kinesis Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/KinesisParameters AWS API Documentation
    #
    class KinesisParameters < Struct.new(
      :partition_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   If specified, limits the number of results returned by this
    #   operation. The operation also returns a `NextToken` which you can
    #   use in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] name_prefix
    #   The name prefix that you can use to return a filtered list of your
    #   schedule groups.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListScheduleGroupsInput AWS API Documentation
    #
    class ListScheduleGroupsInput < Struct.new(
      :max_results,
      :name_prefix,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If the
    #   value is null, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] schedule_groups
    #   The schedule groups that match the specified criteria.
    #   @return [Array<Types::ScheduleGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListScheduleGroupsOutput AWS API Documentation
    #
    class ListScheduleGroupsOutput < Struct.new(
      :next_token,
      :schedule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   If specified, only lists the schedules whose associated schedule
    #   group matches the given filter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   If specified, limits the number of results returned by this
    #   operation. The operation also returns a `NextToken` which you can
    #   use in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] name_prefix
    #   Schedule name prefix to return the filtered list of resources.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   If specified, only lists the schedules whose current state matches
    #   the given filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListSchedulesInput AWS API Documentation
    #
    class ListSchedulesInput < Struct.new(
      :group_name,
      :max_results,
      :name_prefix,
      :next_token,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If the
    #   value is null, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] schedules
    #   The schedules that match the specified criteria.
    #   @return [Array<Types::ScheduleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListSchedulesOutput AWS API Documentation
    #
    class ListSchedulesOutput < Struct.new(
      :next_token,
      :schedules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge Scheduler resource for which you want to
    #   view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the network configuration for an ECS task.
    #
    # @!attribute [rw] awsvpc_configuration
    #   Specifies the Amazon VPC subnets and security groups for the task,
    #   and whether a public IP address is to be used. This structure is
    #   relevant only for ECS tasks that use the awsvpc network mode.
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a constraint on task placement.
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`. For more information, see [Cluster query
    #   language][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint. Use `distinctInstance` to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use `memberOf` to restrict the selection to a group of
    #   valid candidates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/PlacementConstraint AWS API Documentation
    #
    class PlacementConstraint < Struct.new(
      :expression,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The task placement strategy for a task or service.
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the spread
    #   placement strategy, valid values are `instanceId` (or `instanceId`,
    #   which has the same effect), or any platform or custom attribute that
    #   is applied to a container instance, such as
    #   `attribute:ecs.availability-zone`. For the binpack placement
    #   strategy, valid values are `cpu` and `memory`. For the random
    #   placement strategy, this field is not used.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The random placement strategy
    #   randomly places tasks on available candidates. The spread placement
    #   strategy spreads placement across available candidates evenly based
    #   on the field parameter. The binpack strategy places tasks on
    #   available candidates that have the least available amount of the
    #   resource that is specified with the field parameter. For example, if
    #   you binpack on memory, a task is placed on the instance with the
    #   least amount of remaining memory (but still enough to run the task).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/PlacementStrategy AWS API Documentation
    #
    class PlacementStrategy < Struct.new(
      :field,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `RetryPolicy` object that includes information about the retry
    # policy settings, including the maximum age of an event, and the
    # maximum number of times EventBridge Scheduler will try to deliver the
    # event to a target.
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum amount of time, in seconds, to continue to make retry
    #   attempts.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of retry attempts to make before the request
    #   fails. Retry attempts with exponential backoff continue until either
    #   the maximum number of attempts is made or until the duration of the
    #   `MaximumEventAgeInSeconds` is reached.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/RetryPolicy AWS API Documentation
    #
    class RetryPolicy < Struct.new(
      :maximum_event_age_in_seconds,
      :maximum_retry_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and value pair of a parameter to use to start execution of a
    # SageMaker Model Building Pipeline.
    #
    # @!attribute [rw] name
    #   Name of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/SageMakerPipelineParameter AWS API Documentation
    #
    class SageMakerPipelineParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The templated target type for the Amazon SageMaker [
    # `StartPipelineExecution` ][1] API operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html
    #
    # @!attribute [rw] pipeline_parameter_list
    #   List of parameter names and values to use when executing the
    #   SageMaker Model Building Pipeline.
    #   @return [Array<Types::SageMakerPipelineParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/SageMakerPipelineParameters AWS API Documentation
    #
    class SageMakerPipelineParameters < Struct.new(
      :pipeline_parameter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a schedule group.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the schedule group.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time at which the schedule group was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_date
    #   The time at which the schedule group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the schedule group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies the state of the schedule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ScheduleGroupSummary AWS API Documentation
    #
    class ScheduleGroupSummary < Struct.new(
      :arn,
      :creation_date,
      :last_modification_date,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a schedule.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The time at which the schedule was created.
    #   @return [Time]
    #
    # @!attribute [rw] group_name
    #   The name of the schedule group associated with this schedule.
    #   @return [String]
    #
    # @!attribute [rw] last_modification_date
    #   The time at which the schedule was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the schedule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The schedule's target details.
    #   @return [Types::TargetSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ScheduleSummary AWS API Documentation
    #
    class ScheduleSummary < Struct.new(
      :arn,
      :creation_date,
      :group_name,
      :last_modification_date,
      :name,
      :state,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The templated target type for the Amazon SQS [ `SendMessage` ][1] API
    # operation. Contains the message group ID to use when the target is a
    # FIFO queue. If you specify an Amazon SQS FIFO queue as a target, the
    # queue must have content-based deduplication enabled. For more
    # information, see [Using the Amazon SQS message deduplication ID][2] in
    # the *Amazon SQS Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html
    # [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html
    #
    # @!attribute [rw] message_group_id
    #   The FIFO message group ID to use as the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/SqsParameters AWS API Documentation
    #
    class SqsParameters < Struct.new(
      :message_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tag to associate with a schedule group.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schedule group that you are
    #   adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to associate with the schedule group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The schedule's target. EventBridge Scheduler supports templated
    # target that invoke common API operations, as well as universal targets
    # that you can customize to invoke over 6,000 API operations across more
    # than 270 services. You can only specify one templated or universal
    # target for a schedule.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   An object that contains information about an Amazon SQS queue that
    #   EventBridge Scheduler uses as a dead-letter queue for your schedule.
    #   If specified, EventBridge Scheduler delivers failed events that
    #   could not be successfully delivered to a target to the queue.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] ecs_parameters
    #   The templated target type for the Amazon ECS [ `RunTask` ][1] API
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   @return [Types::EcsParameters]
    #
    # @!attribute [rw] event_bridge_parameters
    #   The templated target type for the EventBridge [ `PutEvents` ][1] API
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html
    #   @return [Types::EventBridgeParameters]
    #
    # @!attribute [rw] input
    #   The text, or well-formed JSON, passed to the target. If you are
    #   configuring a templated Lambda, AWS Step Functions, or Amazon
    #   EventBridge target, the input must be a well-formed JSON. For all
    #   other target types, a JSON is not required. If you do not specify
    #   anything for this field, EventBridge Scheduler delivers a default
    #   notification to the target.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_parameters
    #   The templated target type for the Amazon Kinesis [ `PutRecord`
    #   ](kinesis/latest/APIReference/API_PutRecord.html) API operation.
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] retry_policy
    #   A `RetryPolicy` object that includes information about the retry
    #   policy settings, including the maximum age of an event, and the
    #   maximum number of times EventBridge Scheduler will try to deliver
    #   the event to a target.
    #   @return [Types::RetryPolicy]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that EventBridge
    #   Scheduler will use for this target when the schedule is invoked.
    #   @return [String]
    #
    # @!attribute [rw] sage_maker_pipeline_parameters
    #   The templated target type for the Amazon SageMaker [
    #   `StartPipelineExecution` ][1] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html
    #   @return [Types::SageMakerPipelineParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   The templated target type for the Amazon SQS [ `SendMessage` ][1]
    #   API operation. Contains the message group ID to use when the target
    #   is a FIFO queue. If you specify an Amazon SQS FIFO queue as a
    #   target, the queue must have content-based deduplication enabled. For
    #   more information, see [Using the Amazon SQS message deduplication
    #   ID][2] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html
    #   @return [Types::SqsParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/Target AWS API Documentation
    #
    class Target < Struct.new(
      :arn,
      :dead_letter_config,
      :ecs_parameters,
      :event_bridge_parameters,
      :input,
      :kinesis_parameters,
      :retry_policy,
      :role_arn,
      :sage_maker_pipeline_parameters,
      :sqs_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a target.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/TargetSummary AWS API Documentation
    #
    class TargetSummary < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the schedule group from which you
    #   are removing tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you do not specify a client token,
    #   EventBridge Scheduler uses a randomly generated token for the
    #   request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description you specify for the schedule.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date, in UTC, before which the schedule can invoke its target.
    #   Depending on the schedule's recurrence expression, invocations
    #   might stop on, or before, the `EndDate` you specify. EventBridge
    #   Scheduler ignores `EndDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] flexible_time_window
    #   Allows you to configure a time window during which EventBridge
    #   Scheduler invokes the schedule.
    #   @return [Types::FlexibleTimeWindow]
    #
    # @!attribute [rw] group_name
    #   The name of the schedule group with which the schedule is
    #   associated. You must provide this value in order for EventBridge
    #   Scheduler to find the schedule you want to update. If you omit this
    #   value, EventBridge Scheduler assumes the group is associated to the
    #   default group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN for the customer managed KMS key that that you want
    #   EventBridge Scheduler to use to encrypt and decrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the schedule that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The expression that defines when the schedule runs. The following
    #   formats are supported.
    #
    #   * `at` expression - `at(yyyy-mm-ddThh:mm:ss)`
    #
    #   * `rate` expression - `rate(unit value)`
    #
    #   * `cron` expression - `cron(fields)`
    #
    #   You can use `at` expressions to create one-time schedules that
    #   invoke a target once, at the time and in the time zone, that you
    #   specify. You can use `rate` and `cron` expressions to create
    #   recurring schedules. Rate-based schedules are useful when you want
    #   to invoke a target at regular intervals, such as every 15 minutes or
    #   every five days. Cron-based schedules are useful when you want to
    #   invoke a target periodically at a specific time, such as at 8:00 am
    #   (UTC+0) every 1st day of the month.
    #
    #   A `cron` expression consists of six fields separated by white
    #   spaces: `(minutes hours day_of_month month day_of_week year)`.
    #
    #   A `rate` expression consists of a *value* as a positive integer, and
    #   a *unit* with the following options: `minute` \| `minutes` \| `hour`
    #   \| `hours` \| `day` \| `days`
    #
    #   For more information and examples, see [Schedule types on
    #   EventBridge Scheduler][1] in the *EventBridge Scheduler User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression_timezone
    #   The timezone in which the scheduling expression is evaluated.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date, in UTC, after which the schedule can begin invoking its
    #   target. Depending on the schedule's recurrence expression,
    #   invocations might occur on, or after, the `StartDate` you specify.
    #   EventBridge Scheduler ignores `StartDate` for one-time schedules.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Specifies whether the schedule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The schedule target. You can use this operation to change the target
    #   that your schedule invokes.
    #   @return [Types::Target]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UpdateScheduleInput AWS API Documentation
    #
    class UpdateScheduleInput < Struct.new(
      :client_token,
      :description,
      :end_date,
      :flexible_time_window,
      :group_name,
      :kms_key_arn,
      :name,
      :schedule_expression,
      :schedule_expression_timezone,
      :start_date,
      :state,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedule_arn
    #   The Amazon Resource Name (ARN) of the schedule that you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/UpdateScheduleOutput AWS API Documentation
    #
    class UpdateScheduleOutput < Struct.new(
      :schedule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/scheduler-2021-06-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
