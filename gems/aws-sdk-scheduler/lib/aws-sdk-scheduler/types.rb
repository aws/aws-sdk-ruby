# frozen_string_literal: true

# This is generated code!

module Aws::Scheduler
  # This module contains the types returned by client operations.
  module Types

    # <p>This structure specifies the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode.</p>
    # @!attribute subnets
    #   <p>Specifies the subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>Specifies the security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups.
    #            If you do not specify a security group, the default security group for the VPC is used.</p>
    #   @return [Array<String>]
    # @!attribute assign_public_ip
    #   <p>Specifies whether the task's elastic network interface receives a public IP address. You can specify <code>ENABLED</code> only when <code>LaunchType</code> in <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>
    #   @return [String]
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a capacity provider strategy.</p>
    # @!attribute capacity_provider
    #   <p>The short name of the capacity provider.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider. The weight value is taken into consideration after the
    #            base value, if defined, is satisfied.</p>
    #   @return [Integer]
    # @!attribute base
    #   <p>The base value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
    #            If no value is specified, the default value of <code>0</code> is used.</p>
    #   @return [Integer]
    class CapacityProviderStrategyItem < Struct.new(
      :capacity_provider,
      :weight,
      :base,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        options[:base] = 0 unless options.key?(:base)
        super
      end
    end

    # <p>Updating or deleting the resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule group that you are creating.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to associate with the schedule group.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    #   @return [String]
    class CreateScheduleGroupOperationInput < Struct.new(
      :name,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schedule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group.</p>
    #   @return [String]
    class CreateScheduleGroupOperationOutput < Struct.new(
      :schedule_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule that you are creating.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group to associate with this schedule. If you omit this, the default schedule group is used.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>
    #     The expression that defines when the schedule runs. The following formats are supported.
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>at</code> expression - <code>at(yyyy-mm-ddThh:mm:ss)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rate</code> expression - <code>rate(value unit)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cron</code> expression - <code>cron(fields)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #     You can use <code>at</code> expressions to create one-time schedules that invoke a target once, at the time and in the time zone, that you specify.
    #     You can use <code>rate</code> and <code>cron</code> expressions to create recurring schedules. Rate-based schedules are useful when you want to invoke a target
    #     at regular intervals, such as every 15 minutes or every five days. Cron-based schedules are useful when you want to invoke a target periodically at a specific time,
    #     such as at 8:00 am (UTC+0) every 1st day of the month.
    #   </p>
    #            <p>
    #     A <code>cron</code> expression consists of six fields separated by white spaces: <code>(minutes hours day_of_month month day_of_week year)</code>.
    #   </p>
    #            <p>
    #     A <code>rate</code> expression consists of a <i>value</i> as a positive integer, and a <i>unit</i> with the following options:
    #     <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>
    #            </p>
    #            <p>
    #     For more information and examples, see <a href="https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html">Schedule types on EventBridge Scheduler</a> in the <i>EventBridge Scheduler User Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the <code>StartDate</code> you specify.
    #   EventBridge Scheduler ignores <code>StartDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the <code>EndDate</code> you specify.
    #   EventBridge Scheduler ignores <code>EndDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description you specify for the schedule.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone in which the scheduling expression is evaluated.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The schedule's target.</p>
    #   @return [Types::Target]
    # @!attribute flexible_time_window
    #   <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    #   @return [Types::FlexibleTimeWindow]
    # @!attribute client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    #   @return [String]
    # @!attribute action_after_completion
    #   <p>Specifies the action that EventBridge Scheduler applies to the schedule after the schedule completes invoking the target.</p>
    #   @return [String]
    class CreateScheduleOperationInput < Struct.new(
      :name,
      :group_name,
      :schedule_expression,
      :start_date,
      :end_date,
      :description,
      :schedule_expression_timezone,
      :state,
      :kms_key_arn,
      :target,
      :flexible_time_window,
      :client_token,
      :action_after_completion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schedule_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule.</p>
    #   @return [String]
    class CreateScheduleOperationOutput < Struct.new(
      :schedule_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the SQS queue specified as the destination for the dead-letter queue.</p>
    #   @return [String]
    class DeadLetterConfig < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule group to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    #   @return [String]
    class DeleteScheduleGroupOperationInput < Struct.new(
      :name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteScheduleGroupOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule to delete.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group associated with this schedule. If you omit this, the default schedule group is used.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    #   @return [String]
    class DeleteScheduleOperationInput < Struct.new(
      :name,
      :group_name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteScheduleOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The templated target type for the Amazon ECS <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html">
    #                <code>RunTask</code>
    #             </a> API operation.</p>
    # @!attribute task_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the task definition to use if the event target is an Amazon ECS task.</p>
    #   @return [String]
    # @!attribute task_count
    #   <p>The number of tasks to create based on <code>TaskDefinition</code>. The default is <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute launch_type
    #   <p>Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task.
    #            The <code>FARGATE</code> value is supported only in the Regions where Fargate with Amazon ECS is supported.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html">AWS Fargate on Amazon ECS</a> in the <i>Amazon ECS Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>This structure specifies the network configuration for an ECS task.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute platform_version
    #   <p>Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as <code>1.1.0</code>.</p>
    #   @return [String]
    # @!attribute group
    #   <p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>
    #   @return [String]
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to enable Amazon ECS managed tags for the task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS Resources</a>
    #            in the <i>Amazon ECS Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute enable_execute_command
    #   <p>Whether or not to enable the execute command functionality for the containers in this task. If true, this enables execute command functionality on all containers in the task.</p>
    #   @return [Boolean]
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime).</p>
    #   @return [Array<Types::PlacementConstraint>]
    # @!attribute placement_strategy
    #   <p>The task placement strategy for a task or service.</p>
    #   @return [Array<Types::PlacementStrategy>]
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated.
    #            Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use Amazon ECS's <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html">
    #                  <code>TagResource</code>
    #               </a>
    #            API action.
    #         </p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>The reference ID to use for the task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html">
    #                  <code>RunTask</code>
    #               </a> in the <i>Amazon ECS API Reference</i>.</p>
    #   @return [Array<Hash<String, String>>]
    class EcsParameters < Struct.new(
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group,
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :placement_constraints,
      :placement_strategy,
      :propagate_tags,
      :reference_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The templated target type for the EventBridge <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html">
    #                <code>PutEvents</code>
    #             </a> API operation.</p>
    # @!attribute detail_type
    #   <p>A free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the event.</p>
    #   @return [String]
    class EventBridgeParameters < Struct.new(
      :detail_type,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    # @!attribute mode
    #   <p>Determines whether the schedule is invoked within a flexible time window.</p>
    #   @return [String]
    # @!attribute maximum_window_in_minutes
    #   <p>The maximum time window during which a schedule can be invoked.</p>
    #   @return [Integer]
    class FlexibleTimeWindow < Struct.new(
      :mode,
      :maximum_window_in_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule group to retrieve.</p>
    #   @return [String]
    class GetScheduleGroupOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schedule group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies the state of the schedule group.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time at which the schedule group was created.</p>
    #   @return [Time]
    # @!attribute last_modification_date
    #   <p>The time at which the schedule group was last modified.</p>
    #   @return [Time]
    class GetScheduleGroupOperationOutput < Struct.new(
      :arn,
      :name,
      :state,
      :creation_date,
      :last_modification_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule to retrieve.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group associated with this schedule. If you omit this, EventBridge Scheduler assumes that the schedule is associated with the default group.</p>
    #   @return [String]
    class GetScheduleOperationInput < Struct.new(
      :name,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the schedule.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group associated with this schedule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schedule.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>
    #     The expression that defines when the schedule runs. The following formats are supported.
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>at</code> expression - <code>at(yyyy-mm-ddThh:mm:ss)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rate</code> expression - <code>rate(value unit)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cron</code> expression - <code>cron(fields)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #     You can use <code>at</code> expressions to create one-time schedules that invoke a target once, at the time and in the time zone, that you specify.
    #     You can use <code>rate</code> and <code>cron</code> expressions to create recurring schedules. Rate-based schedules are useful when you want to invoke a target
    #     at regular intervals, such as every 15 minutes or every five days. Cron-based schedules are useful when you want to invoke a target periodically at a specific time,
    #     such as at 8:00 am (UTC+0) every 1st day of the month.
    #   </p>
    #            <p>
    #     A <code>cron</code> expression consists of six fields separated by white spaces: <code>(minutes hours day_of_month month day_of_week year)</code>.
    #   </p>
    #            <p>
    #     A <code>rate</code> expression consists of a <i>value</i> as a positive integer, and a <i>unit</i> with the following options:
    #     <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>
    #            </p>
    #            <p>
    #     For more information and examples, see <a href="https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html">Schedule types on EventBridge Scheduler</a> in the <i>EventBridge Scheduler User Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the <code>StartDate</code> you specify.
    #   EventBridge Scheduler ignores <code>StartDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the <code>EndDate</code> you specify.
    #   EventBridge Scheduler ignores <code>EndDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the schedule.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone in which the scheduling expression is evaluated.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time at which the schedule was created.</p>
    #   @return [Time]
    # @!attribute last_modification_date
    #   <p>The time at which the schedule was last modified.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The ARN for a customer managed KMS Key that is be used to encrypt and decrypt your data.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The schedule target.</p>
    #   @return [Types::Target]
    # @!attribute flexible_time_window
    #   <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    #   @return [Types::FlexibleTimeWindow]
    # @!attribute action_after_completion
    #   <p>Indicates the action that EventBridge Scheduler applies to the schedule after the schedule completes invoking the target.</p>
    #   @return [String]
    class GetScheduleOperationOutput < Struct.new(
      :arn,
      :group_name,
      :name,
      :schedule_expression,
      :start_date,
      :end_date,
      :description,
      :schedule_expression_timezone,
      :state,
      :creation_date,
      :last_modification_date,
      :kms_key_arn,
      :target,
      :flexible_time_window,
      :action_after_completion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error encountered while processing the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The templated target type for the Amazon Kinesis <a href="kinesis/latest/APIReference/API_PutRecord.html">
    #                <code>PutRecord</code>
    #             </a> API operation.</p>
    # @!attribute partition_key
    #   <p>Specifies the shard to which EventBridge Scheduler sends the event. For more information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html">Amazon Kinesis Data Streams terminology and concepts</a> in the
    #            <i>Amazon Kinesis Streams Developer Guide</i>.</p>
    #   @return [String]
    class KinesisParameters < Struct.new(
      :partition_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name_prefix
    #   <p>The name prefix that you can use to return a filtered list of your schedule groups.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If specified, limits the number of results returned by this operation. The operation also returns a <code>NextToken</code> which you can use in a subsequent operation to retrieve the next set of results.</p>
    #   @return [Integer]
    class ListScheduleGroupsOperationInput < Struct.new(
      :name_prefix,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Indicates whether there are additional results to retrieve. If the value is null, there are no more results.</p>
    #   @return [String]
    # @!attribute schedule_groups
    #   <p>The schedule groups that match the specified criteria.</p>
    #   @return [Array<Types::ScheduleGroupSummary>]
    class ListScheduleGroupsOperationOutput < Struct.new(
      :next_token,
      :schedule_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>If specified, only lists the schedules whose associated schedule group matches the given filter.</p>
    #   @return [String]
    # @!attribute name_prefix
    #   <p>Schedule name prefix to return the filtered list of resources.</p>
    #   @return [String]
    # @!attribute state
    #   <p>If specified, only lists the schedules whose current state matches the given filter.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>If specified, limits the number of results returned by this operation. The operation also returns a <code>NextToken</code> which you can use in a subsequent operation to retrieve the next set of results.</p>
    #   @return [Integer]
    class ListSchedulesOperationInput < Struct.new(
      :group_name,
      :name_prefix,
      :state,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Indicates whether there are additional results to retrieve. If the value is null, there are no more results.</p>
    #   @return [String]
    # @!attribute schedules
    #   <p>The schedules that match the specified criteria.</p>
    #   @return [Array<Types::ScheduleSummary>]
    class ListSchedulesOperationOutput < Struct.new(
      :next_token,
      :schedules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the EventBridge Scheduler resource for which you want to view tags.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the network configuration for an ECS task.</p>
    # @!attribute awsvpc_configuration
    #   <p>Specifies the Amazon VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the awsvpc network mode.</p>
    #   @return [Types::AwsVpcConfiguration]
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a constraint on task placement.</p>
    # @!attribute type
    #   <p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in a particular group is running on a different container instance. Use <code>memberOf</code> to restrict the selection to a group of valid candidates.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is <code>distinctInstance</code>.
    #            For more information, see <a href="https://docs.aws.amazon.com/latest/developerguide/cluster-query-language.html">Cluster query language</a> in the <i>Amazon ECS Developer Guide</i>.</p>
    #   @return [String]
    class PlacementConstraint < Struct.new(
      :type,
      :expression,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The task placement strategy for a task or service.</p>
    # @!attribute type
    #   <p>The type of placement strategy. The random placement strategy randomly places tasks on available candidates. The spread placement strategy spreads placement across available candidates
    #            evenly based on the field parameter. The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter.
    #            For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task).</p>
    #   @return [String]
    # @!attribute field
    #   <p>The field to apply the placement strategy against. For the spread placement strategy, valid values are <code>instanceId</code> (or <code>instanceId</code>, which has the same effect),
    #            or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>. For the binpack placement strategy, valid values are
    #            <code>cpu</code> and <code>memory</code>. For the random placement strategy, this field is not used.</p>
    #   @return [String]
    class PlacementStrategy < Struct.new(
      :type,
      :field,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>RetryPolicy</code> object that includes information about the retry policy settings, including the maximum age of an event, and the maximum number of times EventBridge Scheduler will try to deliver the event to a target.</p>
    # @!attribute maximum_event_age_in_seconds
    #   <p>The maximum amount of time, in seconds, to continue to make retry attempts.</p>
    #   @return [Integer]
    # @!attribute maximum_retry_attempts
    #   <p>The maximum number of retry attempts to make before the request fails. Retry attempts with exponential backoff continue until either the maximum number of attempts is made or
    #            until the duration of the <code>MaximumEventAgeInSeconds</code> is reached.</p>
    #   @return [Integer]
    class RetryPolicy < Struct.new(
      :maximum_event_age_in_seconds,
      :maximum_retry_attempts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name and value pair of a parameter to use to start execution of a SageMaker Model Building Pipeline.</p>
    # @!attribute name
    #   <p>Name of parameter to start execution of a SageMaker Model Building Pipeline.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of parameter to start execution of a SageMaker Model Building Pipeline.</p>
    #   @return [String]
    class SageMakerPipelineParameter < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The templated target type for the Amazon SageMaker <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html">
    #                <code>StartPipelineExecution</code>
    #             </a> API operation.</p>
    # @!attribute pipeline_parameter_list
    #   <p>List of parameter names and values to use when executing the SageMaker Model Building Pipeline.</p>
    #   @return [Array<Types::SageMakerPipelineParameter>]
    class SageMakerPipelineParameters < Struct.new(
      :pipeline_parameter_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a schedule group.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schedule group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies the state of the schedule group.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time at which the schedule group was created.</p>
    #   @return [Time]
    # @!attribute last_modification_date
    #   <p>The time at which the schedule group was last modified.</p>
    #   @return [Time]
    class ScheduleGroupSummary < Struct.new(
      :arn,
      :name,
      :state,
      :creation_date,
      :last_modification_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a schedule.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the schedule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the schedule.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group associated with this schedule.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The time at which the schedule was created.</p>
    #   @return [Time]
    # @!attribute last_modification_date
    #   <p>The time at which the schedule was last modified.</p>
    #   @return [Time]
    # @!attribute target
    #   <p>The schedule's target details.</p>
    #   @return [Types::TargetSummary]
    class ScheduleSummary < Struct.new(
      :arn,
      :name,
      :group_name,
      :state,
      :creation_date,
      :last_modification_date,
      :target,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The templated target type for the Amazon SQS <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html">
    #                <code>SendMessage</code>
    #             </a> API operation.
    #          Contains the message group ID to use when the target is a FIFO queue. If you specify an Amazon SQS FIFO queue as a target, the queue must have content-based deduplication enabled.
    #          For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html">Using the Amazon SQS message deduplication ID</a> in the
    #          <i>Amazon SQS Developer Guide</i>.
    #       </p>
    # @!attribute message_group_id
    #   <p>The FIFO message group ID to use as the target.</p>
    #   @return [String]
    class SqsParameters < Struct.new(
      :message_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tag to associate with a schedule group.</p>
    # @!attribute key
    #   <p>The key for the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group that you are adding tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to associate with the schedule group.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The schedule's target. EventBridge Scheduler supports templated target that invoke common API operations, as well as universal targets that you can customize to
    #         invoke over 6,000 API operations across more than 270 services. You can only specify one templated or universal target for a schedule.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that EventBridge Scheduler will use for this target when the schedule is invoked.</p>
    #   @return [String]
    # @!attribute dead_letter_config
    #   <p>An object that contains information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute retry_policy
    #   <p>A <code>RetryPolicy</code> object that includes information about the retry policy settings, including the maximum age of an event, and the maximum number of times EventBridge Scheduler will try to deliver the event to a target.</p>
    #   @return [Types::RetryPolicy]
    # @!attribute input
    #   <p>The text, or well-formed JSON, passed to the target. If you are configuring a templated Lambda, AWS Step Functions, or Amazon EventBridge target,
    #            the input must be a well-formed JSON. For all other target types, a JSON is not required. If you do not specify anything for this field, EventBridge Scheduler
    #            delivers a default notification to the target.</p>
    #   @return [String]
    # @!attribute ecs_parameters
    #   <p>The templated target type for the Amazon ECS <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html">
    #                  <code>RunTask</code>
    #               </a> API operation.</p>
    #   @return [Types::EcsParameters]
    # @!attribute event_bridge_parameters
    #   <p>The templated target type for the EventBridge <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html">
    #                  <code>PutEvents</code>
    #               </a> API operation.</p>
    #   @return [Types::EventBridgeParameters]
    # @!attribute kinesis_parameters
    #   <p>The templated target type for the Amazon Kinesis <a href="kinesis/latest/APIReference/API_PutRecord.html">
    #                  <code>PutRecord</code>
    #               </a> API operation.</p>
    #   @return [Types::KinesisParameters]
    # @!attribute sage_maker_pipeline_parameters
    #   <p>The templated target type for the Amazon SageMaker <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html">
    #                  <code>StartPipelineExecution</code>
    #               </a> API operation.</p>
    #   @return [Types::SageMakerPipelineParameters]
    # @!attribute sqs_parameters
    #   <p>The templated target type for the Amazon SQS <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html">
    #                  <code>SendMessage</code>
    #               </a> API operation.
    #            Contains the message group ID to use when the target is a FIFO queue. If you specify an Amazon SQS FIFO queue as a target, the queue must have content-based deduplication enabled.
    #            For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html">Using the Amazon SQS message deduplication ID</a> in the
    #            <i>Amazon SQS Developer Guide</i>.</p>
    #   @return [Types::SqsParameters]
    class Target < Struct.new(
      :arn,
      :role_arn,
      :dead_letter_config,
      :retry_policy,
      :input,
      :ecs_parameters,
      :event_bridge_parameters,
      :kinesis_parameters,
      :sage_maker_pipeline_parameters,
      :sqs_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a target.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the target.</p>
    #   @return [String]
    class TargetSummary < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule group from which you are removing tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the schedule that you are updating.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the schedule group with which the schedule is associated. You must provide this value in order for EventBridge Scheduler to find the schedule you want to update.
    #            If you omit this value, EventBridge Scheduler assumes the group is associated to the default group.</p>
    #   @return [String]
    # @!attribute schedule_expression
    #   <p>
    #     The expression that defines when the schedule runs. The following formats are supported.
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>at</code> expression - <code>at(yyyy-mm-ddThh:mm:ss)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>rate</code> expression - <code>rate(value unit)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cron</code> expression - <code>cron(fields)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #     You can use <code>at</code> expressions to create one-time schedules that invoke a target once, at the time and in the time zone, that you specify.
    #     You can use <code>rate</code> and <code>cron</code> expressions to create recurring schedules. Rate-based schedules are useful when you want to invoke a target
    #     at regular intervals, such as every 15 minutes or every five days. Cron-based schedules are useful when you want to invoke a target periodically at a specific time,
    #     such as at 8:00 am (UTC+0) every 1st day of the month.
    #   </p>
    #            <p>
    #     A <code>cron</code> expression consists of six fields separated by white spaces: <code>(minutes hours day_of_month month day_of_week year)</code>.
    #   </p>
    #            <p>
    #     A <code>rate</code> expression consists of a <i>value</i> as a positive integer, and a <i>unit</i> with the following options:
    #     <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>
    #            </p>
    #            <p>
    #     For more information and examples, see <a href="https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html">Schedule types on EventBridge Scheduler</a> in the <i>EventBridge Scheduler User Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the <code>StartDate</code> you specify.
    #   EventBridge Scheduler ignores <code>StartDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute end_date
    #   <p>The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the <code>EndDate</code> you specify.
    #   EventBridge Scheduler ignores <code>EndDate</code> for one-time schedules.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description you specify for the schedule.</p>
    #   @return [String]
    # @!attribute schedule_expression_timezone
    #   <p>The timezone in which the scheduling expression is evaluated.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies whether the schedule is enabled or disabled.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN for the customer managed KMS key that that you want EventBridge Scheduler to use to encrypt and decrypt your data.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The schedule target. You can use this operation to change the target that your schedule invokes.</p>
    #   @return [Types::Target]
    # @!attribute flexible_time_window
    #   <p>Allows you to configure a time window during which EventBridge Scheduler invokes the schedule.</p>
    #   @return [Types::FlexibleTimeWindow]
    # @!attribute client_token
    #   <p>
    #     Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token,
    #     EventBridge Scheduler uses a randomly generated token for the request to ensure idempotency.  
    #   </p>
    #   @return [String]
    # @!attribute action_after_completion
    #   <p>Specifies the action that EventBridge Scheduler applies to the schedule after the schedule completes invoking the target.</p>
    #   @return [String]
    class UpdateScheduleOperationInput < Struct.new(
      :name,
      :group_name,
      :schedule_expression,
      :start_date,
      :end_date,
      :description,
      :schedule_expression_timezone,
      :state,
      :kms_key_arn,
      :target,
      :flexible_time_window,
      :client_token,
      :action_after_completion,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schedule_arn
    #   <p>The Amazon Resource Name (ARN) of the schedule that you updated.</p>
    #   @return [String]
    class UpdateScheduleOperationOutput < Struct.new(
      :schedule_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
