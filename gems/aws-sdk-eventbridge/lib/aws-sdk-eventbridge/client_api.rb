# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridge
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Action = Shapes::StringShape.new(name: 'Action')
    ActivateEventSourceRequest = Shapes::StructureShape.new(name: 'ActivateEventSourceRequest')
    ApiDestination = Shapes::StructureShape.new(name: 'ApiDestination')
    ApiDestinationArn = Shapes::StringShape.new(name: 'ApiDestinationArn')
    ApiDestinationDescription = Shapes::StringShape.new(name: 'ApiDestinationDescription')
    ApiDestinationHttpMethod = Shapes::StringShape.new(name: 'ApiDestinationHttpMethod')
    ApiDestinationInvocationRateLimitPerSecond = Shapes::IntegerShape.new(name: 'ApiDestinationInvocationRateLimitPerSecond')
    ApiDestinationName = Shapes::StringShape.new(name: 'ApiDestinationName')
    ApiDestinationResponseList = Shapes::ListShape.new(name: 'ApiDestinationResponseList')
    ApiDestinationState = Shapes::StringShape.new(name: 'ApiDestinationState')
    Archive = Shapes::StructureShape.new(name: 'Archive')
    ArchiveArn = Shapes::StringShape.new(name: 'ArchiveArn')
    ArchiveDescription = Shapes::StringShape.new(name: 'ArchiveDescription')
    ArchiveName = Shapes::StringShape.new(name: 'ArchiveName')
    ArchiveResponseList = Shapes::ListShape.new(name: 'ArchiveResponseList')
    ArchiveState = Shapes::StringShape.new(name: 'ArchiveState')
    ArchiveStateReason = Shapes::StringShape.new(name: 'ArchiveStateReason')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    AuthHeaderParameters = Shapes::StringShape.new(name: 'AuthHeaderParameters')
    AuthHeaderParametersSensitive = Shapes::StringShape.new(name: 'AuthHeaderParametersSensitive')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BatchArrayProperties = Shapes::StructureShape.new(name: 'BatchArrayProperties')
    BatchParameters = Shapes::StructureShape.new(name: 'BatchParameters')
    BatchRetryStrategy = Shapes::StructureShape.new(name: 'BatchRetryStrategy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelReplayRequest = Shapes::StructureShape.new(name: 'CancelReplayRequest')
    CancelReplayResponse = Shapes::StructureShape.new(name: 'CancelReplayResponse')
    CapacityProvider = Shapes::StringShape.new(name: 'CapacityProvider')
    CapacityProviderStrategy = Shapes::ListShape.new(name: 'CapacityProviderStrategy')
    CapacityProviderStrategyItem = Shapes::StructureShape.new(name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemBase')
    CapacityProviderStrategyItemWeight = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemWeight')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionApiKeyAuthResponseParameters = Shapes::StructureShape.new(name: 'ConnectionApiKeyAuthResponseParameters')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ConnectionAuthResponseParameters = Shapes::StructureShape.new(name: 'ConnectionAuthResponseParameters')
    ConnectionAuthorizationType = Shapes::StringShape.new(name: 'ConnectionAuthorizationType')
    ConnectionBasicAuthResponseParameters = Shapes::StructureShape.new(name: 'ConnectionBasicAuthResponseParameters')
    ConnectionBodyParameter = Shapes::StructureShape.new(name: 'ConnectionBodyParameter')
    ConnectionBodyParametersList = Shapes::ListShape.new(name: 'ConnectionBodyParametersList')
    ConnectionDescription = Shapes::StringShape.new(name: 'ConnectionDescription')
    ConnectionHeaderParameter = Shapes::StructureShape.new(name: 'ConnectionHeaderParameter')
    ConnectionHeaderParametersList = Shapes::ListShape.new(name: 'ConnectionHeaderParametersList')
    ConnectionHttpParameters = Shapes::StructureShape.new(name: 'ConnectionHttpParameters')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionOAuthClientResponseParameters = Shapes::StructureShape.new(name: 'ConnectionOAuthClientResponseParameters')
    ConnectionOAuthHttpMethod = Shapes::StringShape.new(name: 'ConnectionOAuthHttpMethod')
    ConnectionOAuthResponseParameters = Shapes::StructureShape.new(name: 'ConnectionOAuthResponseParameters')
    ConnectionQueryStringParameter = Shapes::StructureShape.new(name: 'ConnectionQueryStringParameter')
    ConnectionQueryStringParametersList = Shapes::ListShape.new(name: 'ConnectionQueryStringParametersList')
    ConnectionResponseList = Shapes::ListShape.new(name: 'ConnectionResponseList')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    ConnectionStateReason = Shapes::StringShape.new(name: 'ConnectionStateReason')
    CreateApiDestinationRequest = Shapes::StructureShape.new(name: 'CreateApiDestinationRequest')
    CreateApiDestinationResponse = Shapes::StructureShape.new(name: 'CreateApiDestinationResponse')
    CreateArchiveRequest = Shapes::StructureShape.new(name: 'CreateArchiveRequest')
    CreateArchiveResponse = Shapes::StructureShape.new(name: 'CreateArchiveResponse')
    CreateConnectionApiKeyAuthRequestParameters = Shapes::StructureShape.new(name: 'CreateConnectionApiKeyAuthRequestParameters')
    CreateConnectionAuthRequestParameters = Shapes::StructureShape.new(name: 'CreateConnectionAuthRequestParameters')
    CreateConnectionBasicAuthRequestParameters = Shapes::StructureShape.new(name: 'CreateConnectionBasicAuthRequestParameters')
    CreateConnectionOAuthClientRequestParameters = Shapes::StructureShape.new(name: 'CreateConnectionOAuthClientRequestParameters')
    CreateConnectionOAuthRequestParameters = Shapes::StructureShape.new(name: 'CreateConnectionOAuthRequestParameters')
    CreateConnectionRequest = Shapes::StructureShape.new(name: 'CreateConnectionRequest')
    CreateConnectionResponse = Shapes::StructureShape.new(name: 'CreateConnectionResponse')
    CreateEndpointRequest = Shapes::StructureShape.new(name: 'CreateEndpointRequest')
    CreateEndpointResponse = Shapes::StructureShape.new(name: 'CreateEndpointResponse')
    CreateEventBusRequest = Shapes::StructureShape.new(name: 'CreateEventBusRequest')
    CreateEventBusResponse = Shapes::StructureShape.new(name: 'CreateEventBusResponse')
    CreatePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'CreatePartnerEventSourceRequest')
    CreatePartnerEventSourceResponse = Shapes::StructureShape.new(name: 'CreatePartnerEventSourceResponse')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    Database = Shapes::StringShape.new(name: 'Database')
    DbUser = Shapes::StringShape.new(name: 'DbUser')
    DeactivateEventSourceRequest = Shapes::StructureShape.new(name: 'DeactivateEventSourceRequest')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeauthorizeConnectionRequest = Shapes::StructureShape.new(name: 'DeauthorizeConnectionRequest')
    DeauthorizeConnectionResponse = Shapes::StructureShape.new(name: 'DeauthorizeConnectionResponse')
    DeleteApiDestinationRequest = Shapes::StructureShape.new(name: 'DeleteApiDestinationRequest')
    DeleteApiDestinationResponse = Shapes::StructureShape.new(name: 'DeleteApiDestinationResponse')
    DeleteArchiveRequest = Shapes::StructureShape.new(name: 'DeleteArchiveRequest')
    DeleteArchiveResponse = Shapes::StructureShape.new(name: 'DeleteArchiveResponse')
    DeleteConnectionRequest = Shapes::StructureShape.new(name: 'DeleteConnectionRequest')
    DeleteConnectionResponse = Shapes::StructureShape.new(name: 'DeleteConnectionResponse')
    DeleteEndpointRequest = Shapes::StructureShape.new(name: 'DeleteEndpointRequest')
    DeleteEndpointResponse = Shapes::StructureShape.new(name: 'DeleteEndpointResponse')
    DeleteEventBusRequest = Shapes::StructureShape.new(name: 'DeleteEventBusRequest')
    DeletePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'DeletePartnerEventSourceRequest')
    DeleteRuleRequest = Shapes::StructureShape.new(name: 'DeleteRuleRequest')
    DescribeApiDestinationRequest = Shapes::StructureShape.new(name: 'DescribeApiDestinationRequest')
    DescribeApiDestinationResponse = Shapes::StructureShape.new(name: 'DescribeApiDestinationResponse')
    DescribeArchiveRequest = Shapes::StructureShape.new(name: 'DescribeArchiveRequest')
    DescribeArchiveResponse = Shapes::StructureShape.new(name: 'DescribeArchiveResponse')
    DescribeConnectionRequest = Shapes::StructureShape.new(name: 'DescribeConnectionRequest')
    DescribeConnectionResponse = Shapes::StructureShape.new(name: 'DescribeConnectionResponse')
    DescribeEndpointRequest = Shapes::StructureShape.new(name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Shapes::StructureShape.new(name: 'DescribeEndpointResponse')
    DescribeEventBusRequest = Shapes::StructureShape.new(name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Shapes::StructureShape.new(name: 'DescribeEventBusResponse')
    DescribeEventSourceRequest = Shapes::StructureShape.new(name: 'DescribeEventSourceRequest')
    DescribeEventSourceResponse = Shapes::StructureShape.new(name: 'DescribeEventSourceResponse')
    DescribePartnerEventSourceRequest = Shapes::StructureShape.new(name: 'DescribePartnerEventSourceRequest')
    DescribePartnerEventSourceResponse = Shapes::StructureShape.new(name: 'DescribePartnerEventSourceResponse')
    DescribeReplayRequest = Shapes::StructureShape.new(name: 'DescribeReplayRequest')
    DescribeReplayResponse = Shapes::StructureShape.new(name: 'DescribeReplayResponse')
    DescribeRuleRequest = Shapes::StructureShape.new(name: 'DescribeRuleRequest')
    DescribeRuleResponse = Shapes::StructureShape.new(name: 'DescribeRuleResponse')
    DisableRuleRequest = Shapes::StructureShape.new(name: 'DisableRuleRequest')
    EcsParameters = Shapes::StructureShape.new(name: 'EcsParameters')
    EnableRuleRequest = Shapes::StructureShape.new(name: 'EnableRuleRequest')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointArn = Shapes::StringShape.new(name: 'EndpointArn')
    EndpointDescription = Shapes::StringShape.new(name: 'EndpointDescription')
    EndpointEventBus = Shapes::StructureShape.new(name: 'EndpointEventBus')
    EndpointEventBusList = Shapes::ListShape.new(name: 'EndpointEventBusList')
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    EndpointList = Shapes::ListShape.new(name: 'EndpointList')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EndpointState = Shapes::StringShape.new(name: 'EndpointState')
    EndpointStateReason = Shapes::StringShape.new(name: 'EndpointStateReason')
    EndpointUrl = Shapes::StringShape.new(name: 'EndpointUrl')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBus = Shapes::StructureShape.new(name: 'EventBus')
    EventBusList = Shapes::ListShape.new(name: 'EventBusList')
    EventBusName = Shapes::StringShape.new(name: 'EventBusName')
    EventBusNameOrArn = Shapes::StringShape.new(name: 'EventBusNameOrArn')
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
    FailoverConfig = Shapes::StructureShape.new(name: 'FailoverConfig')
    HeaderKey = Shapes::StringShape.new(name: 'HeaderKey')
    HeaderParametersMap = Shapes::MapShape.new(name: 'HeaderParametersMap')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    HeaderValueSensitive = Shapes::StringShape.new(name: 'HeaderValueSensitive')
    HealthCheck = Shapes::StringShape.new(name: 'HealthCheck')
    HomeRegion = Shapes::StringShape.new(name: 'HomeRegion')
    HttpParameters = Shapes::StructureShape.new(name: 'HttpParameters')
    HttpsEndpoint = Shapes::StringShape.new(name: 'HttpsEndpoint')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IllegalStatusException = Shapes::StructureShape.new(name: 'IllegalStatusException')
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
    ListApiDestinationsRequest = Shapes::StructureShape.new(name: 'ListApiDestinationsRequest')
    ListApiDestinationsResponse = Shapes::StructureShape.new(name: 'ListApiDestinationsResponse')
    ListArchivesRequest = Shapes::StructureShape.new(name: 'ListArchivesRequest')
    ListArchivesResponse = Shapes::StructureShape.new(name: 'ListArchivesResponse')
    ListConnectionsRequest = Shapes::StructureShape.new(name: 'ListConnectionsRequest')
    ListConnectionsResponse = Shapes::StructureShape.new(name: 'ListConnectionsResponse')
    ListEndpointsRequest = Shapes::StructureShape.new(name: 'ListEndpointsRequest')
    ListEndpointsResponse = Shapes::StructureShape.new(name: 'ListEndpointsResponse')
    ListEventBusesRequest = Shapes::StructureShape.new(name: 'ListEventBusesRequest')
    ListEventBusesResponse = Shapes::StructureShape.new(name: 'ListEventBusesResponse')
    ListEventSourcesRequest = Shapes::StructureShape.new(name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Shapes::StructureShape.new(name: 'ListEventSourcesResponse')
    ListPartnerEventSourceAccountsRequest = Shapes::StructureShape.new(name: 'ListPartnerEventSourceAccountsRequest')
    ListPartnerEventSourceAccountsResponse = Shapes::StructureShape.new(name: 'ListPartnerEventSourceAccountsResponse')
    ListPartnerEventSourcesRequest = Shapes::StructureShape.new(name: 'ListPartnerEventSourcesRequest')
    ListPartnerEventSourcesResponse = Shapes::StructureShape.new(name: 'ListPartnerEventSourcesResponse')
    ListReplaysRequest = Shapes::StructureShape.new(name: 'ListReplaysRequest')
    ListReplaysResponse = Shapes::StructureShape.new(name: 'ListReplaysResponse')
    ListRuleNamesByTargetRequest = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetRequest')
    ListRuleNamesByTargetResponse = Shapes::StructureShape.new(name: 'ListRuleNamesByTargetResponse')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTargetsByRuleRequest = Shapes::StructureShape.new(name: 'ListTargetsByRuleRequest')
    ListTargetsByRuleResponse = Shapes::StructureShape.new(name: 'ListTargetsByRuleResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedBy = Shapes::StringShape.new(name: 'ManagedBy')
    ManagedRuleException = Shapes::StructureShape.new(name: 'ManagedRuleException')
    MaximumEventAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumEventAgeInSeconds')
    MaximumRetryAttempts = Shapes::IntegerShape.new(name: 'MaximumRetryAttempts')
    MessageGroupId = Shapes::StringShape.new(name: 'MessageGroupId')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonPartnerEventBusArn = Shapes::StringShape.new(name: 'NonPartnerEventBusArn')
    NonPartnerEventBusName = Shapes::StringShape.new(name: 'NonPartnerEventBusName')
    NonPartnerEventBusNameOrArn = Shapes::StringShape.new(name: 'NonPartnerEventBusNameOrArn')
    OperationDisabledException = Shapes::StructureShape.new(name: 'OperationDisabledException')
    PartnerEventSource = Shapes::StructureShape.new(name: 'PartnerEventSource')
    PartnerEventSourceAccount = Shapes::StructureShape.new(name: 'PartnerEventSourceAccount')
    PartnerEventSourceAccountList = Shapes::ListShape.new(name: 'PartnerEventSourceAccountList')
    PartnerEventSourceList = Shapes::ListShape.new(name: 'PartnerEventSourceList')
    PartnerEventSourceNamePrefix = Shapes::StringShape.new(name: 'PartnerEventSourceNamePrefix')
    PathParameter = Shapes::StringShape.new(name: 'PathParameter')
    PathParameterList = Shapes::ListShape.new(name: 'PathParameterList')
    PlacementConstraint = Shapes::StructureShape.new(name: 'PlacementConstraint')
    PlacementConstraintExpression = Shapes::StringShape.new(name: 'PlacementConstraintExpression')
    PlacementConstraintType = Shapes::StringShape.new(name: 'PlacementConstraintType')
    PlacementConstraints = Shapes::ListShape.new(name: 'PlacementConstraints')
    PlacementStrategies = Shapes::ListShape.new(name: 'PlacementStrategies')
    PlacementStrategy = Shapes::StructureShape.new(name: 'PlacementStrategy')
    PlacementStrategyField = Shapes::StringShape.new(name: 'PlacementStrategyField')
    PlacementStrategyType = Shapes::StringShape.new(name: 'PlacementStrategyType')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    Primary = Shapes::StructureShape.new(name: 'Primary')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PropagateTags = Shapes::StringShape.new(name: 'PropagateTags')
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
    QueryStringValueSensitive = Shapes::StringShape.new(name: 'QueryStringValueSensitive')
    RedshiftDataParameters = Shapes::StructureShape.new(name: 'RedshiftDataParameters')
    RedshiftSecretManagerArn = Shapes::StringShape.new(name: 'RedshiftSecretManagerArn')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    RemoveTargetsRequest = Shapes::StructureShape.new(name: 'RemoveTargetsRequest')
    RemoveTargetsResponse = Shapes::StructureShape.new(name: 'RemoveTargetsResponse')
    RemoveTargetsResultEntry = Shapes::StructureShape.new(name: 'RemoveTargetsResultEntry')
    RemoveTargetsResultEntryList = Shapes::ListShape.new(name: 'RemoveTargetsResultEntryList')
    Replay = Shapes::StructureShape.new(name: 'Replay')
    ReplayArn = Shapes::StringShape.new(name: 'ReplayArn')
    ReplayDescription = Shapes::StringShape.new(name: 'ReplayDescription')
    ReplayDestination = Shapes::StructureShape.new(name: 'ReplayDestination')
    ReplayDestinationFilters = Shapes::ListShape.new(name: 'ReplayDestinationFilters')
    ReplayList = Shapes::ListShape.new(name: 'ReplayList')
    ReplayName = Shapes::StringShape.new(name: 'ReplayName')
    ReplayState = Shapes::StringShape.new(name: 'ReplayState')
    ReplayStateReason = Shapes::StringShape.new(name: 'ReplayStateReason')
    ReplicationConfig = Shapes::StructureShape.new(name: 'ReplicationConfig')
    ReplicationState = Shapes::StringShape.new(name: 'ReplicationState')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    RetryPolicy = Shapes::StructureShape.new(name: 'RetryPolicy')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Route = Shapes::StringShape.new(name: 'Route')
    RoutingConfig = Shapes::StructureShape.new(name: 'RoutingConfig')
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
    SageMakerPipelineParameter = Shapes::StructureShape.new(name: 'SageMakerPipelineParameter')
    SageMakerPipelineParameterList = Shapes::ListShape.new(name: 'SageMakerPipelineParameterList')
    SageMakerPipelineParameterName = Shapes::StringShape.new(name: 'SageMakerPipelineParameterName')
    SageMakerPipelineParameterValue = Shapes::StringShape.new(name: 'SageMakerPipelineParameterValue')
    SageMakerPipelineParameters = Shapes::StructureShape.new(name: 'SageMakerPipelineParameters')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    Secondary = Shapes::StructureShape.new(name: 'Secondary')
    SecretsManagerSecretArn = Shapes::StringShape.new(name: 'SecretsManagerSecretArn')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    Sql = Shapes::StringShape.new(name: 'Sql')
    Sqls = Shapes::ListShape.new(name: 'Sqls')
    SqsParameters = Shapes::StructureShape.new(name: 'SqsParameters')
    StartReplayRequest = Shapes::StructureShape.new(name: 'StartReplayRequest')
    StartReplayResponse = Shapes::StructureShape.new(name: 'StartReplayResponse')
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
    TraceHeader = Shapes::StringShape.new(name: 'TraceHeader')
    TransformerInput = Shapes::StringShape.new(name: 'TransformerInput')
    TransformerPaths = Shapes::MapShape.new(name: 'TransformerPaths')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApiDestinationRequest = Shapes::StructureShape.new(name: 'UpdateApiDestinationRequest')
    UpdateApiDestinationResponse = Shapes::StructureShape.new(name: 'UpdateApiDestinationResponse')
    UpdateArchiveRequest = Shapes::StructureShape.new(name: 'UpdateArchiveRequest')
    UpdateArchiveResponse = Shapes::StructureShape.new(name: 'UpdateArchiveResponse')
    UpdateConnectionApiKeyAuthRequestParameters = Shapes::StructureShape.new(name: 'UpdateConnectionApiKeyAuthRequestParameters')
    UpdateConnectionAuthRequestParameters = Shapes::StructureShape.new(name: 'UpdateConnectionAuthRequestParameters')
    UpdateConnectionBasicAuthRequestParameters = Shapes::StructureShape.new(name: 'UpdateConnectionBasicAuthRequestParameters')
    UpdateConnectionOAuthClientRequestParameters = Shapes::StructureShape.new(name: 'UpdateConnectionOAuthClientRequestParameters')
    UpdateConnectionOAuthRequestParameters = Shapes::StructureShape.new(name: 'UpdateConnectionOAuthRequestParameters')
    UpdateConnectionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionRequest')
    UpdateConnectionResponse = Shapes::StructureShape.new(name: 'UpdateConnectionResponse')
    UpdateEndpointRequest = Shapes::StructureShape.new(name: 'UpdateEndpointRequest')
    UpdateEndpointResponse = Shapes::StructureShape.new(name: 'UpdateEndpointResponse')

    ActivateEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    ActivateEventSourceRequest.struct_class = Types::ActivateEventSourceRequest

    ApiDestination.add_member(:api_destination_arn, Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: "ApiDestinationArn"))
    ApiDestination.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: "Name"))
    ApiDestination.add_member(:api_destination_state, Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: "ApiDestinationState"))
    ApiDestination.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    ApiDestination.add_member(:invocation_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: "InvocationEndpoint"))
    ApiDestination.add_member(:http_method, Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: "HttpMethod"))
    ApiDestination.add_member(:invocation_rate_limit_per_second, Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: "InvocationRateLimitPerSecond"))
    ApiDestination.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    ApiDestination.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    ApiDestination.struct_class = Types::ApiDestination

    ApiDestinationResponseList.member = Shapes::ShapeRef.new(shape: ApiDestination)

    Archive.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, location_name: "ArchiveName"))
    Archive.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    Archive.add_member(:state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "State"))
    Archive.add_member(:state_reason, Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: "StateReason"))
    Archive.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    Archive.add_member(:size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "SizeBytes"))
    Archive.add_member(:event_count, Shapes::ShapeRef.new(shape: Long, location_name: "EventCount"))
    Archive.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Archive.struct_class = Types::Archive

    ArchiveResponseList.member = Shapes::ShapeRef.new(shape: Archive)

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

    CancelReplayRequest.add_member(:replay_name, Shapes::ShapeRef.new(shape: ReplayName, required: true, location_name: "ReplayName"))
    CancelReplayRequest.struct_class = Types::CancelReplayRequest

    CancelReplayResponse.add_member(:replay_arn, Shapes::ShapeRef.new(shape: ReplayArn, location_name: "ReplayArn"))
    CancelReplayResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReplayState, location_name: "State"))
    CancelReplayResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: "StateReason"))
    CancelReplayResponse.struct_class = Types::CancelReplayResponse

    CapacityProviderStrategy.member = Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)

    CapacityProviderStrategyItem.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "capacityProvider"))
    CapacityProviderStrategyItem.add_member(:weight, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: "weight"))
    CapacityProviderStrategyItem.add_member(:base, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: "base"))
    CapacityProviderStrategyItem.struct_class = Types::CapacityProviderStrategyItem

    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    Condition.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    Condition.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Condition.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Condition.struct_class = Types::Condition

    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    Connection.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "Name"))
    Connection.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    Connection.add_member(:state_reason, Shapes::ShapeRef.new(shape: ConnectionStateReason, location_name: "StateReason"))
    Connection.add_member(:authorization_type, Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: "AuthorizationType"))
    Connection.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Connection.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Connection.add_member(:last_authorized_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAuthorizedTime"))
    Connection.struct_class = Types::Connection

    ConnectionApiKeyAuthResponseParameters.add_member(:api_key_name, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "ApiKeyName"))
    ConnectionApiKeyAuthResponseParameters.struct_class = Types::ConnectionApiKeyAuthResponseParameters

    ConnectionAuthResponseParameters.add_member(:basic_auth_parameters, Shapes::ShapeRef.new(shape: ConnectionBasicAuthResponseParameters, location_name: "BasicAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:o_auth_parameters, Shapes::ShapeRef.new(shape: ConnectionOAuthResponseParameters, location_name: "OAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:api_key_auth_parameters, Shapes::ShapeRef.new(shape: ConnectionApiKeyAuthResponseParameters, location_name: "ApiKeyAuthParameters"))
    ConnectionAuthResponseParameters.add_member(:invocation_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "InvocationHttpParameters"))
    ConnectionAuthResponseParameters.struct_class = Types::ConnectionAuthResponseParameters

    ConnectionBasicAuthResponseParameters.add_member(:username, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "Username"))
    ConnectionBasicAuthResponseParameters.struct_class = Types::ConnectionBasicAuthResponseParameters

    ConnectionBodyParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    ConnectionBodyParameter.add_member(:value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Value"))
    ConnectionBodyParameter.add_member(:is_value_secret, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsValueSecret"))
    ConnectionBodyParameter.struct_class = Types::ConnectionBodyParameter

    ConnectionBodyParametersList.member = Shapes::ShapeRef.new(shape: ConnectionBodyParameter)

    ConnectionHeaderParameter.add_member(:key, Shapes::ShapeRef.new(shape: HeaderKey, location_name: "Key"))
    ConnectionHeaderParameter.add_member(:value, Shapes::ShapeRef.new(shape: HeaderValueSensitive, location_name: "Value"))
    ConnectionHeaderParameter.add_member(:is_value_secret, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsValueSecret"))
    ConnectionHeaderParameter.struct_class = Types::ConnectionHeaderParameter

    ConnectionHeaderParametersList.member = Shapes::ShapeRef.new(shape: ConnectionHeaderParameter)

    ConnectionHttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: ConnectionHeaderParametersList, location_name: "HeaderParameters"))
    ConnectionHttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: ConnectionQueryStringParametersList, location_name: "QueryStringParameters"))
    ConnectionHttpParameters.add_member(:body_parameters, Shapes::ShapeRef.new(shape: ConnectionBodyParametersList, location_name: "BodyParameters"))
    ConnectionHttpParameters.struct_class = Types::ConnectionHttpParameters

    ConnectionOAuthClientResponseParameters.add_member(:client_id, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "ClientID"))
    ConnectionOAuthClientResponseParameters.struct_class = Types::ConnectionOAuthClientResponseParameters

    ConnectionOAuthResponseParameters.add_member(:client_parameters, Shapes::ShapeRef.new(shape: ConnectionOAuthClientResponseParameters, location_name: "ClientParameters"))
    ConnectionOAuthResponseParameters.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: "AuthorizationEndpoint"))
    ConnectionOAuthResponseParameters.add_member(:http_method, Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: "HttpMethod"))
    ConnectionOAuthResponseParameters.add_member(:o_auth_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "OAuthHttpParameters"))
    ConnectionOAuthResponseParameters.struct_class = Types::ConnectionOAuthResponseParameters

    ConnectionQueryStringParameter.add_member(:key, Shapes::ShapeRef.new(shape: QueryStringKey, location_name: "Key"))
    ConnectionQueryStringParameter.add_member(:value, Shapes::ShapeRef.new(shape: QueryStringValueSensitive, location_name: "Value"))
    ConnectionQueryStringParameter.add_member(:is_value_secret, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsValueSecret"))
    ConnectionQueryStringParameter.struct_class = Types::ConnectionQueryStringParameter

    ConnectionQueryStringParametersList.member = Shapes::ShapeRef.new(shape: ConnectionQueryStringParameter)

    ConnectionResponseList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateApiDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, required: true, location_name: "Name"))
    CreateApiDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: "Description"))
    CreateApiDestinationRequest.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    CreateApiDestinationRequest.add_member(:invocation_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, required: true, location_name: "InvocationEndpoint"))
    CreateApiDestinationRequest.add_member(:http_method, Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, required: true, location_name: "HttpMethod"))
    CreateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: "InvocationRateLimitPerSecond"))
    CreateApiDestinationRequest.struct_class = Types::CreateApiDestinationRequest

    CreateApiDestinationResponse.add_member(:api_destination_arn, Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: "ApiDestinationArn"))
    CreateApiDestinationResponse.add_member(:api_destination_state, Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: "ApiDestinationState"))
    CreateApiDestinationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateApiDestinationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CreateApiDestinationResponse.struct_class = Types::CreateApiDestinationResponse

    CreateArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, required: true, location_name: "ArchiveName"))
    CreateArchiveRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventSourceArn"))
    CreateArchiveRequest.add_member(:description, Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: "Description"))
    CreateArchiveRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    CreateArchiveRequest.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    CreateArchiveRequest.struct_class = Types::CreateArchiveRequest

    CreateArchiveResponse.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, location_name: "ArchiveArn"))
    CreateArchiveResponse.add_member(:state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "State"))
    CreateArchiveResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: "StateReason"))
    CreateArchiveResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateArchiveResponse.struct_class = Types::CreateArchiveResponse

    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Shapes::ShapeRef.new(shape: AuthHeaderParameters, required: true, location_name: "ApiKeyName"))
    CreateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, required: true, location_name: "ApiKeyValue"))
    CreateConnectionApiKeyAuthRequestParameters.struct_class = Types::CreateConnectionApiKeyAuthRequestParameters

    CreateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Shapes::ShapeRef.new(shape: CreateConnectionBasicAuthRequestParameters, location_name: "BasicAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Shapes::ShapeRef.new(shape: CreateConnectionOAuthRequestParameters, location_name: "OAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Shapes::ShapeRef.new(shape: CreateConnectionApiKeyAuthRequestParameters, location_name: "ApiKeyAuthParameters"))
    CreateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "InvocationHttpParameters"))
    CreateConnectionAuthRequestParameters.struct_class = Types::CreateConnectionAuthRequestParameters

    CreateConnectionBasicAuthRequestParameters.add_member(:username, Shapes::ShapeRef.new(shape: AuthHeaderParameters, required: true, location_name: "Username"))
    CreateConnectionBasicAuthRequestParameters.add_member(:password, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, required: true, location_name: "Password"))
    CreateConnectionBasicAuthRequestParameters.struct_class = Types::CreateConnectionBasicAuthRequestParameters

    CreateConnectionOAuthClientRequestParameters.add_member(:client_id, Shapes::ShapeRef.new(shape: AuthHeaderParameters, required: true, location_name: "ClientID"))
    CreateConnectionOAuthClientRequestParameters.add_member(:client_secret, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, required: true, location_name: "ClientSecret"))
    CreateConnectionOAuthClientRequestParameters.struct_class = Types::CreateConnectionOAuthClientRequestParameters

    CreateConnectionOAuthRequestParameters.add_member(:client_parameters, Shapes::ShapeRef.new(shape: CreateConnectionOAuthClientRequestParameters, required: true, location_name: "ClientParameters"))
    CreateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, required: true, location_name: "AuthorizationEndpoint"))
    CreateConnectionOAuthRequestParameters.add_member(:http_method, Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, required: true, location_name: "HttpMethod"))
    CreateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "OAuthHttpParameters"))
    CreateConnectionOAuthRequestParameters.struct_class = Types::CreateConnectionOAuthRequestParameters

    CreateConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "Name"))
    CreateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "Description"))
    CreateConnectionRequest.add_member(:authorization_type, Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, required: true, location_name: "AuthorizationType"))
    CreateConnectionRequest.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: CreateConnectionAuthRequestParameters, required: true, location_name: "AuthParameters"))
    CreateConnectionRequest.struct_class = Types::CreateConnectionRequest

    CreateConnectionResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    CreateConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    CreateConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateConnectionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CreateConnectionResponse.struct_class = Types::CreateConnectionResponse

    CreateEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "Name"))
    CreateEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: EndpointDescription, location_name: "Description"))
    CreateEndpointRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, required: true, location_name: "RoutingConfig"))
    CreateEndpointRequest.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    CreateEndpointRequest.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, required: true, location_name: "EventBuses"))
    CreateEndpointRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    CreateEndpointRequest.struct_class = Types::CreateEndpointRequest

    CreateEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "Name"))
    CreateEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "Arn"))
    CreateEndpointResponse.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, location_name: "RoutingConfig"))
    CreateEndpointResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    CreateEndpointResponse.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: "EventBuses"))
    CreateEndpointResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    CreateEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "State"))
    CreateEndpointResponse.struct_class = Types::CreateEndpointResponse

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

    DeauthorizeConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "Name"))
    DeauthorizeConnectionRequest.struct_class = Types::DeauthorizeConnectionRequest

    DeauthorizeConnectionResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    DeauthorizeConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    DeauthorizeConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DeauthorizeConnectionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DeauthorizeConnectionResponse.add_member(:last_authorized_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAuthorizedTime"))
    DeauthorizeConnectionResponse.struct_class = Types::DeauthorizeConnectionResponse

    DeleteApiDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, required: true, location_name: "Name"))
    DeleteApiDestinationRequest.struct_class = Types::DeleteApiDestinationRequest

    DeleteApiDestinationResponse.struct_class = Types::DeleteApiDestinationResponse

    DeleteArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, required: true, location_name: "ArchiveName"))
    DeleteArchiveRequest.struct_class = Types::DeleteArchiveRequest

    DeleteArchiveResponse.struct_class = Types::DeleteArchiveResponse

    DeleteConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "Name"))
    DeleteConnectionRequest.struct_class = Types::DeleteConnectionRequest

    DeleteConnectionResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    DeleteConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    DeleteConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DeleteConnectionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DeleteConnectionResponse.add_member(:last_authorized_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAuthorizedTime"))
    DeleteConnectionResponse.struct_class = Types::DeleteConnectionResponse

    DeleteEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "Name"))
    DeleteEndpointRequest.struct_class = Types::DeleteEndpointRequest

    DeleteEndpointResponse.struct_class = Types::DeleteEndpointResponse

    DeleteEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, required: true, location_name: "Name"))
    DeleteEventBusRequest.struct_class = Types::DeleteEventBusRequest

    DeletePartnerEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    DeletePartnerEventSourceRequest.add_member(:account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "Account"))
    DeletePartnerEventSourceRequest.struct_class = Types::DeletePartnerEventSourceRequest

    DeleteRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DeleteRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
    DeleteRuleRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    DeleteRuleRequest.struct_class = Types::DeleteRuleRequest

    DescribeApiDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, required: true, location_name: "Name"))
    DescribeApiDestinationRequest.struct_class = Types::DescribeApiDestinationRequest

    DescribeApiDestinationResponse.add_member(:api_destination_arn, Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: "ApiDestinationArn"))
    DescribeApiDestinationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: "Name"))
    DescribeApiDestinationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: "Description"))
    DescribeApiDestinationResponse.add_member(:api_destination_state, Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: "ApiDestinationState"))
    DescribeApiDestinationResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    DescribeApiDestinationResponse.add_member(:invocation_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: "InvocationEndpoint"))
    DescribeApiDestinationResponse.add_member(:http_method, Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: "HttpMethod"))
    DescribeApiDestinationResponse.add_member(:invocation_rate_limit_per_second, Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: "InvocationRateLimitPerSecond"))
    DescribeApiDestinationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeApiDestinationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeApiDestinationResponse.struct_class = Types::DescribeApiDestinationResponse

    DescribeArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, required: true, location_name: "ArchiveName"))
    DescribeArchiveRequest.struct_class = Types::DescribeArchiveRequest

    DescribeArchiveResponse.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, location_name: "ArchiveArn"))
    DescribeArchiveResponse.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, location_name: "ArchiveName"))
    DescribeArchiveResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    DescribeArchiveResponse.add_member(:description, Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: "Description"))
    DescribeArchiveResponse.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    DescribeArchiveResponse.add_member(:state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "State"))
    DescribeArchiveResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: "StateReason"))
    DescribeArchiveResponse.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    DescribeArchiveResponse.add_member(:size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "SizeBytes"))
    DescribeArchiveResponse.add_member(:event_count, Shapes::ShapeRef.new(shape: Long, location_name: "EventCount"))
    DescribeArchiveResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeArchiveResponse.struct_class = Types::DescribeArchiveResponse

    DescribeConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "Name"))
    DescribeConnectionRequest.struct_class = Types::DescribeConnectionRequest

    DescribeConnectionResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    DescribeConnectionResponse.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "Name"))
    DescribeConnectionResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "Description"))
    DescribeConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    DescribeConnectionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ConnectionStateReason, location_name: "StateReason"))
    DescribeConnectionResponse.add_member(:authorization_type, Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: "AuthorizationType"))
    DescribeConnectionResponse.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretsManagerSecretArn, location_name: "SecretArn"))
    DescribeConnectionResponse.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: ConnectionAuthResponseParameters, location_name: "AuthParameters"))
    DescribeConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeConnectionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeConnectionResponse.add_member(:last_authorized_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAuthorizedTime"))
    DescribeConnectionResponse.struct_class = Types::DescribeConnectionResponse

    DescribeEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "Name"))
    DescribeEndpointRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    DescribeEndpointRequest.struct_class = Types::DescribeEndpointRequest

    DescribeEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "Name"))
    DescribeEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: EndpointDescription, location_name: "Description"))
    DescribeEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "Arn"))
    DescribeEndpointResponse.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, location_name: "RoutingConfig"))
    DescribeEndpointResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    DescribeEndpointResponse.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: "EventBuses"))
    DescribeEndpointResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    DescribeEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    DescribeEndpointResponse.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: EndpointUrl, location_name: "EndpointUrl"))
    DescribeEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "State"))
    DescribeEndpointResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: EndpointStateReason, location_name: "StateReason"))
    DescribeEndpointResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEndpointResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeEndpointResponse.struct_class = Types::DescribeEndpointResponse

    DescribeEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "Name"))
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

    DescribeReplayRequest.add_member(:replay_name, Shapes::ShapeRef.new(shape: ReplayName, required: true, location_name: "ReplayName"))
    DescribeReplayRequest.struct_class = Types::DescribeReplayRequest

    DescribeReplayResponse.add_member(:replay_name, Shapes::ShapeRef.new(shape: ReplayName, location_name: "ReplayName"))
    DescribeReplayResponse.add_member(:replay_arn, Shapes::ShapeRef.new(shape: ReplayArn, location_name: "ReplayArn"))
    DescribeReplayResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReplayDescription, location_name: "Description"))
    DescribeReplayResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReplayState, location_name: "State"))
    DescribeReplayResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: "StateReason"))
    DescribeReplayResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    DescribeReplayResponse.add_member(:destination, Shapes::ShapeRef.new(shape: ReplayDestination, location_name: "Destination"))
    DescribeReplayResponse.add_member(:event_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventStartTime"))
    DescribeReplayResponse.add_member(:event_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventEndTime"))
    DescribeReplayResponse.add_member(:event_last_replayed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventLastReplayedTime"))
    DescribeReplayResponse.add_member(:replay_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReplayStartTime"))
    DescribeReplayResponse.add_member(:replay_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReplayEndTime"))
    DescribeReplayResponse.struct_class = Types::DescribeReplayResponse

    DescribeRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DescribeRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
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
    DescribeRuleResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "CreatedBy"))
    DescribeRuleResponse.struct_class = Types::DescribeRuleResponse

    DisableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    DisableRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
    DisableRuleRequest.struct_class = Types::DisableRuleRequest

    EcsParameters.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TaskDefinitionArn"))
    EcsParameters.add_member(:task_count, Shapes::ShapeRef.new(shape: LimitMin1, location_name: "TaskCount"))
    EcsParameters.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "LaunchType"))
    EcsParameters.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "NetworkConfiguration"))
    EcsParameters.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    EcsParameters.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    EcsParameters.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "CapacityProviderStrategy"))
    EcsParameters.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableECSManagedTags"))
    EcsParameters.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableExecuteCommand"))
    EcsParameters.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "PlacementConstraints"))
    EcsParameters.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "PlacementStrategy"))
    EcsParameters.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "PropagateTags"))
    EcsParameters.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "ReferenceId"))
    EcsParameters.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    EcsParameters.struct_class = Types::EcsParameters

    EnableRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    EnableRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
    EnableRuleRequest.struct_class = Types::EnableRuleRequest

    Endpoint.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "Name"))
    Endpoint.add_member(:description, Shapes::ShapeRef.new(shape: EndpointDescription, location_name: "Description"))
    Endpoint.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "Arn"))
    Endpoint.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, location_name: "RoutingConfig"))
    Endpoint.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    Endpoint.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: "EventBuses"))
    Endpoint.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    Endpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    Endpoint.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: EndpointUrl, location_name: "EndpointUrl"))
    Endpoint.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "State"))
    Endpoint.add_member(:state_reason, Shapes::ShapeRef.new(shape: EndpointStateReason, location_name: "StateReason"))
    Endpoint.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Endpoint.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Endpoint.struct_class = Types::Endpoint

    EndpointEventBus.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: NonPartnerEventBusArn, required: true, location_name: "EventBusArn"))
    EndpointEventBus.struct_class = Types::EndpointEventBus

    EndpointEventBusList.member = Shapes::ShapeRef.new(shape: EndpointEventBus)

    EndpointList.member = Shapes::ShapeRef.new(shape: Endpoint)

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

    FailoverConfig.add_member(:primary, Shapes::ShapeRef.new(shape: Primary, required: true, location_name: "Primary"))
    FailoverConfig.add_member(:secondary, Shapes::ShapeRef.new(shape: Secondary, required: true, location_name: "Secondary"))
    FailoverConfig.struct_class = Types::FailoverConfig

    HeaderParametersMap.key = Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Shapes::ShapeRef.new(shape: HeaderValue)

    HttpParameters.add_member(:path_parameter_values, Shapes::ShapeRef.new(shape: PathParameterList, location_name: "PathParameterValues"))
    HttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: "HeaderParameters"))
    HttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: "QueryStringParameters"))
    HttpParameters.struct_class = Types::HttpParameters

    IllegalStatusException.struct_class = Types::IllegalStatusException

    InputTransformer.add_member(:input_paths_map, Shapes::ShapeRef.new(shape: TransformerPaths, location_name: "InputPathsMap"))
    InputTransformer.add_member(:input_template, Shapes::ShapeRef.new(shape: TransformerInput, required: true, location_name: "InputTemplate"))
    InputTransformer.struct_class = Types::InputTransformer

    InternalException.struct_class = Types::InternalException

    InvalidEventPatternException.struct_class = Types::InvalidEventPatternException

    InvalidStateException.struct_class = Types::InvalidStateException

    KinesisParameters.add_member(:partition_key_path, Shapes::ShapeRef.new(shape: TargetPartitionKeyPath, required: true, location_name: "PartitionKeyPath"))
    KinesisParameters.struct_class = Types::KinesisParameters

    LimitExceededException.struct_class = Types::LimitExceededException

    ListApiDestinationsRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ApiDestinationName, location_name: "NamePrefix"))
    ListApiDestinationsRequest.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    ListApiDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApiDestinationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListApiDestinationsRequest.struct_class = Types::ListApiDestinationsRequest

    ListApiDestinationsResponse.add_member(:api_destinations, Shapes::ShapeRef.new(shape: ApiDestinationResponseList, location_name: "ApiDestinations"))
    ListApiDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApiDestinationsResponse.struct_class = Types::ListApiDestinationsResponse

    ListArchivesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ArchiveName, location_name: "NamePrefix"))
    ListArchivesRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    ListArchivesRequest.add_member(:state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "State"))
    ListArchivesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListArchivesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListArchivesRequest.struct_class = Types::ListArchivesRequest

    ListArchivesResponse.add_member(:archives, Shapes::ShapeRef.new(shape: ArchiveResponseList, location_name: "Archives"))
    ListArchivesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListArchivesResponse.struct_class = Types::ListArchivesResponse

    ListConnectionsRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "NamePrefix"))
    ListConnectionsRequest.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    ListConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListConnectionsRequest.struct_class = Types::ListConnectionsRequest

    ListConnectionsResponse.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionResponseList, location_name: "Connections"))
    ListConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsResponse.struct_class = Types::ListConnectionsResponse

    ListEndpointsRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: EndpointName, location_name: "NamePrefix"))
    ListEndpointsRequest.add_member(:home_region, Shapes::ShapeRef.new(shape: HomeRegion, location_name: "HomeRegion"))
    ListEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "MaxResults"))
    ListEndpointsRequest.struct_class = Types::ListEndpointsRequest

    ListEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointList, location_name: "Endpoints"))
    ListEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEndpointsResponse.struct_class = Types::ListEndpointsResponse

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

    ListReplaysRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ReplayName, location_name: "NamePrefix"))
    ListReplaysRequest.add_member(:state, Shapes::ShapeRef.new(shape: ReplayState, location_name: "State"))
    ListReplaysRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    ListReplaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListReplaysRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListReplaysRequest.struct_class = Types::ListReplaysRequest

    ListReplaysResponse.add_member(:replays, Shapes::ShapeRef.new(shape: ReplayList, location_name: "Replays"))
    ListReplaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListReplaysResponse.struct_class = Types::ListReplaysResponse

    ListRuleNamesByTargetRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "TargetArn"))
    ListRuleNamesByTargetRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
    ListRuleNamesByTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetRequest.add_member(:limit, Shapes::ShapeRef.new(shape: LimitMax100, location_name: "Limit"))
    ListRuleNamesByTargetRequest.struct_class = Types::ListRuleNamesByTargetRequest

    ListRuleNamesByTargetResponse.add_member(:rule_names, Shapes::ShapeRef.new(shape: RuleNameList, location_name: "RuleNames"))
    ListRuleNamesByTargetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRuleNamesByTargetResponse.struct_class = Types::ListRuleNamesByTargetResponse

    ListRulesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: RuleName, location_name: "NamePrefix"))
    ListRulesRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
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
    ListTargetsByRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
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

    PlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: PlacementConstraintExpression, location_name: "expression"))
    PlacementConstraint.struct_class = Types::PlacementConstraint

    PlacementConstraints.member = Shapes::ShapeRef.new(shape: PlacementConstraint)

    PlacementStrategies.member = Shapes::ShapeRef.new(shape: PlacementStrategy)

    PlacementStrategy.add_member(:type, Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.add_member(:field, Shapes::ShapeRef.new(shape: PlacementStrategyField, location_name: "field"))
    PlacementStrategy.struct_class = Types::PlacementStrategy

    PolicyLengthExceededException.struct_class = Types::PolicyLengthExceededException

    Primary.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, required: true, location_name: "HealthCheck"))
    Primary.struct_class = Types::Primary

    PutEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, required: true, location_name: "Entries"))
    PutEventsRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId", metadata: {"contextParam"=>{"name"=>"EndpointId"}}))
    PutEventsRequest.struct_class = Types::PutEventsRequest

    PutEventsRequestEntry.add_member(:time, Shapes::ShapeRef.new(shape: EventTime, location_name: "Time"))
    PutEventsRequestEntry.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    PutEventsRequestEntry.add_member(:resources, Shapes::ShapeRef.new(shape: EventResourceList, location_name: "Resources"))
    PutEventsRequestEntry.add_member(:detail_type, Shapes::ShapeRef.new(shape: String, location_name: "DetailType"))
    PutEventsRequestEntry.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "Detail"))
    PutEventsRequestEntry.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: NonPartnerEventBusNameOrArn, location_name: "EventBusName"))
    PutEventsRequestEntry.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "TraceHeader"))
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
    PutPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "Action"))
    PutPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, location_name: "Principal"))
    PutPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, location_name: "StatementId"))
    PutPermissionRequest.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "Condition"))
    PutPermissionRequest.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    PutPermissionRequest.struct_class = Types::PutPermissionRequest

    PutRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Name"))
    PutRuleRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    PutRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    PutRuleRequest.add_member(:state, Shapes::ShapeRef.new(shape: RuleState, location_name: "State"))
    PutRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: RuleDescription, location_name: "Description"))
    PutRuleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutRuleRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
    PutRuleRequest.struct_class = Types::PutRuleRequest

    PutRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "RuleArn"))
    PutRuleResponse.struct_class = Types::PutRuleResponse

    PutTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    PutTargetsRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
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
    RedshiftDataParameters.add_member(:sql, Shapes::ShapeRef.new(shape: Sql, location_name: "Sql"))
    RedshiftDataParameters.add_member(:statement_name, Shapes::ShapeRef.new(shape: StatementName, location_name: "StatementName"))
    RedshiftDataParameters.add_member(:with_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithEvent"))
    RedshiftDataParameters.add_member(:sqls, Shapes::ShapeRef.new(shape: Sqls, location_name: "Sqls"))
    RedshiftDataParameters.struct_class = Types::RedshiftDataParameters

    RemovePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, location_name: "StatementId"))
    RemovePermissionRequest.add_member(:remove_all_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemoveAllPermissions"))
    RemovePermissionRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: NonPartnerEventBusName, location_name: "EventBusName"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RemoveTargetsRequest.add_member(:rule, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "Rule"))
    RemoveTargetsRequest.add_member(:event_bus_name, Shapes::ShapeRef.new(shape: EventBusNameOrArn, location_name: "EventBusName"))
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

    Replay.add_member(:replay_name, Shapes::ShapeRef.new(shape: ReplayName, location_name: "ReplayName"))
    Replay.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    Replay.add_member(:state, Shapes::ShapeRef.new(shape: ReplayState, location_name: "State"))
    Replay.add_member(:state_reason, Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: "StateReason"))
    Replay.add_member(:event_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventStartTime"))
    Replay.add_member(:event_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventEndTime"))
    Replay.add_member(:event_last_replayed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventLastReplayedTime"))
    Replay.add_member(:replay_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReplayStartTime"))
    Replay.add_member(:replay_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReplayEndTime"))
    Replay.struct_class = Types::Replay

    ReplayDestination.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ReplayDestination.add_member(:filter_arns, Shapes::ShapeRef.new(shape: ReplayDestinationFilters, location_name: "FilterArns"))
    ReplayDestination.struct_class = Types::ReplayDestination

    ReplayDestinationFilters.member = Shapes::ShapeRef.new(shape: Arn)

    ReplayList.member = Shapes::ShapeRef.new(shape: Replay)

    ReplicationConfig.add_member(:state, Shapes::ShapeRef.new(shape: ReplicationState, location_name: "State"))
    ReplicationConfig.struct_class = Types::ReplicationConfig

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryPolicy.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    RetryPolicy.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    RetryPolicy.struct_class = Types::RetryPolicy

    RoutingConfig.add_member(:failover_config, Shapes::ShapeRef.new(shape: FailoverConfig, required: true, location_name: "FailoverConfig"))
    RoutingConfig.struct_class = Types::RoutingConfig

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

    SageMakerPipelineParameter.add_member(:name, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterName, required: true, location_name: "Name"))
    SageMakerPipelineParameter.add_member(:value, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterValue, required: true, location_name: "Value"))
    SageMakerPipelineParameter.struct_class = Types::SageMakerPipelineParameter

    SageMakerPipelineParameterList.member = Shapes::ShapeRef.new(shape: SageMakerPipelineParameter)

    SageMakerPipelineParameters.add_member(:pipeline_parameter_list, Shapes::ShapeRef.new(shape: SageMakerPipelineParameterList, location_name: "PipelineParameterList"))
    SageMakerPipelineParameters.struct_class = Types::SageMakerPipelineParameters

    Secondary.add_member(:route, Shapes::ShapeRef.new(shape: Route, required: true, location_name: "Route"))
    Secondary.struct_class = Types::Secondary

    Sqls.member = Shapes::ShapeRef.new(shape: Sql)

    SqsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: MessageGroupId, location_name: "MessageGroupId"))
    SqsParameters.struct_class = Types::SqsParameters

    StartReplayRequest.add_member(:replay_name, Shapes::ShapeRef.new(shape: ReplayName, required: true, location_name: "ReplayName"))
    StartReplayRequest.add_member(:description, Shapes::ShapeRef.new(shape: ReplayDescription, location_name: "Description"))
    StartReplayRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "EventSourceArn"))
    StartReplayRequest.add_member(:event_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EventStartTime"))
    StartReplayRequest.add_member(:event_end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EventEndTime"))
    StartReplayRequest.add_member(:destination, Shapes::ShapeRef.new(shape: ReplayDestination, required: true, location_name: "Destination"))
    StartReplayRequest.struct_class = Types::StartReplayRequest

    StartReplayResponse.add_member(:replay_arn, Shapes::ShapeRef.new(shape: ReplayArn, location_name: "ReplayArn"))
    StartReplayResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReplayState, location_name: "State"))
    StartReplayResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ReplayStateReason, location_name: "StateReason"))
    StartReplayResponse.add_member(:replay_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReplayStartTime"))
    StartReplayResponse.struct_class = Types::StartReplayResponse

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
    Target.add_member(:sage_maker_pipeline_parameters, Shapes::ShapeRef.new(shape: SageMakerPipelineParameters, location_name: "SageMakerPipelineParameters"))
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

    UpdateApiDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApiDestinationName, required: true, location_name: "Name"))
    UpdateApiDestinationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApiDestinationDescription, location_name: "Description"))
    UpdateApiDestinationRequest.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    UpdateApiDestinationRequest.add_member(:invocation_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: "InvocationEndpoint"))
    UpdateApiDestinationRequest.add_member(:http_method, Shapes::ShapeRef.new(shape: ApiDestinationHttpMethod, location_name: "HttpMethod"))
    UpdateApiDestinationRequest.add_member(:invocation_rate_limit_per_second, Shapes::ShapeRef.new(shape: ApiDestinationInvocationRateLimitPerSecond, location_name: "InvocationRateLimitPerSecond"))
    UpdateApiDestinationRequest.struct_class = Types::UpdateApiDestinationRequest

    UpdateApiDestinationResponse.add_member(:api_destination_arn, Shapes::ShapeRef.new(shape: ApiDestinationArn, location_name: "ApiDestinationArn"))
    UpdateApiDestinationResponse.add_member(:api_destination_state, Shapes::ShapeRef.new(shape: ApiDestinationState, location_name: "ApiDestinationState"))
    UpdateApiDestinationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    UpdateApiDestinationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdateApiDestinationResponse.struct_class = Types::UpdateApiDestinationResponse

    UpdateArchiveRequest.add_member(:archive_name, Shapes::ShapeRef.new(shape: ArchiveName, required: true, location_name: "ArchiveName"))
    UpdateArchiveRequest.add_member(:description, Shapes::ShapeRef.new(shape: ArchiveDescription, location_name: "Description"))
    UpdateArchiveRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventPattern, location_name: "EventPattern"))
    UpdateArchiveRequest.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    UpdateArchiveRequest.struct_class = Types::UpdateArchiveRequest

    UpdateArchiveResponse.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, location_name: "ArchiveArn"))
    UpdateArchiveResponse.add_member(:state, Shapes::ShapeRef.new(shape: ArchiveState, location_name: "State"))
    UpdateArchiveResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: ArchiveStateReason, location_name: "StateReason"))
    UpdateArchiveResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    UpdateArchiveResponse.struct_class = Types::UpdateArchiveResponse

    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_name, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "ApiKeyName"))
    UpdateConnectionApiKeyAuthRequestParameters.add_member(:api_key_value, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: "ApiKeyValue"))
    UpdateConnectionApiKeyAuthRequestParameters.struct_class = Types::UpdateConnectionApiKeyAuthRequestParameters

    UpdateConnectionAuthRequestParameters.add_member(:basic_auth_parameters, Shapes::ShapeRef.new(shape: UpdateConnectionBasicAuthRequestParameters, location_name: "BasicAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:o_auth_parameters, Shapes::ShapeRef.new(shape: UpdateConnectionOAuthRequestParameters, location_name: "OAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:api_key_auth_parameters, Shapes::ShapeRef.new(shape: UpdateConnectionApiKeyAuthRequestParameters, location_name: "ApiKeyAuthParameters"))
    UpdateConnectionAuthRequestParameters.add_member(:invocation_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "InvocationHttpParameters"))
    UpdateConnectionAuthRequestParameters.struct_class = Types::UpdateConnectionAuthRequestParameters

    UpdateConnectionBasicAuthRequestParameters.add_member(:username, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "Username"))
    UpdateConnectionBasicAuthRequestParameters.add_member(:password, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: "Password"))
    UpdateConnectionBasicAuthRequestParameters.struct_class = Types::UpdateConnectionBasicAuthRequestParameters

    UpdateConnectionOAuthClientRequestParameters.add_member(:client_id, Shapes::ShapeRef.new(shape: AuthHeaderParameters, location_name: "ClientID"))
    UpdateConnectionOAuthClientRequestParameters.add_member(:client_secret, Shapes::ShapeRef.new(shape: AuthHeaderParametersSensitive, location_name: "ClientSecret"))
    UpdateConnectionOAuthClientRequestParameters.struct_class = Types::UpdateConnectionOAuthClientRequestParameters

    UpdateConnectionOAuthRequestParameters.add_member(:client_parameters, Shapes::ShapeRef.new(shape: UpdateConnectionOAuthClientRequestParameters, location_name: "ClientParameters"))
    UpdateConnectionOAuthRequestParameters.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: HttpsEndpoint, location_name: "AuthorizationEndpoint"))
    UpdateConnectionOAuthRequestParameters.add_member(:http_method, Shapes::ShapeRef.new(shape: ConnectionOAuthHttpMethod, location_name: "HttpMethod"))
    UpdateConnectionOAuthRequestParameters.add_member(:o_auth_http_parameters, Shapes::ShapeRef.new(shape: ConnectionHttpParameters, location_name: "OAuthHttpParameters"))
    UpdateConnectionOAuthRequestParameters.struct_class = Types::UpdateConnectionOAuthRequestParameters

    UpdateConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "Name"))
    UpdateConnectionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConnectionDescription, location_name: "Description"))
    UpdateConnectionRequest.add_member(:authorization_type, Shapes::ShapeRef.new(shape: ConnectionAuthorizationType, location_name: "AuthorizationType"))
    UpdateConnectionRequest.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: UpdateConnectionAuthRequestParameters, location_name: "AuthParameters"))
    UpdateConnectionRequest.struct_class = Types::UpdateConnectionRequest

    UpdateConnectionResponse.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    UpdateConnectionResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    UpdateConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    UpdateConnectionResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdateConnectionResponse.add_member(:last_authorized_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastAuthorizedTime"))
    UpdateConnectionResponse.struct_class = Types::UpdateConnectionResponse

    UpdateEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "Name"))
    UpdateEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: EndpointDescription, location_name: "Description"))
    UpdateEndpointRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, location_name: "RoutingConfig"))
    UpdateEndpointRequest.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    UpdateEndpointRequest.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: "EventBuses"))
    UpdateEndpointRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateEndpointRequest.struct_class = Types::UpdateEndpointRequest

    UpdateEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "Name"))
    UpdateEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EndpointArn, location_name: "Arn"))
    UpdateEndpointResponse.add_member(:routing_config, Shapes::ShapeRef.new(shape: RoutingConfig, location_name: "RoutingConfig"))
    UpdateEndpointResponse.add_member(:replication_config, Shapes::ShapeRef.new(shape: ReplicationConfig, location_name: "ReplicationConfig"))
    UpdateEndpointResponse.add_member(:event_buses, Shapes::ShapeRef.new(shape: EndpointEventBusList, location_name: "EventBuses"))
    UpdateEndpointResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    UpdateEndpointResponse.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: EndpointUrl, location_name: "EndpointUrl"))
    UpdateEndpointResponse.add_member(:state, Shapes::ShapeRef.new(shape: EndpointState, location_name: "State"))
    UpdateEndpointResponse.struct_class = Types::UpdateEndpointResponse


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

      api.add_operation(:cancel_replay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelReplay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelReplayRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelReplayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: IllegalStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_api_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApiDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApiDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
      end)

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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

      api.add_operation(:deauthorize_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeauthorizeConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeauthorizeConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeauthorizeConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_api_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApiDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApiDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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

      api.add_operation(:describe_api_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApiDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApiDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApiDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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

      api.add_operation(:describe_replay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplayRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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

      api.add_operation(:list_api_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApiDestinations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApiDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApiDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_archives, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchives"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListArchivesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchivesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointsResponse)
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

      api.add_operation(:list_replays, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReplays"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReplaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReplaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationDisabledException)
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

      api.add_operation(:start_replay, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReplayRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReplayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:update_api_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApiDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_archive, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateArchive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateArchiveRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateArchiveResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventPatternException)
      end)

      api.add_operation(:update_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
