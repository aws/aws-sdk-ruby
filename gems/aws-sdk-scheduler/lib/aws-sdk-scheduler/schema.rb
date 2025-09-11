# frozen_string_literal: true

# This is generated code!

module Aws::Scheduler
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionAfterCompletion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ActionAfterCompletion', name: 'ActionAfterCompletion', traits: {"smithy.api#enum" => [{"value" => "NONE", "name" => "NONE"}, {"value" => "DELETE", "name" => "DELETE"}]})
    AssignPublicIp = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#AssignPublicIp', name: 'AssignPublicIp', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    AwsVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#AwsVpcConfiguration', name: 'AwsVpcConfiguration')
    CapacityProvider = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#CapacityProvider', name: 'CapacityProvider', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CapacityProviderStrategy = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#CapacityProviderStrategy', name: 'CapacityProviderStrategy', traits: {"smithy.api#length" => {"max" => 6}})
    CapacityProviderStrategyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#CapacityProviderStrategyItem', name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#CapacityProviderStrategyItemBase', name: 'CapacityProviderStrategyItemBase', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100000}})
    CapacityProviderStrategyItemWeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#CapacityProviderStrategyItemWeight', name: 'CapacityProviderStrategyItemWeight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateScheduleGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#CreateScheduleGroupOperationInput', name: 'CreateScheduleGroupOperationInput')
    CreateScheduleGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#CreateScheduleGroupOperationOutput', name: 'CreateScheduleGroupOperationOutput')
    CreateScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#CreateScheduleOperationInput', name: 'CreateScheduleOperationInput')
    CreateScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#CreateScheduleOperationOutput', name: 'CreateScheduleOperationOutput')
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.scheduler#CreationDate', name: 'CreationDate')
    DeadLetterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#DeadLetterConfig', name: 'DeadLetterConfig')
    DeleteScheduleGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#DeleteScheduleGroupOperationInput', name: 'DeleteScheduleGroupOperationInput')
    DeleteScheduleGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#DeleteScheduleGroupOperationOutput', name: 'DeleteScheduleGroupOperationOutput')
    DeleteScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#DeleteScheduleOperationInput', name: 'DeleteScheduleOperationInput')
    DeleteScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#DeleteScheduleOperationOutput', name: 'DeleteScheduleOperationOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    DetailType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#DetailType', name: 'DetailType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EcsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#EcsParameters', name: 'EcsParameters')
    EnableECSManagedTags = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.scheduler#EnableECSManagedTags', name: 'EnableECSManagedTags')
    EnableExecuteCommand = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.scheduler#EnableExecuteCommand', name: 'EnableExecuteCommand')
    EndDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.scheduler#EndDate', name: 'EndDate')
    EventBridgeParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#EventBridgeParameters', name: 'EventBridgeParameters')
    FlexibleTimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#FlexibleTimeWindow', name: 'FlexibleTimeWindow')
    FlexibleTimeWindowMode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#FlexibleTimeWindowMode', name: 'FlexibleTimeWindowMode', traits: {"smithy.api#enum" => [{"value" => "OFF", "name" => "OFF"}, {"value" => "FLEXIBLE", "name" => "FLEXIBLE"}]})
    GetScheduleGroupOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#GetScheduleGroupOperationInput', name: 'GetScheduleGroupOperationInput')
    GetScheduleGroupOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#GetScheduleGroupOperationOutput', name: 'GetScheduleGroupOperationOutput')
    GetScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#GetScheduleOperationInput', name: 'GetScheduleOperationInput')
    GetScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#GetScheduleOperationOutput', name: 'GetScheduleOperationOutput')
    Group = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#Group', name: 'Group', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KinesisParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#KinesisParameters', name: 'KinesisParameters')
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:kms:[a-z0-9\\-]+:\\d{12}:(key|alias)\\/[0-9a-zA-Z-_]*$"})
    LastModificationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.scheduler#LastModificationDate', name: 'LastModificationDate')
    LaunchType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#LaunchType', name: 'LaunchType', traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "FARGATE", "name" => "FARGATE"}, {"value" => "EXTERNAL", "name" => "EXTERNAL"}]})
    ListScheduleGroupsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListScheduleGroupsOperationInput', name: 'ListScheduleGroupsOperationInput')
    ListScheduleGroupsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListScheduleGroupsOperationOutput', name: 'ListScheduleGroupsOperationOutput')
    ListSchedulesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListSchedulesOperationInput', name: 'ListSchedulesOperationInput')
    ListSchedulesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListSchedulesOperationOutput', name: 'ListSchedulesOperationOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaximumEventAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#MaximumEventAgeInSeconds', name: 'MaximumEventAgeInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 86400}})
    MaximumRetryAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#MaximumRetryAttempts', name: 'MaximumRetryAttempts', traits: {"smithy.api#range" => {"min" => 0, "max" => 185}})
    MaximumWindowInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#MaximumWindowInMinutes', name: 'MaximumWindowInMinutes', traits: {"smithy.api#range" => {"min" => 1, "max" => 1440}})
    MessageGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#MessageGroupId', name: 'MessageGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$"})
    NamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#NamePrefix', name: 'NamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$"})
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#NetworkConfiguration', name: 'NetworkConfiguration')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PlacementConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#PlacementConstraint', name: 'PlacementConstraint')
    PlacementConstraintExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PlacementConstraintExpression', name: 'PlacementConstraintExpression', traits: {"smithy.api#length" => {"max" => 2000}})
    PlacementConstraintType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PlacementConstraintType', name: 'PlacementConstraintType', traits: {"smithy.api#enum" => [{"value" => "distinctInstance", "name" => "DISTINCT_INSTANCE"}, {"value" => "memberOf", "name" => "MEMBER_OF"}]})
    PlacementConstraints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#PlacementConstraints', name: 'PlacementConstraints', traits: {"smithy.api#length" => {"max" => 10}})
    PlacementStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#PlacementStrategies', name: 'PlacementStrategies', traits: {"smithy.api#length" => {"max" => 5}})
    PlacementStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#PlacementStrategy', name: 'PlacementStrategy')
    PlacementStrategyField = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PlacementStrategyField', name: 'PlacementStrategyField', traits: {"smithy.api#length" => {"max" => 255}})
    PlacementStrategyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PlacementStrategyType', name: 'PlacementStrategyType', traits: {"smithy.api#enum" => [{"value" => "random", "name" => "RANDOM"}, {"value" => "spread", "name" => "SPREAD"}, {"value" => "binpack", "name" => "BINPACK"}]})
    PlatformVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PlatformVersion', name: 'PlatformVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PropagateTags = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#PropagateTags', name: 'PropagateTags', traits: {"smithy.api#enum" => [{"value" => "TASK_DEFINITION", "name" => "TASK_DEFINITION"}]})
    ReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ReferenceId', name: 'ReferenceId', traits: {"smithy.api#length" => {"max" => 1024}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#RetryPolicy', name: 'RetryPolicy')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:iam::\\d{12}:role\\/[\\w+=,.@\\/-]+$"})
    SageMakerPipelineParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#SageMakerPipelineParameter', name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#SageMakerPipelineParameterList', name: 'SageMakerPipelineParameterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    SageMakerPipelineParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#SageMakerPipelineParameterName', name: 'SageMakerPipelineParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9\\-_]*$"})
    SageMakerPipelineParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#SageMakerPipelineParameterValue', name: 'SageMakerPipelineParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SageMakerPipelineParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#SageMakerPipelineParameters', name: 'SageMakerPipelineParameters')
    ScheduleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleArn', name: 'ScheduleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule\\/[0-9a-zA-Z-_.]+\\/[0-9a-zA-Z-_.]+$"})
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleExpression', name: 'ScheduleExpression', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ScheduleExpressionTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleExpressionTimezone', name: 'ScheduleExpressionTimezone', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ScheduleGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupArn', name: 'ScheduleGroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule-group\\/[0-9a-zA-Z-_.]+$"})
    ScheduleGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupList', name: 'ScheduleGroupList')
    ScheduleGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupName', name: 'ScheduleGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$"})
    ScheduleGroupNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupNamePrefix', name: 'ScheduleGroupNamePrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$"})
    ScheduleGroupState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupState', name: 'ScheduleGroupState', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}]})
    ScheduleGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ScheduleGroupSummary', name: 'ScheduleGroupSummary')
    ScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#ScheduleList', name: 'ScheduleList')
    ScheduleState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#ScheduleState', name: 'ScheduleState', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    ScheduleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ScheduleSummary', name: 'ScheduleSummary')
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#SecurityGroup', name: 'SecurityGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?=[/\\.\\-_A-Za-z0-9]+)((?!aws\\.).*)|(\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*)$"})
    SqsParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#SqsParameters', name: 'SqsParameters')
    StartDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.scheduler#StartDate', name: 'StartDate')
    Subnet = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#Subnet', name: 'Subnet', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#Subnets', name: 'Subnets', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.scheduler#TagMap', name: 'TagMap')
    TagResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TagResourceArn', name: 'TagResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)?:scheduler:[a-z0-9\\-]+:\\d{12}:schedule-group\\/[0-9a-zA-Z-_.]+$"})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.scheduler#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#Target', name: 'Target')
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TargetInput = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TargetInput', name: 'TargetInput', traits: {"smithy.api#length" => {"min" => 1}})
    TargetPartitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TargetPartitionKey', name: 'TargetPartitionKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#TargetSummary', name: 'TargetSummary')
    TaskCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.scheduler#TaskCount', name: 'TaskCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    TaskDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.scheduler#TaskDefinitionArn', name: 'TaskDefinitionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    UpdateScheduleOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#UpdateScheduleOperationInput', name: 'UpdateScheduleOperationInput')
    UpdateScheduleOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#UpdateScheduleOperationOutput', name: 'UpdateScheduleOperationOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.scheduler#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AwsVpcConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: 'Subnets', traits: {"smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups'))
    AwsVpcConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: 'AssignPublicIp'))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    CapacityProviderStrategy.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)
    CapacityProviderStrategyItem.add_member(:capacity_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProvider, location_name: 'capacityProvider', traits: {"smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: 'weight', traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.add_member(:base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: 'base', traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateScheduleGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateScheduleGroupOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateScheduleGroupOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScheduleGroupOperationInput.type = Types::CreateScheduleGroupOperationInput
    CreateScheduleGroupOperationOutput.add_member(:schedule_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupArn, location_name: 'ScheduleGroupArn', traits: {"smithy.api#required" => {}}))
    CreateScheduleGroupOperationOutput.type = Types::CreateScheduleGroupOperationOutput
    CreateScheduleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateScheduleOperationInput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName'))
    CreateScheduleOperationInput.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    CreateScheduleOperationInput.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDate, location_name: 'StartDate'))
    CreateScheduleOperationInput.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndDate, location_name: 'EndDate'))
    CreateScheduleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateScheduleOperationInput.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: 'ScheduleExpressionTimezone'))
    CreateScheduleOperationInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'State'))
    CreateScheduleOperationInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    CreateScheduleOperationInput.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target', traits: {"smithy.api#required" => {}}))
    CreateScheduleOperationInput.add_member(:flexible_time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlexibleTimeWindow, location_name: 'FlexibleTimeWindow', traits: {"smithy.api#required" => {}}))
    CreateScheduleOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScheduleOperationInput.add_member(:action_after_completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionAfterCompletion, location_name: 'ActionAfterCompletion'))
    CreateScheduleOperationInput.type = Types::CreateScheduleOperationInput
    CreateScheduleOperationOutput.add_member(:schedule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleArn, location_name: 'ScheduleArn', traits: {"smithy.api#required" => {}}))
    CreateScheduleOperationOutput.type = Types::CreateScheduleOperationOutput
    DeadLetterConfig.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'Arn', traits: {"smithy.api#pattern" => "^arn:aws(-[a-z]+)?:sqs:[a-z0-9\\-]+:\\d{12}:[a-zA-Z0-9\\-_]+$"}))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeleteScheduleGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Name"}))
    DeleteScheduleGroupOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteScheduleGroupOperationInput.type = Types::DeleteScheduleGroupOperationInput
    DeleteScheduleGroupOperationOutput.type = Types::DeleteScheduleGroupOperationOutput
    DeleteScheduleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScheduleOperationInput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName', traits: {"smithy.api#httpQuery" => "groupName"}))
    DeleteScheduleOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteScheduleOperationInput.type = Types::DeleteScheduleOperationInput
    DeleteScheduleOperationOutput.type = Types::DeleteScheduleOperationOutput
    EcsParameters.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDefinitionArn, location_name: 'TaskDefinitionArn', traits: {"smithy.api#required" => {}}))
    EcsParameters.add_member(:task_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskCount, location_name: 'TaskCount'))
    EcsParameters.add_member(:launch_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchType, location_name: 'LaunchType'))
    EcsParameters.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'NetworkConfiguration'))
    EcsParameters.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersion, location_name: 'PlatformVersion'))
    EcsParameters.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    EcsParameters.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: 'CapacityProviderStrategy'))
    EcsParameters.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableECSManagedTags, location_name: 'EnableECSManagedTags'))
    EcsParameters.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableExecuteCommand, location_name: 'EnableExecuteCommand'))
    EcsParameters.add_member(:placement_constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: 'PlacementConstraints'))
    EcsParameters.add_member(:placement_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: 'PlacementStrategy'))
    EcsParameters.add_member(:propagate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PropagateTags, location_name: 'PropagateTags'))
    EcsParameters.add_member(:reference_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'ReferenceId'))
    EcsParameters.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    EcsParameters.type = Types::EcsParameters
    EventBridgeParameters.add_member(:detail_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailType, location_name: 'DetailType', traits: {"smithy.api#required" => {}}))
    EventBridgeParameters.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'Source', traits: {"smithy.api#required" => {}}))
    EventBridgeParameters.type = Types::EventBridgeParameters
    FlexibleTimeWindow.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlexibleTimeWindowMode, location_name: 'Mode', traits: {"smithy.api#required" => {}}))
    FlexibleTimeWindow.add_member(:maximum_window_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumWindowInMinutes, location_name: 'MaximumWindowInMinutes'))
    FlexibleTimeWindow.type = Types::FlexibleTimeWindow
    GetScheduleGroupOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetScheduleGroupOperationInput.type = Types::GetScheduleGroupOperationInput
    GetScheduleGroupOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupArn, location_name: 'Arn'))
    GetScheduleGroupOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'Name'))
    GetScheduleGroupOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupState, location_name: 'State'))
    GetScheduleGroupOperationOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'CreationDate'))
    GetScheduleGroupOperationOutput.add_member(:last_modification_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModificationDate, location_name: 'LastModificationDate'))
    GetScheduleGroupOperationOutput.type = Types::GetScheduleGroupOperationOutput
    GetScheduleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetScheduleOperationInput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName', traits: {"smithy.api#httpQuery" => "groupName"}))
    GetScheduleOperationInput.type = Types::GetScheduleOperationInput
    GetScheduleOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleArn, location_name: 'Arn'))
    GetScheduleOperationOutput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName'))
    GetScheduleOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    GetScheduleOperationOutput.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression'))
    GetScheduleOperationOutput.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDate, location_name: 'StartDate'))
    GetScheduleOperationOutput.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndDate, location_name: 'EndDate'))
    GetScheduleOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    GetScheduleOperationOutput.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: 'ScheduleExpressionTimezone'))
    GetScheduleOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'State'))
    GetScheduleOperationOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'CreationDate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetScheduleOperationOutput.add_member(:last_modification_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModificationDate, location_name: 'LastModificationDate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetScheduleOperationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    GetScheduleOperationOutput.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target'))
    GetScheduleOperationOutput.add_member(:flexible_time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlexibleTimeWindow, location_name: 'FlexibleTimeWindow'))
    GetScheduleOperationOutput.add_member(:action_after_completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionAfterCompletion, location_name: 'ActionAfterCompletion'))
    GetScheduleOperationOutput.type = Types::GetScheduleOperationOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KinesisParameters.add_member(:partition_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetPartitionKey, location_name: 'PartitionKey', traits: {"smithy.api#required" => {}}))
    KinesisParameters.type = Types::KinesisParameters
    ListScheduleGroupsOperationInput.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupNamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#httpQuery" => "NamePrefix"}))
    ListScheduleGroupsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListScheduleGroupsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListScheduleGroupsOperationInput.type = Types::ListScheduleGroupsOperationInput
    ListScheduleGroupsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListScheduleGroupsOperationOutput.add_member(:schedule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupList, location_name: 'ScheduleGroups', traits: {"smithy.api#required" => {}}))
    ListScheduleGroupsOperationOutput.type = Types::ListScheduleGroupsOperationOutput
    ListSchedulesOperationInput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName', traits: {"smithy.api#httpQuery" => "ScheduleGroup"}))
    ListSchedulesOperationInput.add_member(:name_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamePrefix, location_name: 'NamePrefix', traits: {"smithy.api#httpQuery" => "NamePrefix"}))
    ListSchedulesOperationInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'State', traits: {"smithy.api#httpQuery" => "State"}))
    ListSchedulesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSchedulesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListSchedulesOperationInput.type = Types::ListSchedulesOperationInput
    ListSchedulesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSchedulesOperationOutput.add_member(:schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleList, location_name: 'Schedules', traits: {"smithy.api#required" => {}}))
    ListSchedulesOperationOutput.type = Types::ListSchedulesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    NetworkConfiguration.add_member(:awsvpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: 'awsvpcConfiguration'))
    NetworkConfiguration.type = Types::NetworkConfiguration
    PlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: 'type'))
    PlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: 'expression'))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementConstraint)
    PlacementStrategies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategy)
    PlacementStrategy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: 'type'))
    PlacementStrategy.add_member(:field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStrategyField, location_name: 'field'))
    PlacementStrategy.type = Types::PlacementStrategy
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryPolicy.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: 'MaximumEventAgeInSeconds'))
    RetryPolicy.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: 'MaximumRetryAttempts'))
    RetryPolicy.type = Types::RetryPolicy
    SageMakerPipelineParameter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    SageMakerPipelineParameter.type = Types::SageMakerPipelineParameter
    SageMakerPipelineParameterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)
    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: 'PipelineParameterList'))
    SageMakerPipelineParameters.type = Types::SageMakerPipelineParameters
    ScheduleGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupSummary)
    ScheduleGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupArn, location_name: 'Arn'))
    ScheduleGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'Name'))
    ScheduleGroupSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupState, location_name: 'State'))
    ScheduleGroupSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'CreationDate'))
    ScheduleGroupSummary.add_member(:last_modification_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModificationDate, location_name: 'LastModificationDate'))
    ScheduleGroupSummary.type = Types::ScheduleGroupSummary
    ScheduleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleSummary)
    ScheduleSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleArn, location_name: 'Arn'))
    ScheduleSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    ScheduleSummary.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName'))
    ScheduleSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'State'))
    ScheduleSummary.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'CreationDate'))
    ScheduleSummary.add_member(:last_modification_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastModificationDate, location_name: 'LastModificationDate'))
    ScheduleSummary.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummary, location_name: 'Target'))
    ScheduleSummary.type = Types::ScheduleSummary
    SecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SqsParameters.add_member(:message_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageGroupId, location_name: 'MessageGroupId'))
    SqsParameters.type = Types::SqsParameters
    Subnets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap)
    Target.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    Target.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#required" => {}}))
    Target.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: 'DeadLetterConfig'))
    Target.add_member(:retry_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryPolicy, location_name: 'RetryPolicy'))
    Target.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInput, location_name: 'Input'))
    Target.add_member(:ecs_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsParameters, location_name: 'EcsParameters'))
    Target.add_member(:event_bridge_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeParameters, location_name: 'EventBridgeParameters'))
    Target.add_member(:kinesis_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisParameters, location_name: 'KinesisParameters'))
    Target.add_member(:sage_maker_pipeline_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerPipelineParameters, location_name: 'SageMakerPipelineParameters'))
    Target.add_member(:sqs_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsParameters, location_name: 'SqsParameters'))
    Target.type = Types::Target
    TargetSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    TargetSummary.type = Types::TargetSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateScheduleOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScheduleOperationInput.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: 'GroupName'))
    UpdateScheduleOperationInput.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: 'ScheduleExpression', traits: {"smithy.api#required" => {}}))
    UpdateScheduleOperationInput.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDate, location_name: 'StartDate'))
    UpdateScheduleOperationInput.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndDate, location_name: 'EndDate'))
    UpdateScheduleOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateScheduleOperationInput.add_member(:schedule_expression_timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: 'ScheduleExpressionTimezone'))
    UpdateScheduleOperationInput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'State'))
    UpdateScheduleOperationInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    UpdateScheduleOperationInput.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target', traits: {"smithy.api#required" => {}}))
    UpdateScheduleOperationInput.add_member(:flexible_time_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlexibleTimeWindow, location_name: 'FlexibleTimeWindow', traits: {"smithy.api#required" => {}}))
    UpdateScheduleOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateScheduleOperationInput.add_member(:action_after_completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionAfterCompletion, location_name: 'ActionAfterCompletion'))
    UpdateScheduleOperationInput.type = Types::UpdateScheduleOperationInput
    UpdateScheduleOperationOutput.add_member(:schedule_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleArn, location_name: 'ScheduleArn', traits: {"smithy.api#required" => {}}))
    UpdateScheduleOperationOutput.type = Types::UpdateScheduleOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSChronosService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.scheduler#AWSChronosService"
      service.name = "AWSChronosService"
      service.version = "2021-06-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Scheduler", "arnNamespace" => "scheduler", "cloudFormationName" => "Scheduler"}, "aws.auth#sigv4" => {"name" => "scheduler"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon EventBridge Scheduler"}
      service.add_operation(:create_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#CreateSchedule"
        operation.name = "CreateSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/schedules/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_schedule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#CreateScheduleGroup"
        operation.name = "CreateScheduleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduleGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/schedule-groups/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#DeleteSchedule"
        operation.name = "DeleteSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/schedules/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_schedule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#DeleteScheduleGroup"
        operation.name = "DeleteScheduleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduleGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/schedule-groups/{Name}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#GetSchedule"
        operation.name = "GetSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schedules/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schedule_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#GetScheduleGroup"
        operation.name = "GetScheduleGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduleGroupOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScheduleGroupOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schedule-groups/{Name}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_schedule_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#ListScheduleGroups"
        operation.name = "ListScheduleGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduleGroupsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListScheduleGroupsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schedule-groups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScheduleGroups.new
      end)
      service.add_operation(:list_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#ListSchedules"
        operation.name = "ListSchedules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulesOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSchedulesOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/schedules"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSchedules.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.scheduler#UpdateSchedule"
        operation.name = "UpdateSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduleOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScheduleOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["scheduler:TagResource", "scheduler:UntagResource"], "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/schedules/{Name}"}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
