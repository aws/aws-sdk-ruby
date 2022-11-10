# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Scheduler
  # @api private
  module ClientApi

    include Seahorse::Model

    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    CapacityProvider = Shapes::StringShape.new(name: 'CapacityProvider')
    CapacityProviderStrategy = Shapes::ListShape.new(name: 'CapacityProviderStrategy')
    CapacityProviderStrategyItem = Shapes::StructureShape.new(name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemBase')
    CapacityProviderStrategyItemWeight = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemWeight')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateScheduleGroupInput = Shapes::StructureShape.new(name: 'CreateScheduleGroupInput')
    CreateScheduleGroupOutput = Shapes::StructureShape.new(name: 'CreateScheduleGroupOutput')
    CreateScheduleInput = Shapes::StructureShape.new(name: 'CreateScheduleInput')
    CreateScheduleOutput = Shapes::StructureShape.new(name: 'CreateScheduleOutput')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeadLetterConfigArnString = Shapes::StringShape.new(name: 'DeadLetterConfigArnString')
    DeleteScheduleGroupInput = Shapes::StructureShape.new(name: 'DeleteScheduleGroupInput')
    DeleteScheduleGroupOutput = Shapes::StructureShape.new(name: 'DeleteScheduleGroupOutput')
    DeleteScheduleInput = Shapes::StructureShape.new(name: 'DeleteScheduleInput')
    DeleteScheduleOutput = Shapes::StructureShape.new(name: 'DeleteScheduleOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailType = Shapes::StringShape.new(name: 'DetailType')
    EcsParameters = Shapes::StructureShape.new(name: 'EcsParameters')
    EnableECSManagedTags = Shapes::BooleanShape.new(name: 'EnableECSManagedTags')
    EnableExecuteCommand = Shapes::BooleanShape.new(name: 'EnableExecuteCommand')
    EndDate = Shapes::TimestampShape.new(name: 'EndDate')
    EventBridgeParameters = Shapes::StructureShape.new(name: 'EventBridgeParameters')
    FlexibleTimeWindow = Shapes::StructureShape.new(name: 'FlexibleTimeWindow')
    FlexibleTimeWindowMode = Shapes::StringShape.new(name: 'FlexibleTimeWindowMode')
    GetScheduleGroupInput = Shapes::StructureShape.new(name: 'GetScheduleGroupInput')
    GetScheduleGroupOutput = Shapes::StructureShape.new(name: 'GetScheduleGroupOutput')
    GetScheduleInput = Shapes::StructureShape.new(name: 'GetScheduleInput')
    GetScheduleOutput = Shapes::StructureShape.new(name: 'GetScheduleOutput')
    Group = Shapes::StringShape.new(name: 'Group')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KinesisParameters = Shapes::StructureShape.new(name: 'KinesisParameters')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LastModificationDate = Shapes::TimestampShape.new(name: 'LastModificationDate')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    ListScheduleGroupsInput = Shapes::StructureShape.new(name: 'ListScheduleGroupsInput')
    ListScheduleGroupsOutput = Shapes::StructureShape.new(name: 'ListScheduleGroupsOutput')
    ListSchedulesInput = Shapes::StructureShape.new(name: 'ListSchedulesInput')
    ListSchedulesOutput = Shapes::StructureShape.new(name: 'ListSchedulesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumEventAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumEventAgeInSeconds')
    MaximumRetryAttempts = Shapes::IntegerShape.new(name: 'MaximumRetryAttempts')
    MaximumWindowInMinutes = Shapes::IntegerShape.new(name: 'MaximumWindowInMinutes')
    MessageGroupId = Shapes::StringShape.new(name: 'MessageGroupId')
    Name = Shapes::StringShape.new(name: 'Name')
    NamePrefix = Shapes::StringShape.new(name: 'NamePrefix')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PlacementConstraint = Shapes::StructureShape.new(name: 'PlacementConstraint')
    PlacementConstraintExpression = Shapes::StringShape.new(name: 'PlacementConstraintExpression')
    PlacementConstraintType = Shapes::StringShape.new(name: 'PlacementConstraintType')
    PlacementConstraints = Shapes::ListShape.new(name: 'PlacementConstraints')
    PlacementStrategies = Shapes::ListShape.new(name: 'PlacementStrategies')
    PlacementStrategy = Shapes::StructureShape.new(name: 'PlacementStrategy')
    PlacementStrategyField = Shapes::StringShape.new(name: 'PlacementStrategyField')
    PlacementStrategyType = Shapes::StringShape.new(name: 'PlacementStrategyType')
    PlatformVersion = Shapes::StringShape.new(name: 'PlatformVersion')
    PropagateTags = Shapes::StringShape.new(name: 'PropagateTags')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryPolicy = Shapes::StructureShape.new(name: 'RetryPolicy')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SageMakerPipelineParameter = Shapes::StructureShape.new(name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = Shapes::ListShape.new(name: 'SageMakerPipelineParameterList')
    SageMakerPipelineParameterName = Shapes::StringShape.new(name: 'SageMakerPipelineParameterName')
    SageMakerPipelineParameterValue = Shapes::StringShape.new(name: 'SageMakerPipelineParameterValue')
    SageMakerPipelineParameters = Shapes::StructureShape.new(name: 'SageMakerPipelineParameters')
    ScheduleArn = Shapes::StringShape.new(name: 'ScheduleArn')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleExpressionTimezone = Shapes::StringShape.new(name: 'ScheduleExpressionTimezone')
    ScheduleGroupArn = Shapes::StringShape.new(name: 'ScheduleGroupArn')
    ScheduleGroupList = Shapes::ListShape.new(name: 'ScheduleGroupList')
    ScheduleGroupName = Shapes::StringShape.new(name: 'ScheduleGroupName')
    ScheduleGroupNamePrefix = Shapes::StringShape.new(name: 'ScheduleGroupNamePrefix')
    ScheduleGroupState = Shapes::StringShape.new(name: 'ScheduleGroupState')
    ScheduleGroupSummary = Shapes::StructureShape.new(name: 'ScheduleGroupSummary')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    ScheduleState = Shapes::StringShape.new(name: 'ScheduleState')
    ScheduleSummary = Shapes::StructureShape.new(name: 'ScheduleSummary')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Source = Shapes::StringShape.new(name: 'Source')
    SqsParameters = Shapes::StructureShape.new(name: 'SqsParameters')
    StartDate = Shapes::TimestampShape.new(name: 'StartDate')
    String = Shapes::StringShape.new(name: 'String')
    Subnet = Shapes::StringShape.new(name: 'Subnet')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceArn = Shapes::StringShape.new(name: 'TagResourceArn')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetInput = Shapes::StringShape.new(name: 'TargetInput')
    TargetPartitionKey = Shapes::StringShape.new(name: 'TargetPartitionKey')
    TargetSummary = Shapes::StructureShape.new(name: 'TargetSummary')
    TaskCount = Shapes::IntegerShape.new(name: 'TaskCount')
    TaskDefinitionArn = Shapes::StringShape.new(name: 'TaskDefinitionArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateScheduleInput = Shapes::StructureShape.new(name: 'UpdateScheduleInput')
    UpdateScheduleOutput = Shapes::StructureShape.new(name: 'UpdateScheduleOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "AssignPublicIp"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "Subnets"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    CapacityProviderStrategy.member = Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)

    CapacityProviderStrategyItem.add_member(:base, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: "base"))
    CapacityProviderStrategyItem.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "capacityProvider"))
    CapacityProviderStrategyItem.add_member(:weight, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: "weight"))
    CapacityProviderStrategyItem.struct_class = Types::CapacityProviderStrategyItem

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateScheduleGroupInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateScheduleGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleGroupName, required: true, location: "uri", location_name: "Name"))
    CreateScheduleGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateScheduleGroupInput.struct_class = Types::CreateScheduleGroupInput

    CreateScheduleGroupOutput.add_member(:schedule_group_arn, Shapes::ShapeRef.new(shape: ScheduleGroupArn, required: true, location_name: "ScheduleGroupArn"))
    CreateScheduleGroupOutput.struct_class = Types::CreateScheduleGroupOutput

    CreateScheduleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateScheduleInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateScheduleInput.add_member(:end_date, Shapes::ShapeRef.new(shape: EndDate, location_name: "EndDate"))
    CreateScheduleInput.add_member(:flexible_time_window, Shapes::ShapeRef.new(shape: FlexibleTimeWindow, required: true, location_name: "FlexibleTimeWindow"))
    CreateScheduleInput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "GroupName"))
    CreateScheduleInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CreateScheduleInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    CreateScheduleInput.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    CreateScheduleInput.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: "ScheduleExpressionTimezone"))
    CreateScheduleInput.add_member(:start_date, Shapes::ShapeRef.new(shape: StartDate, location_name: "StartDate"))
    CreateScheduleInput.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "State"))
    CreateScheduleInput.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    CreateScheduleInput.struct_class = Types::CreateScheduleInput

    CreateScheduleOutput.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: ScheduleArn, required: true, location_name: "ScheduleArn"))
    CreateScheduleOutput.struct_class = Types::CreateScheduleOutput

    DeadLetterConfig.add_member(:arn, Shapes::ShapeRef.new(shape: DeadLetterConfigArnString, location_name: "Arn"))
    DeadLetterConfig.struct_class = Types::DeadLetterConfig

    DeleteScheduleGroupInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteScheduleGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleGroupName, required: true, location: "uri", location_name: "Name"))
    DeleteScheduleGroupInput.struct_class = Types::DeleteScheduleGroupInput

    DeleteScheduleGroupOutput.struct_class = Types::DeleteScheduleGroupOutput

    DeleteScheduleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteScheduleInput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location: "querystring", location_name: "groupName"))
    DeleteScheduleInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    DeleteScheduleInput.struct_class = Types::DeleteScheduleInput

    DeleteScheduleOutput.struct_class = Types::DeleteScheduleOutput

    EcsParameters.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "CapacityProviderStrategy"))
    EcsParameters.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: EnableECSManagedTags, location_name: "EnableECSManagedTags"))
    EcsParameters.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: EnableExecuteCommand, location_name: "EnableExecuteCommand"))
    EcsParameters.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    EcsParameters.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "LaunchType"))
    EcsParameters.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    EcsParameters.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "PlacementConstraints"))
    EcsParameters.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "PlacementStrategy"))
    EcsParameters.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    EcsParameters.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "PropagateTags"))
    EcsParameters.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "ReferenceId"))
    EcsParameters.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    EcsParameters.add_member(:task_count, Shapes::ShapeRef.new(shape: TaskCount, location_name: "TaskCount"))
    EcsParameters.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: TaskDefinitionArn, required: true, location_name: "TaskDefinitionArn"))
    EcsParameters.struct_class = Types::EcsParameters

    EventBridgeParameters.add_member(:detail_type, Shapes::ShapeRef.new(shape: DetailType, required: true, location_name: "DetailType"))
    EventBridgeParameters.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    EventBridgeParameters.struct_class = Types::EventBridgeParameters

    FlexibleTimeWindow.add_member(:maximum_window_in_minutes, Shapes::ShapeRef.new(shape: MaximumWindowInMinutes, location_name: "MaximumWindowInMinutes"))
    FlexibleTimeWindow.add_member(:mode, Shapes::ShapeRef.new(shape: FlexibleTimeWindowMode, required: true, location_name: "Mode"))
    FlexibleTimeWindow.struct_class = Types::FlexibleTimeWindow

    GetScheduleGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleGroupName, required: true, location: "uri", location_name: "Name"))
    GetScheduleGroupInput.struct_class = Types::GetScheduleGroupInput

    GetScheduleGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduleGroupArn, location_name: "Arn"))
    GetScheduleGroupOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetScheduleGroupOutput.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: LastModificationDate, location_name: "LastModificationDate"))
    GetScheduleGroupOutput.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "Name"))
    GetScheduleGroupOutput.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleGroupState, location_name: "State"))
    GetScheduleGroupOutput.struct_class = Types::GetScheduleGroupOutput

    GetScheduleInput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location: "querystring", location_name: "groupName"))
    GetScheduleInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    GetScheduleInput.struct_class = Types::GetScheduleInput

    GetScheduleOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduleArn, location_name: "Arn"))
    GetScheduleOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetScheduleOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetScheduleOutput.add_member(:end_date, Shapes::ShapeRef.new(shape: EndDate, location_name: "EndDate"))
    GetScheduleOutput.add_member(:flexible_time_window, Shapes::ShapeRef.new(shape: FlexibleTimeWindow, location_name: "FlexibleTimeWindow"))
    GetScheduleOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "GroupName"))
    GetScheduleOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    GetScheduleOutput.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: LastModificationDate, location_name: "LastModificationDate"))
    GetScheduleOutput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetScheduleOutput.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    GetScheduleOutput.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: "ScheduleExpressionTimezone"))
    GetScheduleOutput.add_member(:start_date, Shapes::ShapeRef.new(shape: StartDate, location_name: "StartDate"))
    GetScheduleOutput.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "State"))
    GetScheduleOutput.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "Target"))
    GetScheduleOutput.struct_class = Types::GetScheduleOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    KinesisParameters.add_member(:partition_key, Shapes::ShapeRef.new(shape: TargetPartitionKey, required: true, location_name: "PartitionKey"))
    KinesisParameters.struct_class = Types::KinesisParameters

    ListScheduleGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListScheduleGroupsInput.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ScheduleGroupNamePrefix, location: "querystring", location_name: "NamePrefix"))
    ListScheduleGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListScheduleGroupsInput.struct_class = Types::ListScheduleGroupsInput

    ListScheduleGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListScheduleGroupsOutput.add_member(:schedule_groups, Shapes::ShapeRef.new(shape: ScheduleGroupList, required: true, location_name: "ScheduleGroups"))
    ListScheduleGroupsOutput.struct_class = Types::ListScheduleGroupsOutput

    ListSchedulesInput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location: "querystring", location_name: "ScheduleGroup"))
    ListSchedulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSchedulesInput.add_member(:name_prefix, Shapes::ShapeRef.new(shape: NamePrefix, location: "querystring", location_name: "NamePrefix"))
    ListSchedulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSchedulesInput.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location: "querystring", location_name: "State"))
    ListSchedulesInput.struct_class = Types::ListSchedulesInput

    ListSchedulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSchedulesOutput.add_member(:schedules, Shapes::ShapeRef.new(shape: ScheduleList, required: true, location_name: "Schedules"))
    ListSchedulesOutput.struct_class = Types::ListSchedulesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    PlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: "expression"))
    PlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.struct_class = Types::PlacementConstraint

    PlacementConstraints.member = Shapes::ShapeRef.new(shape: PlacementConstraint)

    PlacementStrategies.member = Shapes::ShapeRef.new(shape: PlacementStrategy)

    PlacementStrategy.add_member(:field, Shapes::ShapeRef.new(shape: PlacementStrategyField, location_name: "field"))
    PlacementStrategy.add_member(:type, Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.struct_class = Types::PlacementStrategy

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryPolicy.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    RetryPolicy.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    RetryPolicy.struct_class = Types::RetryPolicy

    SageMakerPipelineParameter.add_member(:name, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, required: true, location_name: "Name"))
    SageMakerPipelineParameter.add_member(:value, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, required: true, location_name: "Value"))
    SageMakerPipelineParameter.struct_class = Types::SageMakerPipelineParameter

    SageMakerPipelineParameterList.member = Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)

    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: "PipelineParameterList"))
    SageMakerPipelineParameters.struct_class = Types::SageMakerPipelineParameters

    ScheduleGroupList.member = Shapes::ShapeRef.new(shape: ScheduleGroupSummary)

    ScheduleGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduleGroupArn, location_name: "Arn"))
    ScheduleGroupSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    ScheduleGroupSummary.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: LastModificationDate, location_name: "LastModificationDate"))
    ScheduleGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "Name"))
    ScheduleGroupSummary.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleGroupState, location_name: "State"))
    ScheduleGroupSummary.struct_class = Types::ScheduleGroupSummary

    ScheduleList.member = Shapes::ShapeRef.new(shape: ScheduleSummary)

    ScheduleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ScheduleArn, location_name: "Arn"))
    ScheduleSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    ScheduleSummary.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "GroupName"))
    ScheduleSummary.add_member(:last_modification_date, Shapes::ShapeRef.new(shape: LastModificationDate, location_name: "LastModificationDate"))
    ScheduleSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ScheduleSummary.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "State"))
    ScheduleSummary.add_member(:target, Shapes::ShapeRef.new(shape: TargetSummary, location_name: "Target"))
    ScheduleSummary.struct_class = Types::ScheduleSummary

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SqsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: MessageGroupId, location_name: "MessageGroupId"))
    SqsParameters.struct_class = Types::SqsParameters

    Subnets.member = Shapes::ShapeRef.new(shape: Subnet)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    Tags.member = Shapes::ShapeRef.new(shape: TagMap)

    Target.add_member(:arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "Arn"))
    Target.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    Target.add_member(:ecs_parameters, Shapes::ShapeRef.new(shape: EcsParameters, location_name: "EcsParameters"))
    Target.add_member(:event_bridge_parameters, Shapes::ShapeRef.new(shape: EventBridgeParameters, location_name: "EventBridgeParameters"))
    Target.add_member(:input, Shapes::ShapeRef.new(shape: TargetInput, location_name: "Input"))
    Target.add_member(:kinesis_parameters, Shapes::ShapeRef.new(shape: KinesisParameters, location_name: "KinesisParameters"))
    Target.add_member(:retry_policy, Shapes::ShapeRef.new(shape: RetryPolicy, location_name: "RetryPolicy"))
    Target.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    Target.add_member(:sage_maker_pipeline_parameters, Shapes::ShapeRef.new(shape: SageMakerPipelineParameters, location_name: "SageMakerPipelineParameters"))
    Target.add_member(:sqs_parameters, Shapes::ShapeRef.new(shape: SqsParameters, location_name: "SqsParameters"))
    Target.struct_class = Types::Target

    TargetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "Arn"))
    TargetSummary.struct_class = Types::TargetSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateScheduleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateScheduleInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateScheduleInput.add_member(:end_date, Shapes::ShapeRef.new(shape: EndDate, location_name: "EndDate"))
    UpdateScheduleInput.add_member(:flexible_time_window, Shapes::ShapeRef.new(shape: FlexibleTimeWindow, required: true, location_name: "FlexibleTimeWindow"))
    UpdateScheduleInput.add_member(:group_name, Shapes::ShapeRef.new(shape: ScheduleGroupName, location_name: "GroupName"))
    UpdateScheduleInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    UpdateScheduleInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    UpdateScheduleInput.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    UpdateScheduleInput.add_member(:schedule_expression_timezone, Shapes::ShapeRef.new(shape: ScheduleExpressionTimezone, location_name: "ScheduleExpressionTimezone"))
    UpdateScheduleInput.add_member(:start_date, Shapes::ShapeRef.new(shape: StartDate, location_name: "StartDate"))
    UpdateScheduleInput.add_member(:state, Shapes::ShapeRef.new(shape: ScheduleState, location_name: "State"))
    UpdateScheduleInput.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    UpdateScheduleInput.struct_class = Types::UpdateScheduleInput

    UpdateScheduleOutput.add_member(:schedule_arn, Shapes::ShapeRef.new(shape: ScheduleArn, required: true, location_name: "ScheduleArn"))
    UpdateScheduleOutput.struct_class = Types::UpdateScheduleOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-06-30"

      api.metadata = {
        "apiVersion" => "2021-06-30",
        "endpointPrefix" => "scheduler",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon EventBridge Scheduler",
        "serviceId" => "Scheduler",
        "signatureVersion" => "v4",
        "signingName" => "scheduler",
        "uid" => "scheduler-2021-06-30",
      }

      api.add_operation(:create_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/schedules/{Name}"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_schedule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduleGroup"
        o.http_method = "POST"
        o.http_request_uri = "/schedule-groups/{Name}"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduleGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduleGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/schedules/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_schedule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduleGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/schedule-groups/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/schedules/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: GetScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_schedule_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScheduleGroup"
        o.http_method = "GET"
        o.http_request_uri = "/schedule-groups/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetScheduleGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetScheduleGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_schedule_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduleGroups"
        o.http_method = "GET"
        o.http_request_uri = "/schedule-groups"
        o.input = Shapes::ShapeRef.new(shape: ListScheduleGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListScheduleGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchedules"
        o.http_method = "GET"
        o.http_request_uri = "/schedules"
        o.input = Shapes::ShapeRef.new(shape: ListSchedulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchedulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/schedules/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
