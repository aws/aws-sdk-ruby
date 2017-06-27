# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoT
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptCertificateTransferRequest = Shapes::StructureShape.new(name: 'AcceptCertificateTransferRequest')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AllowAutoRegistration = Shapes::BooleanShape.new(name: 'AllowAutoRegistration')
    AscendingOrder = Shapes::BooleanShape.new(name: 'AscendingOrder')
    AttachPrincipalPolicyRequest = Shapes::StructureShape.new(name: 'AttachPrincipalPolicyRequest')
    AttachThingPrincipalRequest = Shapes::StructureShape.new(name: 'AttachThingPrincipalRequest')
    AttachThingPrincipalResponse = Shapes::StructureShape.new(name: 'AttachThingPrincipalResponse')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributePayload = Shapes::StructureShape.new(name: 'AttributePayload')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AutoRegistrationStatus = Shapes::StringShape.new(name: 'AutoRegistrationStatus')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsArn = Shapes::StringShape.new(name: 'AwsArn')
    AwsIotSqlVersion = Shapes::StringShape.new(name: 'AwsIotSqlVersion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CACertificate = Shapes::StructureShape.new(name: 'CACertificate')
    CACertificateDescription = Shapes::StructureShape.new(name: 'CACertificateDescription')
    CACertificateStatus = Shapes::StringShape.new(name: 'CACertificateStatus')
    CACertificates = Shapes::ListShape.new(name: 'CACertificates')
    CancelCertificateTransferRequest = Shapes::StructureShape.new(name: 'CancelCertificateTransferRequest')
    CannedAccessControlList = Shapes::StringShape.new(name: 'CannedAccessControlList')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateConflictException = Shapes::StructureShape.new(name: 'CertificateConflictException')
    CertificateDescription = Shapes::StructureShape.new(name: 'CertificateDescription')
    CertificateId = Shapes::StringShape.new(name: 'CertificateId')
    CertificatePem = Shapes::StringShape.new(name: 'CertificatePem')
    CertificateSigningRequest = Shapes::StringShape.new(name: 'CertificateSigningRequest')
    CertificateStateException = Shapes::StructureShape.new(name: 'CertificateStateException')
    CertificateStatus = Shapes::StringShape.new(name: 'CertificateStatus')
    CertificateValidationException = Shapes::StructureShape.new(name: 'CertificateValidationException')
    Certificates = Shapes::ListShape.new(name: 'Certificates')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    CloudwatchAlarmAction = Shapes::StructureShape.new(name: 'CloudwatchAlarmAction')
    CloudwatchMetricAction = Shapes::StructureShape.new(name: 'CloudwatchMetricAction')
    CreateCertificateFromCsrRequest = Shapes::StructureShape.new(name: 'CreateCertificateFromCsrRequest')
    CreateCertificateFromCsrResponse = Shapes::StructureShape.new(name: 'CreateCertificateFromCsrResponse')
    CreateKeysAndCertificateRequest = Shapes::StructureShape.new(name: 'CreateKeysAndCertificateRequest')
    CreateKeysAndCertificateResponse = Shapes::StructureShape.new(name: 'CreateKeysAndCertificateResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreatePolicyVersionRequest = Shapes::StructureShape.new(name: 'CreatePolicyVersionRequest')
    CreatePolicyVersionResponse = Shapes::StructureShape.new(name: 'CreatePolicyVersionResponse')
    CreateThingRequest = Shapes::StructureShape.new(name: 'CreateThingRequest')
    CreateThingResponse = Shapes::StructureShape.new(name: 'CreateThingResponse')
    CreateThingTypeRequest = Shapes::StructureShape.new(name: 'CreateThingTypeRequest')
    CreateThingTypeResponse = Shapes::StructureShape.new(name: 'CreateThingTypeResponse')
    CreateTopicRuleRequest = Shapes::StructureShape.new(name: 'CreateTopicRuleRequest')
    CreatedAtDate = Shapes::TimestampShape.new(name: 'CreatedAtDate')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    DateType = Shapes::TimestampShape.new(name: 'DateType')
    DeleteCACertificateRequest = Shapes::StructureShape.new(name: 'DeleteCACertificateRequest')
    DeleteCACertificateResponse = Shapes::StructureShape.new(name: 'DeleteCACertificateResponse')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DeleteConflictException = Shapes::StructureShape.new(name: 'DeleteConflictException')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyVersionRequest = Shapes::StructureShape.new(name: 'DeletePolicyVersionRequest')
    DeleteRegistrationCodeRequest = Shapes::StructureShape.new(name: 'DeleteRegistrationCodeRequest')
    DeleteRegistrationCodeResponse = Shapes::StructureShape.new(name: 'DeleteRegistrationCodeResponse')
    DeleteThingRequest = Shapes::StructureShape.new(name: 'DeleteThingRequest')
    DeleteThingResponse = Shapes::StructureShape.new(name: 'DeleteThingResponse')
    DeleteThingTypeRequest = Shapes::StructureShape.new(name: 'DeleteThingTypeRequest')
    DeleteThingTypeResponse = Shapes::StructureShape.new(name: 'DeleteThingTypeResponse')
    DeleteTopicRuleRequest = Shapes::StructureShape.new(name: 'DeleteTopicRuleRequest')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    DeprecateThingTypeRequest = Shapes::StructureShape.new(name: 'DeprecateThingTypeRequest')
    DeprecateThingTypeResponse = Shapes::StructureShape.new(name: 'DeprecateThingTypeResponse')
    DeprecationDate = Shapes::TimestampShape.new(name: 'DeprecationDate')
    DescribeCACertificateRequest = Shapes::StructureShape.new(name: 'DescribeCACertificateRequest')
    DescribeCACertificateResponse = Shapes::StructureShape.new(name: 'DescribeCACertificateResponse')
    DescribeCertificateRequest = Shapes::StructureShape.new(name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = Shapes::StructureShape.new(name: 'DescribeCertificateResponse')
    DescribeEndpointRequest = Shapes::StructureShape.new(name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Shapes::StructureShape.new(name: 'DescribeEndpointResponse')
    DescribeThingRequest = Shapes::StructureShape.new(name: 'DescribeThingRequest')
    DescribeThingResponse = Shapes::StructureShape.new(name: 'DescribeThingResponse')
    DescribeThingTypeRequest = Shapes::StructureShape.new(name: 'DescribeThingTypeRequest')
    DescribeThingTypeResponse = Shapes::StructureShape.new(name: 'DescribeThingTypeResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetachPrincipalPolicyRequest = Shapes::StructureShape.new(name: 'DetachPrincipalPolicyRequest')
    DetachThingPrincipalRequest = Shapes::StructureShape.new(name: 'DetachThingPrincipalRequest')
    DetachThingPrincipalResponse = Shapes::StructureShape.new(name: 'DetachThingPrincipalResponse')
    DisableTopicRuleRequest = Shapes::StructureShape.new(name: 'DisableTopicRuleRequest')
    DynamoDBAction = Shapes::StructureShape.new(name: 'DynamoDBAction')
    DynamoDBv2Action = Shapes::StructureShape.new(name: 'DynamoDBv2Action')
    DynamoKeyType = Shapes::StringShape.new(name: 'DynamoKeyType')
    DynamoOperation = Shapes::StringShape.new(name: 'DynamoOperation')
    ElasticsearchAction = Shapes::StructureShape.new(name: 'ElasticsearchAction')
    ElasticsearchEndpoint = Shapes::StringShape.new(name: 'ElasticsearchEndpoint')
    ElasticsearchId = Shapes::StringShape.new(name: 'ElasticsearchId')
    ElasticsearchIndex = Shapes::StringShape.new(name: 'ElasticsearchIndex')
    ElasticsearchType = Shapes::StringShape.new(name: 'ElasticsearchType')
    EnableTopicRuleRequest = Shapes::StructureShape.new(name: 'EnableTopicRuleRequest')
    EndpointAddress = Shapes::StringShape.new(name: 'EndpointAddress')
    FirehoseAction = Shapes::StructureShape.new(name: 'FirehoseAction')
    FirehoseSeparator = Shapes::StringShape.new(name: 'FirehoseSeparator')
    Flag = Shapes::BooleanShape.new(name: 'Flag')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GetLoggingOptionsRequest = Shapes::StructureShape.new(name: 'GetLoggingOptionsRequest')
    GetLoggingOptionsResponse = Shapes::StructureShape.new(name: 'GetLoggingOptionsResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetPolicyVersionRequest = Shapes::StructureShape.new(name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = Shapes::StructureShape.new(name: 'GetPolicyVersionResponse')
    GetRegistrationCodeRequest = Shapes::StructureShape.new(name: 'GetRegistrationCodeRequest')
    GetRegistrationCodeResponse = Shapes::StructureShape.new(name: 'GetRegistrationCodeResponse')
    GetTopicRuleRequest = Shapes::StructureShape.new(name: 'GetTopicRuleRequest')
    GetTopicRuleResponse = Shapes::StructureShape.new(name: 'GetTopicRuleResponse')
    HashKeyField = Shapes::StringShape.new(name: 'HashKeyField')
    HashKeyValue = Shapes::StringShape.new(name: 'HashKeyValue')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IsDefaultVersion = Shapes::BooleanShape.new(name: 'IsDefaultVersion')
    IsDisabled = Shapes::BooleanShape.new(name: 'IsDisabled')
    Key = Shapes::StringShape.new(name: 'Key')
    KeyPair = Shapes::StructureShape.new(name: 'KeyPair')
    KinesisAction = Shapes::StructureShape.new(name: 'KinesisAction')
    LambdaAction = Shapes::StructureShape.new(name: 'LambdaAction')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCACertificatesRequest = Shapes::StructureShape.new(name: 'ListCACertificatesRequest')
    ListCACertificatesResponse = Shapes::StructureShape.new(name: 'ListCACertificatesResponse')
    ListCertificatesByCARequest = Shapes::StructureShape.new(name: 'ListCertificatesByCARequest')
    ListCertificatesByCAResponse = Shapes::StructureShape.new(name: 'ListCertificatesByCAResponse')
    ListCertificatesRequest = Shapes::StructureShape.new(name: 'ListCertificatesRequest')
    ListCertificatesResponse = Shapes::StructureShape.new(name: 'ListCertificatesResponse')
    ListOutgoingCertificatesRequest = Shapes::StructureShape.new(name: 'ListOutgoingCertificatesRequest')
    ListOutgoingCertificatesResponse = Shapes::StructureShape.new(name: 'ListOutgoingCertificatesResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListPolicyPrincipalsRequest = Shapes::StructureShape.new(name: 'ListPolicyPrincipalsRequest')
    ListPolicyPrincipalsResponse = Shapes::StructureShape.new(name: 'ListPolicyPrincipalsResponse')
    ListPolicyVersionsRequest = Shapes::StructureShape.new(name: 'ListPolicyVersionsRequest')
    ListPolicyVersionsResponse = Shapes::StructureShape.new(name: 'ListPolicyVersionsResponse')
    ListPrincipalPoliciesRequest = Shapes::StructureShape.new(name: 'ListPrincipalPoliciesRequest')
    ListPrincipalPoliciesResponse = Shapes::StructureShape.new(name: 'ListPrincipalPoliciesResponse')
    ListPrincipalThingsRequest = Shapes::StructureShape.new(name: 'ListPrincipalThingsRequest')
    ListPrincipalThingsResponse = Shapes::StructureShape.new(name: 'ListPrincipalThingsResponse')
    ListThingPrincipalsRequest = Shapes::StructureShape.new(name: 'ListThingPrincipalsRequest')
    ListThingPrincipalsResponse = Shapes::StructureShape.new(name: 'ListThingPrincipalsResponse')
    ListThingTypesRequest = Shapes::StructureShape.new(name: 'ListThingTypesRequest')
    ListThingTypesResponse = Shapes::StructureShape.new(name: 'ListThingTypesResponse')
    ListThingsRequest = Shapes::StructureShape.new(name: 'ListThingsRequest')
    ListThingsResponse = Shapes::StructureShape.new(name: 'ListThingsResponse')
    ListTopicRulesRequest = Shapes::StructureShape.new(name: 'ListTopicRulesRequest')
    ListTopicRulesResponse = Shapes::StructureShape.new(name: 'ListTopicRulesResponse')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LoggingOptionsPayload = Shapes::StructureShape.new(name: 'LoggingOptionsPayload')
    MalformedPolicyException = Shapes::StructureShape.new(name: 'MalformedPolicyException')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageFormat = Shapes::StringShape.new(name: 'MessageFormat')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricTimestamp = Shapes::StringShape.new(name: 'MetricTimestamp')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OptionalVersion = Shapes::IntegerShape.new(name: 'OptionalVersion')
    OutgoingCertificate = Shapes::StructureShape.new(name: 'OutgoingCertificate')
    OutgoingCertificates = Shapes::ListShape.new(name: 'OutgoingCertificates')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PartitionKey = Shapes::StringShape.new(name: 'PartitionKey')
    PayloadField = Shapes::StringShape.new(name: 'PayloadField')
    Policies = Shapes::ListShape.new(name: 'Policies')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyVersion = Shapes::StructureShape.new(name: 'PolicyVersion')
    PolicyVersionId = Shapes::StringShape.new(name: 'PolicyVersionId')
    PolicyVersions = Shapes::ListShape.new(name: 'PolicyVersions')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PrincipalArn = Shapes::StringShape.new(name: 'PrincipalArn')
    Principals = Shapes::ListShape.new(name: 'Principals')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    PublicKey = Shapes::StringShape.new(name: 'PublicKey')
    PutItemInput = Shapes::StructureShape.new(name: 'PutItemInput')
    QueueUrl = Shapes::StringShape.new(name: 'QueueUrl')
    RangeKeyField = Shapes::StringShape.new(name: 'RangeKeyField')
    RangeKeyValue = Shapes::StringShape.new(name: 'RangeKeyValue')
    RegisterCACertificateRequest = Shapes::StructureShape.new(name: 'RegisterCACertificateRequest')
    RegisterCACertificateResponse = Shapes::StructureShape.new(name: 'RegisterCACertificateResponse')
    RegisterCertificateRequest = Shapes::StructureShape.new(name: 'RegisterCertificateRequest')
    RegisterCertificateResponse = Shapes::StructureShape.new(name: 'RegisterCertificateResponse')
    RegistrationCode = Shapes::StringShape.new(name: 'RegistrationCode')
    RegistrationCodeValidationException = Shapes::StructureShape.new(name: 'RegistrationCodeValidationException')
    RegistryMaxResults = Shapes::IntegerShape.new(name: 'RegistryMaxResults')
    RejectCertificateTransferRequest = Shapes::StructureShape.new(name: 'RejectCertificateTransferRequest')
    RemoveThingType = Shapes::BooleanShape.new(name: 'RemoveThingType')
    ReplaceTopicRuleRequest = Shapes::StructureShape.new(name: 'ReplaceTopicRuleRequest')
    RepublishAction = Shapes::StructureShape.new(name: 'RepublishAction')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    S3Action = Shapes::StructureShape.new(name: 'S3Action')
    SQL = Shapes::StringShape.new(name: 'SQL')
    SalesforceAction = Shapes::StructureShape.new(name: 'SalesforceAction')
    SalesforceEndpoint = Shapes::StringShape.new(name: 'SalesforceEndpoint')
    SalesforceToken = Shapes::StringShape.new(name: 'SalesforceToken')
    SearchableAttributes = Shapes::ListShape.new(name: 'SearchableAttributes')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetAsActive = Shapes::BooleanShape.new(name: 'SetAsActive')
    SetAsActiveFlag = Shapes::BooleanShape.new(name: 'SetAsActiveFlag')
    SetAsDefault = Shapes::BooleanShape.new(name: 'SetAsDefault')
    SetDefaultPolicyVersionRequest = Shapes::StructureShape.new(name: 'SetDefaultPolicyVersionRequest')
    SetLoggingOptionsRequest = Shapes::StructureShape.new(name: 'SetLoggingOptionsRequest')
    SnsAction = Shapes::StructureShape.new(name: 'SnsAction')
    SqlParseException = Shapes::StructureShape.new(name: 'SqlParseException')
    SqsAction = Shapes::StructureShape.new(name: 'SqsAction')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StateValue = Shapes::StringShape.new(name: 'StateValue')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    TableName = Shapes::StringShape.new(name: 'TableName')
    ThingArn = Shapes::StringShape.new(name: 'ThingArn')
    ThingAttribute = Shapes::StructureShape.new(name: 'ThingAttribute')
    ThingAttributeList = Shapes::ListShape.new(name: 'ThingAttributeList')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThingNameList = Shapes::ListShape.new(name: 'ThingNameList')
    ThingTypeArn = Shapes::StringShape.new(name: 'ThingTypeArn')
    ThingTypeDefinition = Shapes::StructureShape.new(name: 'ThingTypeDefinition')
    ThingTypeDescription = Shapes::StringShape.new(name: 'ThingTypeDescription')
    ThingTypeList = Shapes::ListShape.new(name: 'ThingTypeList')
    ThingTypeMetadata = Shapes::StructureShape.new(name: 'ThingTypeMetadata')
    ThingTypeName = Shapes::StringShape.new(name: 'ThingTypeName')
    ThingTypeProperties = Shapes::StructureShape.new(name: 'ThingTypeProperties')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Topic = Shapes::StringShape.new(name: 'Topic')
    TopicPattern = Shapes::StringShape.new(name: 'TopicPattern')
    TopicRule = Shapes::StructureShape.new(name: 'TopicRule')
    TopicRuleList = Shapes::ListShape.new(name: 'TopicRuleList')
    TopicRuleListItem = Shapes::StructureShape.new(name: 'TopicRuleListItem')
    TopicRulePayload = Shapes::StructureShape.new(name: 'TopicRulePayload')
    TransferAlreadyCompletedException = Shapes::StructureShape.new(name: 'TransferAlreadyCompletedException')
    TransferCertificateRequest = Shapes::StructureShape.new(name: 'TransferCertificateRequest')
    TransferCertificateResponse = Shapes::StructureShape.new(name: 'TransferCertificateResponse')
    TransferConflictException = Shapes::StructureShape.new(name: 'TransferConflictException')
    TransferData = Shapes::StructureShape.new(name: 'TransferData')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UndoDeprecate = Shapes::BooleanShape.new(name: 'UndoDeprecate')
    UpdateCACertificateRequest = Shapes::StructureShape.new(name: 'UpdateCACertificateRequest')
    UpdateCertificateRequest = Shapes::StructureShape.new(name: 'UpdateCertificateRequest')
    UpdateThingRequest = Shapes::StructureShape.new(name: 'UpdateThingRequest')
    UpdateThingResponse = Shapes::StructureShape.new(name: 'UpdateThingResponse')
    UseBase64 = Shapes::BooleanShape.new(name: 'UseBase64')
    Version = Shapes::IntegerShape.new(name: 'Version')
    VersionConflictException = Shapes::StructureShape.new(name: 'VersionConflictException')
    VersionsLimitExceededException = Shapes::StructureShape.new(name: 'VersionsLimitExceededException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    resourceArn = Shapes::StringShape.new(name: 'resourceArn')
    resourceId = Shapes::StringShape.new(name: 'resourceId')

    AcceptCertificateTransferRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    AcceptCertificateTransferRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    AcceptCertificateTransferRequest.struct_class = Types::AcceptCertificateTransferRequest

    Action.add_member(:dynamo_db, Shapes::ShapeRef.new(shape: DynamoDBAction, location_name: "dynamoDB"))
    Action.add_member(:dynamo_d_bv_2, Shapes::ShapeRef.new(shape: DynamoDBv2Action, location_name: "dynamoDBv2"))
    Action.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaAction, location_name: "lambda"))
    Action.add_member(:sns, Shapes::ShapeRef.new(shape: SnsAction, location_name: "sns"))
    Action.add_member(:sqs, Shapes::ShapeRef.new(shape: SqsAction, location_name: "sqs"))
    Action.add_member(:kinesis, Shapes::ShapeRef.new(shape: KinesisAction, location_name: "kinesis"))
    Action.add_member(:republish, Shapes::ShapeRef.new(shape: RepublishAction, location_name: "republish"))
    Action.add_member(:s3, Shapes::ShapeRef.new(shape: S3Action, location_name: "s3"))
    Action.add_member(:firehose, Shapes::ShapeRef.new(shape: FirehoseAction, location_name: "firehose"))
    Action.add_member(:cloudwatch_metric, Shapes::ShapeRef.new(shape: CloudwatchMetricAction, location_name: "cloudwatchMetric"))
    Action.add_member(:cloudwatch_alarm, Shapes::ShapeRef.new(shape: CloudwatchAlarmAction, location_name: "cloudwatchAlarm"))
    Action.add_member(:elasticsearch, Shapes::ShapeRef.new(shape: ElasticsearchAction, location_name: "elasticsearch"))
    Action.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceAction, location_name: "salesforce"))
    Action.struct_class = Types::Action

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    AttachPrincipalPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    AttachPrincipalPolicyRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-iot-principal"))
    AttachPrincipalPolicyRequest.struct_class = Types::AttachPrincipalPolicyRequest

    AttachThingPrincipalRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    AttachThingPrincipalRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-principal"))
    AttachThingPrincipalRequest.struct_class = Types::AttachThingPrincipalRequest

    AttachThingPrincipalResponse.struct_class = Types::AttachThingPrincipalResponse

    AttributePayload.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    AttributePayload.add_member(:merge, Shapes::ShapeRef.new(shape: Flag, location_name: "merge"))
    AttributePayload.struct_class = Types::AttributePayload

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    CACertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CACertificate.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CACertificate.add_member(:status, Shapes::ShapeRef.new(shape: CACertificateStatus, location_name: "status"))
    CACertificate.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    CACertificate.struct_class = Types::CACertificate

    CACertificateDescription.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CACertificateDescription.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CACertificateDescription.add_member(:status, Shapes::ShapeRef.new(shape: CACertificateStatus, location_name: "status"))
    CACertificateDescription.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CACertificateDescription.add_member(:owned_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ownedBy"))
    CACertificateDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    CACertificateDescription.add_member(:auto_registration_status, Shapes::ShapeRef.new(shape: AutoRegistrationStatus, location_name: "autoRegistrationStatus"))
    CACertificateDescription.struct_class = Types::CACertificateDescription

    CACertificates.member = Shapes::ShapeRef.new(shape: CACertificate)

    CancelCertificateTransferRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    CancelCertificateTransferRequest.struct_class = Types::CancelCertificateTransferRequest

    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    Certificate.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    Certificate.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "status"))
    Certificate.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    Certificate.struct_class = Types::Certificate

    CertificateDescription.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CertificateDescription.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CertificateDescription.add_member(:ca_certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "caCertificateId"))
    CertificateDescription.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "status"))
    CertificateDescription.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CertificateDescription.add_member(:owned_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ownedBy"))
    CertificateDescription.add_member(:previous_owned_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "previousOwnedBy"))
    CertificateDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    CertificateDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    CertificateDescription.add_member(:transfer_data, Shapes::ShapeRef.new(shape: TransferData, location_name: "transferData"))
    CertificateDescription.struct_class = Types::CertificateDescription

    Certificates.member = Shapes::ShapeRef.new(shape: Certificate)

    CloudwatchAlarmAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    CloudwatchAlarmAction.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "alarmName"))
    CloudwatchAlarmAction.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, required: true, location_name: "stateReason"))
    CloudwatchAlarmAction.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, required: true, location_name: "stateValue"))
    CloudwatchAlarmAction.struct_class = Types::CloudwatchAlarmAction

    CloudwatchMetricAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    CloudwatchMetricAction.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "metricNamespace"))
    CloudwatchMetricAction.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "metricName"))
    CloudwatchMetricAction.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "metricValue"))
    CloudwatchMetricAction.add_member(:metric_unit, Shapes::ShapeRef.new(shape: MetricUnit, required: true, location_name: "metricUnit"))
    CloudwatchMetricAction.add_member(:metric_timestamp, Shapes::ShapeRef.new(shape: MetricTimestamp, location_name: "metricTimestamp"))
    CloudwatchMetricAction.struct_class = Types::CloudwatchMetricAction

    CreateCertificateFromCsrRequest.add_member(:certificate_signing_request, Shapes::ShapeRef.new(shape: CertificateSigningRequest, required: true, location_name: "certificateSigningRequest"))
    CreateCertificateFromCsrRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    CreateCertificateFromCsrRequest.struct_class = Types::CreateCertificateFromCsrRequest

    CreateCertificateFromCsrResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateCertificateFromCsrResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CreateCertificateFromCsrResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CreateCertificateFromCsrResponse.struct_class = Types::CreateCertificateFromCsrResponse

    CreateKeysAndCertificateRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    CreateKeysAndCertificateRequest.struct_class = Types::CreateKeysAndCertificateRequest

    CreateKeysAndCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateKeysAndCertificateResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CreateKeysAndCertificateResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CreateKeysAndCertificateResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    CreateKeysAndCertificateResponse.struct_class = Types::CreateKeysAndCertificateResponse

    CreatePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    CreatePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    CreatePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    CreatePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    CreatePolicyResponse.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "policyVersionId"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

    CreatePolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    CreatePolicyVersionRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    CreatePolicyVersionRequest.add_member(:set_as_default, Shapes::ShapeRef.new(shape: SetAsDefault, location: "querystring", location_name: "setAsDefault"))
    CreatePolicyVersionRequest.struct_class = Types::CreatePolicyVersionRequest

    CreatePolicyVersionResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    CreatePolicyVersionResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    CreatePolicyVersionResponse.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "policyVersionId"))
    CreatePolicyVersionResponse.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "isDefaultVersion"))
    CreatePolicyVersionResponse.struct_class = Types::CreatePolicyVersionResponse

    CreateThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    CreateThingRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    CreateThingRequest.add_member(:attribute_payload, Shapes::ShapeRef.new(shape: AttributePayload, location_name: "attributePayload"))
    CreateThingRequest.struct_class = Types::CreateThingRequest

    CreateThingResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    CreateThingResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    CreateThingResponse.struct_class = Types::CreateThingResponse

    CreateThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    CreateThingTypeRequest.add_member(:thing_type_properties, Shapes::ShapeRef.new(shape: ThingTypeProperties, location_name: "thingTypeProperties"))
    CreateThingTypeRequest.struct_class = Types::CreateThingTypeRequest

    CreateThingTypeResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    CreateThingTypeResponse.add_member(:thing_type_arn, Shapes::ShapeRef.new(shape: ThingTypeArn, location_name: "thingTypeArn"))
    CreateThingTypeResponse.struct_class = Types::CreateThingTypeResponse

    CreateTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    CreateTopicRuleRequest.add_member(:topic_rule_payload, Shapes::ShapeRef.new(shape: TopicRulePayload, required: true, location_name: "topicRulePayload"))
    CreateTopicRuleRequest.struct_class = Types::CreateTopicRuleRequest
    CreateTopicRuleRequest[:payload] = :topic_rule_payload
    CreateTopicRuleRequest[:payload_member] = CreateTopicRuleRequest.member(:topic_rule_payload)

    DeleteCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    DeleteCACertificateRequest.struct_class = Types::DeleteCACertificateRequest

    DeleteCACertificateResponse.struct_class = Types::DeleteCACertificateResponse

    DeleteCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DeletePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DeletePolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    DeletePolicyVersionRequest.struct_class = Types::DeletePolicyVersionRequest

    DeleteRegistrationCodeRequest.struct_class = Types::DeleteRegistrationCodeRequest

    DeleteRegistrationCodeResponse.struct_class = Types::DeleteRegistrationCodeResponse

    DeleteThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DeleteThingRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location: "querystring", location_name: "expectedVersion"))
    DeleteThingRequest.struct_class = Types::DeleteThingRequest

    DeleteThingResponse.struct_class = Types::DeleteThingResponse

    DeleteThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DeleteThingTypeRequest.struct_class = Types::DeleteThingTypeRequest

    DeleteThingTypeResponse.struct_class = Types::DeleteThingTypeResponse

    DeleteTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    DeleteTopicRuleRequest.struct_class = Types::DeleteTopicRuleRequest

    DeprecateThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DeprecateThingTypeRequest.add_member(:undo_deprecate, Shapes::ShapeRef.new(shape: UndoDeprecate, location_name: "undoDeprecate"))
    DeprecateThingTypeRequest.struct_class = Types::DeprecateThingTypeRequest

    DeprecateThingTypeResponse.struct_class = Types::DeprecateThingTypeResponse

    DescribeCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    DescribeCACertificateRequest.struct_class = Types::DescribeCACertificateRequest

    DescribeCACertificateResponse.add_member(:certificate_description, Shapes::ShapeRef.new(shape: CACertificateDescription, location_name: "certificateDescription"))
    DescribeCACertificateResponse.struct_class = Types::DescribeCACertificateResponse

    DescribeCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    DescribeCertificateRequest.struct_class = Types::DescribeCertificateRequest

    DescribeCertificateResponse.add_member(:certificate_description, Shapes::ShapeRef.new(shape: CertificateDescription, location_name: "certificateDescription"))
    DescribeCertificateResponse.struct_class = Types::DescribeCertificateResponse

    DescribeEndpointRequest.struct_class = Types::DescribeEndpointRequest

    DescribeEndpointResponse.add_member(:endpoint_address, Shapes::ShapeRef.new(shape: EndpointAddress, location_name: "endpointAddress"))
    DescribeEndpointResponse.struct_class = Types::DescribeEndpointResponse

    DescribeThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DescribeThingRequest.struct_class = Types::DescribeThingRequest

    DescribeThingResponse.add_member(:default_client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "defaultClientId"))
    DescribeThingResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    DescribeThingResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    DescribeThingResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    DescribeThingResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeThingResponse.struct_class = Types::DescribeThingResponse

    DescribeThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DescribeThingTypeRequest.struct_class = Types::DescribeThingTypeRequest

    DescribeThingTypeResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    DescribeThingTypeResponse.add_member(:thing_type_properties, Shapes::ShapeRef.new(shape: ThingTypeProperties, location_name: "thingTypeProperties"))
    DescribeThingTypeResponse.add_member(:thing_type_metadata, Shapes::ShapeRef.new(shape: ThingTypeMetadata, location_name: "thingTypeMetadata"))
    DescribeThingTypeResponse.struct_class = Types::DescribeThingTypeResponse

    DetachPrincipalPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DetachPrincipalPolicyRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-iot-principal"))
    DetachPrincipalPolicyRequest.struct_class = Types::DetachPrincipalPolicyRequest

    DetachThingPrincipalRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DetachThingPrincipalRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-principal"))
    DetachThingPrincipalRequest.struct_class = Types::DetachThingPrincipalRequest

    DetachThingPrincipalResponse.struct_class = Types::DetachThingPrincipalResponse

    DisableTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    DisableTopicRuleRequest.struct_class = Types::DisableTopicRuleRequest

    DynamoDBAction.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    DynamoDBAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    DynamoDBAction.add_member(:operation, Shapes::ShapeRef.new(shape: DynamoOperation, location_name: "operation"))
    DynamoDBAction.add_member(:hash_key_field, Shapes::ShapeRef.new(shape: HashKeyField, required: true, location_name: "hashKeyField"))
    DynamoDBAction.add_member(:hash_key_value, Shapes::ShapeRef.new(shape: HashKeyValue, required: true, location_name: "hashKeyValue"))
    DynamoDBAction.add_member(:hash_key_type, Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "hashKeyType"))
    DynamoDBAction.add_member(:range_key_field, Shapes::ShapeRef.new(shape: RangeKeyField, location_name: "rangeKeyField"))
    DynamoDBAction.add_member(:range_key_value, Shapes::ShapeRef.new(shape: RangeKeyValue, location_name: "rangeKeyValue"))
    DynamoDBAction.add_member(:range_key_type, Shapes::ShapeRef.new(shape: DynamoKeyType, location_name: "rangeKeyType"))
    DynamoDBAction.add_member(:payload_field, Shapes::ShapeRef.new(shape: PayloadField, location_name: "payloadField"))
    DynamoDBAction.struct_class = Types::DynamoDBAction

    DynamoDBv2Action.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    DynamoDBv2Action.add_member(:put_item, Shapes::ShapeRef.new(shape: PutItemInput, location_name: "putItem"))
    DynamoDBv2Action.struct_class = Types::DynamoDBv2Action

    ElasticsearchAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    ElasticsearchAction.add_member(:endpoint, Shapes::ShapeRef.new(shape: ElasticsearchEndpoint, required: true, location_name: "endpoint"))
    ElasticsearchAction.add_member(:index, Shapes::ShapeRef.new(shape: ElasticsearchIndex, required: true, location_name: "index"))
    ElasticsearchAction.add_member(:type, Shapes::ShapeRef.new(shape: ElasticsearchType, required: true, location_name: "type"))
    ElasticsearchAction.add_member(:id, Shapes::ShapeRef.new(shape: ElasticsearchId, required: true, location_name: "id"))
    ElasticsearchAction.struct_class = Types::ElasticsearchAction

    EnableTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    EnableTopicRuleRequest.struct_class = Types::EnableTopicRuleRequest

    FirehoseAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    FirehoseAction.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "deliveryStreamName"))
    FirehoseAction.add_member(:separator, Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: "separator"))
    FirehoseAction.struct_class = Types::FirehoseAction

    GetLoggingOptionsRequest.struct_class = Types::GetLoggingOptionsRequest

    GetLoggingOptionsResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    GetLoggingOptionsResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    GetLoggingOptionsResponse.struct_class = Types::GetLoggingOptionsResponse

    GetPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    GetPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    GetPolicyResponse.add_member(:default_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "defaultVersionId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetPolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    GetPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    GetPolicyVersionRequest.struct_class = Types::GetPolicyVersionRequest

    GetPolicyVersionResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    GetPolicyVersionResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    GetPolicyVersionResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    GetPolicyVersionResponse.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "policyVersionId"))
    GetPolicyVersionResponse.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "isDefaultVersion"))
    GetPolicyVersionResponse.struct_class = Types::GetPolicyVersionResponse

    GetRegistrationCodeRequest.struct_class = Types::GetRegistrationCodeRequest

    GetRegistrationCodeResponse.add_member(:registration_code, Shapes::ShapeRef.new(shape: RegistrationCode, location_name: "registrationCode"))
    GetRegistrationCodeResponse.struct_class = Types::GetRegistrationCodeResponse

    GetTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    GetTopicRuleRequest.struct_class = Types::GetTopicRuleRequest

    GetTopicRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    GetTopicRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: TopicRule, location_name: "rule"))
    GetTopicRuleResponse.struct_class = Types::GetTopicRuleResponse

    KeyPair.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "PublicKey"))
    KeyPair.add_member(:private_key, Shapes::ShapeRef.new(shape: PrivateKey, location_name: "PrivateKey"))
    KeyPair.struct_class = Types::KeyPair

    KinesisAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    KinesisAction.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "streamName"))
    KinesisAction.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, location_name: "partitionKey"))
    KinesisAction.struct_class = Types::KinesisAction

    LambdaAction.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    LambdaAction.struct_class = Types::LambdaAction

    ListCACertificatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListCACertificatesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListCACertificatesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListCACertificatesRequest.struct_class = Types::ListCACertificatesRequest

    ListCACertificatesResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: CACertificates, location_name: "certificates"))
    ListCACertificatesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListCACertificatesResponse.struct_class = Types::ListCACertificatesResponse

    ListCertificatesByCARequest.add_member(:ca_certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    ListCertificatesByCARequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListCertificatesByCARequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListCertificatesByCARequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListCertificatesByCARequest.struct_class = Types::ListCertificatesByCARequest

    ListCertificatesByCAResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    ListCertificatesByCAResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListCertificatesByCAResponse.struct_class = Types::ListCertificatesByCAResponse

    ListCertificatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListCertificatesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListCertificatesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListCertificatesRequest.struct_class = Types::ListCertificatesRequest

    ListCertificatesResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    ListCertificatesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListCertificatesResponse.struct_class = Types::ListCertificatesResponse

    ListOutgoingCertificatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListOutgoingCertificatesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListOutgoingCertificatesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListOutgoingCertificatesRequest.struct_class = Types::ListOutgoingCertificatesRequest

    ListOutgoingCertificatesResponse.add_member(:outgoing_certificates, Shapes::ShapeRef.new(shape: OutgoingCertificates, location_name: "outgoingCertificates"))
    ListOutgoingCertificatesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListOutgoingCertificatesResponse.struct_class = Types::ListOutgoingCertificatesResponse

    ListPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListPoliciesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListPoliciesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    ListPoliciesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListPolicyPrincipalsRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "header", location_name: "x-amzn-iot-policy"))
    ListPolicyPrincipalsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListPolicyPrincipalsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListPolicyPrincipalsRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListPolicyPrincipalsRequest.struct_class = Types::ListPolicyPrincipalsRequest

    ListPolicyPrincipalsResponse.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "principals"))
    ListPolicyPrincipalsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListPolicyPrincipalsResponse.struct_class = Types::ListPolicyPrincipalsResponse

    ListPolicyVersionsRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    ListPolicyVersionsRequest.struct_class = Types::ListPolicyVersionsRequest

    ListPolicyVersionsResponse.add_member(:policy_versions, Shapes::ShapeRef.new(shape: PolicyVersions, location_name: "policyVersions"))
    ListPolicyVersionsResponse.struct_class = Types::ListPolicyVersionsResponse

    ListPrincipalPoliciesRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-iot-principal"))
    ListPrincipalPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListPrincipalPoliciesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListPrincipalPoliciesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListPrincipalPoliciesRequest.struct_class = Types::ListPrincipalPoliciesRequest

    ListPrincipalPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    ListPrincipalPoliciesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListPrincipalPoliciesResponse.struct_class = Types::ListPrincipalPoliciesResponse

    ListPrincipalThingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPrincipalThingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListPrincipalThingsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-principal"))
    ListPrincipalThingsRequest.struct_class = Types::ListPrincipalThingsRequest

    ListPrincipalThingsResponse.add_member(:things, Shapes::ShapeRef.new(shape: ThingNameList, location_name: "things"))
    ListPrincipalThingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPrincipalThingsResponse.struct_class = Types::ListPrincipalThingsResponse

    ListThingPrincipalsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    ListThingPrincipalsRequest.struct_class = Types::ListThingPrincipalsRequest

    ListThingPrincipalsResponse.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "principals"))
    ListThingPrincipalsResponse.struct_class = Types::ListThingPrincipalsResponse

    ListThingTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingTypesRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location: "querystring", location_name: "thingTypeName"))
    ListThingTypesRequest.struct_class = Types::ListThingTypesRequest

    ListThingTypesResponse.add_member(:thing_types, Shapes::ShapeRef.new(shape: ThingTypeList, location_name: "thingTypes"))
    ListThingTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingTypesResponse.struct_class = Types::ListThingTypesResponse

    ListThingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingsRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, location: "querystring", location_name: "attributeName"))
    ListThingsRequest.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, location: "querystring", location_name: "attributeValue"))
    ListThingsRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location: "querystring", location_name: "thingTypeName"))
    ListThingsRequest.struct_class = Types::ListThingsRequest

    ListThingsResponse.add_member(:things, Shapes::ShapeRef.new(shape: ThingAttributeList, location_name: "things"))
    ListThingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingsResponse.struct_class = Types::ListThingsResponse

    ListTopicRulesRequest.add_member(:topic, Shapes::ShapeRef.new(shape: Topic, location: "querystring", location_name: "topic"))
    ListTopicRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTopicRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTopicRulesRequest.add_member(:rule_disabled, Shapes::ShapeRef.new(shape: IsDisabled, location: "querystring", location_name: "ruleDisabled"))
    ListTopicRulesRequest.struct_class = Types::ListTopicRulesRequest

    ListTopicRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: TopicRuleList, location_name: "rules"))
    ListTopicRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTopicRulesResponse.struct_class = Types::ListTopicRulesResponse

    LoggingOptionsPayload.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    LoggingOptionsPayload.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    LoggingOptionsPayload.struct_class = Types::LoggingOptionsPayload

    OutgoingCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    OutgoingCertificate.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    OutgoingCertificate.add_member(:transferred_to, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "transferredTo"))
    OutgoingCertificate.add_member(:transfer_date, Shapes::ShapeRef.new(shape: DateType, location_name: "transferDate"))
    OutgoingCertificate.add_member(:transfer_message, Shapes::ShapeRef.new(shape: Message, location_name: "transferMessage"))
    OutgoingCertificate.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    OutgoingCertificate.struct_class = Types::OutgoingCertificate

    OutgoingCertificates.member = Shapes::ShapeRef.new(shape: OutgoingCertificate)

    Policies.member = Shapes::ShapeRef.new(shape: Policy)

    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    Policy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    Policy.struct_class = Types::Policy

    PolicyVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "versionId"))
    PolicyVersion.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "isDefaultVersion"))
    PolicyVersion.add_member(:create_date, Shapes::ShapeRef.new(shape: DateType, location_name: "createDate"))
    PolicyVersion.struct_class = Types::PolicyVersion

    PolicyVersions.member = Shapes::ShapeRef.new(shape: PolicyVersion)

    Principals.member = Shapes::ShapeRef.new(shape: PrincipalArn)

    PutItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    PutItemInput.struct_class = Types::PutItemInput

    RegisterCACertificateRequest.add_member(:ca_certificate, Shapes::ShapeRef.new(shape: CertificatePem, required: true, location_name: "caCertificate"))
    RegisterCACertificateRequest.add_member(:verification_certificate, Shapes::ShapeRef.new(shape: CertificatePem, required: true, location_name: "verificationCertificate"))
    RegisterCACertificateRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    RegisterCACertificateRequest.add_member(:allow_auto_registration, Shapes::ShapeRef.new(shape: AllowAutoRegistration, location: "querystring", location_name: "allowAutoRegistration"))
    RegisterCACertificateRequest.struct_class = Types::RegisterCACertificateRequest

    RegisterCACertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    RegisterCACertificateResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    RegisterCACertificateResponse.struct_class = Types::RegisterCACertificateResponse

    RegisterCertificateRequest.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, required: true, location_name: "certificatePem"))
    RegisterCertificateRequest.add_member(:ca_certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "caCertificatePem"))
    RegisterCertificateRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActiveFlag, deprecated: true, location: "querystring", location_name: "setAsActive"))
    RegisterCertificateRequest.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "status"))
    RegisterCertificateRequest.struct_class = Types::RegisterCertificateRequest

    RegisterCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    RegisterCertificateResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    RegisterCertificateResponse.struct_class = Types::RegisterCertificateResponse

    RejectCertificateTransferRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    RejectCertificateTransferRequest.add_member(:reject_reason, Shapes::ShapeRef.new(shape: Message, location_name: "rejectReason"))
    RejectCertificateTransferRequest.struct_class = Types::RejectCertificateTransferRequest

    ReplaceTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    ReplaceTopicRuleRequest.add_member(:topic_rule_payload, Shapes::ShapeRef.new(shape: TopicRulePayload, required: true, location_name: "topicRulePayload"))
    ReplaceTopicRuleRequest.struct_class = Types::ReplaceTopicRuleRequest
    ReplaceTopicRuleRequest[:payload] = :topic_rule_payload
    ReplaceTopicRuleRequest[:payload_member] = ReplaceTopicRuleRequest.member(:topic_rule_payload)

    RepublishAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    RepublishAction.add_member(:topic, Shapes::ShapeRef.new(shape: TopicPattern, required: true, location_name: "topic"))
    RepublishAction.struct_class = Types::RepublishAction

    S3Action.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    S3Action.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Action.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    S3Action.add_member(:canned_acl, Shapes::ShapeRef.new(shape: CannedAccessControlList, location_name: "cannedAcl"))
    S3Action.struct_class = Types::S3Action

    SalesforceAction.add_member(:token, Shapes::ShapeRef.new(shape: SalesforceToken, required: true, location_name: "token"))
    SalesforceAction.add_member(:url, Shapes::ShapeRef.new(shape: SalesforceEndpoint, required: true, location_name: "url"))
    SalesforceAction.struct_class = Types::SalesforceAction

    SearchableAttributes.member = Shapes::ShapeRef.new(shape: AttributeName)

    SetDefaultPolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    SetDefaultPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    SetDefaultPolicyVersionRequest.struct_class = Types::SetDefaultPolicyVersionRequest

    SetLoggingOptionsRequest.add_member(:logging_options_payload, Shapes::ShapeRef.new(shape: LoggingOptionsPayload, required: true, location_name: "loggingOptionsPayload"))
    SetLoggingOptionsRequest.struct_class = Types::SetLoggingOptionsRequest
    SetLoggingOptionsRequest[:payload] = :logging_options_payload
    SetLoggingOptionsRequest[:payload_member] = SetLoggingOptionsRequest.member(:logging_options_payload)

    SnsAction.add_member(:target_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "targetArn"))
    SnsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    SnsAction.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormat, location_name: "messageFormat"))
    SnsAction.struct_class = Types::SnsAction

    SqsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    SqsAction.add_member(:queue_url, Shapes::ShapeRef.new(shape: QueueUrl, required: true, location_name: "queueUrl"))
    SqsAction.add_member(:use_base_64, Shapes::ShapeRef.new(shape: UseBase64, location_name: "useBase64"))
    SqsAction.struct_class = Types::SqsAction

    ThingAttribute.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ThingAttribute.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    ThingAttribute.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ThingAttribute.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    ThingAttribute.struct_class = Types::ThingAttribute

    ThingAttributeList.member = Shapes::ShapeRef.new(shape: ThingAttribute)

    ThingNameList.member = Shapes::ShapeRef.new(shape: ThingName)

    ThingTypeDefinition.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    ThingTypeDefinition.add_member(:thing_type_properties, Shapes::ShapeRef.new(shape: ThingTypeProperties, location_name: "thingTypeProperties"))
    ThingTypeDefinition.add_member(:thing_type_metadata, Shapes::ShapeRef.new(shape: ThingTypeMetadata, location_name: "thingTypeMetadata"))
    ThingTypeDefinition.struct_class = Types::ThingTypeDefinition

    ThingTypeList.member = Shapes::ShapeRef.new(shape: ThingTypeDefinition)

    ThingTypeMetadata.add_member(:deprecated, Shapes::ShapeRef.new(shape: Boolean, location_name: "deprecated"))
    ThingTypeMetadata.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: DeprecationDate, location_name: "deprecationDate"))
    ThingTypeMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    ThingTypeMetadata.struct_class = Types::ThingTypeMetadata

    ThingTypeProperties.add_member(:thing_type_description, Shapes::ShapeRef.new(shape: ThingTypeDescription, location_name: "thingTypeDescription"))
    ThingTypeProperties.add_member(:searchable_attributes, Shapes::ShapeRef.new(shape: SearchableAttributes, location_name: "searchableAttributes"))
    ThingTypeProperties.struct_class = Types::ThingTypeProperties

    TopicRule.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "ruleName"))
    TopicRule.add_member(:sql, Shapes::ShapeRef.new(shape: SQL, location_name: "sql"))
    TopicRule.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TopicRule.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtDate, location_name: "createdAt"))
    TopicRule.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "actions"))
    TopicRule.add_member(:rule_disabled, Shapes::ShapeRef.new(shape: IsDisabled, location_name: "ruleDisabled"))
    TopicRule.add_member(:aws_iot_sql_version, Shapes::ShapeRef.new(shape: AwsIotSqlVersion, location_name: "awsIotSqlVersion"))
    TopicRule.struct_class = Types::TopicRule

    TopicRuleList.member = Shapes::ShapeRef.new(shape: TopicRuleListItem)

    TopicRuleListItem.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    TopicRuleListItem.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, location_name: "ruleName"))
    TopicRuleListItem.add_member(:topic_pattern, Shapes::ShapeRef.new(shape: TopicPattern, location_name: "topicPattern"))
    TopicRuleListItem.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAtDate, location_name: "createdAt"))
    TopicRuleListItem.add_member(:rule_disabled, Shapes::ShapeRef.new(shape: IsDisabled, location_name: "ruleDisabled"))
    TopicRuleListItem.struct_class = Types::TopicRuleListItem

    TopicRulePayload.add_member(:sql, Shapes::ShapeRef.new(shape: SQL, required: true, location_name: "sql"))
    TopicRulePayload.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TopicRulePayload.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "actions"))
    TopicRulePayload.add_member(:rule_disabled, Shapes::ShapeRef.new(shape: IsDisabled, location_name: "ruleDisabled"))
    TopicRulePayload.add_member(:aws_iot_sql_version, Shapes::ShapeRef.new(shape: AwsIotSqlVersion, location_name: "awsIotSqlVersion"))
    TopicRulePayload.struct_class = Types::TopicRulePayload

    TransferCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    TransferCertificateRequest.add_member(:target_aws_account, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "querystring", location_name: "targetAwsAccount"))
    TransferCertificateRequest.add_member(:transfer_message, Shapes::ShapeRef.new(shape: Message, location_name: "transferMessage"))
    TransferCertificateRequest.struct_class = Types::TransferCertificateRequest

    TransferCertificateResponse.add_member(:transferred_certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "transferredCertificateArn"))
    TransferCertificateResponse.struct_class = Types::TransferCertificateResponse

    TransferData.add_member(:transfer_message, Shapes::ShapeRef.new(shape: Message, location_name: "transferMessage"))
    TransferData.add_member(:reject_reason, Shapes::ShapeRef.new(shape: Message, location_name: "rejectReason"))
    TransferData.add_member(:transfer_date, Shapes::ShapeRef.new(shape: DateType, location_name: "transferDate"))
    TransferData.add_member(:accept_date, Shapes::ShapeRef.new(shape: DateType, location_name: "acceptDate"))
    TransferData.add_member(:reject_date, Shapes::ShapeRef.new(shape: DateType, location_name: "rejectDate"))
    TransferData.struct_class = Types::TransferData

    UpdateCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    UpdateCACertificateRequest.add_member(:new_status, Shapes::ShapeRef.new(shape: CACertificateStatus, location: "querystring", location_name: "newStatus"))
    UpdateCACertificateRequest.add_member(:new_auto_registration_status, Shapes::ShapeRef.new(shape: AutoRegistrationStatus, location: "querystring", location_name: "newAutoRegistrationStatus"))
    UpdateCACertificateRequest.struct_class = Types::UpdateCACertificateRequest

    UpdateCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    UpdateCertificateRequest.add_member(:new_status, Shapes::ShapeRef.new(shape: CertificateStatus, required: true, location: "querystring", location_name: "newStatus"))
    UpdateCertificateRequest.struct_class = Types::UpdateCertificateRequest

    UpdateThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    UpdateThingRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    UpdateThingRequest.add_member(:attribute_payload, Shapes::ShapeRef.new(shape: AttributePayload, location_name: "attributePayload"))
    UpdateThingRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location_name: "expectedVersion"))
    UpdateThingRequest.add_member(:remove_thing_type, Shapes::ShapeRef.new(shape: RemoveThingType, location_name: "removeThingType"))
    UpdateThingRequest.struct_class = Types::UpdateThingRequest

    UpdateThingResponse.struct_class = Types::UpdateThingResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-05-28"

      api.metadata = {
        "endpointPrefix" => "iot",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
      }

      api.add_operation(:accept_certificate_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptCertificateTransfer"
        o.http_method = "PATCH"
        o.http_request_uri = "/accept-certificate-transfer/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: AcceptCertificateTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransferAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:attach_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachPrincipalPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/principal-policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: AttachPrincipalPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:attach_thing_principal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachThingPrincipal"
        o.http_method = "PUT"
        o.http_request_uri = "/things/{thingName}/principals"
        o.input = Shapes::ShapeRef.new(shape: AttachThingPrincipalRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachThingPrincipalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:cancel_certificate_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCertificateTransfer"
        o.http_method = "PATCH"
        o.http_request_uri = "/cancel-certificate-transfer/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: CancelCertificateTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransferAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_certificate_from_csr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCertificateFromCsr"
        o.http_method = "POST"
        o.http_request_uri = "/certificates"
        o.input = Shapes::ShapeRef.new(shape: CreateCertificateFromCsrRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCertificateFromCsrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_keys_and_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKeysAndCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/keys-and-certificate"
        o.input = Shapes::ShapeRef.new(shape: CreateKeysAndCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKeysAndCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/policies/{policyName}/version"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: VersionsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThing"
        o.http_method = "POST"
        o.http_request_uri = "/things/{thingName}"
        o.input = Shapes::ShapeRef.new(shape: CreateThingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_thing_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThingType"
        o.http_method = "POST"
        o.http_request_uri = "/thing-types/{thingTypeName}"
        o.input = Shapes::ShapeRef.new(shape: CreateThingTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThingTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTopicRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: CreateTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: SqlParseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_ca_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCACertificate"
        o.http_method = "DELETE"
        o.http_request_uri = "/cacertificate/{caCertificateId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCACertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCACertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateStateException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "DELETE"
        o.http_request_uri = "/certificates/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: CertificateStateException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicyVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/policies/{policyName}/version/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_registration_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistrationCode"
        o.http_method = "DELETE"
        o.http_request_uri = "/registrationcode"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistrationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistrationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThing"
        o.http_method = "DELETE"
        o.http_request_uri = "/things/{thingName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThingRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_thing_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThingType"
        o.http_method = "DELETE"
        o.http_request_uri = "/thing-types/{thingTypeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThingTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThingTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTopicRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/rules/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:deprecate_thing_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprecateThingType"
        o.http_method = "POST"
        o.http_request_uri = "/thing-types/{thingTypeName}/deprecate"
        o.input = Shapes::ShapeRef.new(shape: DeprecateThingTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeprecateThingTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_ca_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCACertificate"
        o.http_method = "GET"
        o.http_request_uri = "/cacertificate/{caCertificateId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCACertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCACertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificate"
        o.http_method = "GET"
        o.http_request_uri = "/certificates/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/endpoint"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThing"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_thing_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThingType"
        o.http_method = "GET"
        o.http_request_uri = "/thing-types/{thingTypeName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThingTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThingTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:detach_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachPrincipalPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/principal-policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: DetachPrincipalPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:detach_thing_principal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachThingPrincipal"
        o.http_method = "DELETE"
        o.http_request_uri = "/things/{thingName}/principals"
        o.input = Shapes::ShapeRef.new(shape: DetachThingPrincipalRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachThingPrincipalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:disable_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableTopicRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules/{ruleName}/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:enable_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableTopicRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules/{ruleName}/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:get_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/loggingOptions"
        o.input = Shapes::ShapeRef.new(shape: GetLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyVersion"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyName}/version/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_registration_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistrationCode"
        o.http_method = "GET"
        o.http_request_uri = "/registrationcode"
        o.input = Shapes::ShapeRef.new(shape: GetRegistrationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistrationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTopicRule"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: GetTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTopicRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:list_ca_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCACertificates"
        o.http_method = "GET"
        o.http_request_uri = "/cacertificates"
        o.input = Shapes::ShapeRef.new(shape: ListCACertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCACertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificates"
        o.http_method = "GET"
        o.http_request_uri = "/certificates"
        o.input = Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_certificates_by_ca, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificatesByCA"
        o.http_method = "GET"
        o.http_request_uri = "/certificates-by-ca/{caCertificateId}"
        o.input = Shapes::ShapeRef.new(shape: ListCertificatesByCARequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificatesByCAResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_outgoing_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOutgoingCertificates"
        o.http_method = "GET"
        o.http_request_uri = "/certificates-out-going"
        o.input = Shapes::ShapeRef.new(shape: ListOutgoingCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOutgoingCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/policies"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_policy_principals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyPrincipals"
        o.http_method = "GET"
        o.http_request_uri = "/policy-principals"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyPrincipalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyPrincipalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_policy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyVersions"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyName}/version"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_principal_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrincipalPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/principal-policies"
        o.input = Shapes::ShapeRef.new(shape: ListPrincipalPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPrincipalPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_principal_things, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrincipalThings"
        o.http_method = "GET"
        o.http_request_uri = "/principals/things"
        o.input = Shapes::ShapeRef.new(shape: ListPrincipalThingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPrincipalThingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_thing_principals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingPrincipals"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/principals"
        o.input = Shapes::ShapeRef.new(shape: ListThingPrincipalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingPrincipalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_thing_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingTypes"
        o.http_method = "GET"
        o.http_request_uri = "/thing-types"
        o.input = Shapes::ShapeRef.new(shape: ListThingTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_things, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThings"
        o.http_method = "GET"
        o.http_request_uri = "/things"
        o.input = Shapes::ShapeRef.new(shape: ListThingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_topic_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTopicRules"
        o.http_method = "GET"
        o.http_request_uri = "/rules"
        o.input = Shapes::ShapeRef.new(shape: ListTopicRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTopicRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:register_ca_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterCACertificate"
        o.http_method = "POST"
        o.http_request_uri = "/cacertificate"
        o.input = Shapes::ShapeRef.new(shape: RegisterCACertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterCACertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: RegistrationCodeValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:register_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/certificate/register"
        o.input = Shapes::ShapeRef.new(shape: RegisterCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateStateException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:reject_certificate_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectCertificateTransfer"
        o.http_method = "PATCH"
        o.http_request_uri = "/reject-certificate-transfer/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: RejectCertificateTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransferAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:replace_topic_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReplaceTopicRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/rules/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: ReplaceTopicRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: SqlParseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:set_default_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultPolicyVersion"
        o.http_method = "PATCH"
        o.http_request_uri = "/policies/{policyName}/version/{policyVersionId}"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:set_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLoggingOptions"
        o.http_method = "POST"
        o.http_request_uri = "/loggingOptions"
        o.input = Shapes::ShapeRef.new(shape: SetLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:transfer_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferCertificate"
        o.http_method = "PATCH"
        o.http_request_uri = "/transfer-certificate/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: TransferCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateStateException)
        o.errors << Shapes::ShapeRef.new(shape: TransferConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_ca_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCACertificate"
        o.http_method = "PUT"
        o.http_request_uri = "/cacertificate/{caCertificateId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCACertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCertificate"
        o.http_method = "PUT"
        o.http_request_uri = "/certificates/{certificateId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThing"
        o.http_method = "PATCH"
        o.http_request_uri = "/things/{thingName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
