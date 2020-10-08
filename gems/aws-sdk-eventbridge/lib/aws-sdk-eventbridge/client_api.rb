# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridge
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Action = Shapes::StringShape.new(name: 'Action')
    ActivateEventSourceRequest = Shapes::StructureShape.new(name: 'ActivateEventSourceRequest')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BatchArrayProperties = Shapes::StructureShape.new(name: 'BatchArrayProperties')
    BatchParameters = Shapes::StructureShape.new(name: 'BatchParameters')
    BatchRetryStrategy = Shapes::StructureShape.new(name: 'BatchRetryStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    CreateEventBusRequest = Shapes::StructureShape.new(name: 'CreateEventBusRequest')
    CreateEventBusResponse = Shapes::StructureShape.new(name: 'CreateEventBusResponse')
    CreatePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'CreatePartnerEventSourceRequest')
    CreatePartnerEventSourceResponse = Shapes::StructureShape.new(name: 'CreatePartnerEventSourceResponse')
    Database = Shapes::StringShape.new(name: 'Database')
    DbUser = Shapes::StringShape.new(name: 'DbUser')
    DeactivateEventSourceRequest = Shapes::StructureShape.new(name: 'DeactivateEventSourceRequest')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeleteEventBusRequest = Shapes::StructureShape.new(name: 'DeleteEventBusRequest')
    DeletePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'DeletePartnerEventSourceRequest')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DescribeEventBusRequest = Shapes::StructureShape.new(name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Shapes::StructureShape.new(name: 'DescribeEventBusResponse')
    DescribeEventSourceRequest = Shapes::StructureShape.new(name: 'DescribeEventSourceRequest')
    DescribeEventSourceResponse = Shapes::StructureShape.new(name: 'DescribeEventSourceResponse')
    DescribePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'DescribePartnerEventSourceRequest')
    DescribePartnerEventSourceResponse = Shapes::StructureShape.new(name: 'DescribePartnerEventSourceResponse')
    DescribeRuleRequest = Shapes::StructureShape.new(name: 'DescribeRuleRequest')
    DescribeRuleResponse = Shapes::StructureShape.new(name: 'DescribeRuleResponse')
    DisableRuleRequest = Shapes::StructureShape.new(name: 'DisableRuleRequest')
    EcsParameters = Shapes::StructureShape.new(name: 'EcsParameters')
    EnableRuleRequest = Shapes::StructureShape.new(name: 'EnableRuleRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBus = Shapes::StructureShape.new(name: 'EventBus')
    EventBusList = Shapes::ListShape.new(name: 'EventBusList')
    EventBusName = Shapes::StringShape.new(name: 'EventBusName')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventPattern = Shapes::StringShape.new(name: 'EventPattern')
    EventResource = Shapes::StringShape.new(name: 'EventResource')
    EventResourceList = Shapes::ListShape.new(name: 'EventResourceList')
    EventSource = Shapes::StructureShape.new(name: 'EventSource')
    EventSourceList = Shapes::ListShape.new(name: 'EventSourceList')
    EventSourceName = Shapes::StringShape.new(name: 'EventSourceName')
    EventSourceNamePrefix = Shapes::StringShape.new(name: 'EventSourceNamePrefix')
    EventSourceState = Shapes::StringShape.new(name: 'EventSourceState')
    EventTime = Shapes::TimestampShape.new(name: 'EventTime')
    HeaderKey = Shapes::StringShape.new(name: 'HeaderKey')
    HeaderParametersMap = Shapes::MapShape.new(name: 'HeaderParametersMap')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    HttpParameters = Shapes::StructureShape.new(name: 'HttpParameters')
    InputTransformer = Shapes::StructureShape.new(name: 'InputTransformer')
    InputTransformerPathKey = Shapes::StringShape.new(name: 'InputTransformerPathKey')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidEventPatternException = Shapes::StructureShape.new(name: 'InvalidEventPatternException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    KinesisParameters = Shapes::StructureShape.new(name: 'KinesisParameters')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitMax100 = Shapes::IntegerShape.new(name: 'LimitMax100')
    LimitMin1 = Shapes::IntegerShape.new(name: 'LimitMin1')
    ListEventBusesRequest = Shapes::StructureShape.new(name: 'ListEventBusesRequest')
    ListEventBusesResponse = Shapes::StructureShape.new(name: 'ListEventBusesResponse')
    ListEventSourcesRequest = Shapes::StructureShape.new(name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Shapes::StructureShape.new(name: 'ListEventSourcesResponse')
    ListPartnerEventSourceAccountsRequest = Shapes::StructureShape.new(name: 'ListPartnerEventSourceAccountsRequest')
    ListPartnerEventSourceAccountsResponse = Shapes::StructureShape.new(name: 'ListPartnerEventSourceAccountsResponse')
    ListPartnerEventSourcesRequest = Shapes::StructureShape.new(name: 'ListPartnerEventSourcesRequest')
    ListPartnerEventSourcesResponse = Shapes::StructureShape.new(name: 'ListPartnerEventSourcesResponse')
    ListRuleNamesByTargetRequest = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetRequest')
    ListRuleNamesByTargetResponse = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetsByRuleRequest = Shapes::StructureShape.new(name: 'ListTargetsByRuleRequest')
    ListTargetsByRuleResponse = Shapes::StructureShape.new(name: 'ListTargetsByRuleResponse')
    ManagedBy = Shapes::StringShape.new(name: 'ManagedBy')
    ManagedRuleException = Shapes::StructureShape.new(name: 'ManagedRuleException')
    MaximumEventAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumEventAgeInSeconds')
    MaximumRetryAttempts = Shapes::IntegerShape.new(name: 'MaximumRetryAttempts')
    MessageGroupId = Shapes::StringShape.new(name: 'MessageGroupId')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonPartnerEventBusName = Shapes::StringShape.new(name: 'NonPartnerEventBusName')
    OperationDisabledException = Shapes::StructureShape.new(name: 'OperationDisabledException')
    PartnerEventSource = Shapes::StructureShape.new(name: 'PartnerEventSource')
    PartnerEventSourceAccount = Shapes::StructureShape.new(name: 'PartnerEventSourceAccount')
    PartnerEventSourceAccountList = Shapes::ListShape.new(name: 'PartnerEventSourceAccountList')
    PartnerEventSourceList = Shapes::ListShape.new(name: 'PartnerEventSourceList')
    PartnerEventSourceNamePrefix = Shapes::StringShape.new(name: 'PartnerEventSourceNamePrefix')
    PathParameter = Shapes::StringShape.new(name: 'PathParameter')
    PathParameterList = Shapes::ListShape.new(name: 'PathParameterList')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutEventsRequestEntry = Shapes::StructureShape.new(name: 'PutEventsRequestEntry')
    PutEventsRequestEntryList = Shapes::ListShape.new(name: 'PutEventsRequestEntryList')
    PutEventsResponse = Shapes::StructureShape.new(name: 'PutEventsResponse')
    PutEventsResultEntry = Shapes::StructureShape.new(name: 'PutEventsResultEntry')
    PutEventsResultEntryList = Shapes::ListShape.new(name: 'PutEventsResultEntryList')
    PutPartnerEventsRequest = Shapes::StructureShape.new(name: 'PutPartnerEventsRequest')
    PutPartnerEventsRequestEntry = Shapes::StructureShape.new(name: 'PutPartnerEventsRequestEntry')
    PutPartnerEventsRequestEntryList = Shapes::ListShape.new(name: 'PutPartnerEventsRequestEntryList')
    PutPartnerEventsResponse = Shapes::StructureShape.new(name: 'PutPartnerEventsResponse')
    PutPartnerEventsResultEntry = Shapes::StructureShape.new(name: 'PutPartnerEventsResultEntry')
    PutPartnerEventsResultEntryList = Shapes::ListShape.new(name: 'PutPartnerEventsResultEntryList')
    PutPermissionRequest = Shapes::StructureShape.new(name: 'PutPermissionRequest')
    PutRuleRequest = Shapes::StructureShape.new(name: 'PutRuleRequest')
    PutRuleResponse = Shapes::StructureShape.new(name: 'PutRuleResponse')
    PutTargetsRequest = Shapes::StructureShape.new(name: 'PutTargetsRequest')
    PutTargetsResponse = Shapes::StructureShape.new(name: 'PutTargetsResponse')
    PutTargetsResultEntry = Shapes::StructureShape.new(name: 'PutTargetsResultEntry')
    PutTargetsResultEntryList = Shapes::ListShape.new(name: 'PutTargetsResultEntryList')
    QueryStringKey = Shapes::StringShape.new(name: 'QueryStringKey')
    QueryStringParametersMap = Shapes::MapShape.new(name: 'QueryStringParametersMap')
    QueryStringValue = Shapes::StringShape.new(name: 'QueryStringValue')
    RedshiftDataParameters = Shapes::StructureShape.new(name: 'RedshiftDataParameters')
    RedshiftSecretManagerArn = Shapes::StringShape.new(name: 'RedshiftSecretManagerArn')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RemoveTargetsRequest = Shapes::StructureShape.new(name: 'RemoveTargetsRequest')
    RemoveTargetsResponse = Shapes::StructureShape.new(name: 'RemoveTargetsResponse')
    RemoveTargetsResultEntry = Shapes::StructureShape.new(name: 'RemoveTargetsResultEntry')
    RemoveTargetsResultEntryList = Shapes::ListShape.new(name: 'RemoveTargetsResultEntryList')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryPolicy = Shapes::StructureShape.new(name: 'RetryPolicy')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleDescription = Shapes::StringShape.new(name: 'RuleDescription')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleNameList = Shapes::ListShape.new(name: 'RuleNameList')
    RuleResponseList = Shapes::ListShape.new(name: 'RuleResponseList')
    RuleState = Shapes::StringShape.new(name: 'RuleState')
    RunCommandParameters = Shapes::StructureShape.new(name: 'RunCommandParameters')
    RunCommandTarget = Shapes::StructureShape.new(name: 'RunCommandTarget')
    RunCommandTargetKey = Shapes::StringShape.new(name: 'RunCommandTargetKey')
    RunCommandTargetValue = Shapes::StringShape.new(name: 'RunCommandTargetValue')
    RunCommandTargetValues = Shapes::ListShape.new(name: 'RunCommandTargetValues')
    RunCommandTargets = Shapes::ListShape.new(name: 'RunCommandTargets')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    Sql = Shapes::StringShape.new(name: 'Sql')
    SqsParameters = Shapes::StructureShape.new(name: 'SqsParameters')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    StatementName = Shapes::StringShape.new(name: 'StatementName')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIdList = Shapes::ListShape.new(name: 'TargetIdList')
    TargetInput = Shapes::StringShape.new(name: 'TargetInput')
    TargetInputPath = Shapes::StringShape.new(name: 'TargetInputPath')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetPartitionKeyPath = Shapes::StringShape.new(name: 'TargetPartitionKeyPath')
    TestEventPatternRequest = Shapes::StructureShape.new(name: 'TestEventPatternRequest')
    TestEventPatternResponse = Shapes::StructureShape.new(name: 'TestEventPatternResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransformerInput = Shapes::StringShape.new(name: 'TransformerInput')
    TransformerPaths = Shapes::MapShape.new(name: 'TransformerPaths')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')

    ActivateEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    ActivateEventSourceRequest.struct_class = Types::ActivateEventSourceRequest

    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Subnets"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "AssignPublicIp"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    BatchArrayProperties.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    BatchArrayProperties.struct_class = Types::BatchArrayProperties

    BatchParameters.add_member(:job_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobDefinition"))
    BatchParameters.add_member(:job_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "JobName"))
    BatchParameters.add_member(:array_properties, Shapes::ShapeRef.new(shape: BatchArrayProperties, location_name: "ArrayProperties"))
    BatchParameters.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: BatchRetryStrategy, location_name: "RetryStrategy"))
    BatchParameters.struct_class = Types::BatchParameters

    BatchRetryStrategy.add_member(:attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "Attempts"))
    BatchRetryStrategy.struct_class = Types::BatchRetryStrategy

    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    Condition.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    Condition.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Condition.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Condition.struct_class = Types::Condition

    CreateEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, required: true, location_name: "Name"))
    CreateEventBusRequest.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "EventSourceName"))
    CreateEventBusRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventBusRequest.struct_class = Types::CreateEventBusRequest

    CreateEventBusResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: String, location_name: "EventBusArn"))
    CreateEventBusResponse.struct_class = Types::CreateEventBusResponse

    CreatePartnerEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    CreatePartnerEventSourceRequest.add_member(:account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "Account"))
    CreatePartnerEventSourceRequest.struct_class = Types::CreatePartnerEventSourceRequest

    CreatePartnerEventSourceResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "EventSourceArn"))
    CreatePartnerEventSourceResponse.struct_class = Types::CreatePartnerEventSourceResponse

    DeactivateEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    DeactivateEventSourceRequest.struct_class = Types::DeactivateEventSourceRequest

    DeadLetterConfig.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    DeadLetterConfig.struct_class = Types::DeadLetterConfig

    DeleteEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, required: true, location_name: "Name"))
    DeleteEventBusRequest.struct_class = Types::DeleteEventBusRequest

    DeletePartnerEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    DeletePartnerEventSourceRequest.add_member(:account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "Account"))
    DeletePartnerEventSourceRequest.struct_class = Types::DeletePartnerEventSourceRequest

    DeleteRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DeleteRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    DeleteRuleRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DescribeEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "Name"))
    DescribeEventBusRequest.struct_class = Types::DescribeEventBusRequest

    DescribeEventBusResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DescribeEventBusResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DescribeEventBusResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    DescribeEventBusResponse.struct_class = Types::DescribeEventBusResponse

    DescribeEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    DescribeEventSourceRequest.struct_class = Types::DescribeEventSourceRequest

    DescribeEventSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DescribeEventSourceResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "CreatedBy"))
    DescribeEventSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEventSourceResponse.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    DescribeEventSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DescribeEventSourceResponse.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    DescribeEventSourceResponse.struct_class = Types::DescribeEventSourceResponse

    DescribePartnerEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    DescribePartnerEventSourceRequest.struct_class = Types::DescribePartnerEventSourceRequest

    DescribePartnerEventSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DescribePartnerEventSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    DescribePartnerEventSourceResponse.struct_class = Types::DescribePartnerEventSourceResponse

    DescribeRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DescribeRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    DescribeRuleRequest.struct_class = Types::DescribeRuleRequest

    DescribeRuleResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "Name"))
    DescribeRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "Arn"))
    DescribeRuleResponse.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    DescribeRuleResponse.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    DescribeRuleResponse.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    DescribeRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    DescribeRuleResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeRuleResponse.add_member(:managed_by, Shapes::ShapeRef.new(shape: ManagedBy, location_name: "ManagedBy"))
    DescribeRuleResponse.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    DescribeRuleResponse.struct_class = Types::DescribeRuleResponse

    DisableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DisableRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    DisableRuleRequest.struct_class = Types::DisableRuleRequest

    EcsParameters.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TaskDefinitionArn"))
    EcsParameters.add_member(:task_count, Shapes::ShapeRef.new(shape: LimitMin1, location_name: "TaskCount"))
    EcsParameters.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "LaunchType"))
    EcsParameters.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    EcsParameters.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    EcsParameters.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    EcsParameters.struct_class = Types::EcsParameters

    EnableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    EnableRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    EnableRuleRequest.struct_class = Types::EnableRuleRequest

    EventBus.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EventBus.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    EventBus.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    EventBus.struct_class = Types::EventBus

    EventBusList.member = Shapes::ShapeRef.new(shape: EventBus)

    EventResourceList.member = Shapes::ShapeRef.new(shape: EventResource)

    EventSource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    EventSource.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "CreatedBy"))
    EventSource.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EventSource.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    EventSource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EventSource.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    EventSource.struct_class = Types::EventSource

    EventSourceList.member = Shapes::ShapeRef.new(shape: EventSource)

    HeaderParametersMap.key = Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Shapes::ShapeRef.new(shape: HeaderValue)

    HttpParameters.add_member(:path_parameter_values, Shapes::ShapeRef.new(shape: PathParameterList, location_name: "PathParameterValues"))
    HttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: "HeaderParameters"))
    HttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: "QueryStringParameters"))
    HttpParameters.struct_class = Types::HttpParameters

    InputTransformer.add_member(:input_paths_map, Shapes::ShapeRef.new(shape: TransformerPaths, location_name: "InputPathsMap"))
    InputTransformer.add_member(:input_template, Shapes::ShapeRef.new(shape: TransformerInput, required: true, location_name: "InputTemplate"))
    InputTransformer.struct_class = Types::InputTransformer

    InternalException.struct_class = Types::InternalException

    InvalidEventPatternException.struct_class = Types::InvalidEventPatternException

    InvalidStateException.struct_class = Types::InvalidStateException

    KinesisParameters.add_member(:partition_key_path, Shapes::ShapeRef.new(shape: TargetPartitionKeyPath, required: true, location_name: "PartitionKeyPath"))
    KinesisParameters.struct_class = Types::KinesisParameters

    LimitExceededException.struct_class = Types::LimitExceededException

    ListEventBusesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: EventBusName, location_name: "NamePrefix"))
    ListEventBusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventBusesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListEventBusesRequest.struct_class = Types::ListEventBusesRequest

    ListEventBusesResponse.add_member(:event_buses, Shapes::ShapeRef.new(shape: EventBusList, location_name: "EventBuses"))
    ListEventBusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventBusesResponse.struct_class = Types::ListEventBusesResponse

    ListEventSourcesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: EventSourceNamePrefix, location_name: "NamePrefix"))
    ListEventSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventSourcesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListEventSourcesRequest.struct_class = Types::ListEventSourcesRequest

    ListEventSourcesResponse.add_member(:event_sources, Shapes::ShapeRef.new(shape: EventSourceList, location_name: "EventSources"))
    ListEventSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventSourcesResponse.struct_class = Types::ListEventSourcesResponse

    ListPartnerEventSourceAccountsRequest.add_member(:event_source_name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "EventSourceName"))
    ListPartnerEventSourceAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerEventSourceAccountsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListPartnerEventSourceAccountsRequest.struct_class = Types::ListPartnerEventSourceAccountsRequest

    ListPartnerEventSourceAccountsResponse.add_member(:partner_event_source_accounts, Shapes::ShapeRef.new(shape: PartnerEventSourceAccountList, location_name: "PartnerEventSourceAccounts"))
    ListPartnerEventSourceAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerEventSourceAccountsResponse.struct_class = Types::ListPartnerEventSourceAccountsResponse

    ListPartnerEventSourcesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: PartnerEventSourceNamePrefix, required: true, location_name: "NamePrefix"))
    ListPartnerEventSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerEventSourcesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListPartnerEventSourcesRequest.struct_class = Types::ListPartnerEventSourcesRequest

    ListPartnerEventSourcesResponse.add_member(:partner_event_sources, Shapes::ShapeRef.new(shape: PartnerEventSourceList, location_name: "PartnerEventSources"))
    ListPartnerEventSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnerEventSourcesResponse.struct_class = Types::ListPartnerEventSourcesResponse

    ListRuleNamesByTargetRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "TargetArn"))
    ListRuleNamesByTargetRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    ListRuleNamesByTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListRuleNamesByTargetRequest.struct_class = Types::ListRuleNamesByTargetRequest

    ListRuleNamesByTargetResponse.add_member(:rule_names, Shapes::ShapeRef.new(shape: RuleNameList, location_name: "RuleNames"))
    ListRuleNamesByTargetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetResponse.struct_class = Types::ListRuleNamesByTargetResponse

    ListRulesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: RuleName, location_name: "NamePrefix"))
    ListRulesRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: RuleResponseList, location_name: "Rules"))
    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTargetsByRuleRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    ListTargetsByRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    ListTargetsByRuleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsByRuleRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListTargetsByRuleRequest.struct_class = Types::ListTargetsByRuleRequest

    ListTargetsByRuleResponse.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "Targets"))
    ListTargetsByRuleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTargetsByRuleResponse.struct_class = Types::ListTargetsByRuleResponse

    ManagedRuleException.struct_class = Types::ManagedRuleException

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    OperationDisabledException.struct_class = Types::OperationDisabledException

    PartnerEventSource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    PartnerEventSource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    PartnerEventSource.struct_class = Types::PartnerEventSource

    PartnerEventSourceAccount.add_member(:account, Shapes::ShapeRef.new(shape: AccountId, location_name: "Account"))
    PartnerEventSourceAccount.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PartnerEventSourceAccount.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    PartnerEventSourceAccount.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    PartnerEventSourceAccount.struct_class = Types::PartnerEventSourceAccount

    PartnerEventSourceAccountList.member = Shapes::ShapeRef.new(shape: PartnerEventSourceAccount)

    PartnerEventSourceList.member = Shapes::ShapeRef.new(shape: PartnerEventSource)

    PathParameterList.member = Shapes::ShapeRef.new(shape: PathParameter)

    PolicyLengthExceededException.struct_class = Types::PolicyLengthExceededException

    PutEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, required: true, location_name: "Entries"))
    PutEventsRequest.struct_class = Types::PutEventsRequest

    PutEventsRequestEntry.add_member(:time, Shapes::ShapeRef.new(shape: EventTime, location_name: "Time"))
    PutEventsRequestEntry.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    PutEventsRequestEntry.add_member(:resources, Shapes::ShapeRef.new(shape: EventResourceList, location_name: "Resources"))
    PutEventsRequestEntry.add_member(:detail_type, Shapes::ShapeRef.new(shape: String, location_name: "DetailType"))
    PutEventsRequestEntry.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "Detail"))
    PutEventsRequestEntry.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: "EventBusName"))
    PutEventsRequestEntry.struct_class = Types::PutEventsRequestEntry

    PutEventsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutEventsRequestEntry)

    PutEventsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutEventsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsResultEntryList, location_name: "Entries"))
    PutEventsResponse.struct_class = Types::PutEventsResponse

    PutEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    PutEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutEventsResultEntry.struct_class = Types::PutEventsResultEntry

    PutEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutEventsResultEntry)

    PutPartnerEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntryList, required: true, location_name: "Entries"))
    PutPartnerEventsRequest.struct_class = Types::PutPartnerEventsRequest

    PutPartnerEventsRequestEntry.add_member(:time, Shapes::ShapeRef.new(shape: EventTime, location_name: "Time"))
    PutPartnerEventsRequestEntry.add_member(:source, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "Source"))
    PutPartnerEventsRequestEntry.add_member(:resources, Shapes::ShapeRef.new(shape: EventResourceList, location_name: "Resources"))
    PutPartnerEventsRequestEntry.add_member(:detail_type, Shapes::ShapeRef.new(shape: String, location_name: "DetailType"))
    PutPartnerEventsRequestEntry.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "Detail"))
    PutPartnerEventsRequestEntry.struct_class = Types::PutPartnerEventsRequestEntry

    PutPartnerEventsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutPartnerEventsRequestEntry)

    PutPartnerEventsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutPartnerEventsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntryList, location_name: "Entries"))
    PutPartnerEventsResponse.struct_class = Types::PutPartnerEventsResponse

    PutPartnerEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    PutPartnerEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutPartnerEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutPartnerEventsResultEntry.struct_class = Types::PutPartnerEventsResultEntry

    PutPartnerEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutPartnerEventsResultEntry)

    PutPermissionRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: "EventBusName"))
    PutPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    PutPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    PutPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    PutPermissionRequest.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "Condition"))
    PutPermissionRequest.struct_class = Types::PutPermissionRequest

    PutRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    PutRuleRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    PutRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    PutRuleRequest.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    PutRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    PutRuleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    PutRuleRequest.struct_class = Types::PutRuleRequest

    PutRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    PutRuleResponse.struct_class = Types::PutRuleResponse

    PutTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    PutTargetsRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    PutTargetsRequest.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, required: true, location_name: "Targets"))
    PutTargetsRequest.struct_class = Types::PutTargetsRequest

    PutTargetsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutTargetsResponse.add_member(:failed_entries, Shapes::ShapeRef.new(shape: PutTargetsResultEntryList, location_name: "FailedEntries"))
    PutTargetsResponse.struct_class = Types::PutTargetsResponse

    PutTargetsResultEntry.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    PutTargetsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutTargetsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutTargetsResultEntry.struct_class = Types::PutTargetsResultEntry

    PutTargetsResultEntryList.member = Shapes::ShapeRef.new(shape: PutTargetsResultEntry)

    QueryStringParametersMap.key = Shapes::ShapeRef.new(shape: QueryStringKey)
    QueryStringParametersMap.value = Shapes::ShapeRef.new(shape: QueryStringValue)

    RedshiftDataParameters.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: RedshiftSecretManagerArn, location_name: "SecretManagerArn"))
    RedshiftDataParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    RedshiftDataParameters.add_member(:db_user, Shapes::ShapeRef.new(shape: DbUser, location_name: "DbUser"))
    RedshiftDataParameters.add_member(:sql, Shapes::ShapeRef.new(shape: Sql, required: true, location_name: "Sql"))
    RedshiftDataParameters.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    RedshiftDataParameters.add_member(:with_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithEvent"))
    RedshiftDataParameters.struct_class = Types::RedshiftDataParameters

    RemovePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    RemovePermissionRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: "EventBusName"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RemoveTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    RemoveTargetsRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    RemoveTargetsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: TargetIdList, required: true, location_name: "Ids"))
    RemoveTargetsRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    RemoveTargetsRequest.struct_class = Types::RemoveTargetsRequest

    RemoveTargetsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    RemoveTargetsResponse.add_member(:failed_entries, Shapes::ShapeRef.new(shape: RemoveTargetsResultEntryList, location_name: "FailedEntries"))
    RemoveTargetsResponse.struct_class = Types::RemoveTargetsResponse

    RemoveTargetsResultEntry.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    RemoveTargetsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    RemoveTargetsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    RemoveTargetsResultEntry.struct_class = Types::RemoveTargetsResultEntry

    RemoveTargetsResultEntryList.member = Shapes::ShapeRef.new(shape: RemoveTargetsResultEntry)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryPolicy.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    RetryPolicy.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    RetryPolicy.struct_class = Types::RetryPolicy

    Rule.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, location_name: "Name"))
    Rule.add_member(:arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "Arn"))
    Rule.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    Rule.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    Rule.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    Rule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    Rule.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Rule.add_member(:managed_by, Shapes::ShapeRef.new(shape: ManagedBy, location_name: "ManagedBy"))
    Rule.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "EventBusName"))
    Rule.struct_class = Types::Rule

    RuleNameList.member = Shapes::ShapeRef.new(shape: RuleName)

    RuleResponseList.member = Shapes::ShapeRef.new(shape: Rule)

    RunCommandParameters.add_member(:run_command_targets, Shapes::ShapeRef.new(shape: RunCommandTargets, required: true, location_name: "RunCommandTargets"))
    RunCommandParameters.struct_class = Types::RunCommandParameters

    RunCommandTarget.add_member(:key, Shapes::ShapeRef.new(shape: RunCommandTargetKey, required: true, location_name: "Key"))
    RunCommandTarget.add_member(:values, Shapes::ShapeRef.new(shape: RunCommandTargetValues, required: true, location_name: "Values"))
    RunCommandTarget.struct_class = Types::RunCommandTarget

    RunCommandTargetValues.member = Shapes::ShapeRef.new(shape: RunCommandTargetValue)

    RunCommandTargets.member = Shapes::ShapeRef.new(shape: RunCommandTarget)

    SqsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: MessageGroupId, location_name: "MessageGroupId"))
    SqsParameters.struct_class = Types::SqsParameters

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Target.add_member(:id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "Id"))
    Target.add_member(:arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "Arn"))
    Target.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    Target.add_member(:input, Shapes::ShapeRef.new(shape: TargetInput, location_name: "Input"))
    Target.add_member(:input_path, Shapes::ShapeRef.new(shape: TargetInputPath, location_name: "InputPath"))
    Target.add_member(:input_transformer, Shapes::ShapeRef.new(shape: InputTransformer, location_name: "InputTransformer"))
    Target.add_member(:kinesis_parameters, Shapes::ShapeRef.new(shape: KinesisParameters, location_name: "KinesisParameters"))
    Target.add_member(:run_command_parameters, Shapes::ShapeRef.new(shape: RunCommandParameters, location_name: "RunCommandParameters"))
    Target.add_member(:ecs_parameters, Shapes::ShapeRef.new(shape: EcsParameters, location_name: "EcsParameters"))
    Target.add_member(:batch_parameters, Shapes::ShapeRef.new(shape: BatchParameters, location_name: "BatchParameters"))
    Target.add_member(:sqs_parameters, Shapes::ShapeRef.new(shape: SqsParameters, location_name: "SqsParameters"))
    Target.add_member(:http_parameters, Shapes::ShapeRef.new(shape: HttpParameters, location_name: "HttpParameters"))
    Target.add_member(:redshift_data_parameters, Shapes::ShapeRef.new(shape: RedshiftDataParameters, location_name: "RedshiftDataParameters"))
    Target.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    Target.add_member(:retry_policy, Shapes::ShapeRef.new(shape: RetryPolicy, location_name: "RetryPolicy"))
    Target.struct_class = Types::Target

    TargetIdList.member = Shapes::ShapeRef.new(shape: TargetId)

    TargetList.member = Shapes::ShapeRef.new(shape: Target)

    TestEventPatternRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, required: true, location_name: "EventPattern"))
    TestEventPatternRequest.add_member(:event, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Event"))
    TestEventPatternRequest.struct_class = Types::TestEventPatternRequest

    TestEventPatternResponse.add_member(:result, Shapes::ShapeRef.new(shape: Boolean, location_name: "Result"))
    TestEventPatternResponse.struct_class = Types::TestEventPatternResponse

    TransformerPaths.key = Shapes::ShapeRef.new(shape: InputTransformerPathKey)
    TransformerPaths.value = Shapes::ShapeRef.new(shape: TargetInputPath)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-10-07"

      api.metadata = {
        "apiVersion" => "2015-10-07",
        "endpointPrefix" => "events",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon EventBridge",
        "serviceId" => "EventBridge",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSEvents",
        "uid" => "eventbridge-2015-10-07",
      }

      api.add_operation(:activate_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ActivateEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:create_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:create_partner_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartnerEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePartnerEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartnerEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:deactivate_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeactivateEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:delete_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_partner_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePartnerEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePartnerEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:describe_partner_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePartnerEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePartnerEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePartnerEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:describe_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:disable_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:enable_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_event_buses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventBuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventBusesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventBusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_event_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:list_partner_event_source_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPartnerEventSourceAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPartnerEventSourceAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:list_partner_event_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPartnerEventSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPartnerEventSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPartnerEventSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:list_rule_names_by_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleNamesByTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRuleNamesByTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleNamesByTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_targets_by_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetsByRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsByRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsByRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_partner_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPartnerEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPartnerEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPartnerEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
      end)

      api.add_operation(:put_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:put_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:remove_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
      end)

      api.add_operation(:test_event_pattern, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestEventPattern"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestEventPatternRequest)
        o.output = Shapes::ShapeRef.new(shape: TestEventPatternResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedRuleException)
      end)
    end

  end
end
