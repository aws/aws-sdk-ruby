# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EventBridgeV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AwsServiceEventsSourceConfiguration = Shapes::StructureShape.new(name: 'AwsServiceEventsSourceConfiguration')
    AwsServiceEventsSourceConfigurationPatternString = Shapes::StringShape.new(name: 'AwsServiceEventsSourceConfigurationPatternString')
    AwsServiceSource = Shapes::StringShape.new(name: 'AwsServiceSource')
    BatchConfiguration = Shapes::StructureShape.new(name: 'BatchConfiguration')
    BatchConfigurationMaxBatchSizeInteger = Shapes::IntegerShape.new(name: 'BatchConfigurationMaxBatchSizeInteger')
    BatchConfigurationMaxBatchWindowInSecondsInteger = Shapes::IntegerShape.new(name: 'BatchConfigurationMaxBatchWindowInSecondsInteger')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BusState = Shapes::StringShape.new(name: 'BusState')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConfluentPublicRegistryConfiguration = Shapes::StructureShape.new(name: 'ConfluentPublicRegistryConfiguration')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateEventBusRequest = Shapes::StructureShape.new(name: 'CreateEventBusRequest')
    CreateEventBusResponse = Shapes::StructureShape.new(name: 'CreateEventBusResponse')
    CreateEventSourceRequest = Shapes::StructureShape.new(name: 'CreateEventSourceRequest')
    CreateEventSourceResponse = Shapes::StructureShape.new(name: 'CreateEventSourceResponse')
    CreateSubscriberRequest = Shapes::StructureShape.new(name: 'CreateSubscriberRequest')
    CreateSubscriberResponse = Shapes::StructureShape.new(name: 'CreateSubscriberResponse')
    DeadLetterQueueArn = Shapes::StringShape.new(name: 'DeadLetterQueueArn')
    DeduplicationConfiguration = Shapes::StructureShape.new(name: 'DeduplicationConfiguration')
    DeduplicationType = Shapes::StringShape.new(name: 'DeduplicationType')
    DeleteEventBusRequest = Shapes::StructureShape.new(name: 'DeleteEventBusRequest')
    DeleteEventBusResponse = Shapes::StructureShape.new(name: 'DeleteEventBusResponse')
    DeleteEventSourceRequest = Shapes::StructureShape.new(name: 'DeleteEventSourceRequest')
    DeleteEventSourceResponse = Shapes::StructureShape.new(name: 'DeleteEventSourceResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteSubscriberRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberResponse')
    DescribeEventBusRequest = Shapes::StructureShape.new(name: 'DescribeEventBusRequest')
    DescribeEventBusResponse = Shapes::StructureShape.new(name: 'DescribeEventBusResponse')
    DescribeEventSourceRequest = Shapes::StructureShape.new(name: 'DescribeEventSourceRequest')
    DescribeEventSourceResponse = Shapes::StructureShape.new(name: 'DescribeEventSourceResponse')
    DescribeSubscriberRequest = Shapes::StructureShape.new(name: 'DescribeSubscriberRequest')
    DescribeSubscriberResponse = Shapes::StructureShape.new(name: 'DescribeSubscriberResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailType = Shapes::StringShape.new(name: 'DetailType')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventBusArn = Shapes::StringShape.new(name: 'EventBusArn')
    EventBusName = Shapes::StringShape.new(name: 'EventBusName')
    EventBusSummary = Shapes::StructureShape.new(name: 'EventBusSummary')
    EventBusSummaryList = Shapes::ListShape.new(name: 'EventBusSummaryList')
    EventBusV2MetadataMap = Shapes::MapShape.new(name: 'EventBusV2MetadataMap')
    EventBusV2Parameters = Shapes::StructureShape.new(name: 'EventBusV2Parameters')
    EventBusV2SystemMetadata = Shapes::StructureShape.new(name: 'EventBusV2SystemMetadata')
    EventData = Shapes::BlobShape.new(name: 'EventData')
    EventDeduplicationId = Shapes::StringShape.new(name: 'EventDeduplicationId')
    EventDetail = Shapes::StringShape.new(name: 'EventDetail')
    EventGroupId = Shapes::StringShape.new(name: 'EventGroupId')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventMetadataKey = Shapes::StringShape.new(name: 'EventMetadataKey')
    EventMetadataMap = Shapes::MapShape.new(name: 'EventMetadataMap')
    EventMetadataValue = Shapes::StringShape.new(name: 'EventMetadataValue')
    EventPattern = Shapes::StringShape.new(name: 'EventPattern')
    EventResource = Shapes::StringShape.new(name: 'EventResource')
    EventSourceArn = Shapes::StringShape.new(name: 'EventSourceArn')
    EventSourceConfiguration = Shapes::UnionShape.new(name: 'EventSourceConfiguration')
    EventSourceName = Shapes::StringShape.new(name: 'EventSourceName')
    EventSourceState = Shapes::StringShape.new(name: 'EventSourceState')
    EventSourceSummary = Shapes::StructureShape.new(name: 'EventSourceSummary')
    EventSourceSummaryList = Shapes::ListShape.new(name: 'EventSourceSummaryList')
    EventSourceType = Shapes::StringShape.new(name: 'EventSourceType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterConfiguration = Shapes::StructureShape.new(name: 'FilterConfiguration')
    FilterLanguage = Shapes::StringShape.new(name: 'FilterLanguage')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterScope = Shapes::StringShape.new(name: 'FilterScope')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    HeaderKey = Shapes::StringShape.new(name: 'HeaderKey')
    HeaderParametersMap = Shapes::MapShape.new(name: 'HeaderParametersMap')
    HeaderValue = Shapes::StringShape.new(name: 'HeaderValue')
    HttpParameters = Shapes::StructureShape.new(name: 'HttpParameters')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IncludePayload = Shapes::StringShape.new(name: 'IncludePayload')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    InvokeConfiguration = Shapes::StructureShape.new(name: 'InvokeConfiguration')
    JsonataConfiguration = Shapes::StructureShape.new(name: 'JsonataConfiguration')
    JsonataConfigurationExpressionString = Shapes::StringShape.new(name: 'JsonataConfigurationExpressionString')
    KinesisParameters = Shapes::StructureShape.new(name: 'KinesisParameters')
    KinesisParametersExplicitHashKeyString = Shapes::StringShape.new(name: 'KinesisParametersExplicitHashKeyString')
    KinesisParametersPartitionKeyString = Shapes::StringShape.new(name: 'KinesisParametersPartitionKeyString')
    KmsKeyIdentifier = Shapes::StringShape.new(name: 'KmsKeyIdentifier')
    LambdaParameters = Shapes::StructureShape.new(name: 'LambdaParameters')
    LambdaParametersDurableExecutionNameString = Shapes::StringShape.new(name: 'LambdaParametersDurableExecutionNameString')
    LambdaParametersInvocationTimeoutSecondsString = Shapes::StringShape.new(name: 'LambdaParametersInvocationTimeoutSecondsString')
    LambdaParametersQualifierString = Shapes::StringShape.new(name: 'LambdaParametersQualifierString')
    LambdaParametersTenantIdString = Shapes::StringShape.new(name: 'LambdaParametersTenantIdString')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEventBusesRequest = Shapes::StructureShape.new(name: 'ListEventBusesRequest')
    ListEventBusesResponse = Shapes::StructureShape.new(name: 'ListEventBusesResponse')
    ListEventSourcesRequest = Shapes::StructureShape.new(name: 'ListEventSourcesRequest')
    ListEventSourcesResponse = Shapes::StructureShape.new(name: 'ListEventSourcesResponse')
    ListResourcePoliciesRequest = Shapes::StructureShape.new(name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResponse = Shapes::StructureShape.new(name: 'ListResourcePoliciesResponse')
    ListSubscribersRequest = Shapes::StructureShape.new(name: 'ListSubscribersRequest')
    ListSubscribersResponse = Shapes::StructureShape.new(name: 'ListSubscribersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MessageAttributeName = Shapes::StringShape.new(name: 'MessageAttributeName')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OnFailureConfiguration = Shapes::StructureShape.new(name: 'OnFailureConfiguration')
    OrderingType = Shapes::StringShape.new(name: 'OrderingType')
    PartnerEventSourceArn = Shapes::StringShape.new(name: 'PartnerEventSourceArn')
    PartnerEventsSourceConfiguration = Shapes::StructureShape.new(name: 'PartnerEventsSourceConfiguration')
    PartnerEventsSourceConfigurationPatternString = Shapes::StringShape.new(name: 'PartnerEventsSourceConfigurationPatternString')
    PathParameter = Shapes::StringShape.new(name: 'PathParameter')
    PathParameterList = Shapes::ListShape.new(name: 'PathParameterList')
    PointInTimeConfiguration = Shapes::StructureShape.new(name: 'PointInTimeConfiguration')
    PointType = Shapes::StringShape.new(name: 'PointType')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyRevisionId = Shapes::StringShape.new(name: 'PolicyRevisionId')
    PublicPolicyException = Shapes::StructureShape.new(name: 'PublicPolicyException')
    PutEventsRequest = Shapes::StructureShape.new(name: 'PutEventsRequest')
    PutEventsRequestEntry = Shapes::StructureShape.new(name: 'PutEventsRequestEntry')
    PutEventsRequestEntryList = Shapes::ListShape.new(name: 'PutEventsRequestEntryList')
    PutEventsResourceList = Shapes::ListShape.new(name: 'PutEventsResourceList')
    PutEventsResponse = Shapes::StructureShape.new(name: 'PutEventsResponse')
    PutEventsResultEntry = Shapes::StructureShape.new(name: 'PutEventsResultEntry')
    PutEventsResultEntryList = Shapes::ListShape.new(name: 'PutEventsResultEntryList')
    PutEventsSystemMetadata = Shapes::StructureShape.new(name: 'PutEventsSystemMetadata')
    PutRawEventsRequest = Shapes::StructureShape.new(name: 'PutRawEventsRequest')
    PutRawEventsRequestEntry = Shapes::StructureShape.new(name: 'PutRawEventsRequestEntry')
    PutRawEventsRequestEntryList = Shapes::ListShape.new(name: 'PutRawEventsRequestEntryList')
    PutRawEventsResponse = Shapes::StructureShape.new(name: 'PutRawEventsResponse')
    PutRawEventsResultEntry = Shapes::StructureShape.new(name: 'PutRawEventsResultEntry')
    PutRawEventsResultEntryList = Shapes::ListShape.new(name: 'PutRawEventsResultEntryList')
    PutRawEventsSystemMetadata = Shapes::StructureShape.new(name: 'PutRawEventsSystemMetadata')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    QueryStringKey = Shapes::StringShape.new(name: 'QueryStringKey')
    QueryStringParametersMap = Shapes::MapShape.new(name: 'QueryStringParametersMap')
    QueryStringValue = Shapes::StringShape.new(name: 'QueryStringValue')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicySummary = Shapes::StructureShape.new(name: 'ResourcePolicySummary')
    ResourcePolicySummaryList = Shapes::ListShape.new(name: 'ResourcePolicySummaryList')
    ResumePosition = Shapes::StringShape.new(name: 'ResumePosition')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RetryPolicy = Shapes::StructureShape.new(name: 'RetryPolicy')
    RetryPolicyMaxEventAgeInSecondsInteger = Shapes::IntegerShape.new(name: 'RetryPolicyMaxEventAgeInSecondsInteger')
    RetryPolicyMaxRetryAttemptsInteger = Shapes::IntegerShape.new(name: 'RetryPolicyMaxRetryAttemptsInteger')
    RetryStrategy = Shapes::StringShape.new(name: 'RetryStrategy')
    RevocableResourceArn = Shapes::StringShape.new(name: 'RevocableResourceArn')
    RevokeResourceRequest = Shapes::StructureShape.new(name: 'RevokeResourceRequest')
    RevokeResourceResponse = Shapes::StructureShape.new(name: 'RevokeResourceResponse')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SchemaRegistryConfiguration = Shapes::StructureShape.new(name: 'SchemaRegistryConfiguration')
    SchemaRegistryUnavailableException = Shapes::StructureShape.new(name: 'SchemaRegistryUnavailableException')
    SchemaRegistryUri = Shapes::StringShape.new(name: 'SchemaRegistryUri')
    SequenceNumber = Shapes::StringShape.new(name: 'SequenceNumber')
    SnsMessageAttributeMap = Shapes::MapShape.new(name: 'SnsMessageAttributeMap')
    SnsMessageAttributeValue = Shapes::StructureShape.new(name: 'SnsMessageAttributeValue')
    SnsMessageAttributeValueDataTypeString = Shapes::StringShape.new(name: 'SnsMessageAttributeValueDataTypeString')
    SnsParameters = Shapes::StructureShape.new(name: 'SnsParameters')
    SnsParametersMessageDeduplicationIdString = Shapes::StringShape.new(name: 'SnsParametersMessageDeduplicationIdString')
    SnsParametersMessageGroupIdString = Shapes::StringShape.new(name: 'SnsParametersMessageGroupIdString')
    SnsParametersMessageStructureString = Shapes::StringShape.new(name: 'SnsParametersMessageStructureString')
    SnsParametersSubjectString = Shapes::StringShape.new(name: 'SnsParametersSubjectString')
    Source = Shapes::StringShape.new(name: 'Source')
    SqsMessageAttributeMap = Shapes::MapShape.new(name: 'SqsMessageAttributeMap')
    SqsMessageAttributeValue = Shapes::StructureShape.new(name: 'SqsMessageAttributeValue')
    SqsMessageAttributeValueDataTypeString = Shapes::StringShape.new(name: 'SqsMessageAttributeValueDataTypeString')
    SqsParameters = Shapes::StructureShape.new(name: 'SqsParameters')
    SqsParametersDelaySecondsString = Shapes::StringShape.new(name: 'SqsParametersDelaySecondsString')
    SqsParametersMessageDeduplicationIdString = Shapes::StringShape.new(name: 'SqsParametersMessageDeduplicationIdString')
    SqsParametersMessageGroupIdString = Shapes::StringShape.new(name: 'SqsParametersMessageGroupIdString')
    StartingPosition = Shapes::StringShape.new(name: 'StartingPosition')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StepFunctionsParameters = Shapes::StructureShape.new(name: 'StepFunctionsParameters')
    StepFunctionsParametersInvocationTimeoutSecondsString = Shapes::StringShape.new(name: 'StepFunctionsParametersInvocationTimeoutSecondsString')
    StepFunctionsParametersNameString = Shapes::StringShape.new(name: 'StepFunctionsParametersNameString')
    StepFunctionsParametersTraceHeaderString = Shapes::StringShape.new(name: 'StepFunctionsParametersTraceHeaderString')
    StorageConfiguration = Shapes::StructureShape.new(name: 'StorageConfiguration')
    StorageConfigurationOutput = Shapes::StructureShape.new(name: 'StorageConfigurationOutput')
    String = Shapes::StringShape.new(name: 'String')
    SubscriberArn = Shapes::StringShape.new(name: 'SubscriberArn')
    SubscriberName = Shapes::StringShape.new(name: 'SubscriberName')
    SubscriberState = Shapes::StringShape.new(name: 'SubscriberState')
    SubscriberSummary = Shapes::StructureShape.new(name: 'SubscriberSummary')
    SubscriberSummaryList = Shapes::ListShape.new(name: 'SubscriberSummaryList')
    SuccessCode = Shapes::StringShape.new(name: 'SuccessCode')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceRequestTagsMap = Shapes::MapShape.new(name: 'TagResourceRequestTagsMap')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TargetResourceArn = Shapes::StringShape.new(name: 'TargetResourceArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Transformer = Shapes::StructureShape.new(name: 'Transformer')
    TransformerType = Shapes::StringShape.new(name: 'TransformerType')
    UniversalTargetInput = Shapes::StringShape.new(name: 'UniversalTargetInput')
    UniversalTargetParameters = Shapes::StructureShape.new(name: 'UniversalTargetParameters')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceRequestTagKeysList = Shapes::ListShape.new(name: 'UntagResourceRequestTagKeysList')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEventBusRequest = Shapes::StructureShape.new(name: 'UpdateEventBusRequest')
    UpdateEventBusResponse = Shapes::StructureShape.new(name: 'UpdateEventBusResponse')
    UpdateEventSourceRequest = Shapes::StructureShape.new(name: 'UpdateEventSourceRequest')
    UpdateEventSourceResponse = Shapes::StructureShape.new(name: 'UpdateEventSourceResponse')
    UpdateInvokeConfiguration = Shapes::StructureShape.new(name: 'UpdateInvokeConfiguration')
    UpdateSubscriberRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberRequest')
    UpdateSubscriberResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AwsServiceEventsSourceConfiguration.add_member(:aws_service, Shapes::ShapeRef.new(shape: AwsServiceSource, required: true, location_name: "AwsService"))
    AwsServiceEventsSourceConfiguration.add_member(:pattern, Shapes::ShapeRef.new(shape: AwsServiceEventsSourceConfigurationPatternString, location_name: "Pattern"))
    AwsServiceEventsSourceConfiguration.add_member(:on_failure_configuration, Shapes::ShapeRef.new(shape: OnFailureConfiguration, location_name: "OnFailureConfiguration"))
    AwsServiceEventsSourceConfiguration.struct_class = Types::AwsServiceEventsSourceConfiguration

    BatchConfiguration.add_member(:max_batch_size, Shapes::ShapeRef.new(shape: BatchConfigurationMaxBatchSizeInteger, location_name: "MaxBatchSize"))
    BatchConfiguration.add_member(:max_batch_window_in_seconds, Shapes::ShapeRef.new(shape: BatchConfigurationMaxBatchWindowInSecondsInteger, location_name: "MaxBatchWindowInSeconds"))
    BatchConfiguration.struct_class = Types::BatchConfiguration

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConfluentPublicRegistryConfiguration.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    ConfluentPublicRegistryConfiguration.struct_class = Types::ConfluentPublicRegistryConfiguration

    CreateEventBusRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, required: true, location_name: "Name"))
    CreateEventBusRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEventBusRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateEventBusRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: "StorageConfiguration"))
    CreateEventBusRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventBusRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEventBusRequest.struct_class = Types::CreateEventBusRequest

    CreateEventBusResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    CreateEventBusResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "Name"))
    CreateEventBusResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEventBusResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateEventBusResponse.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfigurationOutput, location_name: "StorageConfiguration"))
    CreateEventBusResponse.add_member(:state, Shapes::ShapeRef.new(shape: BusState, location_name: "State"))
    CreateEventBusResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    CreateEventBusResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateEventBusResponse.struct_class = Types::CreateEventBusResponse

    CreateEventSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "Name"))
    CreateEventSourceRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    CreateEventSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: EventSourceConfiguration, required: true, location_name: "Configuration"))
    CreateEventSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEventSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEventSourceRequest.struct_class = Types::CreateEventSourceRequest

    CreateEventSourceResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, location_name: "EventSourceArn"))
    CreateEventSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "Name"))
    CreateEventSourceResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    CreateEventSourceResponse.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    CreateEventSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateEventSourceResponse.struct_class = Types::CreateEventSourceResponse

    CreateSubscriberRequest.add_member(:name, Shapes::ShapeRef.new(shape: SubscriberName, required: true, location_name: "Name"))
    CreateSubscriberRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    CreateSubscriberRequest.add_member(:invoke_configuration, Shapes::ShapeRef.new(shape: InvokeConfiguration, required: true, location_name: "InvokeConfiguration"))
    CreateSubscriberRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateSubscriberRequest.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateSubscriberRequest.add_member(:type, Shapes::ShapeRef.new(shape: OrderingType, location_name: "Type"))
    CreateSubscriberRequest.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, location_name: "StartingPosition"))
    CreateSubscriberRequest.add_member(:point_in_time_configuration, Shapes::ShapeRef.new(shape: PointInTimeConfiguration, location_name: "PointInTimeConfiguration"))
    CreateSubscriberRequest.add_member(:batch_configuration, Shapes::ShapeRef.new(shape: BatchConfiguration, location_name: "BatchConfiguration"))
    CreateSubscriberRequest.add_member(:transformer, Shapes::ShapeRef.new(shape: Transformer, location_name: "Transformer"))
    CreateSubscriberRequest.add_member(:retry_policy, Shapes::ShapeRef.new(shape: RetryPolicy, location_name: "RetryPolicy"))
    CreateSubscriberRequest.add_member(:on_failure_configuration, Shapes::ShapeRef.new(shape: OnFailureConfiguration, location_name: "OnFailureConfiguration"))
    CreateSubscriberRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    CreateSubscriberRequest.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    CreateSubscriberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateSubscriberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateSubscriberRequest.struct_class = Types::CreateSubscriberRequest

    CreateSubscriberResponse.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, location_name: "SubscriberArn"))
    CreateSubscriberResponse.add_member(:name, Shapes::ShapeRef.new(shape: SubscriberName, location_name: "Name"))
    CreateSubscriberResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    CreateSubscriberResponse.add_member(:type, Shapes::ShapeRef.new(shape: OrderingType, location_name: "Type"))
    CreateSubscriberResponse.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, location_name: "StartingPosition"))
    CreateSubscriberResponse.add_member(:point_in_time_configuration, Shapes::ShapeRef.new(shape: PointInTimeConfiguration, location_name: "PointInTimeConfiguration"))
    CreateSubscriberResponse.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    CreateSubscriberResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    CreateSubscriberResponse.struct_class = Types::CreateSubscriberResponse

    DeduplicationConfiguration.add_member(:deduplication_type, Shapes::ShapeRef.new(shape: DeduplicationType, required: true, location_name: "DeduplicationType"))
    DeduplicationConfiguration.struct_class = Types::DeduplicationConfiguration

    DeleteEventBusRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    DeleteEventBusRequest.struct_class = Types::DeleteEventBusRequest

    DeleteEventBusResponse.struct_class = Types::DeleteEventBusResponse

    DeleteEventSourceRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, required: true, location_name: "EventSourceArn"))
    DeleteEventSourceRequest.struct_class = Types::DeleteEventSourceRequest

    DeleteEventSourceResponse.struct_class = Types::DeleteEventSourceResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    DeleteResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "ExpectedRevisionId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteSubscriberRequest.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, required: true, location_name: "SubscriberArn"))
    DeleteSubscriberRequest.struct_class = Types::DeleteSubscriberRequest

    DeleteSubscriberResponse.struct_class = Types::DeleteSubscriberResponse

    DescribeEventBusRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    DescribeEventBusRequest.struct_class = Types::DescribeEventBusRequest

    DescribeEventBusResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    DescribeEventBusResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "Name"))
    DescribeEventBusResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeEventBusResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    DescribeEventBusResponse.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfigurationOutput, location_name: "StorageConfiguration"))
    DescribeEventBusResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEventBusResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeEventBusResponse.add_member(:state, Shapes::ShapeRef.new(shape: BusState, location_name: "State"))
    DescribeEventBusResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    DescribeEventBusResponse.struct_class = Types::DescribeEventBusResponse

    DescribeEventSourceRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, required: true, location_name: "EventSourceArn"))
    DescribeEventSourceRequest.struct_class = Types::DescribeEventSourceRequest

    DescribeEventSourceResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, location_name: "EventSourceArn"))
    DescribeEventSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "Name"))
    DescribeEventSourceResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    DescribeEventSourceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: EventSourceConfiguration, location_name: "Configuration"))
    DescribeEventSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeEventSourceResponse.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    DescribeEventSourceResponse.add_member(:revoked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Revoked"))
    DescribeEventSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeEventSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeEventSourceResponse.struct_class = Types::DescribeEventSourceResponse

    DescribeSubscriberRequest.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, required: true, location_name: "SubscriberArn"))
    DescribeSubscriberRequest.struct_class = Types::DescribeSubscriberRequest

    DescribeSubscriberResponse.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, location_name: "SubscriberArn"))
    DescribeSubscriberResponse.add_member(:name, Shapes::ShapeRef.new(shape: SubscriberName, location_name: "Name"))
    DescribeSubscriberResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    DescribeSubscriberResponse.add_member(:invoke_configuration, Shapes::ShapeRef.new(shape: InvokeConfiguration, location_name: "InvokeConfiguration"))
    DescribeSubscriberResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeSubscriberResponse.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    DescribeSubscriberResponse.add_member(:type, Shapes::ShapeRef.new(shape: OrderingType, location_name: "Type"))
    DescribeSubscriberResponse.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, location_name: "StartingPosition"))
    DescribeSubscriberResponse.add_member(:point_in_time_configuration, Shapes::ShapeRef.new(shape: PointInTimeConfiguration, location_name: "PointInTimeConfiguration"))
    DescribeSubscriberResponse.add_member(:batch_configuration, Shapes::ShapeRef.new(shape: BatchConfiguration, location_name: "BatchConfiguration"))
    DescribeSubscriberResponse.add_member(:transformer, Shapes::ShapeRef.new(shape: Transformer, location_name: "Transformer"))
    DescribeSubscriberResponse.add_member(:retry_policy, Shapes::ShapeRef.new(shape: RetryPolicy, location_name: "RetryPolicy"))
    DescribeSubscriberResponse.add_member(:on_failure_configuration, Shapes::ShapeRef.new(shape: OnFailureConfiguration, location_name: "OnFailureConfiguration"))
    DescribeSubscriberResponse.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    DescribeSubscriberResponse.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    DescribeSubscriberResponse.add_member(:revoked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Revoked"))
    DescribeSubscriberResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeSubscriberResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    DescribeSubscriberResponse.struct_class = Types::DescribeSubscriberResponse

    EncryptionConfiguration.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EventBusSummary.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "Name"))
    EventBusSummary.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    EventBusSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EventBusSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EventBusSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    EventBusSummary.add_member(:state, Shapes::ShapeRef.new(shape: BusState, location_name: "State"))
    EventBusSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    EventBusSummary.add_member(:event_bus_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "EventBusAccountId"))
    EventBusSummary.struct_class = Types::EventBusSummary

    EventBusSummaryList.member = Shapes::ShapeRef.new(shape: EventBusSummary)

    EventBusV2MetadataMap.key = Shapes::ShapeRef.new(shape: String)
    EventBusV2MetadataMap.value = Shapes::ShapeRef.new(shape: String)

    EventBusV2Parameters.add_member(:metadata, Shapes::ShapeRef.new(shape: EventBusV2MetadataMap, location_name: "Metadata"))
    EventBusV2Parameters.add_member(:system_metadata, Shapes::ShapeRef.new(shape: EventBusV2SystemMetadata, location_name: "SystemMetadata"))
    EventBusV2Parameters.add_member(:deduplication_configuration, Shapes::ShapeRef.new(shape: DeduplicationConfiguration, location_name: "DeduplicationConfiguration"))
    EventBusV2Parameters.struct_class = Types::EventBusV2Parameters

    EventBusV2SystemMetadata.add_member(:event_group_id, Shapes::ShapeRef.new(shape: String, location_name: "EventGroupId"))
    EventBusV2SystemMetadata.add_member(:deduplication_id, Shapes::ShapeRef.new(shape: String, location_name: "DeduplicationId"))
    EventBusV2SystemMetadata.struct_class = Types::EventBusV2SystemMetadata

    EventMetadataMap.key = Shapes::ShapeRef.new(shape: EventMetadataKey)
    EventMetadataMap.value = Shapes::ShapeRef.new(shape: EventMetadataValue)

    EventSourceConfiguration.add_member(:aws_service_events_configuration, Shapes::ShapeRef.new(shape: AwsServiceEventsSourceConfiguration, location_name: "AwsServiceEventsConfiguration"))
    EventSourceConfiguration.add_member(:partner_events_configuration, Shapes::ShapeRef.new(shape: PartnerEventsSourceConfiguration, location_name: "PartnerEventsConfiguration"))
    EventSourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EventSourceConfiguration.add_member_subclass(:aws_service_events_configuration, Types::EventSourceConfiguration::AwsServiceEventsConfiguration)
    EventSourceConfiguration.add_member_subclass(:partner_events_configuration, Types::EventSourceConfiguration::PartnerEventsConfiguration)
    EventSourceConfiguration.add_member_subclass(:unknown, Types::EventSourceConfiguration::Unknown)
    EventSourceConfiguration.struct_class = Types::EventSourceConfiguration

    EventSourceSummary.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, location_name: "EventSourceArn"))
    EventSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "Name"))
    EventSourceSummary.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    EventSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: EventSourceType, location_name: "Type"))
    EventSourceSummary.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    EventSourceSummary.add_member(:revoked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Revoked"))
    EventSourceSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    EventSourceSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    EventSourceSummary.add_member(:event_source_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "EventSourceAccountId"))
    EventSourceSummary.struct_class = Types::EventSourceSummary

    EventSourceSummaryList.member = Shapes::ShapeRef.new(shape: EventSourceSummary)

    Filter.add_member(:pattern, Shapes::ShapeRef.new(shape: EventPattern, required: true, location_name: "Pattern"))
    Filter.add_member(:scope, Shapes::ShapeRef.new(shape: FilterScope, required: true, location_name: "Scope"))
    Filter.struct_class = Types::Filter

    FilterConfiguration.add_member(:language, Shapes::ShapeRef.new(shape: FilterLanguage, location_name: "Language"))
    FilterConfiguration.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    FilterConfiguration.struct_class = Types::FilterConfiguration

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    GetResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "PolicyDocument"))
    GetResourcePolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    GetResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, required: true, location_name: "RevisionId"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    HeaderParametersMap.key = Shapes::ShapeRef.new(shape: HeaderKey)
    HeaderParametersMap.value = Shapes::ShapeRef.new(shape: HeaderValue)

    HttpParameters.add_member(:path_parameter_values, Shapes::ShapeRef.new(shape: PathParameterList, location_name: "PathParameterValues"))
    HttpParameters.add_member(:header_parameters, Shapes::ShapeRef.new(shape: HeaderParametersMap, location_name: "HeaderParameters"))
    HttpParameters.add_member(:query_string_parameters, Shapes::ShapeRef.new(shape: QueryStringParametersMap, location_name: "QueryStringParameters"))
    HttpParameters.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: String, location_name: "InvocationTimeoutSeconds"))
    HttpParameters.struct_class = Types::HttpParameters

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalException.struct_class = Types::InternalException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    InvokeConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    InvokeConfiguration.add_member(:lambda_parameters, Shapes::ShapeRef.new(shape: LambdaParameters, location_name: "LambdaParameters"))
    InvokeConfiguration.add_member(:sqs_parameters, Shapes::ShapeRef.new(shape: SqsParameters, location_name: "SqsParameters"))
    InvokeConfiguration.add_member(:sns_parameters, Shapes::ShapeRef.new(shape: SnsParameters, location_name: "SnsParameters"))
    InvokeConfiguration.add_member(:kinesis_parameters, Shapes::ShapeRef.new(shape: KinesisParameters, location_name: "KinesisParameters"))
    InvokeConfiguration.add_member(:step_functions_parameters, Shapes::ShapeRef.new(shape: StepFunctionsParameters, location_name: "StepFunctionsParameters"))
    InvokeConfiguration.add_member(:http_parameters, Shapes::ShapeRef.new(shape: HttpParameters, location_name: "HttpParameters"))
    InvokeConfiguration.add_member(:universal_target_parameters, Shapes::ShapeRef.new(shape: UniversalTargetParameters, location_name: "UniversalTargetParameters"))
    InvokeConfiguration.add_member(:event_bus_v2_parameters, Shapes::ShapeRef.new(shape: EventBusV2Parameters, location_name: "EventBusV2Parameters"))
    InvokeConfiguration.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetResourceArn, required: true, location_name: "TargetArn"))
    InvokeConfiguration.struct_class = Types::InvokeConfiguration

    JsonataConfiguration.add_member(:expression, Shapes::ShapeRef.new(shape: JsonataConfigurationExpressionString, required: true, location_name: "Expression"))
    JsonataConfiguration.struct_class = Types::JsonataConfiguration

    KinesisParameters.add_member(:partition_key, Shapes::ShapeRef.new(shape: KinesisParametersPartitionKeyString, location_name: "PartitionKey"))
    KinesisParameters.add_member(:explicit_hash_key, Shapes::ShapeRef.new(shape: KinesisParametersExplicitHashKeyString, location_name: "ExplicitHashKey"))
    KinesisParameters.struct_class = Types::KinesisParameters

    LambdaParameters.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, location_name: "InvocationType"))
    LambdaParameters.add_member(:qualifier, Shapes::ShapeRef.new(shape: LambdaParametersQualifierString, location_name: "Qualifier"))
    LambdaParameters.add_member(:durable_execution_name, Shapes::ShapeRef.new(shape: LambdaParametersDurableExecutionNameString, location_name: "DurableExecutionName"))
    LambdaParameters.add_member(:tenant_id, Shapes::ShapeRef.new(shape: LambdaParametersTenantIdString, location_name: "TenantId"))
    LambdaParameters.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: LambdaParametersInvocationTimeoutSecondsString, location_name: "InvocationTimeoutSeconds"))
    LambdaParameters.struct_class = Types::LambdaParameters

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListEventBusesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: EventBusName, location_name: "NamePrefix"))
    ListEventBusesRequest.add_member(:event_bus_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "EventBusAccountId"))
    ListEventBusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventBusesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEventBusesRequest.struct_class = Types::ListEventBusesRequest

    ListEventBusesResponse.add_member(:event_buses, Shapes::ShapeRef.new(shape: EventBusSummaryList, location_name: "EventBuses"))
    ListEventBusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventBusesResponse.struct_class = Types::ListEventBusesResponse

    ListEventSourcesRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    ListEventSourcesRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "NamePrefix"))
    ListEventSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEventSourcesRequest.struct_class = Types::ListEventSourcesRequest

    ListEventSourcesResponse.add_member(:event_sources, Shapes::ShapeRef.new(shape: EventSourceSummaryList, location_name: "EventSources"))
    ListEventSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventSourcesResponse.struct_class = Types::ListEventSourcesResponse

    ListResourcePoliciesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    ListResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourcePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourcePoliciesRequest.struct_class = Types::ListResourcePoliciesRequest

    ListResourcePoliciesResponse.add_member(:policy_summaries, Shapes::ShapeRef.new(shape: ResourcePolicySummaryList, location_name: "PolicySummaries"))
    ListResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourcePoliciesResponse.struct_class = Types::ListResourcePoliciesResponse

    ListSubscribersRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    ListSubscribersRequest.add_member(:name_prefix, Shapes::ShapeRef.new(shape: SubscriberName, location_name: "NamePrefix"))
    ListSubscribersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSubscribersRequest.struct_class = Types::ListSubscribersRequest

    ListSubscribersResponse.add_member(:subscribers, Shapes::ShapeRef.new(shape: SubscriberSummaryList, location_name: "Subscribers"))
    ListSubscribersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSubscribersResponse.struct_class = Types::ListSubscribersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "Level"))
    LogConfiguration.add_member(:include_payload, Shapes::ShapeRef.new(shape: IncludePayload, location_name: "IncludePayload"))
    LogConfiguration.struct_class = Types::LogConfiguration

    OnFailureConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: DeadLetterQueueArn, location_name: "Arn"))
    OnFailureConfiguration.struct_class = Types::OnFailureConfiguration

    PartnerEventsSourceConfiguration.add_member(:partner_event_source_arn, Shapes::ShapeRef.new(shape: PartnerEventSourceArn, required: true, location_name: "PartnerEventSourceArn"))
    PartnerEventsSourceConfiguration.add_member(:pattern, Shapes::ShapeRef.new(shape: PartnerEventsSourceConfigurationPatternString, location_name: "Pattern"))
    PartnerEventsSourceConfiguration.add_member(:partner_bus_kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "PartnerBusKmsKeyIdentifier"))
    PartnerEventsSourceConfiguration.add_member(:on_failure_configuration, Shapes::ShapeRef.new(shape: OnFailureConfiguration, location_name: "OnFailureConfiguration"))
    PartnerEventsSourceConfiguration.struct_class = Types::PartnerEventsSourceConfiguration

    PathParameterList.member = Shapes::ShapeRef.new(shape: PathParameter)

    PointInTimeConfiguration.add_member(:point_type, Shapes::ShapeRef.new(shape: PointType, required: true, location_name: "PointType"))
    PointInTimeConfiguration.add_member(:starting_point, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartingPoint"))
    PointInTimeConfiguration.add_member(:end_point, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndPoint"))
    PointInTimeConfiguration.struct_class = Types::PointInTimeConfiguration

    PolicyLengthExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PolicyLengthExceededException.struct_class = Types::PolicyLengthExceededException

    PublicPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PublicPolicyException.struct_class = Types::PublicPolicyException

    PutEventsRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    PutEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsRequestEntryList, required: true, location_name: "Entries"))
    PutEventsRequest.add_member(:deduplication_configuration, Shapes::ShapeRef.new(shape: DeduplicationConfiguration, location_name: "DeduplicationConfiguration"))
    PutEventsRequest.struct_class = Types::PutEventsRequest

    PutEventsRequestEntry.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    PutEventsRequestEntry.add_member(:detail_type, Shapes::ShapeRef.new(shape: DetailType, required: true, location_name: "DetailType"))
    PutEventsRequestEntry.add_member(:detail, Shapes::ShapeRef.new(shape: EventDetail, location_name: "Detail"))
    PutEventsRequestEntry.add_member(:resources, Shapes::ShapeRef.new(shape: PutEventsResourceList, location_name: "Resources"))
    PutEventsRequestEntry.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Time"))
    PutEventsRequestEntry.add_member(:system_metadata, Shapes::ShapeRef.new(shape: PutEventsSystemMetadata, location_name: "SystemMetadata"))
    PutEventsRequestEntry.struct_class = Types::PutEventsRequestEntry

    PutEventsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutEventsRequestEntry)

    PutEventsResourceList.member = Shapes::ShapeRef.new(shape: EventResource)

    PutEventsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutEventsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: PutEventsResultEntryList, location_name: "Entries"))
    PutEventsResponse.struct_class = Types::PutEventsResponse

    PutEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    PutEventsResultEntry.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    PutEventsResultEntry.add_member(:success_code, Shapes::ShapeRef.new(shape: SuccessCode, location_name: "SuccessCode"))
    PutEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutEventsResultEntry.struct_class = Types::PutEventsResultEntry

    PutEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutEventsResultEntry)

    PutEventsSystemMetadata.add_member(:event_group_id, Shapes::ShapeRef.new(shape: EventGroupId, location_name: "EventGroupId"))
    PutEventsSystemMetadata.add_member(:deduplication_id, Shapes::ShapeRef.new(shape: EventDeduplicationId, location_name: "DeduplicationId"))
    PutEventsSystemMetadata.struct_class = Types::PutEventsSystemMetadata

    PutRawEventsRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    PutRawEventsRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutRawEventsRequestEntryList, required: true, location_name: "Entries"))
    PutRawEventsRequest.add_member(:schema_registry_configuration, Shapes::ShapeRef.new(shape: SchemaRegistryConfiguration, location_name: "SchemaRegistryConfiguration"))
    PutRawEventsRequest.add_member(:deduplication_configuration, Shapes::ShapeRef.new(shape: DeduplicationConfiguration, location_name: "DeduplicationConfiguration"))
    PutRawEventsRequest.struct_class = Types::PutRawEventsRequest

    PutRawEventsRequestEntry.add_member(:data, Shapes::ShapeRef.new(shape: EventData, required: true, location_name: "Data"))
    PutRawEventsRequestEntry.add_member(:metadata, Shapes::ShapeRef.new(shape: EventMetadataMap, location_name: "Metadata"))
    PutRawEventsRequestEntry.add_member(:system_metadata, Shapes::ShapeRef.new(shape: PutRawEventsSystemMetadata, required: true, location_name: "SystemMetadata"))
    PutRawEventsRequestEntry.struct_class = Types::PutRawEventsRequestEntry

    PutRawEventsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutRawEventsRequestEntry)

    PutRawEventsResponse.add_member(:failed_entry_count, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedEntryCount"))
    PutRawEventsResponse.add_member(:entries, Shapes::ShapeRef.new(shape: PutRawEventsResultEntryList, location_name: "Entries"))
    PutRawEventsResponse.struct_class = Types::PutRawEventsResponse

    PutRawEventsResultEntry.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    PutRawEventsResultEntry.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    PutRawEventsResultEntry.add_member(:success_code, Shapes::ShapeRef.new(shape: SuccessCode, location_name: "SuccessCode"))
    PutRawEventsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutRawEventsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutRawEventsResultEntry.struct_class = Types::PutRawEventsResultEntry

    PutRawEventsResultEntryList.member = Shapes::ShapeRef.new(shape: PutRawEventsResultEntry)

    PutRawEventsSystemMetadata.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "ContentType"))
    PutRawEventsSystemMetadata.add_member(:deduplication_id, Shapes::ShapeRef.new(shape: EventDeduplicationId, location_name: "DeduplicationId"))
    PutRawEventsSystemMetadata.add_member(:event_group_id, Shapes::ShapeRef.new(shape: EventGroupId, location_name: "EventGroupId"))
    PutRawEventsSystemMetadata.struct_class = Types::PutRawEventsSystemMetadata

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    PutResourcePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "PolicyDocument"))
    PutResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "PolicyName"))
    PutResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "ExpectedRevisionId"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    PutResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    QueryStringParametersMap.key = Shapes::ShapeRef.new(shape: QueryStringKey)
    QueryStringParametersMap.value = Shapes::ShapeRef.new(shape: QueryStringValue)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicySummary.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    ResourcePolicySummary.add_member(:revision_id, Shapes::ShapeRef.new(shape: PolicyRevisionId, required: true, location_name: "RevisionId"))
    ResourcePolicySummary.struct_class = Types::ResourcePolicySummary

    ResourcePolicySummaryList.member = Shapes::ShapeRef.new(shape: ResourcePolicySummary)

    RetryPolicy.add_member(:max_retry_attempts, Shapes::ShapeRef.new(shape: RetryPolicyMaxRetryAttemptsInteger, location_name: "MaxRetryAttempts"))
    RetryPolicy.add_member(:max_event_age_in_seconds, Shapes::ShapeRef.new(shape: RetryPolicyMaxEventAgeInSecondsInteger, location_name: "MaxEventAgeInSeconds"))
    RetryPolicy.add_member(:retry_strategy, Shapes::ShapeRef.new(shape: RetryStrategy, location_name: "RetryStrategy"))
    RetryPolicy.struct_class = Types::RetryPolicy

    RevokeResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RevocableResourceArn, required: true, location_name: "Arn"))
    RevokeResourceRequest.struct_class = Types::RevokeResourceRequest

    RevokeResourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RevocableResourceArn, location_name: "Arn"))
    RevokeResourceResponse.struct_class = Types::RevokeResourceResponse

    SchemaRegistryConfiguration.add_member(:registry_uri, Shapes::ShapeRef.new(shape: SchemaRegistryUri, required: true, location_name: "RegistryUri"))
    SchemaRegistryConfiguration.add_member(:confluent_public_registry_configuration, Shapes::ShapeRef.new(shape: ConfluentPublicRegistryConfiguration, location_name: "ConfluentPublicRegistryConfiguration"))
    SchemaRegistryConfiguration.struct_class = Types::SchemaRegistryConfiguration

    SchemaRegistryUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SchemaRegistryUnavailableException.struct_class = Types::SchemaRegistryUnavailableException

    SnsMessageAttributeMap.key = Shapes::ShapeRef.new(shape: MessageAttributeName)
    SnsMessageAttributeMap.value = Shapes::ShapeRef.new(shape: SnsMessageAttributeValue)

    SnsMessageAttributeValue.add_member(:data_type, Shapes::ShapeRef.new(shape: SnsMessageAttributeValueDataTypeString, location_name: "DataType"))
    SnsMessageAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    SnsMessageAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: String, location_name: "BinaryValue"))
    SnsMessageAttributeValue.struct_class = Types::SnsMessageAttributeValue

    SnsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: SnsParametersMessageGroupIdString, location_name: "MessageGroupId"))
    SnsParameters.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: SnsParametersMessageDeduplicationIdString, location_name: "MessageDeduplicationId"))
    SnsParameters.add_member(:subject, Shapes::ShapeRef.new(shape: SnsParametersSubjectString, location_name: "Subject"))
    SnsParameters.add_member(:message_structure, Shapes::ShapeRef.new(shape: SnsParametersMessageStructureString, location_name: "MessageStructure"))
    SnsParameters.add_member(:message_attributes, Shapes::ShapeRef.new(shape: SnsMessageAttributeMap, location_name: "MessageAttributes"))
    SnsParameters.struct_class = Types::SnsParameters

    SqsMessageAttributeMap.key = Shapes::ShapeRef.new(shape: MessageAttributeName)
    SqsMessageAttributeMap.value = Shapes::ShapeRef.new(shape: SqsMessageAttributeValue)

    SqsMessageAttributeValue.add_member(:data_type, Shapes::ShapeRef.new(shape: SqsMessageAttributeValueDataTypeString, location_name: "DataType"))
    SqsMessageAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    SqsMessageAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: String, location_name: "BinaryValue"))
    SqsMessageAttributeValue.struct_class = Types::SqsMessageAttributeValue

    SqsParameters.add_member(:message_group_id, Shapes::ShapeRef.new(shape: SqsParametersMessageGroupIdString, location_name: "MessageGroupId"))
    SqsParameters.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: SqsParametersMessageDeduplicationIdString, location_name: "MessageDeduplicationId"))
    SqsParameters.add_member(:delay_seconds, Shapes::ShapeRef.new(shape: SqsParametersDelaySecondsString, location_name: "DelaySeconds"))
    SqsParameters.add_member(:message_attributes, Shapes::ShapeRef.new(shape: SqsMessageAttributeMap, location_name: "MessageAttributes"))
    SqsParameters.add_member(:message_system_attributes, Shapes::ShapeRef.new(shape: SqsMessageAttributeMap, location_name: "MessageSystemAttributes"))
    SqsParameters.struct_class = Types::SqsParameters

    StepFunctionsParameters.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, location_name: "InvocationType"))
    StepFunctionsParameters.add_member(:name, Shapes::ShapeRef.new(shape: StepFunctionsParametersNameString, location_name: "Name"))
    StepFunctionsParameters.add_member(:trace_header, Shapes::ShapeRef.new(shape: StepFunctionsParametersTraceHeaderString, location_name: "TraceHeader"))
    StepFunctionsParameters.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: StepFunctionsParametersInvocationTimeoutSecondsString, location_name: "InvocationTimeoutSeconds"))
    StepFunctionsParameters.struct_class = Types::StepFunctionsParameters

    StorageConfiguration.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "RetentionPeriodInDays"))
    StorageConfiguration.struct_class = Types::StorageConfiguration

    StorageConfigurationOutput.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "RetentionPeriodInDays"))
    StorageConfigurationOutput.add_member(:retention_window_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RetentionWindowStartTime"))
    StorageConfigurationOutput.struct_class = Types::StorageConfigurationOutput

    SubscriberSummary.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, location_name: "SubscriberArn"))
    SubscriberSummary.add_member(:name, Shapes::ShapeRef.new(shape: SubscriberName, location_name: "Name"))
    SubscriberSummary.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    SubscriberSummary.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetResourceArn, location_name: "TargetArn"))
    SubscriberSummary.add_member(:type, Shapes::ShapeRef.new(shape: OrderingType, location_name: "Type"))
    SubscriberSummary.add_member(:revoked, Shapes::ShapeRef.new(shape: Boolean, location_name: "Revoked"))
    SubscriberSummary.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    SubscriberSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    SubscriberSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    SubscriberSummary.add_member(:subscriber_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "SubscriberAccountId"))
    SubscriberSummary.struct_class = Types::SubscriberSummary

    SubscriberSummaryList.member = Shapes::ShapeRef.new(shape: SubscriberSummary)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagResourceRequestTagsMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceRequestTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequestTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Transformer.add_member(:type, Shapes::ShapeRef.new(shape: TransformerType, location_name: "Type"))
    Transformer.add_member(:jsonata_configuration, Shapes::ShapeRef.new(shape: JsonataConfiguration, location_name: "JsonataConfiguration"))
    Transformer.struct_class = Types::Transformer

    UniversalTargetParameters.add_member(:input, Shapes::ShapeRef.new(shape: UniversalTargetInput, required: true, location_name: "Input"))
    UniversalTargetParameters.add_member(:invocation_timeout_seconds, Shapes::ShapeRef.new(shape: String, location_name: "InvocationTimeoutSeconds"))
    UniversalTargetParameters.struct_class = Types::UniversalTargetParameters

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: UntagResourceRequestTagKeysList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceRequestTagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEventBusRequest.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, required: true, location_name: "EventBusArn", metadata: {"contextParam" => {"name" => "EventBusArn"}}))
    UpdateEventBusRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEventBusRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateEventBusRequest.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: "StorageConfiguration"))
    UpdateEventBusRequest.struct_class = Types::UpdateEventBusRequest

    UpdateEventBusResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    UpdateEventBusResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventBusName, location_name: "Name"))
    UpdateEventBusResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEventBusResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    UpdateEventBusResponse.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfigurationOutput, location_name: "StorageConfiguration"))
    UpdateEventBusResponse.add_member(:state, Shapes::ShapeRef.new(shape: BusState, location_name: "State"))
    UpdateEventBusResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    UpdateEventBusResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdateEventBusResponse.struct_class = Types::UpdateEventBusResponse

    UpdateEventSourceRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, required: true, location_name: "EventSourceArn"))
    UpdateEventSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: EventSourceConfiguration, location_name: "Configuration"))
    UpdateEventSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEventSourceRequest.struct_class = Types::UpdateEventSourceRequest

    UpdateEventSourceResponse.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: EventSourceArn, location_name: "EventSourceArn"))
    UpdateEventSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: EventSourceName, location_name: "Name"))
    UpdateEventSourceResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    UpdateEventSourceResponse.add_member(:state, Shapes::ShapeRef.new(shape: EventSourceState, location_name: "State"))
    UpdateEventSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdateEventSourceResponse.struct_class = Types::UpdateEventSourceResponse

    UpdateInvokeConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    UpdateInvokeConfiguration.add_member(:lambda_parameters, Shapes::ShapeRef.new(shape: LambdaParameters, location_name: "LambdaParameters"))
    UpdateInvokeConfiguration.add_member(:sqs_parameters, Shapes::ShapeRef.new(shape: SqsParameters, location_name: "SqsParameters"))
    UpdateInvokeConfiguration.add_member(:sns_parameters, Shapes::ShapeRef.new(shape: SnsParameters, location_name: "SnsParameters"))
    UpdateInvokeConfiguration.add_member(:kinesis_parameters, Shapes::ShapeRef.new(shape: KinesisParameters, location_name: "KinesisParameters"))
    UpdateInvokeConfiguration.add_member(:step_functions_parameters, Shapes::ShapeRef.new(shape: StepFunctionsParameters, location_name: "StepFunctionsParameters"))
    UpdateInvokeConfiguration.add_member(:http_parameters, Shapes::ShapeRef.new(shape: HttpParameters, location_name: "HttpParameters"))
    UpdateInvokeConfiguration.add_member(:universal_target_parameters, Shapes::ShapeRef.new(shape: UniversalTargetParameters, location_name: "UniversalTargetParameters"))
    UpdateInvokeConfiguration.add_member(:event_bus_v2_parameters, Shapes::ShapeRef.new(shape: EventBusV2Parameters, location_name: "EventBusV2Parameters"))
    UpdateInvokeConfiguration.struct_class = Types::UpdateInvokeConfiguration

    UpdateSubscriberRequest.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, required: true, location_name: "SubscriberArn"))
    UpdateSubscriberRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateSubscriberRequest.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    UpdateSubscriberRequest.add_member(:resume_position, Shapes::ShapeRef.new(shape: ResumePosition, location_name: "ResumePosition"))
    UpdateSubscriberRequest.add_member(:invoke_configuration, Shapes::ShapeRef.new(shape: UpdateInvokeConfiguration, location_name: "InvokeConfiguration"))
    UpdateSubscriberRequest.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: FilterConfiguration, location_name: "FilterConfiguration"))
    UpdateSubscriberRequest.add_member(:batch_configuration, Shapes::ShapeRef.new(shape: BatchConfiguration, location_name: "BatchConfiguration"))
    UpdateSubscriberRequest.add_member(:transformer, Shapes::ShapeRef.new(shape: Transformer, location_name: "Transformer"))
    UpdateSubscriberRequest.add_member(:retry_policy, Shapes::ShapeRef.new(shape: RetryPolicy, location_name: "RetryPolicy"))
    UpdateSubscriberRequest.add_member(:on_failure_configuration, Shapes::ShapeRef.new(shape: OnFailureConfiguration, location_name: "OnFailureConfiguration"))
    UpdateSubscriberRequest.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    UpdateSubscriberRequest.struct_class = Types::UpdateSubscriberRequest

    UpdateSubscriberResponse.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: SubscriberArn, location_name: "SubscriberArn"))
    UpdateSubscriberResponse.add_member(:name, Shapes::ShapeRef.new(shape: SubscriberName, location_name: "Name"))
    UpdateSubscriberResponse.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: EventBusArn, location_name: "EventBusArn"))
    UpdateSubscriberResponse.add_member(:type, Shapes::ShapeRef.new(shape: OrderingType, location_name: "Type"))
    UpdateSubscriberResponse.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, location_name: "StartingPosition"))
    UpdateSubscriberResponse.add_member(:point_in_time_configuration, Shapes::ShapeRef.new(shape: PointInTimeConfiguration, location_name: "PointInTimeConfiguration"))
    UpdateSubscriberResponse.add_member(:state, Shapes::ShapeRef.new(shape: SubscriberState, location_name: "State"))
    UpdateSubscriberResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    UpdateSubscriberResponse.struct_class = Types::UpdateSubscriberResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-05-15"

      api.metadata = {
        "apiVersion" => "2025-05-15",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "eventsv2",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor"],
        "serviceFullName" => "Amazon EventBridgeV2",
        "serviceId" => "EventBridgeV2",
        "signatureVersion" => "v4",
        "signingName" => "events",
        "targetPrefix" => "AWSEventsV2",
        "uid" => "eventbridgev2-2025-05-15",
      }

      api.add_operation(:create_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:create_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:create_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:delete_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:describe_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_event_buses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventBuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventBusesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventBusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEventSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscribers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscribers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSubscribersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscribersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:put_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:put_raw_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRawEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRawEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRawEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: SchemaRegistryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: PublicPolicyException)
      end)

      api.add_operation(:revoke_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:update_event_bus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventBus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventBusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventBusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:update_event_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:update_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)
    end

  end
end
