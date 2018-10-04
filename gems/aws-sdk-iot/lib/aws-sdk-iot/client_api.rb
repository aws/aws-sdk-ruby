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
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    ActiveViolation = Shapes::StructureShape.new(name: 'ActiveViolation')
    ActiveViolations = Shapes::ListShape.new(name: 'ActiveViolations')
    AddThingToThingGroupRequest = Shapes::StructureShape.new(name: 'AddThingToThingGroupRequest')
    AddThingToThingGroupResponse = Shapes::StructureShape.new(name: 'AddThingToThingGroupResponse')
    AdditionalParameterMap = Shapes::MapShape.new(name: 'AdditionalParameterMap')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlertTarget = Shapes::StructureShape.new(name: 'AlertTarget')
    AlertTargetArn = Shapes::StringShape.new(name: 'AlertTargetArn')
    AlertTargetType = Shapes::StringShape.new(name: 'AlertTargetType')
    AlertTargets = Shapes::MapShape.new(name: 'AlertTargets')
    AllowAutoRegistration = Shapes::BooleanShape.new(name: 'AllowAutoRegistration')
    Allowed = Shapes::StructureShape.new(name: 'Allowed')
    AscendingOrder = Shapes::BooleanShape.new(name: 'AscendingOrder')
    AssociateTargetsWithJobRequest = Shapes::StructureShape.new(name: 'AssociateTargetsWithJobRequest')
    AssociateTargetsWithJobResponse = Shapes::StructureShape.new(name: 'AssociateTargetsWithJobResponse')
    AttachPolicyRequest = Shapes::StructureShape.new(name: 'AttachPolicyRequest')
    AttachPrincipalPolicyRequest = Shapes::StructureShape.new(name: 'AttachPrincipalPolicyRequest')
    AttachSecurityProfileRequest = Shapes::StructureShape.new(name: 'AttachSecurityProfileRequest')
    AttachSecurityProfileResponse = Shapes::StructureShape.new(name: 'AttachSecurityProfileResponse')
    AttachThingPrincipalRequest = Shapes::StructureShape.new(name: 'AttachThingPrincipalRequest')
    AttachThingPrincipalResponse = Shapes::StructureShape.new(name: 'AttachThingPrincipalResponse')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributePayload = Shapes::StructureShape.new(name: 'AttributePayload')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    AttributesMap = Shapes::MapShape.new(name: 'AttributesMap')
    AuditCheckConfiguration = Shapes::StructureShape.new(name: 'AuditCheckConfiguration')
    AuditCheckConfigurations = Shapes::MapShape.new(name: 'AuditCheckConfigurations')
    AuditCheckDetails = Shapes::StructureShape.new(name: 'AuditCheckDetails')
    AuditCheckName = Shapes::StringShape.new(name: 'AuditCheckName')
    AuditCheckRunStatus = Shapes::StringShape.new(name: 'AuditCheckRunStatus')
    AuditDetails = Shapes::MapShape.new(name: 'AuditDetails')
    AuditFinding = Shapes::StructureShape.new(name: 'AuditFinding')
    AuditFindingSeverity = Shapes::StringShape.new(name: 'AuditFindingSeverity')
    AuditFindings = Shapes::ListShape.new(name: 'AuditFindings')
    AuditFrequency = Shapes::StringShape.new(name: 'AuditFrequency')
    AuditNotificationTarget = Shapes::StructureShape.new(name: 'AuditNotificationTarget')
    AuditNotificationTargetConfigurations = Shapes::MapShape.new(name: 'AuditNotificationTargetConfigurations')
    AuditNotificationType = Shapes::StringShape.new(name: 'AuditNotificationType')
    AuditTaskId = Shapes::StringShape.new(name: 'AuditTaskId')
    AuditTaskMetadata = Shapes::StructureShape.new(name: 'AuditTaskMetadata')
    AuditTaskMetadataList = Shapes::ListShape.new(name: 'AuditTaskMetadataList')
    AuditTaskStatus = Shapes::StringShape.new(name: 'AuditTaskStatus')
    AuditTaskType = Shapes::StringShape.new(name: 'AuditTaskType')
    AuthDecision = Shapes::StringShape.new(name: 'AuthDecision')
    AuthInfo = Shapes::StructureShape.new(name: 'AuthInfo')
    AuthInfos = Shapes::ListShape.new(name: 'AuthInfos')
    AuthResult = Shapes::StructureShape.new(name: 'AuthResult')
    AuthResults = Shapes::ListShape.new(name: 'AuthResults')
    AuthorizerArn = Shapes::StringShape.new(name: 'AuthorizerArn')
    AuthorizerDescription = Shapes::StructureShape.new(name: 'AuthorizerDescription')
    AuthorizerFunctionArn = Shapes::StringShape.new(name: 'AuthorizerFunctionArn')
    AuthorizerName = Shapes::StringShape.new(name: 'AuthorizerName')
    AuthorizerStatus = Shapes::StringShape.new(name: 'AuthorizerStatus')
    AuthorizerSummary = Shapes::StructureShape.new(name: 'AuthorizerSummary')
    Authorizers = Shapes::ListShape.new(name: 'Authorizers')
    AutoRegistrationStatus = Shapes::StringShape.new(name: 'AutoRegistrationStatus')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsArn = Shapes::StringShape.new(name: 'AwsArn')
    AwsIotJobArn = Shapes::StringShape.new(name: 'AwsIotJobArn')
    AwsIotJobId = Shapes::StringShape.new(name: 'AwsIotJobId')
    AwsIotSqlVersion = Shapes::StringShape.new(name: 'AwsIotSqlVersion')
    AwsJobExecutionsRolloutConfig = Shapes::StructureShape.new(name: 'AwsJobExecutionsRolloutConfig')
    Behavior = Shapes::StructureShape.new(name: 'Behavior')
    BehaviorCriteria = Shapes::StructureShape.new(name: 'BehaviorCriteria')
    BehaviorMetric = Shapes::StringShape.new(name: 'BehaviorMetric')
    BehaviorName = Shapes::StringShape.new(name: 'BehaviorName')
    Behaviors = Shapes::ListShape.new(name: 'Behaviors')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CACertificate = Shapes::StructureShape.new(name: 'CACertificate')
    CACertificateDescription = Shapes::StructureShape.new(name: 'CACertificateDescription')
    CACertificateStatus = Shapes::StringShape.new(name: 'CACertificateStatus')
    CACertificates = Shapes::ListShape.new(name: 'CACertificates')
    CancelAuditTaskRequest = Shapes::StructureShape.new(name: 'CancelAuditTaskRequest')
    CancelAuditTaskResponse = Shapes::StructureShape.new(name: 'CancelAuditTaskResponse')
    CancelCertificateTransferRequest = Shapes::StructureShape.new(name: 'CancelCertificateTransferRequest')
    CancelJobExecutionRequest = Shapes::StructureShape.new(name: 'CancelJobExecutionRequest')
    CancelJobRequest = Shapes::StructureShape.new(name: 'CancelJobRequest')
    CancelJobResponse = Shapes::StructureShape.new(name: 'CancelJobResponse')
    CanceledChecksCount = Shapes::IntegerShape.new(name: 'CanceledChecksCount')
    CanceledThings = Shapes::IntegerShape.new(name: 'CanceledThings')
    CannedAccessControlList = Shapes::StringShape.new(name: 'CannedAccessControlList')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateConflictException = Shapes::StructureShape.new(name: 'CertificateConflictException')
    CertificateDescription = Shapes::StructureShape.new(name: 'CertificateDescription')
    CertificateId = Shapes::StringShape.new(name: 'CertificateId')
    CertificateName = Shapes::StringShape.new(name: 'CertificateName')
    CertificatePathOnDevice = Shapes::StringShape.new(name: 'CertificatePathOnDevice')
    CertificatePem = Shapes::StringShape.new(name: 'CertificatePem')
    CertificateSigningRequest = Shapes::StringShape.new(name: 'CertificateSigningRequest')
    CertificateStateException = Shapes::StructureShape.new(name: 'CertificateStateException')
    CertificateStatus = Shapes::StringShape.new(name: 'CertificateStatus')
    CertificateValidationException = Shapes::StructureShape.new(name: 'CertificateValidationException')
    CertificateValidity = Shapes::StructureShape.new(name: 'CertificateValidity')
    Certificates = Shapes::ListShape.new(name: 'Certificates')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    CheckCompliant = Shapes::BooleanShape.new(name: 'CheckCompliant')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    Cidrs = Shapes::ListShape.new(name: 'Cidrs')
    ClearDefaultAuthorizerRequest = Shapes::StructureShape.new(name: 'ClearDefaultAuthorizerRequest')
    ClearDefaultAuthorizerResponse = Shapes::StructureShape.new(name: 'ClearDefaultAuthorizerResponse')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    CloudwatchAlarmAction = Shapes::StructureShape.new(name: 'CloudwatchAlarmAction')
    CloudwatchMetricAction = Shapes::StructureShape.new(name: 'CloudwatchMetricAction')
    Code = Shapes::StringShape.new(name: 'Code')
    CodeSigning = Shapes::StructureShape.new(name: 'CodeSigning')
    CodeSigningCertificateChain = Shapes::StructureShape.new(name: 'CodeSigningCertificateChain')
    CodeSigningSignature = Shapes::StructureShape.new(name: 'CodeSigningSignature')
    CognitoIdentityPoolId = Shapes::StringShape.new(name: 'CognitoIdentityPoolId')
    Comment = Shapes::StringShape.new(name: 'Comment')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    CompliantChecksCount = Shapes::IntegerShape.new(name: 'CompliantChecksCount')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConflictingResourceUpdateException = Shapes::StructureShape.new(name: 'ConflictingResourceUpdateException')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateAuthorizerRequest = Shapes::StructureShape.new(name: 'CreateAuthorizerRequest')
    CreateAuthorizerResponse = Shapes::StructureShape.new(name: 'CreateAuthorizerResponse')
    CreateCertificateFromCsrRequest = Shapes::StructureShape.new(name: 'CreateCertificateFromCsrRequest')
    CreateCertificateFromCsrResponse = Shapes::StructureShape.new(name: 'CreateCertificateFromCsrResponse')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResponse = Shapes::StructureShape.new(name: 'CreateJobResponse')
    CreateKeysAndCertificateRequest = Shapes::StructureShape.new(name: 'CreateKeysAndCertificateRequest')
    CreateKeysAndCertificateResponse = Shapes::StructureShape.new(name: 'CreateKeysAndCertificateResponse')
    CreateOTAUpdateRequest = Shapes::StructureShape.new(name: 'CreateOTAUpdateRequest')
    CreateOTAUpdateResponse = Shapes::StructureShape.new(name: 'CreateOTAUpdateResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreatePolicyVersionRequest = Shapes::StructureShape.new(name: 'CreatePolicyVersionRequest')
    CreatePolicyVersionResponse = Shapes::StructureShape.new(name: 'CreatePolicyVersionResponse')
    CreateRoleAliasRequest = Shapes::StructureShape.new(name: 'CreateRoleAliasRequest')
    CreateRoleAliasResponse = Shapes::StructureShape.new(name: 'CreateRoleAliasResponse')
    CreateScheduledAuditRequest = Shapes::StructureShape.new(name: 'CreateScheduledAuditRequest')
    CreateScheduledAuditResponse = Shapes::StructureShape.new(name: 'CreateScheduledAuditResponse')
    CreateSecurityProfileRequest = Shapes::StructureShape.new(name: 'CreateSecurityProfileRequest')
    CreateSecurityProfileResponse = Shapes::StructureShape.new(name: 'CreateSecurityProfileResponse')
    CreateStreamRequest = Shapes::StructureShape.new(name: 'CreateStreamRequest')
    CreateStreamResponse = Shapes::StructureShape.new(name: 'CreateStreamResponse')
    CreateThingGroupRequest = Shapes::StructureShape.new(name: 'CreateThingGroupRequest')
    CreateThingGroupResponse = Shapes::StructureShape.new(name: 'CreateThingGroupResponse')
    CreateThingRequest = Shapes::StructureShape.new(name: 'CreateThingRequest')
    CreateThingResponse = Shapes::StructureShape.new(name: 'CreateThingResponse')
    CreateThingTypeRequest = Shapes::StructureShape.new(name: 'CreateThingTypeRequest')
    CreateThingTypeResponse = Shapes::StructureShape.new(name: 'CreateThingTypeResponse')
    CreateTopicRuleRequest = Shapes::StructureShape.new(name: 'CreateTopicRuleRequest')
    CreatedAtDate = Shapes::TimestampShape.new(name: 'CreatedAtDate')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    CredentialDurationSeconds = Shapes::IntegerShape.new(name: 'CredentialDurationSeconds')
    CustomCodeSigning = Shapes::StructureShape.new(name: 'CustomCodeSigning')
    CustomerVersion = Shapes::IntegerShape.new(name: 'CustomerVersion')
    DateType = Shapes::TimestampShape.new(name: 'DateType')
    DayOfMonth = Shapes::StringShape.new(name: 'DayOfMonth')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeleteAccountAuditConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAccountAuditConfigurationRequest')
    DeleteAccountAuditConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAccountAuditConfigurationResponse')
    DeleteAuthorizerRequest = Shapes::StructureShape.new(name: 'DeleteAuthorizerRequest')
    DeleteAuthorizerResponse = Shapes::StructureShape.new(name: 'DeleteAuthorizerResponse')
    DeleteCACertificateRequest = Shapes::StructureShape.new(name: 'DeleteCACertificateRequest')
    DeleteCACertificateResponse = Shapes::StructureShape.new(name: 'DeleteCACertificateResponse')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DeleteConflictException = Shapes::StructureShape.new(name: 'DeleteConflictException')
    DeleteJobExecutionRequest = Shapes::StructureShape.new(name: 'DeleteJobExecutionRequest')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteOTAUpdateRequest = Shapes::StructureShape.new(name: 'DeleteOTAUpdateRequest')
    DeleteOTAUpdateResponse = Shapes::StructureShape.new(name: 'DeleteOTAUpdateResponse')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyVersionRequest = Shapes::StructureShape.new(name: 'DeletePolicyVersionRequest')
    DeleteRegistrationCodeRequest = Shapes::StructureShape.new(name: 'DeleteRegistrationCodeRequest')
    DeleteRegistrationCodeResponse = Shapes::StructureShape.new(name: 'DeleteRegistrationCodeResponse')
    DeleteRoleAliasRequest = Shapes::StructureShape.new(name: 'DeleteRoleAliasRequest')
    DeleteRoleAliasResponse = Shapes::StructureShape.new(name: 'DeleteRoleAliasResponse')
    DeleteScheduledAuditRequest = Shapes::StructureShape.new(name: 'DeleteScheduledAuditRequest')
    DeleteScheduledAuditResponse = Shapes::StructureShape.new(name: 'DeleteScheduledAuditResponse')
    DeleteScheduledAudits = Shapes::BooleanShape.new(name: 'DeleteScheduledAudits')
    DeleteSecurityProfileRequest = Shapes::StructureShape.new(name: 'DeleteSecurityProfileRequest')
    DeleteSecurityProfileResponse = Shapes::StructureShape.new(name: 'DeleteSecurityProfileResponse')
    DeleteStream = Shapes::BooleanShape.new(name: 'DeleteStream')
    DeleteStreamRequest = Shapes::StructureShape.new(name: 'DeleteStreamRequest')
    DeleteStreamResponse = Shapes::StructureShape.new(name: 'DeleteStreamResponse')
    DeleteThingGroupRequest = Shapes::StructureShape.new(name: 'DeleteThingGroupRequest')
    DeleteThingGroupResponse = Shapes::StructureShape.new(name: 'DeleteThingGroupResponse')
    DeleteThingRequest = Shapes::StructureShape.new(name: 'DeleteThingRequest')
    DeleteThingResponse = Shapes::StructureShape.new(name: 'DeleteThingResponse')
    DeleteThingTypeRequest = Shapes::StructureShape.new(name: 'DeleteThingTypeRequest')
    DeleteThingTypeResponse = Shapes::StructureShape.new(name: 'DeleteThingTypeResponse')
    DeleteTopicRuleRequest = Shapes::StructureShape.new(name: 'DeleteTopicRuleRequest')
    DeleteV2LoggingLevelRequest = Shapes::StructureShape.new(name: 'DeleteV2LoggingLevelRequest')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    Denied = Shapes::StructureShape.new(name: 'Denied')
    DeprecateThingTypeRequest = Shapes::StructureShape.new(name: 'DeprecateThingTypeRequest')
    DeprecateThingTypeResponse = Shapes::StructureShape.new(name: 'DeprecateThingTypeResponse')
    DeprecationDate = Shapes::TimestampShape.new(name: 'DeprecationDate')
    DescribeAccountAuditConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAccountAuditConfigurationRequest')
    DescribeAccountAuditConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAccountAuditConfigurationResponse')
    DescribeAuditTaskRequest = Shapes::StructureShape.new(name: 'DescribeAuditTaskRequest')
    DescribeAuditTaskResponse = Shapes::StructureShape.new(name: 'DescribeAuditTaskResponse')
    DescribeAuthorizerRequest = Shapes::StructureShape.new(name: 'DescribeAuthorizerRequest')
    DescribeAuthorizerResponse = Shapes::StructureShape.new(name: 'DescribeAuthorizerResponse')
    DescribeCACertificateRequest = Shapes::StructureShape.new(name: 'DescribeCACertificateRequest')
    DescribeCACertificateResponse = Shapes::StructureShape.new(name: 'DescribeCACertificateResponse')
    DescribeCertificateRequest = Shapes::StructureShape.new(name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = Shapes::StructureShape.new(name: 'DescribeCertificateResponse')
    DescribeDefaultAuthorizerRequest = Shapes::StructureShape.new(name: 'DescribeDefaultAuthorizerRequest')
    DescribeDefaultAuthorizerResponse = Shapes::StructureShape.new(name: 'DescribeDefaultAuthorizerResponse')
    DescribeEndpointRequest = Shapes::StructureShape.new(name: 'DescribeEndpointRequest')
    DescribeEndpointResponse = Shapes::StructureShape.new(name: 'DescribeEndpointResponse')
    DescribeEventConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeEventConfigurationsRequest')
    DescribeEventConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeEventConfigurationsResponse')
    DescribeIndexRequest = Shapes::StructureShape.new(name: 'DescribeIndexRequest')
    DescribeIndexResponse = Shapes::StructureShape.new(name: 'DescribeIndexResponse')
    DescribeJobExecutionRequest = Shapes::StructureShape.new(name: 'DescribeJobExecutionRequest')
    DescribeJobExecutionResponse = Shapes::StructureShape.new(name: 'DescribeJobExecutionResponse')
    DescribeJobRequest = Shapes::StructureShape.new(name: 'DescribeJobRequest')
    DescribeJobResponse = Shapes::StructureShape.new(name: 'DescribeJobResponse')
    DescribeRoleAliasRequest = Shapes::StructureShape.new(name: 'DescribeRoleAliasRequest')
    DescribeRoleAliasResponse = Shapes::StructureShape.new(name: 'DescribeRoleAliasResponse')
    DescribeScheduledAuditRequest = Shapes::StructureShape.new(name: 'DescribeScheduledAuditRequest')
    DescribeScheduledAuditResponse = Shapes::StructureShape.new(name: 'DescribeScheduledAuditResponse')
    DescribeSecurityProfileRequest = Shapes::StructureShape.new(name: 'DescribeSecurityProfileRequest')
    DescribeSecurityProfileResponse = Shapes::StructureShape.new(name: 'DescribeSecurityProfileResponse')
    DescribeStreamRequest = Shapes::StructureShape.new(name: 'DescribeStreamRequest')
    DescribeStreamResponse = Shapes::StructureShape.new(name: 'DescribeStreamResponse')
    DescribeThingGroupRequest = Shapes::StructureShape.new(name: 'DescribeThingGroupRequest')
    DescribeThingGroupResponse = Shapes::StructureShape.new(name: 'DescribeThingGroupResponse')
    DescribeThingRegistrationTaskRequest = Shapes::StructureShape.new(name: 'DescribeThingRegistrationTaskRequest')
    DescribeThingRegistrationTaskResponse = Shapes::StructureShape.new(name: 'DescribeThingRegistrationTaskResponse')
    DescribeThingRequest = Shapes::StructureShape.new(name: 'DescribeThingRequest')
    DescribeThingResponse = Shapes::StructureShape.new(name: 'DescribeThingResponse')
    DescribeThingTypeRequest = Shapes::StructureShape.new(name: 'DescribeThingTypeRequest')
    DescribeThingTypeResponse = Shapes::StructureShape.new(name: 'DescribeThingTypeResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DetachPolicyRequest = Shapes::StructureShape.new(name: 'DetachPolicyRequest')
    DetachPrincipalPolicyRequest = Shapes::StructureShape.new(name: 'DetachPrincipalPolicyRequest')
    DetachSecurityProfileRequest = Shapes::StructureShape.new(name: 'DetachSecurityProfileRequest')
    DetachSecurityProfileResponse = Shapes::StructureShape.new(name: 'DetachSecurityProfileResponse')
    DetachThingPrincipalRequest = Shapes::StructureShape.new(name: 'DetachThingPrincipalRequest')
    DetachThingPrincipalResponse = Shapes::StructureShape.new(name: 'DetachThingPrincipalResponse')
    DetailsKey = Shapes::StringShape.new(name: 'DetailsKey')
    DetailsMap = Shapes::MapShape.new(name: 'DetailsMap')
    DetailsValue = Shapes::StringShape.new(name: 'DetailsValue')
    DisableAllLogs = Shapes::BooleanShape.new(name: 'DisableAllLogs')
    DisableTopicRuleRequest = Shapes::StructureShape.new(name: 'DisableTopicRuleRequest')
    DurationSeconds = Shapes::IntegerShape.new(name: 'DurationSeconds')
    DynamoDBAction = Shapes::StructureShape.new(name: 'DynamoDBAction')
    DynamoDBv2Action = Shapes::StructureShape.new(name: 'DynamoDBv2Action')
    DynamoKeyType = Shapes::StringShape.new(name: 'DynamoKeyType')
    DynamoOperation = Shapes::StringShape.new(name: 'DynamoOperation')
    EffectivePolicies = Shapes::ListShape.new(name: 'EffectivePolicies')
    EffectivePolicy = Shapes::StructureShape.new(name: 'EffectivePolicy')
    ElasticsearchAction = Shapes::StructureShape.new(name: 'ElasticsearchAction')
    ElasticsearchEndpoint = Shapes::StringShape.new(name: 'ElasticsearchEndpoint')
    ElasticsearchId = Shapes::StringShape.new(name: 'ElasticsearchId')
    ElasticsearchIndex = Shapes::StringShape.new(name: 'ElasticsearchIndex')
    ElasticsearchType = Shapes::StringShape.new(name: 'ElasticsearchType')
    EnableTopicRuleRequest = Shapes::StructureShape.new(name: 'EnableTopicRuleRequest')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EndpointAddress = Shapes::StringShape.new(name: 'EndpointAddress')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventConfigurations = Shapes::MapShape.new(name: 'EventConfigurations')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExecutionNamePrefix = Shapes::StringShape.new(name: 'ExecutionNamePrefix')
    ExecutionNumber = Shapes::IntegerShape.new(name: 'ExecutionNumber')
    ExpectedVersion = Shapes::IntegerShape.new(name: 'ExpectedVersion')
    ExpiresInSec = Shapes::IntegerShape.new(name: 'ExpiresInSec')
    ExplicitDeny = Shapes::StructureShape.new(name: 'ExplicitDeny')
    FailedChecksCount = Shapes::IntegerShape.new(name: 'FailedChecksCount')
    FailedThings = Shapes::IntegerShape.new(name: 'FailedThings')
    FileId = Shapes::IntegerShape.new(name: 'FileId')
    FileLocation = Shapes::StructureShape.new(name: 'FileLocation')
    FileName = Shapes::StringShape.new(name: 'FileName')
    FirehoseAction = Shapes::StructureShape.new(name: 'FirehoseAction')
    FirehoseSeparator = Shapes::StringShape.new(name: 'FirehoseSeparator')
    Flag = Shapes::BooleanShape.new(name: 'Flag')
    ForceDelete = Shapes::BooleanShape.new(name: 'ForceDelete')
    ForceDeleteAWSJob = Shapes::BooleanShape.new(name: 'ForceDeleteAWSJob')
    ForceFlag = Shapes::BooleanShape.new(name: 'ForceFlag')
    Forced = Shapes::BooleanShape.new(name: 'Forced')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GEMaxResults = Shapes::IntegerShape.new(name: 'GEMaxResults')
    GenerationId = Shapes::StringShape.new(name: 'GenerationId')
    GetEffectivePoliciesRequest = Shapes::StructureShape.new(name: 'GetEffectivePoliciesRequest')
    GetEffectivePoliciesResponse = Shapes::StructureShape.new(name: 'GetEffectivePoliciesResponse')
    GetIndexingConfigurationRequest = Shapes::StructureShape.new(name: 'GetIndexingConfigurationRequest')
    GetIndexingConfigurationResponse = Shapes::StructureShape.new(name: 'GetIndexingConfigurationResponse')
    GetJobDocumentRequest = Shapes::StructureShape.new(name: 'GetJobDocumentRequest')
    GetJobDocumentResponse = Shapes::StructureShape.new(name: 'GetJobDocumentResponse')
    GetLoggingOptionsRequest = Shapes::StructureShape.new(name: 'GetLoggingOptionsRequest')
    GetLoggingOptionsResponse = Shapes::StructureShape.new(name: 'GetLoggingOptionsResponse')
    GetOTAUpdateRequest = Shapes::StructureShape.new(name: 'GetOTAUpdateRequest')
    GetOTAUpdateResponse = Shapes::StructureShape.new(name: 'GetOTAUpdateResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetPolicyVersionRequest = Shapes::StructureShape.new(name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = Shapes::StructureShape.new(name: 'GetPolicyVersionResponse')
    GetRegistrationCodeRequest = Shapes::StructureShape.new(name: 'GetRegistrationCodeRequest')
    GetRegistrationCodeResponse = Shapes::StructureShape.new(name: 'GetRegistrationCodeResponse')
    GetTopicRuleRequest = Shapes::StructureShape.new(name: 'GetTopicRuleRequest')
    GetTopicRuleResponse = Shapes::StructureShape.new(name: 'GetTopicRuleResponse')
    GetV2LoggingOptionsRequest = Shapes::StructureShape.new(name: 'GetV2LoggingOptionsRequest')
    GetV2LoggingOptionsResponse = Shapes::StructureShape.new(name: 'GetV2LoggingOptionsResponse')
    GroupNameAndArn = Shapes::StructureShape.new(name: 'GroupNameAndArn')
    HashAlgorithm = Shapes::StringShape.new(name: 'HashAlgorithm')
    HashKeyField = Shapes::StringShape.new(name: 'HashKeyField')
    HashKeyValue = Shapes::StringShape.new(name: 'HashKeyValue')
    ImplicitDeny = Shapes::StructureShape.new(name: 'ImplicitDeny')
    InProgressChecksCount = Shapes::IntegerShape.new(name: 'InProgressChecksCount')
    InProgressThings = Shapes::IntegerShape.new(name: 'InProgressThings')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexNamesList = Shapes::ListShape.new(name: 'IndexNamesList')
    IndexNotReadyException = Shapes::StructureShape.new(name: 'IndexNotReadyException')
    IndexSchema = Shapes::StringShape.new(name: 'IndexSchema')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    InlineDocument = Shapes::StringShape.new(name: 'InlineDocument')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidQueryException = Shapes::StructureShape.new(name: 'InvalidQueryException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidResponseException = Shapes::StructureShape.new(name: 'InvalidResponseException')
    InvalidStateTransitionException = Shapes::StructureShape.new(name: 'InvalidStateTransitionException')
    IotAnalyticsAction = Shapes::StructureShape.new(name: 'IotAnalyticsAction')
    IsAuthenticated = Shapes::BooleanShape.new(name: 'IsAuthenticated')
    IsDefaultVersion = Shapes::BooleanShape.new(name: 'IsDefaultVersion')
    IsDisabled = Shapes::BooleanShape.new(name: 'IsDisabled')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobDescription = Shapes::StringShape.new(name: 'JobDescription')
    JobDocument = Shapes::StringShape.new(name: 'JobDocument')
    JobDocumentSource = Shapes::StringShape.new(name: 'JobDocumentSource')
    JobExecution = Shapes::StructureShape.new(name: 'JobExecution')
    JobExecutionStatus = Shapes::StringShape.new(name: 'JobExecutionStatus')
    JobExecutionStatusDetails = Shapes::StructureShape.new(name: 'JobExecutionStatusDetails')
    JobExecutionSummary = Shapes::StructureShape.new(name: 'JobExecutionSummary')
    JobExecutionSummaryForJob = Shapes::StructureShape.new(name: 'JobExecutionSummaryForJob')
    JobExecutionSummaryForJobList = Shapes::ListShape.new(name: 'JobExecutionSummaryForJobList')
    JobExecutionSummaryForThing = Shapes::StructureShape.new(name: 'JobExecutionSummaryForThing')
    JobExecutionSummaryForThingList = Shapes::ListShape.new(name: 'JobExecutionSummaryForThingList')
    JobExecutionsRolloutConfig = Shapes::StructureShape.new(name: 'JobExecutionsRolloutConfig')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobProcessDetails = Shapes::StructureShape.new(name: 'JobProcessDetails')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobSummaryList = Shapes::ListShape.new(name: 'JobSummaryList')
    JobTargets = Shapes::ListShape.new(name: 'JobTargets')
    JsonDocument = Shapes::StringShape.new(name: 'JsonDocument')
    Key = Shapes::StringShape.new(name: 'Key')
    KeyName = Shapes::StringShape.new(name: 'KeyName')
    KeyPair = Shapes::StructureShape.new(name: 'KeyPair')
    KeyValue = Shapes::StringShape.new(name: 'KeyValue')
    KinesisAction = Shapes::StructureShape.new(name: 'KinesisAction')
    LambdaAction = Shapes::StructureShape.new(name: 'LambdaAction')
    LaserMaxResults = Shapes::IntegerShape.new(name: 'LaserMaxResults')
    LastModifiedDate = Shapes::TimestampShape.new(name: 'LastModifiedDate')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListActiveViolationsRequest = Shapes::StructureShape.new(name: 'ListActiveViolationsRequest')
    ListActiveViolationsResponse = Shapes::StructureShape.new(name: 'ListActiveViolationsResponse')
    ListAttachedPoliciesRequest = Shapes::StructureShape.new(name: 'ListAttachedPoliciesRequest')
    ListAttachedPoliciesResponse = Shapes::StructureShape.new(name: 'ListAttachedPoliciesResponse')
    ListAuditFindingsRequest = Shapes::StructureShape.new(name: 'ListAuditFindingsRequest')
    ListAuditFindingsResponse = Shapes::StructureShape.new(name: 'ListAuditFindingsResponse')
    ListAuditTasksRequest = Shapes::StructureShape.new(name: 'ListAuditTasksRequest')
    ListAuditTasksResponse = Shapes::StructureShape.new(name: 'ListAuditTasksResponse')
    ListAuthorizersRequest = Shapes::StructureShape.new(name: 'ListAuthorizersRequest')
    ListAuthorizersResponse = Shapes::StructureShape.new(name: 'ListAuthorizersResponse')
    ListCACertificatesRequest = Shapes::StructureShape.new(name: 'ListCACertificatesRequest')
    ListCACertificatesResponse = Shapes::StructureShape.new(name: 'ListCACertificatesResponse')
    ListCertificatesByCARequest = Shapes::StructureShape.new(name: 'ListCertificatesByCARequest')
    ListCertificatesByCAResponse = Shapes::StructureShape.new(name: 'ListCertificatesByCAResponse')
    ListCertificatesRequest = Shapes::StructureShape.new(name: 'ListCertificatesRequest')
    ListCertificatesResponse = Shapes::StructureShape.new(name: 'ListCertificatesResponse')
    ListIndicesRequest = Shapes::StructureShape.new(name: 'ListIndicesRequest')
    ListIndicesResponse = Shapes::StructureShape.new(name: 'ListIndicesResponse')
    ListJobExecutionsForJobRequest = Shapes::StructureShape.new(name: 'ListJobExecutionsForJobRequest')
    ListJobExecutionsForJobResponse = Shapes::StructureShape.new(name: 'ListJobExecutionsForJobResponse')
    ListJobExecutionsForThingRequest = Shapes::StructureShape.new(name: 'ListJobExecutionsForThingRequest')
    ListJobExecutionsForThingResponse = Shapes::StructureShape.new(name: 'ListJobExecutionsForThingResponse')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResponse = Shapes::StructureShape.new(name: 'ListJobsResponse')
    ListOTAUpdatesRequest = Shapes::StructureShape.new(name: 'ListOTAUpdatesRequest')
    ListOTAUpdatesResponse = Shapes::StructureShape.new(name: 'ListOTAUpdatesResponse')
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
    ListRoleAliasesRequest = Shapes::StructureShape.new(name: 'ListRoleAliasesRequest')
    ListRoleAliasesResponse = Shapes::StructureShape.new(name: 'ListRoleAliasesResponse')
    ListScheduledAuditsRequest = Shapes::StructureShape.new(name: 'ListScheduledAuditsRequest')
    ListScheduledAuditsResponse = Shapes::StructureShape.new(name: 'ListScheduledAuditsResponse')
    ListSecurityProfilesForTargetRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilesForTargetRequest')
    ListSecurityProfilesForTargetResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilesForTargetResponse')
    ListSecurityProfilesRequest = Shapes::StructureShape.new(name: 'ListSecurityProfilesRequest')
    ListSecurityProfilesResponse = Shapes::StructureShape.new(name: 'ListSecurityProfilesResponse')
    ListStreamsRequest = Shapes::StructureShape.new(name: 'ListStreamsRequest')
    ListStreamsResponse = Shapes::StructureShape.new(name: 'ListStreamsResponse')
    ListTargetsForPolicyRequest = Shapes::StructureShape.new(name: 'ListTargetsForPolicyRequest')
    ListTargetsForPolicyResponse = Shapes::StructureShape.new(name: 'ListTargetsForPolicyResponse')
    ListTargetsForSecurityProfileRequest = Shapes::StructureShape.new(name: 'ListTargetsForSecurityProfileRequest')
    ListTargetsForSecurityProfileResponse = Shapes::StructureShape.new(name: 'ListTargetsForSecurityProfileResponse')
    ListThingGroupsForThingRequest = Shapes::StructureShape.new(name: 'ListThingGroupsForThingRequest')
    ListThingGroupsForThingResponse = Shapes::StructureShape.new(name: 'ListThingGroupsForThingResponse')
    ListThingGroupsRequest = Shapes::StructureShape.new(name: 'ListThingGroupsRequest')
    ListThingGroupsResponse = Shapes::StructureShape.new(name: 'ListThingGroupsResponse')
    ListThingPrincipalsRequest = Shapes::StructureShape.new(name: 'ListThingPrincipalsRequest')
    ListThingPrincipalsResponse = Shapes::StructureShape.new(name: 'ListThingPrincipalsResponse')
    ListThingRegistrationTaskReportsRequest = Shapes::StructureShape.new(name: 'ListThingRegistrationTaskReportsRequest')
    ListThingRegistrationTaskReportsResponse = Shapes::StructureShape.new(name: 'ListThingRegistrationTaskReportsResponse')
    ListThingRegistrationTasksRequest = Shapes::StructureShape.new(name: 'ListThingRegistrationTasksRequest')
    ListThingRegistrationTasksResponse = Shapes::StructureShape.new(name: 'ListThingRegistrationTasksResponse')
    ListThingTypesRequest = Shapes::StructureShape.new(name: 'ListThingTypesRequest')
    ListThingTypesResponse = Shapes::StructureShape.new(name: 'ListThingTypesResponse')
    ListThingsInThingGroupRequest = Shapes::StructureShape.new(name: 'ListThingsInThingGroupRequest')
    ListThingsInThingGroupResponse = Shapes::StructureShape.new(name: 'ListThingsInThingGroupResponse')
    ListThingsRequest = Shapes::StructureShape.new(name: 'ListThingsRequest')
    ListThingsResponse = Shapes::StructureShape.new(name: 'ListThingsResponse')
    ListTopicRulesRequest = Shapes::StructureShape.new(name: 'ListTopicRulesRequest')
    ListTopicRulesResponse = Shapes::StructureShape.new(name: 'ListTopicRulesResponse')
    ListV2LoggingLevelsRequest = Shapes::StructureShape.new(name: 'ListV2LoggingLevelsRequest')
    ListV2LoggingLevelsResponse = Shapes::StructureShape.new(name: 'ListV2LoggingLevelsResponse')
    ListViolationEventsRequest = Shapes::StructureShape.new(name: 'ListViolationEventsRequest')
    ListViolationEventsResponse = Shapes::StructureShape.new(name: 'ListViolationEventsResponse')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LogTarget = Shapes::StructureShape.new(name: 'LogTarget')
    LogTargetConfiguration = Shapes::StructureShape.new(name: 'LogTargetConfiguration')
    LogTargetConfigurations = Shapes::ListShape.new(name: 'LogTargetConfigurations')
    LogTargetName = Shapes::StringShape.new(name: 'LogTargetName')
    LogTargetType = Shapes::StringShape.new(name: 'LogTargetType')
    LoggingOptionsPayload = Shapes::StructureShape.new(name: 'LoggingOptionsPayload')
    MalformedPolicyException = Shapes::StructureShape.new(name: 'MalformedPolicyException')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MaxJobExecutionsPerMin = Shapes::IntegerShape.new(name: 'MaxJobExecutionsPerMin')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumPerMinute = Shapes::IntegerShape.new(name: 'MaximumPerMinute')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageFormat = Shapes::StringShape.new(name: 'MessageFormat')
    MetricValue = Shapes::StructureShape.new(name: 'MetricValue')
    MissingContextValue = Shapes::StringShape.new(name: 'MissingContextValue')
    MissingContextValues = Shapes::ListShape.new(name: 'MissingContextValues')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonCompliantChecksCount = Shapes::IntegerShape.new(name: 'NonCompliantChecksCount')
    NonCompliantResource = Shapes::StructureShape.new(name: 'NonCompliantResource')
    NonCompliantResourcesCount = Shapes::IntegerShape.new(name: 'NonCompliantResourcesCount')
    NotConfiguredException = Shapes::StructureShape.new(name: 'NotConfiguredException')
    OTAUpdateArn = Shapes::StringShape.new(name: 'OTAUpdateArn')
    OTAUpdateDescription = Shapes::StringShape.new(name: 'OTAUpdateDescription')
    OTAUpdateErrorMessage = Shapes::StringShape.new(name: 'OTAUpdateErrorMessage')
    OTAUpdateFile = Shapes::StructureShape.new(name: 'OTAUpdateFile')
    OTAUpdateFileVersion = Shapes::StringShape.new(name: 'OTAUpdateFileVersion')
    OTAUpdateFiles = Shapes::ListShape.new(name: 'OTAUpdateFiles')
    OTAUpdateId = Shapes::StringShape.new(name: 'OTAUpdateId')
    OTAUpdateInfo = Shapes::StructureShape.new(name: 'OTAUpdateInfo')
    OTAUpdateStatus = Shapes::StringShape.new(name: 'OTAUpdateStatus')
    OTAUpdateSummary = Shapes::StructureShape.new(name: 'OTAUpdateSummary')
    OTAUpdatesSummary = Shapes::ListShape.new(name: 'OTAUpdatesSummary')
    OptionalVersion = Shapes::IntegerShape.new(name: 'OptionalVersion')
    OutgoingCertificate = Shapes::StructureShape.new(name: 'OutgoingCertificate')
    OutgoingCertificates = Shapes::ListShape.new(name: 'OutgoingCertificates')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    Parameter = Shapes::StringShape.new(name: 'Parameter')
    Parameters = Shapes::MapShape.new(name: 'Parameters')
    PartitionKey = Shapes::StringShape.new(name: 'PartitionKey')
    PayloadField = Shapes::StringShape.new(name: 'PayloadField')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Platform = Shapes::StringShape.new(name: 'Platform')
    Policies = Shapes::ListShape.new(name: 'Policies')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyDocuments = Shapes::ListShape.new(name: 'PolicyDocuments')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyNames = Shapes::ListShape.new(name: 'PolicyNames')
    PolicyTarget = Shapes::StringShape.new(name: 'PolicyTarget')
    PolicyTargets = Shapes::ListShape.new(name: 'PolicyTargets')
    PolicyVersion = Shapes::StructureShape.new(name: 'PolicyVersion')
    PolicyVersionId = Shapes::StringShape.new(name: 'PolicyVersionId')
    PolicyVersionIdentifier = Shapes::StructureShape.new(name: 'PolicyVersionIdentifier')
    PolicyVersions = Shapes::ListShape.new(name: 'PolicyVersions')
    Port = Shapes::IntegerShape.new(name: 'Port')
    Ports = Shapes::ListShape.new(name: 'Ports')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    PresignedUrlConfig = Shapes::StructureShape.new(name: 'PresignedUrlConfig')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PrincipalArn = Shapes::StringShape.new(name: 'PrincipalArn')
    PrincipalId = Shapes::StringShape.new(name: 'PrincipalId')
    Principals = Shapes::ListShape.new(name: 'Principals')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    ProcessingTargetName = Shapes::StringShape.new(name: 'ProcessingTargetName')
    ProcessingTargetNameList = Shapes::ListShape.new(name: 'ProcessingTargetNameList')
    PublicKey = Shapes::StringShape.new(name: 'PublicKey')
    PublicKeyMap = Shapes::MapShape.new(name: 'PublicKeyMap')
    PutItemInput = Shapes::StructureShape.new(name: 'PutItemInput')
    QueryMaxResults = Shapes::IntegerShape.new(name: 'QueryMaxResults')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    QueryVersion = Shapes::StringShape.new(name: 'QueryVersion')
    QueueUrl = Shapes::StringShape.new(name: 'QueueUrl')
    QueuedThings = Shapes::IntegerShape.new(name: 'QueuedThings')
    RangeKeyField = Shapes::StringShape.new(name: 'RangeKeyField')
    RangeKeyValue = Shapes::StringShape.new(name: 'RangeKeyValue')
    ReasonForNonCompliance = Shapes::StringShape.new(name: 'ReasonForNonCompliance')
    ReasonForNonComplianceCode = Shapes::StringShape.new(name: 'ReasonForNonComplianceCode')
    Recursive = Shapes::BooleanShape.new(name: 'Recursive')
    RecursiveWithoutDefault = Shapes::BooleanShape.new(name: 'RecursiveWithoutDefault')
    RegisterCACertificateRequest = Shapes::StructureShape.new(name: 'RegisterCACertificateRequest')
    RegisterCACertificateResponse = Shapes::StructureShape.new(name: 'RegisterCACertificateResponse')
    RegisterCertificateRequest = Shapes::StructureShape.new(name: 'RegisterCertificateRequest')
    RegisterCertificateResponse = Shapes::StructureShape.new(name: 'RegisterCertificateResponse')
    RegisterThingRequest = Shapes::StructureShape.new(name: 'RegisterThingRequest')
    RegisterThingResponse = Shapes::StructureShape.new(name: 'RegisterThingResponse')
    RegistrationCode = Shapes::StringShape.new(name: 'RegistrationCode')
    RegistrationCodeValidationException = Shapes::StructureShape.new(name: 'RegistrationCodeValidationException')
    RegistrationConfig = Shapes::StructureShape.new(name: 'RegistrationConfig')
    RegistryMaxResults = Shapes::IntegerShape.new(name: 'RegistryMaxResults')
    RegistryS3BucketName = Shapes::StringShape.new(name: 'RegistryS3BucketName')
    RegistryS3KeyName = Shapes::StringShape.new(name: 'RegistryS3KeyName')
    RejectCertificateTransferRequest = Shapes::StructureShape.new(name: 'RejectCertificateTransferRequest')
    RejectedThings = Shapes::IntegerShape.new(name: 'RejectedThings')
    RelatedResource = Shapes::StructureShape.new(name: 'RelatedResource')
    RelatedResources = Shapes::ListShape.new(name: 'RelatedResources')
    RemoveAutoRegistration = Shapes::BooleanShape.new(name: 'RemoveAutoRegistration')
    RemoveThingFromThingGroupRequest = Shapes::StructureShape.new(name: 'RemoveThingFromThingGroupRequest')
    RemoveThingFromThingGroupResponse = Shapes::StructureShape.new(name: 'RemoveThingFromThingGroupResponse')
    RemoveThingType = Shapes::BooleanShape.new(name: 'RemoveThingType')
    RemovedThings = Shapes::IntegerShape.new(name: 'RemovedThings')
    ReplaceTopicRuleRequest = Shapes::StructureShape.new(name: 'ReplaceTopicRuleRequest')
    ReportType = Shapes::StringShape.new(name: 'ReportType')
    RepublishAction = Shapes::StructureShape.new(name: 'RepublishAction')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArns = Shapes::MapShape.new(name: 'ResourceArns')
    ResourceIdentifier = Shapes::StructureShape.new(name: 'ResourceIdentifier')
    ResourceLogicalId = Shapes::StringShape.new(name: 'ResourceLogicalId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceRegistrationFailureException = Shapes::StructureShape.new(name: 'ResourceRegistrationFailureException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    RoleAlias = Shapes::StringShape.new(name: 'RoleAlias')
    RoleAliasArn = Shapes::StringShape.new(name: 'RoleAliasArn')
    RoleAliasDescription = Shapes::StructureShape.new(name: 'RoleAliasDescription')
    RoleAliases = Shapes::ListShape.new(name: 'RoleAliases')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    S3Action = Shapes::StructureShape.new(name: 'S3Action')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3FileUrl = Shapes::StringShape.new(name: 'S3FileUrl')
    S3FileUrlList = Shapes::ListShape.new(name: 'S3FileUrlList')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3Version = Shapes::StringShape.new(name: 'S3Version')
    SQL = Shapes::StringShape.new(name: 'SQL')
    SalesforceAction = Shapes::StructureShape.new(name: 'SalesforceAction')
    SalesforceEndpoint = Shapes::StringShape.new(name: 'SalesforceEndpoint')
    SalesforceToken = Shapes::StringShape.new(name: 'SalesforceToken')
    ScheduledAuditArn = Shapes::StringShape.new(name: 'ScheduledAuditArn')
    ScheduledAuditMetadata = Shapes::StructureShape.new(name: 'ScheduledAuditMetadata')
    ScheduledAuditMetadataList = Shapes::ListShape.new(name: 'ScheduledAuditMetadataList')
    ScheduledAuditName = Shapes::StringShape.new(name: 'ScheduledAuditName')
    SearchIndexRequest = Shapes::StructureShape.new(name: 'SearchIndexRequest')
    SearchIndexResponse = Shapes::StructureShape.new(name: 'SearchIndexResponse')
    SearchableAttributes = Shapes::ListShape.new(name: 'SearchableAttributes')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    SecurityProfileArn = Shapes::StringShape.new(name: 'SecurityProfileArn')
    SecurityProfileDescription = Shapes::StringShape.new(name: 'SecurityProfileDescription')
    SecurityProfileIdentifier = Shapes::StructureShape.new(name: 'SecurityProfileIdentifier')
    SecurityProfileIdentifiers = Shapes::ListShape.new(name: 'SecurityProfileIdentifiers')
    SecurityProfileName = Shapes::StringShape.new(name: 'SecurityProfileName')
    SecurityProfileTarget = Shapes::StructureShape.new(name: 'SecurityProfileTarget')
    SecurityProfileTargetArn = Shapes::StringShape.new(name: 'SecurityProfileTargetArn')
    SecurityProfileTargetMapping = Shapes::StructureShape.new(name: 'SecurityProfileTargetMapping')
    SecurityProfileTargetMappings = Shapes::ListShape.new(name: 'SecurityProfileTargetMappings')
    SecurityProfileTargets = Shapes::ListShape.new(name: 'SecurityProfileTargets')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetAsActive = Shapes::BooleanShape.new(name: 'SetAsActive')
    SetAsActiveFlag = Shapes::BooleanShape.new(name: 'SetAsActiveFlag')
    SetAsDefault = Shapes::BooleanShape.new(name: 'SetAsDefault')
    SetDefaultAuthorizerRequest = Shapes::StructureShape.new(name: 'SetDefaultAuthorizerRequest')
    SetDefaultAuthorizerResponse = Shapes::StructureShape.new(name: 'SetDefaultAuthorizerResponse')
    SetDefaultPolicyVersionRequest = Shapes::StructureShape.new(name: 'SetDefaultPolicyVersionRequest')
    SetLoggingOptionsRequest = Shapes::StructureShape.new(name: 'SetLoggingOptionsRequest')
    SetV2LoggingLevelRequest = Shapes::StructureShape.new(name: 'SetV2LoggingLevelRequest')
    SetV2LoggingOptionsRequest = Shapes::StructureShape.new(name: 'SetV2LoggingOptionsRequest')
    Signature = Shapes::BlobShape.new(name: 'Signature')
    SignatureAlgorithm = Shapes::StringShape.new(name: 'SignatureAlgorithm')
    SigningJobId = Shapes::StringShape.new(name: 'SigningJobId')
    SigningProfileName = Shapes::StringShape.new(name: 'SigningProfileName')
    SigningProfileParameter = Shapes::StructureShape.new(name: 'SigningProfileParameter')
    SkyfallMaxResults = Shapes::IntegerShape.new(name: 'SkyfallMaxResults')
    SnsAction = Shapes::StructureShape.new(name: 'SnsAction')
    SqlParseException = Shapes::StructureShape.new(name: 'SqlParseException')
    SqsAction = Shapes::StructureShape.new(name: 'SqsAction')
    StartOnDemandAuditTaskRequest = Shapes::StructureShape.new(name: 'StartOnDemandAuditTaskRequest')
    StartOnDemandAuditTaskResponse = Shapes::StructureShape.new(name: 'StartOnDemandAuditTaskResponse')
    StartSigningJobParameter = Shapes::StructureShape.new(name: 'StartSigningJobParameter')
    StartThingRegistrationTaskRequest = Shapes::StructureShape.new(name: 'StartThingRegistrationTaskRequest')
    StartThingRegistrationTaskResponse = Shapes::StructureShape.new(name: 'StartThingRegistrationTaskResponse')
    StateMachineName = Shapes::StringShape.new(name: 'StateMachineName')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StateValue = Shapes::StringShape.new(name: 'StateValue')
    Status = Shapes::StringShape.new(name: 'Status')
    StepFunctionsAction = Shapes::StructureShape.new(name: 'StepFunctionsAction')
    StopThingRegistrationTaskRequest = Shapes::StructureShape.new(name: 'StopThingRegistrationTaskRequest')
    StopThingRegistrationTaskResponse = Shapes::StructureShape.new(name: 'StopThingRegistrationTaskResponse')
    Stream = Shapes::StructureShape.new(name: 'Stream')
    StreamArn = Shapes::StringShape.new(name: 'StreamArn')
    StreamDescription = Shapes::StringShape.new(name: 'StreamDescription')
    StreamFile = Shapes::StructureShape.new(name: 'StreamFile')
    StreamFiles = Shapes::ListShape.new(name: 'StreamFiles')
    StreamId = Shapes::StringShape.new(name: 'StreamId')
    StreamInfo = Shapes::StructureShape.new(name: 'StreamInfo')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamSummary = Shapes::StructureShape.new(name: 'StreamSummary')
    StreamVersion = Shapes::IntegerShape.new(name: 'StreamVersion')
    StreamsSummary = Shapes::ListShape.new(name: 'StreamsSummary')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SucceededThings = Shapes::IntegerShape.new(name: 'SucceededThings')
    TableName = Shapes::StringShape.new(name: 'TableName')
    Target = Shapes::StringShape.new(name: 'Target')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetAuditCheckNames = Shapes::ListShape.new(name: 'TargetAuditCheckNames')
    TargetSelection = Shapes::StringShape.new(name: 'TargetSelection')
    Targets = Shapes::ListShape.new(name: 'Targets')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskIdList = Shapes::ListShape.new(name: 'TaskIdList')
    TaskStatistics = Shapes::StructureShape.new(name: 'TaskStatistics')
    TemplateBody = Shapes::StringShape.new(name: 'TemplateBody')
    TestAuthorizationRequest = Shapes::StructureShape.new(name: 'TestAuthorizationRequest')
    TestAuthorizationResponse = Shapes::StructureShape.new(name: 'TestAuthorizationResponse')
    TestInvokeAuthorizerRequest = Shapes::StructureShape.new(name: 'TestInvokeAuthorizerRequest')
    TestInvokeAuthorizerResponse = Shapes::StructureShape.new(name: 'TestInvokeAuthorizerResponse')
    ThingArn = Shapes::StringShape.new(name: 'ThingArn')
    ThingAttribute = Shapes::StructureShape.new(name: 'ThingAttribute')
    ThingAttributeList = Shapes::ListShape.new(name: 'ThingAttributeList')
    ThingDocument = Shapes::StructureShape.new(name: 'ThingDocument')
    ThingDocumentList = Shapes::ListShape.new(name: 'ThingDocumentList')
    ThingGroupArn = Shapes::StringShape.new(name: 'ThingGroupArn')
    ThingGroupDescription = Shapes::StringShape.new(name: 'ThingGroupDescription')
    ThingGroupDocument = Shapes::StructureShape.new(name: 'ThingGroupDocument')
    ThingGroupDocumentList = Shapes::ListShape.new(name: 'ThingGroupDocumentList')
    ThingGroupId = Shapes::StringShape.new(name: 'ThingGroupId')
    ThingGroupIndexingConfiguration = Shapes::StructureShape.new(name: 'ThingGroupIndexingConfiguration')
    ThingGroupIndexingMode = Shapes::StringShape.new(name: 'ThingGroupIndexingMode')
    ThingGroupList = Shapes::ListShape.new(name: 'ThingGroupList')
    ThingGroupMetadata = Shapes::StructureShape.new(name: 'ThingGroupMetadata')
    ThingGroupName = Shapes::StringShape.new(name: 'ThingGroupName')
    ThingGroupNameAndArnList = Shapes::ListShape.new(name: 'ThingGroupNameAndArnList')
    ThingGroupNameList = Shapes::ListShape.new(name: 'ThingGroupNameList')
    ThingGroupProperties = Shapes::StructureShape.new(name: 'ThingGroupProperties')
    ThingId = Shapes::StringShape.new(name: 'ThingId')
    ThingIndexingConfiguration = Shapes::StructureShape.new(name: 'ThingIndexingConfiguration')
    ThingIndexingMode = Shapes::StringShape.new(name: 'ThingIndexingMode')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThingNameList = Shapes::ListShape.new(name: 'ThingNameList')
    ThingTypeArn = Shapes::StringShape.new(name: 'ThingTypeArn')
    ThingTypeDefinition = Shapes::StructureShape.new(name: 'ThingTypeDefinition')
    ThingTypeDescription = Shapes::StringShape.new(name: 'ThingTypeDescription')
    ThingTypeId = Shapes::StringShape.new(name: 'ThingTypeId')
    ThingTypeList = Shapes::ListShape.new(name: 'ThingTypeList')
    ThingTypeMetadata = Shapes::StructureShape.new(name: 'ThingTypeMetadata')
    ThingTypeName = Shapes::StringShape.new(name: 'ThingTypeName')
    ThingTypeProperties = Shapes::StructureShape.new(name: 'ThingTypeProperties')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TokenKeyName = Shapes::StringShape.new(name: 'TokenKeyName')
    TokenSignature = Shapes::StringShape.new(name: 'TokenSignature')
    Topic = Shapes::StringShape.new(name: 'Topic')
    TopicPattern = Shapes::StringShape.new(name: 'TopicPattern')
    TopicRule = Shapes::StructureShape.new(name: 'TopicRule')
    TopicRuleList = Shapes::ListShape.new(name: 'TopicRuleList')
    TopicRuleListItem = Shapes::StructureShape.new(name: 'TopicRuleListItem')
    TopicRulePayload = Shapes::StructureShape.new(name: 'TopicRulePayload')
    TotalChecksCount = Shapes::IntegerShape.new(name: 'TotalChecksCount')
    TotalResourcesCount = Shapes::IntegerShape.new(name: 'TotalResourcesCount')
    TransferAlreadyCompletedException = Shapes::StructureShape.new(name: 'TransferAlreadyCompletedException')
    TransferCertificateRequest = Shapes::StructureShape.new(name: 'TransferCertificateRequest')
    TransferCertificateResponse = Shapes::StructureShape.new(name: 'TransferCertificateResponse')
    TransferConflictException = Shapes::StructureShape.new(name: 'TransferConflictException')
    TransferData = Shapes::StructureShape.new(name: 'TransferData')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UndoDeprecate = Shapes::BooleanShape.new(name: 'UndoDeprecate')
    UnsignedLong = Shapes::IntegerShape.new(name: 'UnsignedLong')
    UpdateAccountAuditConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAccountAuditConfigurationRequest')
    UpdateAccountAuditConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAccountAuditConfigurationResponse')
    UpdateAuthorizerRequest = Shapes::StructureShape.new(name: 'UpdateAuthorizerRequest')
    UpdateAuthorizerResponse = Shapes::StructureShape.new(name: 'UpdateAuthorizerResponse')
    UpdateCACertificateRequest = Shapes::StructureShape.new(name: 'UpdateCACertificateRequest')
    UpdateCertificateRequest = Shapes::StructureShape.new(name: 'UpdateCertificateRequest')
    UpdateEventConfigurationsRequest = Shapes::StructureShape.new(name: 'UpdateEventConfigurationsRequest')
    UpdateEventConfigurationsResponse = Shapes::StructureShape.new(name: 'UpdateEventConfigurationsResponse')
    UpdateIndexingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateIndexingConfigurationRequest')
    UpdateIndexingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateIndexingConfigurationResponse')
    UpdateRoleAliasRequest = Shapes::StructureShape.new(name: 'UpdateRoleAliasRequest')
    UpdateRoleAliasResponse = Shapes::StructureShape.new(name: 'UpdateRoleAliasResponse')
    UpdateScheduledAuditRequest = Shapes::StructureShape.new(name: 'UpdateScheduledAuditRequest')
    UpdateScheduledAuditResponse = Shapes::StructureShape.new(name: 'UpdateScheduledAuditResponse')
    UpdateSecurityProfileRequest = Shapes::StructureShape.new(name: 'UpdateSecurityProfileRequest')
    UpdateSecurityProfileResponse = Shapes::StructureShape.new(name: 'UpdateSecurityProfileResponse')
    UpdateStreamRequest = Shapes::StructureShape.new(name: 'UpdateStreamRequest')
    UpdateStreamResponse = Shapes::StructureShape.new(name: 'UpdateStreamResponse')
    UpdateThingGroupRequest = Shapes::StructureShape.new(name: 'UpdateThingGroupRequest')
    UpdateThingGroupResponse = Shapes::StructureShape.new(name: 'UpdateThingGroupResponse')
    UpdateThingGroupsForThingRequest = Shapes::StructureShape.new(name: 'UpdateThingGroupsForThingRequest')
    UpdateThingGroupsForThingResponse = Shapes::StructureShape.new(name: 'UpdateThingGroupsForThingResponse')
    UpdateThingRequest = Shapes::StructureShape.new(name: 'UpdateThingRequest')
    UpdateThingResponse = Shapes::StructureShape.new(name: 'UpdateThingResponse')
    UseBase64 = Shapes::BooleanShape.new(name: 'UseBase64')
    Valid = Shapes::BooleanShape.new(name: 'Valid')
    ValidateSecurityProfileBehaviorsRequest = Shapes::StructureShape.new(name: 'ValidateSecurityProfileBehaviorsRequest')
    ValidateSecurityProfileBehaviorsResponse = Shapes::StructureShape.new(name: 'ValidateSecurityProfileBehaviorsResponse')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    ValidationErrors = Shapes::ListShape.new(name: 'ValidationErrors')
    Value = Shapes::StringShape.new(name: 'Value')
    Version = Shapes::IntegerShape.new(name: 'Version')
    VersionConflictException = Shapes::StructureShape.new(name: 'VersionConflictException')
    VersionNumber = Shapes::IntegerShape.new(name: 'VersionNumber')
    VersionsLimitExceededException = Shapes::StructureShape.new(name: 'VersionsLimitExceededException')
    ViolationEvent = Shapes::StructureShape.new(name: 'ViolationEvent')
    ViolationEventType = Shapes::StringShape.new(name: 'ViolationEventType')
    ViolationEvents = Shapes::ListShape.new(name: 'ViolationEvents')
    ViolationId = Shapes::StringShape.new(name: 'ViolationId')
    WaitingForDataCollectionChecksCount = Shapes::IntegerShape.new(name: 'WaitingForDataCollectionChecksCount')
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
    Action.add_member(:iot_analytics, Shapes::ShapeRef.new(shape: IotAnalyticsAction, location_name: "iotAnalytics"))
    Action.add_member(:step_functions, Shapes::ShapeRef.new(shape: StepFunctionsAction, location_name: "stepFunctions"))
    Action.struct_class = Types::Action

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    ActiveViolation.add_member(:violation_id, Shapes::ShapeRef.new(shape: ViolationId, location_name: "violationId"))
    ActiveViolation.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ActiveViolation.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "securityProfileName"))
    ActiveViolation.add_member(:behavior, Shapes::ShapeRef.new(shape: Behavior, location_name: "behavior"))
    ActiveViolation.add_member(:last_violation_value, Shapes::ShapeRef.new(shape: MetricValue, location_name: "lastViolationValue"))
    ActiveViolation.add_member(:last_violation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastViolationTime"))
    ActiveViolation.add_member(:violation_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "violationStartTime"))
    ActiveViolation.struct_class = Types::ActiveViolation

    ActiveViolations.member = Shapes::ShapeRef.new(shape: ActiveViolation)

    AddThingToThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "thingGroupName"))
    AddThingToThingGroupRequest.add_member(:thing_group_arn, Shapes::ShapeRef.new(shape: ThingGroupArn, location_name: "thingGroupArn"))
    AddThingToThingGroupRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    AddThingToThingGroupRequest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    AddThingToThingGroupRequest.struct_class = Types::AddThingToThingGroupRequest

    AddThingToThingGroupResponse.struct_class = Types::AddThingToThingGroupResponse

    AdditionalParameterMap.key = Shapes::ShapeRef.new(shape: AttributeKey)
    AdditionalParameterMap.value = Shapes::ShapeRef.new(shape: Value)

    AlertTarget.add_member(:alert_target_arn, Shapes::ShapeRef.new(shape: AlertTargetArn, required: true, location_name: "alertTargetArn"))
    AlertTarget.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    AlertTarget.struct_class = Types::AlertTarget

    AlertTargets.key = Shapes::ShapeRef.new(shape: AlertTargetType)
    AlertTargets.value = Shapes::ShapeRef.new(shape: AlertTarget)

    Allowed.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    Allowed.struct_class = Types::Allowed

    AssociateTargetsWithJobRequest.add_member(:targets, Shapes::ShapeRef.new(shape: JobTargets, required: true, location_name: "targets"))
    AssociateTargetsWithJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    AssociateTargetsWithJobRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    AssociateTargetsWithJobRequest.struct_class = Types::AssociateTargetsWithJobRequest

    AssociateTargetsWithJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    AssociateTargetsWithJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    AssociateTargetsWithJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    AssociateTargetsWithJobResponse.struct_class = Types::AssociateTargetsWithJobResponse

    AttachPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    AttachPolicyRequest.add_member(:target, Shapes::ShapeRef.new(shape: PolicyTarget, required: true, location_name: "target"))
    AttachPolicyRequest.struct_class = Types::AttachPolicyRequest

    AttachPrincipalPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    AttachPrincipalPolicyRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-iot-principal"))
    AttachPrincipalPolicyRequest.struct_class = Types::AttachPrincipalPolicyRequest

    AttachSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    AttachSecurityProfileRequest.add_member(:security_profile_target_arn, Shapes::ShapeRef.new(shape: SecurityProfileTargetArn, required: true, location: "querystring", location_name: "securityProfileTargetArn"))
    AttachSecurityProfileRequest.struct_class = Types::AttachSecurityProfileRequest

    AttachSecurityProfileResponse.struct_class = Types::AttachSecurityProfileResponse

    AttachThingPrincipalRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    AttachThingPrincipalRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-principal"))
    AttachThingPrincipalRequest.struct_class = Types::AttachThingPrincipalRequest

    AttachThingPrincipalResponse.struct_class = Types::AttachThingPrincipalResponse

    AttributePayload.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    AttributePayload.add_member(:merge, Shapes::ShapeRef.new(shape: Flag, location_name: "merge"))
    AttributePayload.struct_class = Types::AttributePayload

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributesMap.key = Shapes::ShapeRef.new(shape: AttributeKey)
    AttributesMap.value = Shapes::ShapeRef.new(shape: Value)

    AuditCheckConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    AuditCheckConfiguration.struct_class = Types::AuditCheckConfiguration

    AuditCheckConfigurations.key = Shapes::ShapeRef.new(shape: AuditCheckName)
    AuditCheckConfigurations.value = Shapes::ShapeRef.new(shape: AuditCheckConfiguration)

    AuditCheckDetails.add_member(:check_run_status, Shapes::ShapeRef.new(shape: AuditCheckRunStatus, location_name: "checkRunStatus"))
    AuditCheckDetails.add_member(:check_compliant, Shapes::ShapeRef.new(shape: CheckCompliant, location_name: "checkCompliant"))
    AuditCheckDetails.add_member(:total_resources_count, Shapes::ShapeRef.new(shape: TotalResourcesCount, location_name: "totalResourcesCount"))
    AuditCheckDetails.add_member(:non_compliant_resources_count, Shapes::ShapeRef.new(shape: NonCompliantResourcesCount, location_name: "nonCompliantResourcesCount"))
    AuditCheckDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    AuditCheckDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AuditCheckDetails.struct_class = Types::AuditCheckDetails

    AuditDetails.key = Shapes::ShapeRef.new(shape: AuditCheckName)
    AuditDetails.value = Shapes::ShapeRef.new(shape: AuditCheckDetails)

    AuditFinding.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, location_name: "taskId"))
    AuditFinding.add_member(:check_name, Shapes::ShapeRef.new(shape: AuditCheckName, location_name: "checkName"))
    AuditFinding.add_member(:task_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "taskStartTime"))
    AuditFinding.add_member(:finding_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "findingTime"))
    AuditFinding.add_member(:severity, Shapes::ShapeRef.new(shape: AuditFindingSeverity, location_name: "severity"))
    AuditFinding.add_member(:non_compliant_resource, Shapes::ShapeRef.new(shape: NonCompliantResource, location_name: "nonCompliantResource"))
    AuditFinding.add_member(:related_resources, Shapes::ShapeRef.new(shape: RelatedResources, location_name: "relatedResources"))
    AuditFinding.add_member(:reason_for_non_compliance, Shapes::ShapeRef.new(shape: ReasonForNonCompliance, location_name: "reasonForNonCompliance"))
    AuditFinding.add_member(:reason_for_non_compliance_code, Shapes::ShapeRef.new(shape: ReasonForNonComplianceCode, location_name: "reasonForNonComplianceCode"))
    AuditFinding.struct_class = Types::AuditFinding

    AuditFindings.member = Shapes::ShapeRef.new(shape: AuditFinding)

    AuditNotificationTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    AuditNotificationTarget.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    AuditNotificationTarget.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "enabled"))
    AuditNotificationTarget.struct_class = Types::AuditNotificationTarget

    AuditNotificationTargetConfigurations.key = Shapes::ShapeRef.new(shape: AuditNotificationType)
    AuditNotificationTargetConfigurations.value = Shapes::ShapeRef.new(shape: AuditNotificationTarget)

    AuditTaskMetadata.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, location_name: "taskId"))
    AuditTaskMetadata.add_member(:task_status, Shapes::ShapeRef.new(shape: AuditTaskStatus, location_name: "taskStatus"))
    AuditTaskMetadata.add_member(:task_type, Shapes::ShapeRef.new(shape: AuditTaskType, location_name: "taskType"))
    AuditTaskMetadata.struct_class = Types::AuditTaskMetadata

    AuditTaskMetadataList.member = Shapes::ShapeRef.new(shape: AuditTaskMetadata)

    AuthInfo.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "actionType"))
    AuthInfo.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    AuthInfo.struct_class = Types::AuthInfo

    AuthInfos.member = Shapes::ShapeRef.new(shape: AuthInfo)

    AuthResult.add_member(:auth_info, Shapes::ShapeRef.new(shape: AuthInfo, location_name: "authInfo"))
    AuthResult.add_member(:allowed, Shapes::ShapeRef.new(shape: Allowed, location_name: "allowed"))
    AuthResult.add_member(:denied, Shapes::ShapeRef.new(shape: Denied, location_name: "denied"))
    AuthResult.add_member(:auth_decision, Shapes::ShapeRef.new(shape: AuthDecision, location_name: "authDecision"))
    AuthResult.add_member(:missing_context_values, Shapes::ShapeRef.new(shape: MissingContextValues, location_name: "missingContextValues"))
    AuthResult.struct_class = Types::AuthResult

    AuthResults.member = Shapes::ShapeRef.new(shape: AuthResult)

    AuthorizerDescription.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, location_name: "authorizerName"))
    AuthorizerDescription.add_member(:authorizer_arn, Shapes::ShapeRef.new(shape: AuthorizerArn, location_name: "authorizerArn"))
    AuthorizerDescription.add_member(:authorizer_function_arn, Shapes::ShapeRef.new(shape: AuthorizerFunctionArn, location_name: "authorizerFunctionArn"))
    AuthorizerDescription.add_member(:token_key_name, Shapes::ShapeRef.new(shape: TokenKeyName, location_name: "tokenKeyName"))
    AuthorizerDescription.add_member(:token_signing_public_keys, Shapes::ShapeRef.new(shape: PublicKeyMap, location_name: "tokenSigningPublicKeys"))
    AuthorizerDescription.add_member(:status, Shapes::ShapeRef.new(shape: AuthorizerStatus, location_name: "status"))
    AuthorizerDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    AuthorizerDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    AuthorizerDescription.struct_class = Types::AuthorizerDescription

    AuthorizerSummary.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, location_name: "authorizerName"))
    AuthorizerSummary.add_member(:authorizer_arn, Shapes::ShapeRef.new(shape: AuthorizerArn, location_name: "authorizerArn"))
    AuthorizerSummary.struct_class = Types::AuthorizerSummary

    Authorizers.member = Shapes::ShapeRef.new(shape: AuthorizerSummary)

    AwsJobExecutionsRolloutConfig.add_member(:maximum_per_minute, Shapes::ShapeRef.new(shape: MaximumPerMinute, location_name: "maximumPerMinute"))
    AwsJobExecutionsRolloutConfig.struct_class = Types::AwsJobExecutionsRolloutConfig

    Behavior.add_member(:name, Shapes::ShapeRef.new(shape: BehaviorName, required: true, location_name: "name"))
    Behavior.add_member(:metric, Shapes::ShapeRef.new(shape: BehaviorMetric, location_name: "metric"))
    Behavior.add_member(:criteria, Shapes::ShapeRef.new(shape: BehaviorCriteria, location_name: "criteria"))
    Behavior.struct_class = Types::Behavior

    BehaviorCriteria.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator"))
    BehaviorCriteria.add_member(:value, Shapes::ShapeRef.new(shape: MetricValue, location_name: "value"))
    BehaviorCriteria.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "durationSeconds"))
    BehaviorCriteria.struct_class = Types::BehaviorCriteria

    Behaviors.member = Shapes::ShapeRef.new(shape: Behavior)

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
    CACertificateDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    CACertificateDescription.add_member(:customer_version, Shapes::ShapeRef.new(shape: CustomerVersion, location_name: "customerVersion"))
    CACertificateDescription.add_member(:generation_id, Shapes::ShapeRef.new(shape: GenerationId, location_name: "generationId"))
    CACertificateDescription.add_member(:validity, Shapes::ShapeRef.new(shape: CertificateValidity, location_name: "validity"))
    CACertificateDescription.struct_class = Types::CACertificateDescription

    CACertificates.member = Shapes::ShapeRef.new(shape: CACertificate)

    CancelAuditTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, required: true, location: "uri", location_name: "taskId"))
    CancelAuditTaskRequest.struct_class = Types::CancelAuditTaskRequest

    CancelAuditTaskResponse.struct_class = Types::CancelAuditTaskResponse

    CancelCertificateTransferRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    CancelCertificateTransferRequest.struct_class = Types::CancelCertificateTransferRequest

    CancelJobExecutionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    CancelJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    CancelJobExecutionRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location: "querystring", location_name: "force"))
    CancelJobExecutionRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: ExpectedVersion, location_name: "expectedVersion"))
    CancelJobExecutionRequest.add_member(:status_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "statusDetails"))
    CancelJobExecutionRequest.struct_class = Types::CancelJobExecutionRequest

    CancelJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    CancelJobRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    CancelJobRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location: "querystring", location_name: "force"))
    CancelJobRequest.struct_class = Types::CancelJobRequest

    CancelJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    CancelJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    CancelJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    CancelJobResponse.struct_class = Types::CancelJobResponse

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
    CertificateDescription.add_member(:customer_version, Shapes::ShapeRef.new(shape: CustomerVersion, location_name: "customerVersion"))
    CertificateDescription.add_member(:transfer_data, Shapes::ShapeRef.new(shape: TransferData, location_name: "transferData"))
    CertificateDescription.add_member(:generation_id, Shapes::ShapeRef.new(shape: GenerationId, location_name: "generationId"))
    CertificateDescription.add_member(:validity, Shapes::ShapeRef.new(shape: CertificateValidity, location_name: "validity"))
    CertificateDescription.struct_class = Types::CertificateDescription

    CertificateValidity.add_member(:not_before, Shapes::ShapeRef.new(shape: DateType, location_name: "notBefore"))
    CertificateValidity.add_member(:not_after, Shapes::ShapeRef.new(shape: DateType, location_name: "notAfter"))
    CertificateValidity.struct_class = Types::CertificateValidity

    Certificates.member = Shapes::ShapeRef.new(shape: Certificate)

    Cidrs.member = Shapes::ShapeRef.new(shape: Cidr)

    ClearDefaultAuthorizerRequest.struct_class = Types::ClearDefaultAuthorizerRequest

    ClearDefaultAuthorizerResponse.struct_class = Types::ClearDefaultAuthorizerResponse

    CloudwatchAlarmAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    CloudwatchAlarmAction.add_member(:alarm_name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "alarmName"))
    CloudwatchAlarmAction.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, required: true, location_name: "stateReason"))
    CloudwatchAlarmAction.add_member(:state_value, Shapes::ShapeRef.new(shape: StateValue, required: true, location_name: "stateValue"))
    CloudwatchAlarmAction.struct_class = Types::CloudwatchAlarmAction

    CloudwatchMetricAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    CloudwatchMetricAction.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "metricNamespace"))
    CloudwatchMetricAction.add_member(:metric_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "metricName"))
    CloudwatchMetricAction.add_member(:metric_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "metricValue"))
    CloudwatchMetricAction.add_member(:metric_unit, Shapes::ShapeRef.new(shape: String, required: true, location_name: "metricUnit"))
    CloudwatchMetricAction.add_member(:metric_timestamp, Shapes::ShapeRef.new(shape: String, location_name: "metricTimestamp"))
    CloudwatchMetricAction.struct_class = Types::CloudwatchMetricAction

    CodeSigning.add_member(:aws_signer_job_id, Shapes::ShapeRef.new(shape: SigningJobId, location_name: "awsSignerJobId"))
    CodeSigning.add_member(:start_signing_job_parameter, Shapes::ShapeRef.new(shape: StartSigningJobParameter, location_name: "startSigningJobParameter"))
    CodeSigning.add_member(:custom_code_signing, Shapes::ShapeRef.new(shape: CustomCodeSigning, location_name: "customCodeSigning"))
    CodeSigning.struct_class = Types::CodeSigning

    CodeSigningCertificateChain.add_member(:certificate_name, Shapes::ShapeRef.new(shape: CertificateName, location_name: "certificateName"))
    CodeSigningCertificateChain.add_member(:inline_document, Shapes::ShapeRef.new(shape: InlineDocument, location_name: "inlineDocument"))
    CodeSigningCertificateChain.struct_class = Types::CodeSigningCertificateChain

    CodeSigningSignature.add_member(:inline_document, Shapes::ShapeRef.new(shape: Signature, location_name: "inlineDocument"))
    CodeSigningSignature.struct_class = Types::CodeSigningSignature

    Configuration.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    Configuration.struct_class = Types::Configuration

    CreateAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location: "uri", location_name: "authorizerName"))
    CreateAuthorizerRequest.add_member(:authorizer_function_arn, Shapes::ShapeRef.new(shape: AuthorizerFunctionArn, required: true, location_name: "authorizerFunctionArn"))
    CreateAuthorizerRequest.add_member(:token_key_name, Shapes::ShapeRef.new(shape: TokenKeyName, required: true, location_name: "tokenKeyName"))
    CreateAuthorizerRequest.add_member(:token_signing_public_keys, Shapes::ShapeRef.new(shape: PublicKeyMap, required: true, location_name: "tokenSigningPublicKeys"))
    CreateAuthorizerRequest.add_member(:status, Shapes::ShapeRef.new(shape: AuthorizerStatus, location_name: "status"))
    CreateAuthorizerRequest.struct_class = Types::CreateAuthorizerRequest

    CreateAuthorizerResponse.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, location_name: "authorizerName"))
    CreateAuthorizerResponse.add_member(:authorizer_arn, Shapes::ShapeRef.new(shape: AuthorizerArn, location_name: "authorizerArn"))
    CreateAuthorizerResponse.struct_class = Types::CreateAuthorizerResponse

    CreateCertificateFromCsrRequest.add_member(:certificate_signing_request, Shapes::ShapeRef.new(shape: CertificateSigningRequest, required: true, location_name: "certificateSigningRequest"))
    CreateCertificateFromCsrRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    CreateCertificateFromCsrRequest.struct_class = Types::CreateCertificateFromCsrRequest

    CreateCertificateFromCsrResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateCertificateFromCsrResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CreateCertificateFromCsrResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CreateCertificateFromCsrResponse.struct_class = Types::CreateCertificateFromCsrResponse

    CreateJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    CreateJobRequest.add_member(:targets, Shapes::ShapeRef.new(shape: JobTargets, required: true, location_name: "targets"))
    CreateJobRequest.add_member(:document_source, Shapes::ShapeRef.new(shape: JobDocumentSource, location_name: "documentSource"))
    CreateJobRequest.add_member(:document, Shapes::ShapeRef.new(shape: JobDocument, location_name: "document"))
    CreateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    CreateJobRequest.add_member(:presigned_url_config, Shapes::ShapeRef.new(shape: PresignedUrlConfig, location_name: "presignedUrlConfig"))
    CreateJobRequest.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location_name: "targetSelection"))
    CreateJobRequest.add_member(:job_executions_rollout_config, Shapes::ShapeRef.new(shape: JobExecutionsRolloutConfig, location_name: "jobExecutionsRolloutConfig"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    CreateJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    CreateJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    CreateJobResponse.struct_class = Types::CreateJobResponse

    CreateKeysAndCertificateRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    CreateKeysAndCertificateRequest.struct_class = Types::CreateKeysAndCertificateRequest

    CreateKeysAndCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    CreateKeysAndCertificateResponse.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    CreateKeysAndCertificateResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    CreateKeysAndCertificateResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "keyPair"))
    CreateKeysAndCertificateResponse.struct_class = Types::CreateKeysAndCertificateResponse

    CreateOTAUpdateRequest.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, required: true, location: "uri", location_name: "otaUpdateId"))
    CreateOTAUpdateRequest.add_member(:description, Shapes::ShapeRef.new(shape: OTAUpdateDescription, location_name: "description"))
    CreateOTAUpdateRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "targets"))
    CreateOTAUpdateRequest.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location_name: "targetSelection"))
    CreateOTAUpdateRequest.add_member(:aws_job_executions_rollout_config, Shapes::ShapeRef.new(shape: AwsJobExecutionsRolloutConfig, location_name: "awsJobExecutionsRolloutConfig"))
    CreateOTAUpdateRequest.add_member(:files, Shapes::ShapeRef.new(shape: OTAUpdateFiles, required: true, location_name: "files"))
    CreateOTAUpdateRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateOTAUpdateRequest.add_member(:additional_parameters, Shapes::ShapeRef.new(shape: AdditionalParameterMap, location_name: "additionalParameters"))
    CreateOTAUpdateRequest.struct_class = Types::CreateOTAUpdateRequest

    CreateOTAUpdateResponse.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, location_name: "otaUpdateId"))
    CreateOTAUpdateResponse.add_member(:aws_iot_job_id, Shapes::ShapeRef.new(shape: AwsIotJobId, location_name: "awsIotJobId"))
    CreateOTAUpdateResponse.add_member(:ota_update_arn, Shapes::ShapeRef.new(shape: OTAUpdateArn, location_name: "otaUpdateArn"))
    CreateOTAUpdateResponse.add_member(:aws_iot_job_arn, Shapes::ShapeRef.new(shape: AwsIotJobArn, location_name: "awsIotJobArn"))
    CreateOTAUpdateResponse.add_member(:ota_update_status, Shapes::ShapeRef.new(shape: OTAUpdateStatus, location_name: "otaUpdateStatus"))
    CreateOTAUpdateResponse.struct_class = Types::CreateOTAUpdateResponse

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

    CreateRoleAliasRequest.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, required: true, location: "uri", location_name: "roleAlias"))
    CreateRoleAliasRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateRoleAliasRequest.add_member(:credential_duration_seconds, Shapes::ShapeRef.new(shape: CredentialDurationSeconds, location_name: "credentialDurationSeconds"))
    CreateRoleAliasRequest.struct_class = Types::CreateRoleAliasRequest

    CreateRoleAliasResponse.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, location_name: "roleAlias"))
    CreateRoleAliasResponse.add_member(:role_alias_arn, Shapes::ShapeRef.new(shape: RoleAliasArn, location_name: "roleAliasArn"))
    CreateRoleAliasResponse.struct_class = Types::CreateRoleAliasResponse

    CreateScheduledAuditRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: AuditFrequency, required: true, location_name: "frequency"))
    CreateScheduledAuditRequest.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "dayOfMonth"))
    CreateScheduledAuditRequest.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    CreateScheduledAuditRequest.add_member(:target_check_names, Shapes::ShapeRef.new(shape: TargetAuditCheckNames, required: true, location_name: "targetCheckNames"))
    CreateScheduledAuditRequest.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, required: true, location: "uri", location_name: "scheduledAuditName"))
    CreateScheduledAuditRequest.struct_class = Types::CreateScheduledAuditRequest

    CreateScheduledAuditResponse.add_member(:scheduled_audit_arn, Shapes::ShapeRef.new(shape: ScheduledAuditArn, location_name: "scheduledAuditArn"))
    CreateScheduledAuditResponse.struct_class = Types::CreateScheduledAuditResponse

    CreateSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    CreateSecurityProfileRequest.add_member(:security_profile_description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "securityProfileDescription"))
    CreateSecurityProfileRequest.add_member(:behaviors, Shapes::ShapeRef.new(shape: Behaviors, required: true, location_name: "behaviors"))
    CreateSecurityProfileRequest.add_member(:alert_targets, Shapes::ShapeRef.new(shape: AlertTargets, location_name: "alertTargets"))
    CreateSecurityProfileRequest.struct_class = Types::CreateSecurityProfileRequest

    CreateSecurityProfileResponse.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "securityProfileName"))
    CreateSecurityProfileResponse.add_member(:security_profile_arn, Shapes::ShapeRef.new(shape: SecurityProfileArn, location_name: "securityProfileArn"))
    CreateSecurityProfileResponse.struct_class = Types::CreateSecurityProfileResponse

    CreateStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, required: true, location: "uri", location_name: "streamId"))
    CreateStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    CreateStreamRequest.add_member(:files, Shapes::ShapeRef.new(shape: StreamFiles, required: true, location_name: "files"))
    CreateStreamRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateStreamRequest.struct_class = Types::CreateStreamRequest

    CreateStreamResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    CreateStreamResponse.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "streamArn"))
    CreateStreamResponse.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    CreateStreamResponse.add_member(:stream_version, Shapes::ShapeRef.new(shape: StreamVersion, location_name: "streamVersion"))
    CreateStreamResponse.struct_class = Types::CreateStreamResponse

    CreateThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, required: true, location: "uri", location_name: "thingGroupName"))
    CreateThingGroupRequest.add_member(:parent_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "parentGroupName"))
    CreateThingGroupRequest.add_member(:thing_group_properties, Shapes::ShapeRef.new(shape: ThingGroupProperties, location_name: "thingGroupProperties"))
    CreateThingGroupRequest.struct_class = Types::CreateThingGroupRequest

    CreateThingGroupResponse.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "thingGroupName"))
    CreateThingGroupResponse.add_member(:thing_group_arn, Shapes::ShapeRef.new(shape: ThingGroupArn, location_name: "thingGroupArn"))
    CreateThingGroupResponse.add_member(:thing_group_id, Shapes::ShapeRef.new(shape: ThingGroupId, location_name: "thingGroupId"))
    CreateThingGroupResponse.struct_class = Types::CreateThingGroupResponse

    CreateThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    CreateThingRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    CreateThingRequest.add_member(:attribute_payload, Shapes::ShapeRef.new(shape: AttributePayload, location_name: "attributePayload"))
    CreateThingRequest.struct_class = Types::CreateThingRequest

    CreateThingResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    CreateThingResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    CreateThingResponse.add_member(:thing_id, Shapes::ShapeRef.new(shape: ThingId, location_name: "thingId"))
    CreateThingResponse.struct_class = Types::CreateThingResponse

    CreateThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    CreateThingTypeRequest.add_member(:thing_type_properties, Shapes::ShapeRef.new(shape: ThingTypeProperties, location_name: "thingTypeProperties"))
    CreateThingTypeRequest.struct_class = Types::CreateThingTypeRequest

    CreateThingTypeResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    CreateThingTypeResponse.add_member(:thing_type_arn, Shapes::ShapeRef.new(shape: ThingTypeArn, location_name: "thingTypeArn"))
    CreateThingTypeResponse.add_member(:thing_type_id, Shapes::ShapeRef.new(shape: ThingTypeId, location_name: "thingTypeId"))
    CreateThingTypeResponse.struct_class = Types::CreateThingTypeResponse

    CreateTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    CreateTopicRuleRequest.add_member(:topic_rule_payload, Shapes::ShapeRef.new(shape: TopicRulePayload, required: true, location_name: "topicRulePayload"))
    CreateTopicRuleRequest.struct_class = Types::CreateTopicRuleRequest
    CreateTopicRuleRequest[:payload] = :topic_rule_payload
    CreateTopicRuleRequest[:payload_member] = CreateTopicRuleRequest.member(:topic_rule_payload)

    CustomCodeSigning.add_member(:signature, Shapes::ShapeRef.new(shape: CodeSigningSignature, location_name: "signature"))
    CustomCodeSigning.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CodeSigningCertificateChain, location_name: "certificateChain"))
    CustomCodeSigning.add_member(:hash_algorithm, Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: "hashAlgorithm"))
    CustomCodeSigning.add_member(:signature_algorithm, Shapes::ShapeRef.new(shape: SignatureAlgorithm, location_name: "signatureAlgorithm"))
    CustomCodeSigning.struct_class = Types::CustomCodeSigning

    DeleteAccountAuditConfigurationRequest.add_member(:delete_scheduled_audits, Shapes::ShapeRef.new(shape: DeleteScheduledAudits, location: "querystring", location_name: "deleteScheduledAudits"))
    DeleteAccountAuditConfigurationRequest.struct_class = Types::DeleteAccountAuditConfigurationRequest

    DeleteAccountAuditConfigurationResponse.struct_class = Types::DeleteAccountAuditConfigurationResponse

    DeleteAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location: "uri", location_name: "authorizerName"))
    DeleteAuthorizerRequest.struct_class = Types::DeleteAuthorizerRequest

    DeleteAuthorizerResponse.struct_class = Types::DeleteAuthorizerResponse

    DeleteCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    DeleteCACertificateRequest.struct_class = Types::DeleteCACertificateRequest

    DeleteCACertificateResponse.struct_class = Types::DeleteCACertificateResponse

    DeleteCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    DeleteCertificateRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: ForceDelete, location: "querystring", location_name: "forceDelete"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DeleteJobExecutionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DeleteJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DeleteJobExecutionRequest.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, required: true, location: "uri", location_name: "executionNumber"))
    DeleteJobExecutionRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location: "querystring", location_name: "force"))
    DeleteJobExecutionRequest.struct_class = Types::DeleteJobExecutionRequest

    DeleteJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DeleteJobRequest.add_member(:force, Shapes::ShapeRef.new(shape: ForceFlag, location: "querystring", location_name: "force"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteOTAUpdateRequest.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, required: true, location: "uri", location_name: "otaUpdateId"))
    DeleteOTAUpdateRequest.add_member(:delete_stream, Shapes::ShapeRef.new(shape: DeleteStream, location: "querystring", location_name: "deleteStream"))
    DeleteOTAUpdateRequest.add_member(:force_delete_aws_job, Shapes::ShapeRef.new(shape: ForceDeleteAWSJob, location: "querystring", location_name: "forceDeleteAWSJob"))
    DeleteOTAUpdateRequest.struct_class = Types::DeleteOTAUpdateRequest

    DeleteOTAUpdateResponse.struct_class = Types::DeleteOTAUpdateResponse

    DeletePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DeletePolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    DeletePolicyVersionRequest.struct_class = Types::DeletePolicyVersionRequest

    DeleteRegistrationCodeRequest.struct_class = Types::DeleteRegistrationCodeRequest

    DeleteRegistrationCodeResponse.struct_class = Types::DeleteRegistrationCodeResponse

    DeleteRoleAliasRequest.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, required: true, location: "uri", location_name: "roleAlias"))
    DeleteRoleAliasRequest.struct_class = Types::DeleteRoleAliasRequest

    DeleteRoleAliasResponse.struct_class = Types::DeleteRoleAliasResponse

    DeleteScheduledAuditRequest.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, required: true, location: "uri", location_name: "scheduledAuditName"))
    DeleteScheduledAuditRequest.struct_class = Types::DeleteScheduledAuditRequest

    DeleteScheduledAuditResponse.struct_class = Types::DeleteScheduledAuditResponse

    DeleteSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    DeleteSecurityProfileRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location: "querystring", location_name: "expectedVersion"))
    DeleteSecurityProfileRequest.struct_class = Types::DeleteSecurityProfileRequest

    DeleteSecurityProfileResponse.struct_class = Types::DeleteSecurityProfileResponse

    DeleteStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, required: true, location: "uri", location_name: "streamId"))
    DeleteStreamRequest.struct_class = Types::DeleteStreamRequest

    DeleteStreamResponse.struct_class = Types::DeleteStreamResponse

    DeleteThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, required: true, location: "uri", location_name: "thingGroupName"))
    DeleteThingGroupRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location: "querystring", location_name: "expectedVersion"))
    DeleteThingGroupRequest.struct_class = Types::DeleteThingGroupRequest

    DeleteThingGroupResponse.struct_class = Types::DeleteThingGroupResponse

    DeleteThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DeleteThingRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location: "querystring", location_name: "expectedVersion"))
    DeleteThingRequest.struct_class = Types::DeleteThingRequest

    DeleteThingResponse.struct_class = Types::DeleteThingResponse

    DeleteThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DeleteThingTypeRequest.struct_class = Types::DeleteThingTypeRequest

    DeleteThingTypeResponse.struct_class = Types::DeleteThingTypeResponse

    DeleteTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    DeleteTopicRuleRequest.struct_class = Types::DeleteTopicRuleRequest

    DeleteV2LoggingLevelRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: LogTargetType, required: true, location: "querystring", location_name: "targetType"))
    DeleteV2LoggingLevelRequest.add_member(:target_name, Shapes::ShapeRef.new(shape: LogTargetName, required: true, location: "querystring", location_name: "targetName"))
    DeleteV2LoggingLevelRequest.struct_class = Types::DeleteV2LoggingLevelRequest

    Denied.add_member(:implicit_deny, Shapes::ShapeRef.new(shape: ImplicitDeny, location_name: "implicitDeny"))
    Denied.add_member(:explicit_deny, Shapes::ShapeRef.new(shape: ExplicitDeny, location_name: "explicitDeny"))
    Denied.struct_class = Types::Denied

    DeprecateThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DeprecateThingTypeRequest.add_member(:undo_deprecate, Shapes::ShapeRef.new(shape: UndoDeprecate, location_name: "undoDeprecate"))
    DeprecateThingTypeRequest.struct_class = Types::DeprecateThingTypeRequest

    DeprecateThingTypeResponse.struct_class = Types::DeprecateThingTypeResponse

    DescribeAccountAuditConfigurationRequest.struct_class = Types::DescribeAccountAuditConfigurationRequest

    DescribeAccountAuditConfigurationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeAccountAuditConfigurationResponse.add_member(:audit_notification_target_configurations, Shapes::ShapeRef.new(shape: AuditNotificationTargetConfigurations, location_name: "auditNotificationTargetConfigurations"))
    DescribeAccountAuditConfigurationResponse.add_member(:audit_check_configurations, Shapes::ShapeRef.new(shape: AuditCheckConfigurations, location_name: "auditCheckConfigurations"))
    DescribeAccountAuditConfigurationResponse.struct_class = Types::DescribeAccountAuditConfigurationResponse

    DescribeAuditTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, required: true, location: "uri", location_name: "taskId"))
    DescribeAuditTaskRequest.struct_class = Types::DescribeAuditTaskRequest

    DescribeAuditTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: AuditTaskStatus, location_name: "taskStatus"))
    DescribeAuditTaskResponse.add_member(:task_type, Shapes::ShapeRef.new(shape: AuditTaskType, location_name: "taskType"))
    DescribeAuditTaskResponse.add_member(:task_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "taskStartTime"))
    DescribeAuditTaskResponse.add_member(:task_statistics, Shapes::ShapeRef.new(shape: TaskStatistics, location_name: "taskStatistics"))
    DescribeAuditTaskResponse.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, location_name: "scheduledAuditName"))
    DescribeAuditTaskResponse.add_member(:audit_details, Shapes::ShapeRef.new(shape: AuditDetails, location_name: "auditDetails"))
    DescribeAuditTaskResponse.struct_class = Types::DescribeAuditTaskResponse

    DescribeAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location: "uri", location_name: "authorizerName"))
    DescribeAuthorizerRequest.struct_class = Types::DescribeAuthorizerRequest

    DescribeAuthorizerResponse.add_member(:authorizer_description, Shapes::ShapeRef.new(shape: AuthorizerDescription, location_name: "authorizerDescription"))
    DescribeAuthorizerResponse.struct_class = Types::DescribeAuthorizerResponse

    DescribeCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    DescribeCACertificateRequest.struct_class = Types::DescribeCACertificateRequest

    DescribeCACertificateResponse.add_member(:certificate_description, Shapes::ShapeRef.new(shape: CACertificateDescription, location_name: "certificateDescription"))
    DescribeCACertificateResponse.add_member(:registration_config, Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: "registrationConfig"))
    DescribeCACertificateResponse.struct_class = Types::DescribeCACertificateResponse

    DescribeCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    DescribeCertificateRequest.struct_class = Types::DescribeCertificateRequest

    DescribeCertificateResponse.add_member(:certificate_description, Shapes::ShapeRef.new(shape: CertificateDescription, location_name: "certificateDescription"))
    DescribeCertificateResponse.struct_class = Types::DescribeCertificateResponse

    DescribeDefaultAuthorizerRequest.struct_class = Types::DescribeDefaultAuthorizerRequest

    DescribeDefaultAuthorizerResponse.add_member(:authorizer_description, Shapes::ShapeRef.new(shape: AuthorizerDescription, location_name: "authorizerDescription"))
    DescribeDefaultAuthorizerResponse.struct_class = Types::DescribeDefaultAuthorizerResponse

    DescribeEndpointRequest.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location: "querystring", location_name: "endpointType"))
    DescribeEndpointRequest.struct_class = Types::DescribeEndpointRequest

    DescribeEndpointResponse.add_member(:endpoint_address, Shapes::ShapeRef.new(shape: EndpointAddress, location_name: "endpointAddress"))
    DescribeEndpointResponse.struct_class = Types::DescribeEndpointResponse

    DescribeEventConfigurationsRequest.struct_class = Types::DescribeEventConfigurationsRequest

    DescribeEventConfigurationsResponse.add_member(:event_configurations, Shapes::ShapeRef.new(shape: EventConfigurations, location_name: "eventConfigurations"))
    DescribeEventConfigurationsResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    DescribeEventConfigurationsResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "lastModifiedDate"))
    DescribeEventConfigurationsResponse.struct_class = Types::DescribeEventConfigurationsResponse

    DescribeIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location: "uri", location_name: "indexName"))
    DescribeIndexRequest.struct_class = Types::DescribeIndexRequest

    DescribeIndexResponse.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    DescribeIndexResponse.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "indexStatus"))
    DescribeIndexResponse.add_member(:schema, Shapes::ShapeRef.new(shape: IndexSchema, location_name: "schema"))
    DescribeIndexResponse.struct_class = Types::DescribeIndexResponse

    DescribeJobExecutionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DescribeJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DescribeJobExecutionRequest.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location: "querystring", location_name: "executionNumber"))
    DescribeJobExecutionRequest.struct_class = Types::DescribeJobExecutionRequest

    DescribeJobExecutionResponse.add_member(:execution, Shapes::ShapeRef.new(shape: JobExecution, location_name: "execution"))
    DescribeJobExecutionResponse.struct_class = Types::DescribeJobExecutionResponse

    DescribeJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DescribeJobRequest.struct_class = Types::DescribeJobRequest

    DescribeJobResponse.add_member(:document_source, Shapes::ShapeRef.new(shape: JobDocumentSource, location_name: "documentSource"))
    DescribeJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    DescribeJobResponse.struct_class = Types::DescribeJobResponse

    DescribeRoleAliasRequest.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, required: true, location: "uri", location_name: "roleAlias"))
    DescribeRoleAliasRequest.struct_class = Types::DescribeRoleAliasRequest

    DescribeRoleAliasResponse.add_member(:role_alias_description, Shapes::ShapeRef.new(shape: RoleAliasDescription, location_name: "roleAliasDescription"))
    DescribeRoleAliasResponse.struct_class = Types::DescribeRoleAliasResponse

    DescribeScheduledAuditRequest.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, required: true, location: "uri", location_name: "scheduledAuditName"))
    DescribeScheduledAuditRequest.struct_class = Types::DescribeScheduledAuditRequest

    DescribeScheduledAuditResponse.add_member(:frequency, Shapes::ShapeRef.new(shape: AuditFrequency, location_name: "frequency"))
    DescribeScheduledAuditResponse.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "dayOfMonth"))
    DescribeScheduledAuditResponse.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    DescribeScheduledAuditResponse.add_member(:target_check_names, Shapes::ShapeRef.new(shape: TargetAuditCheckNames, location_name: "targetCheckNames"))
    DescribeScheduledAuditResponse.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, location_name: "scheduledAuditName"))
    DescribeScheduledAuditResponse.add_member(:scheduled_audit_arn, Shapes::ShapeRef.new(shape: ScheduledAuditArn, location_name: "scheduledAuditArn"))
    DescribeScheduledAuditResponse.struct_class = Types::DescribeScheduledAuditResponse

    DescribeSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    DescribeSecurityProfileRequest.struct_class = Types::DescribeSecurityProfileRequest

    DescribeSecurityProfileResponse.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "securityProfileName"))
    DescribeSecurityProfileResponse.add_member(:security_profile_arn, Shapes::ShapeRef.new(shape: SecurityProfileArn, location_name: "securityProfileArn"))
    DescribeSecurityProfileResponse.add_member(:security_profile_description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "securityProfileDescription"))
    DescribeSecurityProfileResponse.add_member(:behaviors, Shapes::ShapeRef.new(shape: Behaviors, location_name: "behaviors"))
    DescribeSecurityProfileResponse.add_member(:alert_targets, Shapes::ShapeRef.new(shape: AlertTargets, location_name: "alertTargets"))
    DescribeSecurityProfileResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeSecurityProfileResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DescribeSecurityProfileResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedDate"))
    DescribeSecurityProfileResponse.struct_class = Types::DescribeSecurityProfileResponse

    DescribeStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, required: true, location: "uri", location_name: "streamId"))
    DescribeStreamRequest.struct_class = Types::DescribeStreamRequest

    DescribeStreamResponse.add_member(:stream_info, Shapes::ShapeRef.new(shape: StreamInfo, location_name: "streamInfo"))
    DescribeStreamResponse.struct_class = Types::DescribeStreamResponse

    DescribeThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, required: true, location: "uri", location_name: "thingGroupName"))
    DescribeThingGroupRequest.struct_class = Types::DescribeThingGroupRequest

    DescribeThingGroupResponse.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "thingGroupName"))
    DescribeThingGroupResponse.add_member(:thing_group_id, Shapes::ShapeRef.new(shape: ThingGroupId, location_name: "thingGroupId"))
    DescribeThingGroupResponse.add_member(:thing_group_arn, Shapes::ShapeRef.new(shape: ThingGroupArn, location_name: "thingGroupArn"))
    DescribeThingGroupResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeThingGroupResponse.add_member(:thing_group_properties, Shapes::ShapeRef.new(shape: ThingGroupProperties, location_name: "thingGroupProperties"))
    DescribeThingGroupResponse.add_member(:thing_group_metadata, Shapes::ShapeRef.new(shape: ThingGroupMetadata, location_name: "thingGroupMetadata"))
    DescribeThingGroupResponse.struct_class = Types::DescribeThingGroupResponse

    DescribeThingRegistrationTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    DescribeThingRegistrationTaskRequest.struct_class = Types::DescribeThingRegistrationTaskRequest

    DescribeThingRegistrationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    DescribeThingRegistrationTaskResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    DescribeThingRegistrationTaskResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "lastModifiedDate"))
    DescribeThingRegistrationTaskResponse.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "templateBody"))
    DescribeThingRegistrationTaskResponse.add_member(:input_file_bucket, Shapes::ShapeRef.new(shape: RegistryS3BucketName, location_name: "inputFileBucket"))
    DescribeThingRegistrationTaskResponse.add_member(:input_file_key, Shapes::ShapeRef.new(shape: RegistryS3KeyName, location_name: "inputFileKey"))
    DescribeThingRegistrationTaskResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DescribeThingRegistrationTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DescribeThingRegistrationTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DescribeThingRegistrationTaskResponse.add_member(:success_count, Shapes::ShapeRef.new(shape: Count, location_name: "successCount"))
    DescribeThingRegistrationTaskResponse.add_member(:failure_count, Shapes::ShapeRef.new(shape: Count, location_name: "failureCount"))
    DescribeThingRegistrationTaskResponse.add_member(:percentage_progress, Shapes::ShapeRef.new(shape: Percentage, location_name: "percentageProgress"))
    DescribeThingRegistrationTaskResponse.struct_class = Types::DescribeThingRegistrationTaskResponse

    DescribeThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DescribeThingRequest.struct_class = Types::DescribeThingRequest

    DescribeThingResponse.add_member(:default_client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "defaultClientId"))
    DescribeThingResponse.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    DescribeThingResponse.add_member(:thing_id, Shapes::ShapeRef.new(shape: ThingId, location_name: "thingId"))
    DescribeThingResponse.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    DescribeThingResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    DescribeThingResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    DescribeThingResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeThingResponse.struct_class = Types::DescribeThingResponse

    DescribeThingTypeRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, required: true, location: "uri", location_name: "thingTypeName"))
    DescribeThingTypeRequest.struct_class = Types::DescribeThingTypeRequest

    DescribeThingTypeResponse.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    DescribeThingTypeResponse.add_member(:thing_type_id, Shapes::ShapeRef.new(shape: ThingTypeId, location_name: "thingTypeId"))
    DescribeThingTypeResponse.add_member(:thing_type_arn, Shapes::ShapeRef.new(shape: ThingTypeArn, location_name: "thingTypeArn"))
    DescribeThingTypeResponse.add_member(:thing_type_properties, Shapes::ShapeRef.new(shape: ThingTypeProperties, location_name: "thingTypeProperties"))
    DescribeThingTypeResponse.add_member(:thing_type_metadata, Shapes::ShapeRef.new(shape: ThingTypeMetadata, location_name: "thingTypeMetadata"))
    DescribeThingTypeResponse.struct_class = Types::DescribeThingTypeResponse

    Destination.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3Destination"))
    Destination.struct_class = Types::Destination

    DetachPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DetachPolicyRequest.add_member(:target, Shapes::ShapeRef.new(shape: PolicyTarget, required: true, location_name: "target"))
    DetachPolicyRequest.struct_class = Types::DetachPolicyRequest

    DetachPrincipalPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    DetachPrincipalPolicyRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-iot-principal"))
    DetachPrincipalPolicyRequest.struct_class = Types::DetachPrincipalPolicyRequest

    DetachSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    DetachSecurityProfileRequest.add_member(:security_profile_target_arn, Shapes::ShapeRef.new(shape: SecurityProfileTargetArn, required: true, location: "querystring", location_name: "securityProfileTargetArn"))
    DetachSecurityProfileRequest.struct_class = Types::DetachSecurityProfileRequest

    DetachSecurityProfileResponse.struct_class = Types::DetachSecurityProfileResponse

    DetachThingPrincipalRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DetachThingPrincipalRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location: "header", location_name: "x-amzn-principal"))
    DetachThingPrincipalRequest.struct_class = Types::DetachThingPrincipalRequest

    DetachThingPrincipalResponse.struct_class = Types::DetachThingPrincipalResponse

    DetailsMap.key = Shapes::ShapeRef.new(shape: DetailsKey)
    DetailsMap.value = Shapes::ShapeRef.new(shape: DetailsValue)

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

    EffectivePolicies.member = Shapes::ShapeRef.new(shape: EffectivePolicy)

    EffectivePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    EffectivePolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    EffectivePolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    EffectivePolicy.struct_class = Types::EffectivePolicy

    ElasticsearchAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    ElasticsearchAction.add_member(:endpoint, Shapes::ShapeRef.new(shape: ElasticsearchEndpoint, required: true, location_name: "endpoint"))
    ElasticsearchAction.add_member(:index, Shapes::ShapeRef.new(shape: ElasticsearchIndex, required: true, location_name: "index"))
    ElasticsearchAction.add_member(:type, Shapes::ShapeRef.new(shape: ElasticsearchType, required: true, location_name: "type"))
    ElasticsearchAction.add_member(:id, Shapes::ShapeRef.new(shape: ElasticsearchId, required: true, location_name: "id"))
    ElasticsearchAction.struct_class = Types::ElasticsearchAction

    EnableTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    EnableTopicRuleRequest.struct_class = Types::EnableTopicRuleRequest

    ErrorInfo.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "code"))
    ErrorInfo.add_member(:message, Shapes::ShapeRef.new(shape: OTAUpdateErrorMessage, location_name: "message"))
    ErrorInfo.struct_class = Types::ErrorInfo

    EventConfigurations.key = Shapes::ShapeRef.new(shape: EventType)
    EventConfigurations.value = Shapes::ShapeRef.new(shape: Configuration)

    ExplicitDeny.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    ExplicitDeny.struct_class = Types::ExplicitDeny

    FileLocation.add_member(:stream, Shapes::ShapeRef.new(shape: Stream, location_name: "stream"))
    FileLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    FileLocation.struct_class = Types::FileLocation

    FirehoseAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    FirehoseAction.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "deliveryStreamName"))
    FirehoseAction.add_member(:separator, Shapes::ShapeRef.new(shape: FirehoseSeparator, location_name: "separator"))
    FirehoseAction.struct_class = Types::FirehoseAction

    GetEffectivePoliciesRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, location_name: "principal"))
    GetEffectivePoliciesRequest.add_member(:cognito_identity_pool_id, Shapes::ShapeRef.new(shape: CognitoIdentityPoolId, location_name: "cognitoIdentityPoolId"))
    GetEffectivePoliciesRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location: "querystring", location_name: "thingName"))
    GetEffectivePoliciesRequest.struct_class = Types::GetEffectivePoliciesRequest

    GetEffectivePoliciesResponse.add_member(:effective_policies, Shapes::ShapeRef.new(shape: EffectivePolicies, location_name: "effectivePolicies"))
    GetEffectivePoliciesResponse.struct_class = Types::GetEffectivePoliciesResponse

    GetIndexingConfigurationRequest.struct_class = Types::GetIndexingConfigurationRequest

    GetIndexingConfigurationResponse.add_member(:thing_indexing_configuration, Shapes::ShapeRef.new(shape: ThingIndexingConfiguration, location_name: "thingIndexingConfiguration"))
    GetIndexingConfigurationResponse.add_member(:thing_group_indexing_configuration, Shapes::ShapeRef.new(shape: ThingGroupIndexingConfiguration, location_name: "thingGroupIndexingConfiguration"))
    GetIndexingConfigurationResponse.struct_class = Types::GetIndexingConfigurationResponse

    GetJobDocumentRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetJobDocumentRequest.struct_class = Types::GetJobDocumentRequest

    GetJobDocumentResponse.add_member(:document, Shapes::ShapeRef.new(shape: JobDocument, location_name: "document"))
    GetJobDocumentResponse.struct_class = Types::GetJobDocumentResponse

    GetLoggingOptionsRequest.struct_class = Types::GetLoggingOptionsRequest

    GetLoggingOptionsResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    GetLoggingOptionsResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    GetLoggingOptionsResponse.struct_class = Types::GetLoggingOptionsResponse

    GetOTAUpdateRequest.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, required: true, location: "uri", location_name: "otaUpdateId"))
    GetOTAUpdateRequest.struct_class = Types::GetOTAUpdateRequest

    GetOTAUpdateResponse.add_member(:ota_update_info, Shapes::ShapeRef.new(shape: OTAUpdateInfo, location_name: "otaUpdateInfo"))
    GetOTAUpdateResponse.struct_class = Types::GetOTAUpdateResponse

    GetPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    GetPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    GetPolicyResponse.add_member(:default_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "defaultVersionId"))
    GetPolicyResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    GetPolicyResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    GetPolicyResponse.add_member(:generation_id, Shapes::ShapeRef.new(shape: GenerationId, location_name: "generationId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetPolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    GetPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    GetPolicyVersionRequest.struct_class = Types::GetPolicyVersionRequest

    GetPolicyVersionResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    GetPolicyVersionResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    GetPolicyVersionResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    GetPolicyVersionResponse.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "policyVersionId"))
    GetPolicyVersionResponse.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "isDefaultVersion"))
    GetPolicyVersionResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    GetPolicyVersionResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    GetPolicyVersionResponse.add_member(:generation_id, Shapes::ShapeRef.new(shape: GenerationId, location_name: "generationId"))
    GetPolicyVersionResponse.struct_class = Types::GetPolicyVersionResponse

    GetRegistrationCodeRequest.struct_class = Types::GetRegistrationCodeRequest

    GetRegistrationCodeResponse.add_member(:registration_code, Shapes::ShapeRef.new(shape: RegistrationCode, location_name: "registrationCode"))
    GetRegistrationCodeResponse.struct_class = Types::GetRegistrationCodeResponse

    GetTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    GetTopicRuleRequest.struct_class = Types::GetTopicRuleRequest

    GetTopicRuleResponse.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    GetTopicRuleResponse.add_member(:rule, Shapes::ShapeRef.new(shape: TopicRule, location_name: "rule"))
    GetTopicRuleResponse.struct_class = Types::GetTopicRuleResponse

    GetV2LoggingOptionsRequest.struct_class = Types::GetV2LoggingOptionsRequest

    GetV2LoggingOptionsResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    GetV2LoggingOptionsResponse.add_member(:default_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "defaultLogLevel"))
    GetV2LoggingOptionsResponse.add_member(:disable_all_logs, Shapes::ShapeRef.new(shape: DisableAllLogs, location_name: "disableAllLogs"))
    GetV2LoggingOptionsResponse.struct_class = Types::GetV2LoggingOptionsResponse

    GroupNameAndArn.add_member(:group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "groupName"))
    GroupNameAndArn.add_member(:group_arn, Shapes::ShapeRef.new(shape: ThingGroupArn, location_name: "groupArn"))
    GroupNameAndArn.struct_class = Types::GroupNameAndArn

    ImplicitDeny.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    ImplicitDeny.struct_class = Types::ImplicitDeny

    IndexNamesList.member = Shapes::ShapeRef.new(shape: IndexName)

    IotAnalyticsAction.add_member(:channel_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "channelArn"))
    IotAnalyticsAction.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "channelName"))
    IotAnalyticsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    IotAnalyticsAction.struct_class = Types::IotAnalyticsAction

    Job.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    Job.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location_name: "targetSelection"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    Job.add_member(:force_canceled, Shapes::ShapeRef.new(shape: Forced, location_name: "forceCanceled"))
    Job.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    Job.add_member(:targets, Shapes::ShapeRef.new(shape: JobTargets, location_name: "targets"))
    Job.add_member(:description, Shapes::ShapeRef.new(shape: JobDescription, location_name: "description"))
    Job.add_member(:presigned_url_config, Shapes::ShapeRef.new(shape: PresignedUrlConfig, location_name: "presignedUrlConfig"))
    Job.add_member(:job_executions_rollout_config, Shapes::ShapeRef.new(shape: JobExecutionsRolloutConfig, location_name: "jobExecutionsRolloutConfig"))
    Job.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, location_name: "createdAt"))
    Job.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    Job.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateType, location_name: "completedAt"))
    Job.add_member(:job_process_details, Shapes::ShapeRef.new(shape: JobProcessDetails, location_name: "jobProcessDetails"))
    Job.struct_class = Types::Job

    JobExecution.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobExecution.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: "status"))
    JobExecution.add_member(:force_canceled, Shapes::ShapeRef.new(shape: Forced, location_name: "forceCanceled"))
    JobExecution.add_member(:status_details, Shapes::ShapeRef.new(shape: JobExecutionStatusDetails, location_name: "statusDetails"))
    JobExecution.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    JobExecution.add_member(:queued_at, Shapes::ShapeRef.new(shape: DateType, location_name: "queuedAt"))
    JobExecution.add_member(:started_at, Shapes::ShapeRef.new(shape: DateType, location_name: "startedAt"))
    JobExecution.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    JobExecution.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "executionNumber"))
    JobExecution.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "versionNumber"))
    JobExecution.struct_class = Types::JobExecution

    JobExecutionStatusDetails.add_member(:details_map, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "detailsMap"))
    JobExecutionStatusDetails.struct_class = Types::JobExecutionStatusDetails

    JobExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: "status"))
    JobExecutionSummary.add_member(:queued_at, Shapes::ShapeRef.new(shape: DateType, location_name: "queuedAt"))
    JobExecutionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateType, location_name: "startedAt"))
    JobExecutionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    JobExecutionSummary.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "executionNumber"))
    JobExecutionSummary.struct_class = Types::JobExecutionSummary

    JobExecutionSummaryForJob.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    JobExecutionSummaryForJob.add_member(:job_execution_summary, Shapes::ShapeRef.new(shape: JobExecutionSummary, location_name: "jobExecutionSummary"))
    JobExecutionSummaryForJob.struct_class = Types::JobExecutionSummaryForJob

    JobExecutionSummaryForJobList.member = Shapes::ShapeRef.new(shape: JobExecutionSummaryForJob)

    JobExecutionSummaryForThing.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobExecutionSummaryForThing.add_member(:job_execution_summary, Shapes::ShapeRef.new(shape: JobExecutionSummary, location_name: "jobExecutionSummary"))
    JobExecutionSummaryForThing.struct_class = Types::JobExecutionSummaryForThing

    JobExecutionSummaryForThingList.member = Shapes::ShapeRef.new(shape: JobExecutionSummaryForThing)

    JobExecutionsRolloutConfig.add_member(:maximum_per_minute, Shapes::ShapeRef.new(shape: MaxJobExecutionsPerMin, location_name: "maximumPerMinute"))
    JobExecutionsRolloutConfig.struct_class = Types::JobExecutionsRolloutConfig

    JobProcessDetails.add_member(:processing_targets, Shapes::ShapeRef.new(shape: ProcessingTargetNameList, location_name: "processingTargets"))
    JobProcessDetails.add_member(:number_of_canceled_things, Shapes::ShapeRef.new(shape: CanceledThings, location_name: "numberOfCanceledThings"))
    JobProcessDetails.add_member(:number_of_succeeded_things, Shapes::ShapeRef.new(shape: SucceededThings, location_name: "numberOfSucceededThings"))
    JobProcessDetails.add_member(:number_of_failed_things, Shapes::ShapeRef.new(shape: FailedThings, location_name: "numberOfFailedThings"))
    JobProcessDetails.add_member(:number_of_rejected_things, Shapes::ShapeRef.new(shape: RejectedThings, location_name: "numberOfRejectedThings"))
    JobProcessDetails.add_member(:number_of_queued_things, Shapes::ShapeRef.new(shape: QueuedThings, location_name: "numberOfQueuedThings"))
    JobProcessDetails.add_member(:number_of_in_progress_things, Shapes::ShapeRef.new(shape: InProgressThings, location_name: "numberOfInProgressThings"))
    JobProcessDetails.add_member(:number_of_removed_things, Shapes::ShapeRef.new(shape: RemovedThings, location_name: "numberOfRemovedThings"))
    JobProcessDetails.struct_class = Types::JobProcessDetails

    JobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "jobArn"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobSummary.add_member(:thing_group_id, Shapes::ShapeRef.new(shape: ThingGroupId, location_name: "thingGroupId"))
    JobSummary.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location_name: "targetSelection"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, location_name: "createdAt"))
    JobSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    JobSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateType, location_name: "completedAt"))
    JobSummary.struct_class = Types::JobSummary

    JobSummaryList.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobTargets.member = Shapes::ShapeRef.new(shape: TargetArn)

    KeyPair.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "PublicKey"))
    KeyPair.add_member(:private_key, Shapes::ShapeRef.new(shape: PrivateKey, location_name: "PrivateKey"))
    KeyPair.struct_class = Types::KeyPair

    KinesisAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    KinesisAction.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "streamName"))
    KinesisAction.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, location_name: "partitionKey"))
    KinesisAction.struct_class = Types::KinesisAction

    LambdaAction.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "functionArn"))
    LambdaAction.struct_class = Types::LambdaAction

    ListActiveViolationsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location: "querystring", location_name: "thingName"))
    ListActiveViolationsRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location: "querystring", location_name: "securityProfileName"))
    ListActiveViolationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListActiveViolationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListActiveViolationsRequest.struct_class = Types::ListActiveViolationsRequest

    ListActiveViolationsResponse.add_member(:active_violations, Shapes::ShapeRef.new(shape: ActiveViolations, location_name: "activeViolations"))
    ListActiveViolationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListActiveViolationsResponse.struct_class = Types::ListActiveViolationsResponse

    ListAttachedPoliciesRequest.add_member(:target, Shapes::ShapeRef.new(shape: PolicyTarget, required: true, location: "uri", location_name: "target"))
    ListAttachedPoliciesRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Recursive, location: "querystring", location_name: "recursive"))
    ListAttachedPoliciesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListAttachedPoliciesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListAttachedPoliciesRequest.struct_class = Types::ListAttachedPoliciesRequest

    ListAttachedPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "policies"))
    ListAttachedPoliciesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListAttachedPoliciesResponse.struct_class = Types::ListAttachedPoliciesResponse

    ListAuditFindingsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, location_name: "taskId"))
    ListAuditFindingsRequest.add_member(:check_name, Shapes::ShapeRef.new(shape: AuditCheckName, location_name: "checkName"))
    ListAuditFindingsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "resourceIdentifier"))
    ListAuditFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAuditFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAuditFindingsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ListAuditFindingsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ListAuditFindingsRequest.struct_class = Types::ListAuditFindingsRequest

    ListAuditFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: AuditFindings, location_name: "findings"))
    ListAuditFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAuditFindingsResponse.struct_class = Types::ListAuditFindingsResponse

    ListAuditTasksRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    ListAuditTasksRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    ListAuditTasksRequest.add_member(:task_type, Shapes::ShapeRef.new(shape: AuditTaskType, location: "querystring", location_name: "taskType"))
    ListAuditTasksRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: AuditTaskStatus, location: "querystring", location_name: "taskStatus"))
    ListAuditTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAuditTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAuditTasksRequest.struct_class = Types::ListAuditTasksRequest

    ListAuditTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: AuditTaskMetadataList, location_name: "tasks"))
    ListAuditTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAuditTasksResponse.struct_class = Types::ListAuditTasksResponse

    ListAuthorizersRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListAuthorizersRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListAuthorizersRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListAuthorizersRequest.add_member(:status, Shapes::ShapeRef.new(shape: AuthorizerStatus, location: "querystring", location_name: "status"))
    ListAuthorizersRequest.struct_class = Types::ListAuthorizersRequest

    ListAuthorizersResponse.add_member(:authorizers, Shapes::ShapeRef.new(shape: Authorizers, location_name: "authorizers"))
    ListAuthorizersResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListAuthorizersResponse.struct_class = Types::ListAuthorizersResponse

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

    ListIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location: "querystring", location_name: "maxResults"))
    ListIndicesRequest.struct_class = Types::ListIndicesRequest

    ListIndicesResponse.add_member(:index_names, Shapes::ShapeRef.new(shape: IndexNamesList, location_name: "indexNames"))
    ListIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIndicesResponse.struct_class = Types::ListIndicesResponse

    ListJobExecutionsForJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListJobExecutionsForJobRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location: "querystring", location_name: "status"))
    ListJobExecutionsForJobRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LaserMaxResults, location: "querystring", location_name: "maxResults"))
    ListJobExecutionsForJobRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobExecutionsForJobRequest.struct_class = Types::ListJobExecutionsForJobRequest

    ListJobExecutionsForJobResponse.add_member(:execution_summaries, Shapes::ShapeRef.new(shape: JobExecutionSummaryForJobList, location_name: "executionSummaries"))
    ListJobExecutionsForJobResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobExecutionsForJobResponse.struct_class = Types::ListJobExecutionsForJobResponse

    ListJobExecutionsForThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    ListJobExecutionsForThingRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location: "querystring", location_name: "status"))
    ListJobExecutionsForThingRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LaserMaxResults, location: "querystring", location_name: "maxResults"))
    ListJobExecutionsForThingRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobExecutionsForThingRequest.struct_class = Types::ListJobExecutionsForThingRequest

    ListJobExecutionsForThingResponse.add_member(:execution_summaries, Shapes::ShapeRef.new(shape: JobExecutionSummaryForThingList, location_name: "executionSummaries"))
    ListJobExecutionsForThingResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobExecutionsForThingResponse.struct_class = Types::ListJobExecutionsForThingResponse

    ListJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location: "querystring", location_name: "status"))
    ListJobsRequest.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location: "querystring", location_name: "targetSelection"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: LaserMaxResults, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location: "querystring", location_name: "thingGroupName"))
    ListJobsRequest.add_member(:thing_group_id, Shapes::ShapeRef.new(shape: ThingGroupId, location: "querystring", location_name: "thingGroupId"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: JobSummaryList, location_name: "jobs"))
    ListJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobsResponse.struct_class = Types::ListJobsResponse

    ListOTAUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOTAUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListOTAUpdatesRequest.add_member(:ota_update_status, Shapes::ShapeRef.new(shape: OTAUpdateStatus, location: "querystring", location_name: "otaUpdateStatus"))
    ListOTAUpdatesRequest.struct_class = Types::ListOTAUpdatesRequest

    ListOTAUpdatesResponse.add_member(:ota_updates, Shapes::ShapeRef.new(shape: OTAUpdatesSummary, location_name: "otaUpdates"))
    ListOTAUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOTAUpdatesResponse.struct_class = Types::ListOTAUpdatesResponse

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

    ListRoleAliasesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListRoleAliasesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListRoleAliasesRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListRoleAliasesRequest.struct_class = Types::ListRoleAliasesRequest

    ListRoleAliasesResponse.add_member(:role_aliases, Shapes::ShapeRef.new(shape: RoleAliases, location_name: "roleAliases"))
    ListRoleAliasesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListRoleAliasesResponse.struct_class = Types::ListRoleAliasesResponse

    ListScheduledAuditsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListScheduledAuditsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScheduledAuditsRequest.struct_class = Types::ListScheduledAuditsRequest

    ListScheduledAuditsResponse.add_member(:scheduled_audits, Shapes::ShapeRef.new(shape: ScheduledAuditMetadataList, location_name: "scheduledAudits"))
    ListScheduledAuditsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScheduledAuditsResponse.struct_class = Types::ListScheduledAuditsResponse

    ListSecurityProfilesForTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilesForTargetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSecurityProfilesForTargetRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Recursive, location: "querystring", location_name: "recursive"))
    ListSecurityProfilesForTargetRequest.add_member(:security_profile_target_arn, Shapes::ShapeRef.new(shape: SecurityProfileTargetArn, required: true, location: "querystring", location_name: "securityProfileTargetArn"))
    ListSecurityProfilesForTargetRequest.struct_class = Types::ListSecurityProfilesForTargetRequest

    ListSecurityProfilesForTargetResponse.add_member(:security_profile_target_mappings, Shapes::ShapeRef.new(shape: SecurityProfileTargetMappings, location_name: "securityProfileTargetMappings"))
    ListSecurityProfilesForTargetResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityProfilesForTargetResponse.struct_class = Types::ListSecurityProfilesForTargetResponse

    ListSecurityProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSecurityProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSecurityProfilesRequest.struct_class = Types::ListSecurityProfilesRequest

    ListSecurityProfilesResponse.add_member(:security_profile_identifiers, Shapes::ShapeRef.new(shape: SecurityProfileIdentifiers, location_name: "securityProfileIdentifiers"))
    ListSecurityProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityProfilesResponse.struct_class = Types::ListSecurityProfilesResponse

    ListStreamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListStreamsRequest.add_member(:ascending_order, Shapes::ShapeRef.new(shape: AscendingOrder, location: "querystring", location_name: "isAscendingOrder"))
    ListStreamsRequest.struct_class = Types::ListStreamsRequest

    ListStreamsResponse.add_member(:streams, Shapes::ShapeRef.new(shape: StreamsSummary, location_name: "streams"))
    ListStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListStreamsResponse.struct_class = Types::ListStreamsResponse

    ListTargetsForPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    ListTargetsForPolicyRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "marker"))
    ListTargetsForPolicyRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSize, location: "querystring", location_name: "pageSize"))
    ListTargetsForPolicyRequest.struct_class = Types::ListTargetsForPolicyRequest

    ListTargetsForPolicyResponse.add_member(:targets, Shapes::ShapeRef.new(shape: PolicyTargets, location_name: "targets"))
    ListTargetsForPolicyResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "nextMarker"))
    ListTargetsForPolicyResponse.struct_class = Types::ListTargetsForPolicyResponse

    ListTargetsForSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    ListTargetsForSecurityProfileRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTargetsForSecurityProfileRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTargetsForSecurityProfileRequest.struct_class = Types::ListTargetsForSecurityProfileRequest

    ListTargetsForSecurityProfileResponse.add_member(:security_profile_targets, Shapes::ShapeRef.new(shape: SecurityProfileTargets, location_name: "securityProfileTargets"))
    ListTargetsForSecurityProfileResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetsForSecurityProfileResponse.struct_class = Types::ListTargetsForSecurityProfileResponse

    ListThingGroupsForThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    ListThingGroupsForThingRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingGroupsForThingRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingGroupsForThingRequest.struct_class = Types::ListThingGroupsForThingRequest

    ListThingGroupsForThingResponse.add_member(:thing_groups, Shapes::ShapeRef.new(shape: ThingGroupNameAndArnList, location_name: "thingGroups"))
    ListThingGroupsForThingResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingGroupsForThingResponse.struct_class = Types::ListThingGroupsForThingResponse

    ListThingGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingGroupsRequest.add_member(:parent_group, Shapes::ShapeRef.new(shape: ThingGroupName, location: "querystring", location_name: "parentGroup"))
    ListThingGroupsRequest.add_member(:name_prefix_filter, Shapes::ShapeRef.new(shape: ThingGroupName, location: "querystring", location_name: "namePrefixFilter"))
    ListThingGroupsRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: RecursiveWithoutDefault, location: "querystring", location_name: "recursive"))
    ListThingGroupsRequest.struct_class = Types::ListThingGroupsRequest

    ListThingGroupsResponse.add_member(:thing_groups, Shapes::ShapeRef.new(shape: ThingGroupNameAndArnList, location_name: "thingGroups"))
    ListThingGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingGroupsResponse.struct_class = Types::ListThingGroupsResponse

    ListThingPrincipalsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    ListThingPrincipalsRequest.struct_class = Types::ListThingPrincipalsRequest

    ListThingPrincipalsResponse.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "principals"))
    ListThingPrincipalsResponse.struct_class = Types::ListThingPrincipalsResponse

    ListThingRegistrationTaskReportsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    ListThingRegistrationTaskReportsRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, required: true, location: "querystring", location_name: "reportType"))
    ListThingRegistrationTaskReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingRegistrationTaskReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingRegistrationTaskReportsRequest.struct_class = Types::ListThingRegistrationTaskReportsRequest

    ListThingRegistrationTaskReportsResponse.add_member(:resource_links, Shapes::ShapeRef.new(shape: S3FileUrlList, location_name: "resourceLinks"))
    ListThingRegistrationTaskReportsResponse.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, location_name: "reportType"))
    ListThingRegistrationTaskReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingRegistrationTaskReportsResponse.struct_class = Types::ListThingRegistrationTaskReportsResponse

    ListThingRegistrationTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingRegistrationTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingRegistrationTasksRequest.add_member(:status, Shapes::ShapeRef.new(shape: Status, location: "querystring", location_name: "status"))
    ListThingRegistrationTasksRequest.struct_class = Types::ListThingRegistrationTasksRequest

    ListThingRegistrationTasksResponse.add_member(:task_ids, Shapes::ShapeRef.new(shape: TaskIdList, location_name: "taskIds"))
    ListThingRegistrationTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingRegistrationTasksResponse.struct_class = Types::ListThingRegistrationTasksResponse

    ListThingTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingTypesRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location: "querystring", location_name: "thingTypeName"))
    ListThingTypesRequest.struct_class = Types::ListThingTypesRequest

    ListThingTypesResponse.add_member(:thing_types, Shapes::ShapeRef.new(shape: ThingTypeList, location_name: "thingTypes"))
    ListThingTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingTypesResponse.struct_class = Types::ListThingTypesResponse

    ListThingsInThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, required: true, location: "uri", location_name: "thingGroupName"))
    ListThingsInThingGroupRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Recursive, location: "querystring", location_name: "recursive"))
    ListThingsInThingGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListThingsInThingGroupRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RegistryMaxResults, location: "querystring", location_name: "maxResults"))
    ListThingsInThingGroupRequest.struct_class = Types::ListThingsInThingGroupRequest

    ListThingsInThingGroupResponse.add_member(:things, Shapes::ShapeRef.new(shape: ThingNameList, location_name: "things"))
    ListThingsInThingGroupResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThingsInThingGroupResponse.struct_class = Types::ListThingsInThingGroupResponse

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
    ListTopicRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GEMaxResults, location: "querystring", location_name: "maxResults"))
    ListTopicRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTopicRulesRequest.add_member(:rule_disabled, Shapes::ShapeRef.new(shape: IsDisabled, location: "querystring", location_name: "ruleDisabled"))
    ListTopicRulesRequest.struct_class = Types::ListTopicRulesRequest

    ListTopicRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: TopicRuleList, location_name: "rules"))
    ListTopicRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTopicRulesResponse.struct_class = Types::ListTopicRulesResponse

    ListV2LoggingLevelsRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: LogTargetType, location: "querystring", location_name: "targetType"))
    ListV2LoggingLevelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListV2LoggingLevelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SkyfallMaxResults, location: "querystring", location_name: "maxResults"))
    ListV2LoggingLevelsRequest.struct_class = Types::ListV2LoggingLevelsRequest

    ListV2LoggingLevelsResponse.add_member(:log_target_configurations, Shapes::ShapeRef.new(shape: LogTargetConfigurations, location_name: "logTargetConfigurations"))
    ListV2LoggingLevelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListV2LoggingLevelsResponse.struct_class = Types::ListV2LoggingLevelsResponse

    ListViolationEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startTime"))
    ListViolationEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endTime"))
    ListViolationEventsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location: "querystring", location_name: "thingName"))
    ListViolationEventsRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location: "querystring", location_name: "securityProfileName"))
    ListViolationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListViolationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListViolationEventsRequest.struct_class = Types::ListViolationEventsRequest

    ListViolationEventsResponse.add_member(:violation_events, Shapes::ShapeRef.new(shape: ViolationEvents, location_name: "violationEvents"))
    ListViolationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListViolationEventsResponse.struct_class = Types::ListViolationEventsResponse

    LogTarget.add_member(:target_type, Shapes::ShapeRef.new(shape: LogTargetType, required: true, location_name: "targetType"))
    LogTarget.add_member(:target_name, Shapes::ShapeRef.new(shape: LogTargetName, location_name: "targetName"))
    LogTarget.struct_class = Types::LogTarget

    LogTargetConfiguration.add_member(:log_target, Shapes::ShapeRef.new(shape: LogTarget, location_name: "logTarget"))
    LogTargetConfiguration.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    LogTargetConfiguration.struct_class = Types::LogTargetConfiguration

    LogTargetConfigurations.member = Shapes::ShapeRef.new(shape: LogTargetConfiguration)

    LoggingOptionsPayload.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    LoggingOptionsPayload.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    LoggingOptionsPayload.struct_class = Types::LoggingOptionsPayload

    MetricValue.add_member(:count, Shapes::ShapeRef.new(shape: UnsignedLong, location_name: "count"))
    MetricValue.add_member(:cidrs, Shapes::ShapeRef.new(shape: Cidrs, location_name: "cidrs"))
    MetricValue.add_member(:ports, Shapes::ShapeRef.new(shape: Ports, location_name: "ports"))
    MetricValue.struct_class = Types::MetricValue

    MissingContextValues.member = Shapes::ShapeRef.new(shape: MissingContextValue)

    NonCompliantResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    NonCompliantResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "resourceIdentifier"))
    NonCompliantResource.add_member(:additional_info, Shapes::ShapeRef.new(shape: StringMap, location_name: "additionalInfo"))
    NonCompliantResource.struct_class = Types::NonCompliantResource

    OTAUpdateFile.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "fileName"))
    OTAUpdateFile.add_member(:file_version, Shapes::ShapeRef.new(shape: OTAUpdateFileVersion, location_name: "fileVersion"))
    OTAUpdateFile.add_member(:file_location, Shapes::ShapeRef.new(shape: FileLocation, location_name: "fileLocation"))
    OTAUpdateFile.add_member(:code_signing, Shapes::ShapeRef.new(shape: CodeSigning, location_name: "codeSigning"))
    OTAUpdateFile.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributesMap, location_name: "attributes"))
    OTAUpdateFile.struct_class = Types::OTAUpdateFile

    OTAUpdateFiles.member = Shapes::ShapeRef.new(shape: OTAUpdateFile)

    OTAUpdateInfo.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, location_name: "otaUpdateId"))
    OTAUpdateInfo.add_member(:ota_update_arn, Shapes::ShapeRef.new(shape: OTAUpdateArn, location_name: "otaUpdateArn"))
    OTAUpdateInfo.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    OTAUpdateInfo.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    OTAUpdateInfo.add_member(:description, Shapes::ShapeRef.new(shape: OTAUpdateDescription, location_name: "description"))
    OTAUpdateInfo.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "targets"))
    OTAUpdateInfo.add_member(:aws_job_executions_rollout_config, Shapes::ShapeRef.new(shape: AwsJobExecutionsRolloutConfig, location_name: "awsJobExecutionsRolloutConfig"))
    OTAUpdateInfo.add_member(:target_selection, Shapes::ShapeRef.new(shape: TargetSelection, location_name: "targetSelection"))
    OTAUpdateInfo.add_member(:ota_update_files, Shapes::ShapeRef.new(shape: OTAUpdateFiles, location_name: "otaUpdateFiles"))
    OTAUpdateInfo.add_member(:ota_update_status, Shapes::ShapeRef.new(shape: OTAUpdateStatus, location_name: "otaUpdateStatus"))
    OTAUpdateInfo.add_member(:aws_iot_job_id, Shapes::ShapeRef.new(shape: AwsIotJobId, location_name: "awsIotJobId"))
    OTAUpdateInfo.add_member(:aws_iot_job_arn, Shapes::ShapeRef.new(shape: AwsIotJobArn, location_name: "awsIotJobArn"))
    OTAUpdateInfo.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    OTAUpdateInfo.add_member(:additional_parameters, Shapes::ShapeRef.new(shape: AdditionalParameterMap, location_name: "additionalParameters"))
    OTAUpdateInfo.struct_class = Types::OTAUpdateInfo

    OTAUpdateSummary.add_member(:ota_update_id, Shapes::ShapeRef.new(shape: OTAUpdateId, location_name: "otaUpdateId"))
    OTAUpdateSummary.add_member(:ota_update_arn, Shapes::ShapeRef.new(shape: OTAUpdateArn, location_name: "otaUpdateArn"))
    OTAUpdateSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    OTAUpdateSummary.struct_class = Types::OTAUpdateSummary

    OTAUpdatesSummary.member = Shapes::ShapeRef.new(shape: OTAUpdateSummary)

    OutgoingCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    OutgoingCertificate.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "certificateId"))
    OutgoingCertificate.add_member(:transferred_to, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "transferredTo"))
    OutgoingCertificate.add_member(:transfer_date, Shapes::ShapeRef.new(shape: DateType, location_name: "transferDate"))
    OutgoingCertificate.add_member(:transfer_message, Shapes::ShapeRef.new(shape: Message, location_name: "transferMessage"))
    OutgoingCertificate.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    OutgoingCertificate.struct_class = Types::OutgoingCertificate

    OutgoingCertificates.member = Shapes::ShapeRef.new(shape: OutgoingCertificate)

    Parameters.key = Shapes::ShapeRef.new(shape: Parameter)
    Parameters.value = Shapes::ShapeRef.new(shape: Value)

    Policies.member = Shapes::ShapeRef.new(shape: Policy)

    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    Policy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "policyArn"))
    Policy.struct_class = Types::Policy

    PolicyDocuments.member = Shapes::ShapeRef.new(shape: PolicyDocument)

    PolicyNames.member = Shapes::ShapeRef.new(shape: PolicyName)

    PolicyTargets.member = Shapes::ShapeRef.new(shape: PolicyTarget)

    PolicyVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "versionId"))
    PolicyVersion.add_member(:is_default_version, Shapes::ShapeRef.new(shape: IsDefaultVersion, location_name: "isDefaultVersion"))
    PolicyVersion.add_member(:create_date, Shapes::ShapeRef.new(shape: DateType, location_name: "createDate"))
    PolicyVersion.struct_class = Types::PolicyVersion

    PolicyVersionIdentifier.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    PolicyVersionIdentifier.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: "policyVersionId"))
    PolicyVersionIdentifier.struct_class = Types::PolicyVersionIdentifier

    PolicyVersions.member = Shapes::ShapeRef.new(shape: PolicyVersion)

    Ports.member = Shapes::ShapeRef.new(shape: Port)

    PresignedUrlConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    PresignedUrlConfig.add_member(:expires_in_sec, Shapes::ShapeRef.new(shape: ExpiresInSec, location_name: "expiresInSec"))
    PresignedUrlConfig.struct_class = Types::PresignedUrlConfig

    Principals.member = Shapes::ShapeRef.new(shape: PrincipalArn)

    ProcessingTargetNameList.member = Shapes::ShapeRef.new(shape: ProcessingTargetName)

    PublicKeyMap.key = Shapes::ShapeRef.new(shape: KeyName)
    PublicKeyMap.value = Shapes::ShapeRef.new(shape: KeyValue)

    PutItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    PutItemInput.struct_class = Types::PutItemInput

    RegisterCACertificateRequest.add_member(:ca_certificate, Shapes::ShapeRef.new(shape: CertificatePem, required: true, location_name: "caCertificate"))
    RegisterCACertificateRequest.add_member(:verification_certificate, Shapes::ShapeRef.new(shape: CertificatePem, required: true, location_name: "verificationCertificate"))
    RegisterCACertificateRequest.add_member(:set_as_active, Shapes::ShapeRef.new(shape: SetAsActive, location: "querystring", location_name: "setAsActive"))
    RegisterCACertificateRequest.add_member(:allow_auto_registration, Shapes::ShapeRef.new(shape: AllowAutoRegistration, location: "querystring", location_name: "allowAutoRegistration"))
    RegisterCACertificateRequest.add_member(:registration_config, Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: "registrationConfig"))
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

    RegisterThingRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, required: true, location_name: "templateBody"))
    RegisterThingRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    RegisterThingRequest.struct_class = Types::RegisterThingRequest

    RegisterThingResponse.add_member(:certificate_pem, Shapes::ShapeRef.new(shape: CertificatePem, location_name: "certificatePem"))
    RegisterThingResponse.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "resourceArns"))
    RegisterThingResponse.struct_class = Types::RegisterThingResponse

    RegistrationConfig.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "templateBody"))
    RegistrationConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    RegistrationConfig.struct_class = Types::RegistrationConfig

    RejectCertificateTransferRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    RejectCertificateTransferRequest.add_member(:reject_reason, Shapes::ShapeRef.new(shape: Message, location_name: "rejectReason"))
    RejectCertificateTransferRequest.struct_class = Types::RejectCertificateTransferRequest

    RelatedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    RelatedResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "resourceIdentifier"))
    RelatedResource.add_member(:additional_info, Shapes::ShapeRef.new(shape: StringMap, location_name: "additionalInfo"))
    RelatedResource.struct_class = Types::RelatedResource

    RelatedResources.member = Shapes::ShapeRef.new(shape: RelatedResource)

    RemoveThingFromThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "thingGroupName"))
    RemoveThingFromThingGroupRequest.add_member(:thing_group_arn, Shapes::ShapeRef.new(shape: ThingGroupArn, location_name: "thingGroupArn"))
    RemoveThingFromThingGroupRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    RemoveThingFromThingGroupRequest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    RemoveThingFromThingGroupRequest.struct_class = Types::RemoveThingFromThingGroupRequest

    RemoveThingFromThingGroupResponse.struct_class = Types::RemoveThingFromThingGroupResponse

    ReplaceTopicRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location: "uri", location_name: "ruleName"))
    ReplaceTopicRuleRequest.add_member(:topic_rule_payload, Shapes::ShapeRef.new(shape: TopicRulePayload, required: true, location_name: "topicRulePayload"))
    ReplaceTopicRuleRequest.struct_class = Types::ReplaceTopicRuleRequest
    ReplaceTopicRuleRequest[:payload] = :topic_rule_payload
    ReplaceTopicRuleRequest[:payload_member] = ReplaceTopicRuleRequest.member(:topic_rule_payload)

    RepublishAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    RepublishAction.add_member(:topic, Shapes::ShapeRef.new(shape: TopicPattern, required: true, location_name: "topic"))
    RepublishAction.struct_class = Types::RepublishAction

    ResourceArns.key = Shapes::ShapeRef.new(shape: ResourceLogicalId)
    ResourceArns.value = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceIdentifier.add_member(:device_certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "deviceCertificateId"))
    ResourceIdentifier.add_member(:ca_certificate_id, Shapes::ShapeRef.new(shape: CertificateId, location_name: "caCertificateId"))
    ResourceIdentifier.add_member(:cognito_identity_pool_id, Shapes::ShapeRef.new(shape: CognitoIdentityPoolId, location_name: "cognitoIdentityPoolId"))
    ResourceIdentifier.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "clientId"))
    ResourceIdentifier.add_member(:policy_version_identifier, Shapes::ShapeRef.new(shape: PolicyVersionIdentifier, location_name: "policyVersionIdentifier"))
    ResourceIdentifier.add_member(:account, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "account"))
    ResourceIdentifier.struct_class = Types::ResourceIdentifier

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    RoleAliasDescription.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, location_name: "roleAlias"))
    RoleAliasDescription.add_member(:role_alias_arn, Shapes::ShapeRef.new(shape: RoleAliasArn, location_name: "roleAliasArn"))
    RoleAliasDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    RoleAliasDescription.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "owner"))
    RoleAliasDescription.add_member(:credential_duration_seconds, Shapes::ShapeRef.new(shape: CredentialDurationSeconds, location_name: "credentialDurationSeconds"))
    RoleAliasDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "creationDate"))
    RoleAliasDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "lastModifiedDate"))
    RoleAliasDescription.struct_class = Types::RoleAliasDescription

    RoleAliases.member = Shapes::ShapeRef.new(shape: RoleAlias)

    S3Action.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    S3Action.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Action.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    S3Action.add_member(:canned_acl, Shapes::ShapeRef.new(shape: CannedAccessControlList, location_name: "cannedAcl"))
    S3Action.struct_class = Types::S3Action

    S3Destination.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "bucket"))
    S3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3Destination.struct_class = Types::S3Destination

    S3FileUrlList.member = Shapes::ShapeRef.new(shape: S3FileUrl)

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "key"))
    S3Location.add_member(:version, Shapes::ShapeRef.new(shape: S3Version, location_name: "version"))
    S3Location.struct_class = Types::S3Location

    SalesforceAction.add_member(:token, Shapes::ShapeRef.new(shape: SalesforceToken, required: true, location_name: "token"))
    SalesforceAction.add_member(:url, Shapes::ShapeRef.new(shape: SalesforceEndpoint, required: true, location_name: "url"))
    SalesforceAction.struct_class = Types::SalesforceAction

    ScheduledAuditMetadata.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, location_name: "scheduledAuditName"))
    ScheduledAuditMetadata.add_member(:scheduled_audit_arn, Shapes::ShapeRef.new(shape: ScheduledAuditArn, location_name: "scheduledAuditArn"))
    ScheduledAuditMetadata.add_member(:frequency, Shapes::ShapeRef.new(shape: AuditFrequency, location_name: "frequency"))
    ScheduledAuditMetadata.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "dayOfMonth"))
    ScheduledAuditMetadata.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    ScheduledAuditMetadata.struct_class = Types::ScheduledAuditMetadata

    ScheduledAuditMetadataList.member = Shapes::ShapeRef.new(shape: ScheduledAuditMetadata)

    SearchIndexRequest.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "indexName"))
    SearchIndexRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryString"))
    SearchIndexRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchIndexRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location_name: "maxResults"))
    SearchIndexRequest.add_member(:query_version, Shapes::ShapeRef.new(shape: QueryVersion, location_name: "queryVersion"))
    SearchIndexRequest.struct_class = Types::SearchIndexRequest

    SearchIndexResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchIndexResponse.add_member(:things, Shapes::ShapeRef.new(shape: ThingDocumentList, location_name: "things"))
    SearchIndexResponse.add_member(:thing_groups, Shapes::ShapeRef.new(shape: ThingGroupDocumentList, location_name: "thingGroups"))
    SearchIndexResponse.struct_class = Types::SearchIndexResponse

    SearchableAttributes.member = Shapes::ShapeRef.new(shape: AttributeName)

    SecurityProfileIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location_name: "name"))
    SecurityProfileIdentifier.add_member(:arn, Shapes::ShapeRef.new(shape: SecurityProfileArn, required: true, location_name: "arn"))
    SecurityProfileIdentifier.struct_class = Types::SecurityProfileIdentifier

    SecurityProfileIdentifiers.member = Shapes::ShapeRef.new(shape: SecurityProfileIdentifier)

    SecurityProfileTarget.add_member(:arn, Shapes::ShapeRef.new(shape: SecurityProfileTargetArn, required: true, location_name: "arn"))
    SecurityProfileTarget.struct_class = Types::SecurityProfileTarget

    SecurityProfileTargetMapping.add_member(:security_profile_identifier, Shapes::ShapeRef.new(shape: SecurityProfileIdentifier, location_name: "securityProfileIdentifier"))
    SecurityProfileTargetMapping.add_member(:target, Shapes::ShapeRef.new(shape: SecurityProfileTarget, location_name: "target"))
    SecurityProfileTargetMapping.struct_class = Types::SecurityProfileTargetMapping

    SecurityProfileTargetMappings.member = Shapes::ShapeRef.new(shape: SecurityProfileTargetMapping)

    SecurityProfileTargets.member = Shapes::ShapeRef.new(shape: SecurityProfileTarget)

    SetDefaultAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location_name: "authorizerName"))
    SetDefaultAuthorizerRequest.struct_class = Types::SetDefaultAuthorizerRequest

    SetDefaultAuthorizerResponse.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, location_name: "authorizerName"))
    SetDefaultAuthorizerResponse.add_member(:authorizer_arn, Shapes::ShapeRef.new(shape: AuthorizerArn, location_name: "authorizerArn"))
    SetDefaultAuthorizerResponse.struct_class = Types::SetDefaultAuthorizerResponse

    SetDefaultPolicyVersionRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "policyName"))
    SetDefaultPolicyVersionRequest.add_member(:policy_version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location: "uri", location_name: "policyVersionId"))
    SetDefaultPolicyVersionRequest.struct_class = Types::SetDefaultPolicyVersionRequest

    SetLoggingOptionsRequest.add_member(:logging_options_payload, Shapes::ShapeRef.new(shape: LoggingOptionsPayload, required: true, location_name: "loggingOptionsPayload"))
    SetLoggingOptionsRequest.struct_class = Types::SetLoggingOptionsRequest
    SetLoggingOptionsRequest[:payload] = :logging_options_payload
    SetLoggingOptionsRequest[:payload_member] = SetLoggingOptionsRequest.member(:logging_options_payload)

    SetV2LoggingLevelRequest.add_member(:log_target, Shapes::ShapeRef.new(shape: LogTarget, required: true, location_name: "logTarget"))
    SetV2LoggingLevelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "logLevel"))
    SetV2LoggingLevelRequest.struct_class = Types::SetV2LoggingLevelRequest

    SetV2LoggingOptionsRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, location_name: "roleArn"))
    SetV2LoggingOptionsRequest.add_member(:default_log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "defaultLogLevel"))
    SetV2LoggingOptionsRequest.add_member(:disable_all_logs, Shapes::ShapeRef.new(shape: DisableAllLogs, location_name: "disableAllLogs"))
    SetV2LoggingOptionsRequest.struct_class = Types::SetV2LoggingOptionsRequest

    SigningProfileParameter.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, location_name: "certificateArn"))
    SigningProfileParameter.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    SigningProfileParameter.add_member(:certificate_path_on_device, Shapes::ShapeRef.new(shape: CertificatePathOnDevice, location_name: "certificatePathOnDevice"))
    SigningProfileParameter.struct_class = Types::SigningProfileParameter

    SnsAction.add_member(:target_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "targetArn"))
    SnsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    SnsAction.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormat, location_name: "messageFormat"))
    SnsAction.struct_class = Types::SnsAction

    SqsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    SqsAction.add_member(:queue_url, Shapes::ShapeRef.new(shape: QueueUrl, required: true, location_name: "queueUrl"))
    SqsAction.add_member(:use_base_64, Shapes::ShapeRef.new(shape: UseBase64, location_name: "useBase64"))
    SqsAction.struct_class = Types::SqsAction

    StartOnDemandAuditTaskRequest.add_member(:target_check_names, Shapes::ShapeRef.new(shape: TargetAuditCheckNames, required: true, location_name: "targetCheckNames"))
    StartOnDemandAuditTaskRequest.struct_class = Types::StartOnDemandAuditTaskRequest

    StartOnDemandAuditTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: AuditTaskId, location_name: "taskId"))
    StartOnDemandAuditTaskResponse.struct_class = Types::StartOnDemandAuditTaskResponse

    StartSigningJobParameter.add_member(:signing_profile_parameter, Shapes::ShapeRef.new(shape: SigningProfileParameter, location_name: "signingProfileParameter"))
    StartSigningJobParameter.add_member(:signing_profile_name, Shapes::ShapeRef.new(shape: SigningProfileName, location_name: "signingProfileName"))
    StartSigningJobParameter.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    StartSigningJobParameter.struct_class = Types::StartSigningJobParameter

    StartThingRegistrationTaskRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, required: true, location_name: "templateBody"))
    StartThingRegistrationTaskRequest.add_member(:input_file_bucket, Shapes::ShapeRef.new(shape: RegistryS3BucketName, required: true, location_name: "inputFileBucket"))
    StartThingRegistrationTaskRequest.add_member(:input_file_key, Shapes::ShapeRef.new(shape: RegistryS3KeyName, required: true, location_name: "inputFileKey"))
    StartThingRegistrationTaskRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartThingRegistrationTaskRequest.struct_class = Types::StartThingRegistrationTaskRequest

    StartThingRegistrationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    StartThingRegistrationTaskResponse.struct_class = Types::StartThingRegistrationTaskResponse

    StepFunctionsAction.add_member(:execution_name_prefix, Shapes::ShapeRef.new(shape: ExecutionNamePrefix, location_name: "executionNamePrefix"))
    StepFunctionsAction.add_member(:state_machine_name, Shapes::ShapeRef.new(shape: StateMachineName, required: true, location_name: "stateMachineName"))
    StepFunctionsAction.add_member(:role_arn, Shapes::ShapeRef.new(shape: AwsArn, required: true, location_name: "roleArn"))
    StepFunctionsAction.struct_class = Types::StepFunctionsAction

    StopThingRegistrationTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    StopThingRegistrationTaskRequest.struct_class = Types::StopThingRegistrationTaskRequest

    StopThingRegistrationTaskResponse.struct_class = Types::StopThingRegistrationTaskResponse

    Stream.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    Stream.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, location_name: "fileId"))
    Stream.struct_class = Types::Stream

    StreamFile.add_member(:file_id, Shapes::ShapeRef.new(shape: FileId, location_name: "fileId"))
    StreamFile.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    StreamFile.struct_class = Types::StreamFile

    StreamFiles.member = Shapes::ShapeRef.new(shape: StreamFile)

    StreamInfo.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamInfo.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "streamArn"))
    StreamInfo.add_member(:stream_version, Shapes::ShapeRef.new(shape: StreamVersion, location_name: "streamVersion"))
    StreamInfo.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    StreamInfo.add_member(:files, Shapes::ShapeRef.new(shape: StreamFiles, location_name: "files"))
    StreamInfo.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, location_name: "createdAt"))
    StreamInfo.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    StreamInfo.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    StreamInfo.struct_class = Types::StreamInfo

    StreamSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSummary.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "streamArn"))
    StreamSummary.add_member(:stream_version, Shapes::ShapeRef.new(shape: StreamVersion, location_name: "streamVersion"))
    StreamSummary.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    StreamSummary.struct_class = Types::StreamSummary

    StreamsSummary.member = Shapes::ShapeRef.new(shape: StreamSummary)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    TargetAuditCheckNames.member = Shapes::ShapeRef.new(shape: AuditCheckName)

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    TaskIdList.member = Shapes::ShapeRef.new(shape: TaskId)

    TaskStatistics.add_member(:total_checks, Shapes::ShapeRef.new(shape: TotalChecksCount, location_name: "totalChecks"))
    TaskStatistics.add_member(:in_progress_checks, Shapes::ShapeRef.new(shape: InProgressChecksCount, location_name: "inProgressChecks"))
    TaskStatistics.add_member(:waiting_for_data_collection_checks, Shapes::ShapeRef.new(shape: WaitingForDataCollectionChecksCount, location_name: "waitingForDataCollectionChecks"))
    TaskStatistics.add_member(:compliant_checks, Shapes::ShapeRef.new(shape: CompliantChecksCount, location_name: "compliantChecks"))
    TaskStatistics.add_member(:non_compliant_checks, Shapes::ShapeRef.new(shape: NonCompliantChecksCount, location_name: "nonCompliantChecks"))
    TaskStatistics.add_member(:failed_checks, Shapes::ShapeRef.new(shape: FailedChecksCount, location_name: "failedChecks"))
    TaskStatistics.add_member(:canceled_checks, Shapes::ShapeRef.new(shape: CanceledChecksCount, location_name: "canceledChecks"))
    TaskStatistics.struct_class = Types::TaskStatistics

    TestAuthorizationRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, location_name: "principal"))
    TestAuthorizationRequest.add_member(:cognito_identity_pool_id, Shapes::ShapeRef.new(shape: CognitoIdentityPoolId, location_name: "cognitoIdentityPoolId"))
    TestAuthorizationRequest.add_member(:auth_infos, Shapes::ShapeRef.new(shape: AuthInfos, required: true, location_name: "authInfos"))
    TestAuthorizationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location: "querystring", location_name: "clientId"))
    TestAuthorizationRequest.add_member(:policy_names_to_add, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "policyNamesToAdd"))
    TestAuthorizationRequest.add_member(:policy_names_to_skip, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "policyNamesToSkip"))
    TestAuthorizationRequest.struct_class = Types::TestAuthorizationRequest

    TestAuthorizationResponse.add_member(:auth_results, Shapes::ShapeRef.new(shape: AuthResults, location_name: "authResults"))
    TestAuthorizationResponse.struct_class = Types::TestAuthorizationResponse

    TestInvokeAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location: "uri", location_name: "authorizerName"))
    TestInvokeAuthorizerRequest.add_member(:token, Shapes::ShapeRef.new(shape: Token, required: true, location_name: "token"))
    TestInvokeAuthorizerRequest.add_member(:token_signature, Shapes::ShapeRef.new(shape: TokenSignature, required: true, location_name: "tokenSignature"))
    TestInvokeAuthorizerRequest.struct_class = Types::TestInvokeAuthorizerRequest

    TestInvokeAuthorizerResponse.add_member(:is_authenticated, Shapes::ShapeRef.new(shape: IsAuthenticated, location_name: "isAuthenticated"))
    TestInvokeAuthorizerResponse.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "principalId"))
    TestInvokeAuthorizerResponse.add_member(:policy_documents, Shapes::ShapeRef.new(shape: PolicyDocuments, location_name: "policyDocuments"))
    TestInvokeAuthorizerResponse.add_member(:refresh_after_in_seconds, Shapes::ShapeRef.new(shape: Seconds, location_name: "refreshAfterInSeconds"))
    TestInvokeAuthorizerResponse.add_member(:disconnect_after_in_seconds, Shapes::ShapeRef.new(shape: Seconds, location_name: "disconnectAfterInSeconds"))
    TestInvokeAuthorizerResponse.struct_class = Types::TestInvokeAuthorizerResponse

    ThingAttribute.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ThingAttribute.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    ThingAttribute.add_member(:thing_arn, Shapes::ShapeRef.new(shape: ThingArn, location_name: "thingArn"))
    ThingAttribute.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ThingAttribute.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    ThingAttribute.struct_class = Types::ThingAttribute

    ThingAttributeList.member = Shapes::ShapeRef.new(shape: ThingAttribute)

    ThingDocument.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ThingDocument.add_member(:thing_id, Shapes::ShapeRef.new(shape: ThingId, location_name: "thingId"))
    ThingDocument.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    ThingDocument.add_member(:thing_group_names, Shapes::ShapeRef.new(shape: ThingGroupNameList, location_name: "thingGroupNames"))
    ThingDocument.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ThingDocument.add_member(:shadow, Shapes::ShapeRef.new(shape: JsonDocument, location_name: "shadow"))
    ThingDocument.struct_class = Types::ThingDocument

    ThingDocumentList.member = Shapes::ShapeRef.new(shape: ThingDocument)

    ThingGroupDocument.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "thingGroupName"))
    ThingGroupDocument.add_member(:thing_group_id, Shapes::ShapeRef.new(shape: ThingGroupId, location_name: "thingGroupId"))
    ThingGroupDocument.add_member(:thing_group_description, Shapes::ShapeRef.new(shape: ThingGroupDescription, location_name: "thingGroupDescription"))
    ThingGroupDocument.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ThingGroupDocument.add_member(:parent_group_names, Shapes::ShapeRef.new(shape: ThingGroupNameList, location_name: "parentGroupNames"))
    ThingGroupDocument.struct_class = Types::ThingGroupDocument

    ThingGroupDocumentList.member = Shapes::ShapeRef.new(shape: ThingGroupDocument)

    ThingGroupIndexingConfiguration.add_member(:thing_group_indexing_mode, Shapes::ShapeRef.new(shape: ThingGroupIndexingMode, required: true, location_name: "thingGroupIndexingMode"))
    ThingGroupIndexingConfiguration.struct_class = Types::ThingGroupIndexingConfiguration

    ThingGroupList.member = Shapes::ShapeRef.new(shape: ThingGroupName)

    ThingGroupMetadata.add_member(:parent_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, location_name: "parentGroupName"))
    ThingGroupMetadata.add_member(:root_to_parent_thing_groups, Shapes::ShapeRef.new(shape: ThingGroupNameAndArnList, location_name: "rootToParentThingGroups"))
    ThingGroupMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    ThingGroupMetadata.struct_class = Types::ThingGroupMetadata

    ThingGroupNameAndArnList.member = Shapes::ShapeRef.new(shape: GroupNameAndArn)

    ThingGroupNameList.member = Shapes::ShapeRef.new(shape: ThingGroupName)

    ThingGroupProperties.add_member(:thing_group_description, Shapes::ShapeRef.new(shape: ThingGroupDescription, location_name: "thingGroupDescription"))
    ThingGroupProperties.add_member(:attribute_payload, Shapes::ShapeRef.new(shape: AttributePayload, location_name: "attributePayload"))
    ThingGroupProperties.struct_class = Types::ThingGroupProperties

    ThingIndexingConfiguration.add_member(:thing_indexing_mode, Shapes::ShapeRef.new(shape: ThingIndexingMode, required: true, location_name: "thingIndexingMode"))
    ThingIndexingConfiguration.struct_class = Types::ThingIndexingConfiguration

    ThingNameList.member = Shapes::ShapeRef.new(shape: ThingName)

    ThingTypeDefinition.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    ThingTypeDefinition.add_member(:thing_type_arn, Shapes::ShapeRef.new(shape: ThingTypeArn, location_name: "thingTypeArn"))
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
    TopicRule.add_member(:error_action, Shapes::ShapeRef.new(shape: Action, location_name: "errorAction"))
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
    TopicRulePayload.add_member(:error_action, Shapes::ShapeRef.new(shape: Action, location_name: "errorAction"))
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

    UpdateAccountAuditConfigurationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateAccountAuditConfigurationRequest.add_member(:audit_notification_target_configurations, Shapes::ShapeRef.new(shape: AuditNotificationTargetConfigurations, location_name: "auditNotificationTargetConfigurations"))
    UpdateAccountAuditConfigurationRequest.add_member(:audit_check_configurations, Shapes::ShapeRef.new(shape: AuditCheckConfigurations, location_name: "auditCheckConfigurations"))
    UpdateAccountAuditConfigurationRequest.struct_class = Types::UpdateAccountAuditConfigurationRequest

    UpdateAccountAuditConfigurationResponse.struct_class = Types::UpdateAccountAuditConfigurationResponse

    UpdateAuthorizerRequest.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, required: true, location: "uri", location_name: "authorizerName"))
    UpdateAuthorizerRequest.add_member(:authorizer_function_arn, Shapes::ShapeRef.new(shape: AuthorizerFunctionArn, location_name: "authorizerFunctionArn"))
    UpdateAuthorizerRequest.add_member(:token_key_name, Shapes::ShapeRef.new(shape: TokenKeyName, location_name: "tokenKeyName"))
    UpdateAuthorizerRequest.add_member(:token_signing_public_keys, Shapes::ShapeRef.new(shape: PublicKeyMap, location_name: "tokenSigningPublicKeys"))
    UpdateAuthorizerRequest.add_member(:status, Shapes::ShapeRef.new(shape: AuthorizerStatus, location_name: "status"))
    UpdateAuthorizerRequest.struct_class = Types::UpdateAuthorizerRequest

    UpdateAuthorizerResponse.add_member(:authorizer_name, Shapes::ShapeRef.new(shape: AuthorizerName, location_name: "authorizerName"))
    UpdateAuthorizerResponse.add_member(:authorizer_arn, Shapes::ShapeRef.new(shape: AuthorizerArn, location_name: "authorizerArn"))
    UpdateAuthorizerResponse.struct_class = Types::UpdateAuthorizerResponse

    UpdateCACertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "caCertificateId"))
    UpdateCACertificateRequest.add_member(:new_status, Shapes::ShapeRef.new(shape: CACertificateStatus, location: "querystring", location_name: "newStatus"))
    UpdateCACertificateRequest.add_member(:new_auto_registration_status, Shapes::ShapeRef.new(shape: AutoRegistrationStatus, location: "querystring", location_name: "newAutoRegistrationStatus"))
    UpdateCACertificateRequest.add_member(:registration_config, Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: "registrationConfig"))
    UpdateCACertificateRequest.add_member(:remove_auto_registration, Shapes::ShapeRef.new(shape: RemoveAutoRegistration, location_name: "removeAutoRegistration"))
    UpdateCACertificateRequest.struct_class = Types::UpdateCACertificateRequest

    UpdateCertificateRequest.add_member(:certificate_id, Shapes::ShapeRef.new(shape: CertificateId, required: true, location: "uri", location_name: "certificateId"))
    UpdateCertificateRequest.add_member(:new_status, Shapes::ShapeRef.new(shape: CertificateStatus, required: true, location: "querystring", location_name: "newStatus"))
    UpdateCertificateRequest.struct_class = Types::UpdateCertificateRequest

    UpdateEventConfigurationsRequest.add_member(:event_configurations, Shapes::ShapeRef.new(shape: EventConfigurations, location_name: "eventConfigurations"))
    UpdateEventConfigurationsRequest.struct_class = Types::UpdateEventConfigurationsRequest

    UpdateEventConfigurationsResponse.struct_class = Types::UpdateEventConfigurationsResponse

    UpdateIndexingConfigurationRequest.add_member(:thing_indexing_configuration, Shapes::ShapeRef.new(shape: ThingIndexingConfiguration, location_name: "thingIndexingConfiguration"))
    UpdateIndexingConfigurationRequest.add_member(:thing_group_indexing_configuration, Shapes::ShapeRef.new(shape: ThingGroupIndexingConfiguration, location_name: "thingGroupIndexingConfiguration"))
    UpdateIndexingConfigurationRequest.struct_class = Types::UpdateIndexingConfigurationRequest

    UpdateIndexingConfigurationResponse.struct_class = Types::UpdateIndexingConfigurationResponse

    UpdateRoleAliasRequest.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, required: true, location: "uri", location_name: "roleAlias"))
    UpdateRoleAliasRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateRoleAliasRequest.add_member(:credential_duration_seconds, Shapes::ShapeRef.new(shape: CredentialDurationSeconds, location_name: "credentialDurationSeconds"))
    UpdateRoleAliasRequest.struct_class = Types::UpdateRoleAliasRequest

    UpdateRoleAliasResponse.add_member(:role_alias, Shapes::ShapeRef.new(shape: RoleAlias, location_name: "roleAlias"))
    UpdateRoleAliasResponse.add_member(:role_alias_arn, Shapes::ShapeRef.new(shape: RoleAliasArn, location_name: "roleAliasArn"))
    UpdateRoleAliasResponse.struct_class = Types::UpdateRoleAliasResponse

    UpdateScheduledAuditRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: AuditFrequency, location_name: "frequency"))
    UpdateScheduledAuditRequest.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "dayOfMonth"))
    UpdateScheduledAuditRequest.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    UpdateScheduledAuditRequest.add_member(:target_check_names, Shapes::ShapeRef.new(shape: TargetAuditCheckNames, location_name: "targetCheckNames"))
    UpdateScheduledAuditRequest.add_member(:scheduled_audit_name, Shapes::ShapeRef.new(shape: ScheduledAuditName, required: true, location: "uri", location_name: "scheduledAuditName"))
    UpdateScheduledAuditRequest.struct_class = Types::UpdateScheduledAuditRequest

    UpdateScheduledAuditResponse.add_member(:scheduled_audit_arn, Shapes::ShapeRef.new(shape: ScheduledAuditArn, location_name: "scheduledAuditArn"))
    UpdateScheduledAuditResponse.struct_class = Types::UpdateScheduledAuditResponse

    UpdateSecurityProfileRequest.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, required: true, location: "uri", location_name: "securityProfileName"))
    UpdateSecurityProfileRequest.add_member(:security_profile_description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "securityProfileDescription"))
    UpdateSecurityProfileRequest.add_member(:behaviors, Shapes::ShapeRef.new(shape: Behaviors, location_name: "behaviors"))
    UpdateSecurityProfileRequest.add_member(:alert_targets, Shapes::ShapeRef.new(shape: AlertTargets, location_name: "alertTargets"))
    UpdateSecurityProfileRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location: "querystring", location_name: "expectedVersion"))
    UpdateSecurityProfileRequest.struct_class = Types::UpdateSecurityProfileRequest

    UpdateSecurityProfileResponse.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "securityProfileName"))
    UpdateSecurityProfileResponse.add_member(:security_profile_arn, Shapes::ShapeRef.new(shape: SecurityProfileArn, location_name: "securityProfileArn"))
    UpdateSecurityProfileResponse.add_member(:security_profile_description, Shapes::ShapeRef.new(shape: SecurityProfileDescription, location_name: "securityProfileDescription"))
    UpdateSecurityProfileResponse.add_member(:behaviors, Shapes::ShapeRef.new(shape: Behaviors, location_name: "behaviors"))
    UpdateSecurityProfileResponse.add_member(:alert_targets, Shapes::ShapeRef.new(shape: AlertTargets, location_name: "alertTargets"))
    UpdateSecurityProfileResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    UpdateSecurityProfileResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    UpdateSecurityProfileResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedDate"))
    UpdateSecurityProfileResponse.struct_class = Types::UpdateSecurityProfileResponse

    UpdateStreamRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, required: true, location: "uri", location_name: "streamId"))
    UpdateStreamRequest.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    UpdateStreamRequest.add_member(:files, Shapes::ShapeRef.new(shape: StreamFiles, location_name: "files"))
    UpdateStreamRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateStreamRequest.struct_class = Types::UpdateStreamRequest

    UpdateStreamResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    UpdateStreamResponse.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "streamArn"))
    UpdateStreamResponse.add_member(:description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "description"))
    UpdateStreamResponse.add_member(:stream_version, Shapes::ShapeRef.new(shape: StreamVersion, location_name: "streamVersion"))
    UpdateStreamResponse.struct_class = Types::UpdateStreamResponse

    UpdateThingGroupRequest.add_member(:thing_group_name, Shapes::ShapeRef.new(shape: ThingGroupName, required: true, location: "uri", location_name: "thingGroupName"))
    UpdateThingGroupRequest.add_member(:thing_group_properties, Shapes::ShapeRef.new(shape: ThingGroupProperties, required: true, location_name: "thingGroupProperties"))
    UpdateThingGroupRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location_name: "expectedVersion"))
    UpdateThingGroupRequest.struct_class = Types::UpdateThingGroupRequest

    UpdateThingGroupResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    UpdateThingGroupResponse.struct_class = Types::UpdateThingGroupResponse

    UpdateThingGroupsForThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    UpdateThingGroupsForThingRequest.add_member(:thing_groups_to_add, Shapes::ShapeRef.new(shape: ThingGroupList, location_name: "thingGroupsToAdd"))
    UpdateThingGroupsForThingRequest.add_member(:thing_groups_to_remove, Shapes::ShapeRef.new(shape: ThingGroupList, location_name: "thingGroupsToRemove"))
    UpdateThingGroupsForThingRequest.struct_class = Types::UpdateThingGroupsForThingRequest

    UpdateThingGroupsForThingResponse.struct_class = Types::UpdateThingGroupsForThingResponse

    UpdateThingRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    UpdateThingRequest.add_member(:thing_type_name, Shapes::ShapeRef.new(shape: ThingTypeName, location_name: "thingTypeName"))
    UpdateThingRequest.add_member(:attribute_payload, Shapes::ShapeRef.new(shape: AttributePayload, location_name: "attributePayload"))
    UpdateThingRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: OptionalVersion, location_name: "expectedVersion"))
    UpdateThingRequest.add_member(:remove_thing_type, Shapes::ShapeRef.new(shape: RemoveThingType, location_name: "removeThingType"))
    UpdateThingRequest.struct_class = Types::UpdateThingRequest

    UpdateThingResponse.struct_class = Types::UpdateThingResponse

    ValidateSecurityProfileBehaviorsRequest.add_member(:behaviors, Shapes::ShapeRef.new(shape: Behaviors, required: true, location_name: "behaviors"))
    ValidateSecurityProfileBehaviorsRequest.struct_class = Types::ValidateSecurityProfileBehaviorsRequest

    ValidateSecurityProfileBehaviorsResponse.add_member(:valid, Shapes::ShapeRef.new(shape: Valid, location_name: "valid"))
    ValidateSecurityProfileBehaviorsResponse.add_member(:validation_errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "validationErrors"))
    ValidateSecurityProfileBehaviorsResponse.struct_class = Types::ValidateSecurityProfileBehaviorsResponse

    ValidationError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ValidationError.struct_class = Types::ValidationError

    ValidationErrors.member = Shapes::ShapeRef.new(shape: ValidationError)

    ViolationEvent.add_member(:violation_id, Shapes::ShapeRef.new(shape: ViolationId, location_name: "violationId"))
    ViolationEvent.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ViolationEvent.add_member(:security_profile_name, Shapes::ShapeRef.new(shape: SecurityProfileName, location_name: "securityProfileName"))
    ViolationEvent.add_member(:behavior, Shapes::ShapeRef.new(shape: Behavior, location_name: "behavior"))
    ViolationEvent.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricValue, location_name: "metricValue"))
    ViolationEvent.add_member(:violation_event_type, Shapes::ShapeRef.new(shape: ViolationEventType, location_name: "violationEventType"))
    ViolationEvent.add_member(:violation_event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "violationEventTime"))
    ViolationEvent.struct_class = Types::ViolationEvent

    ViolationEvents.member = Shapes::ShapeRef.new(shape: ViolationEvent)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-05-28"

      api.metadata = {
        "apiVersion" => "2015-05-28",
        "endpointPrefix" => "iot",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT",
        "serviceId" => "IoT",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
        "uid" => "iot-2015-05-28",
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

      api.add_operation(:add_thing_to_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddThingToThingGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/thing-groups/addThingToThingGroup"
        o.input = Shapes::ShapeRef.new(shape: AddThingToThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AddThingToThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_targets_with_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTargetsWithJob"
        o.http_method = "POST"
        o.http_request_uri = "/jobs/{jobId}/targets"
        o.input = Shapes::ShapeRef.new(shape: AssociateTargetsWithJobRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTargetsWithJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:attach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/target-policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: AttachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:attach_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachPrincipalPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/principal-policies/{policyName}"
        o.deprecated = true
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

      api.add_operation(:attach_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachSecurityProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/security-profiles/{securityProfileName}/targets"
        o.input = Shapes::ShapeRef.new(shape: AttachSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: AttachSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:cancel_audit_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelAuditTask"
        o.http_method = "PUT"
        o.http_request_uri = "/audit/tasks/{taskId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelAuditTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelAuditTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:cancel_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJob"
        o.http_method = "PUT"
        o.http_request_uri = "/jobs/{jobId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:cancel_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJobExecution"
        o.http_method = "PUT"
        o.http_request_uri = "/things/{thingName}/jobs/{jobId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
      end)

      api.add_operation(:clear_default_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClearDefaultAuthorizer"
        o.http_method = "DELETE"
        o.http_request_uri = "/default-authorizer"
        o.input = Shapes::ShapeRef.new(shape: ClearDefaultAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: ClearDefaultAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAuthorizer"
        o.http_method = "POST"
        o.http_request_uri = "/authorizer/{authorizerName}"
        o.input = Shapes::ShapeRef.new(shape: CreateAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "PUT"
        o.http_request_uri = "/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:create_ota_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOTAUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/otaUpdates/{otaUpdateId}"
        o.input = Shapes::ShapeRef.new(shape: CreateOTAUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOTAUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:create_role_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoleAlias"
        o.http_method = "POST"
        o.http_request_uri = "/role-aliases/{roleAlias}"
        o.input = Shapes::ShapeRef.new(shape: CreateRoleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_scheduled_audit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledAudit"
        o.http_method = "POST"
        o.http_request_uri = "/audit/scheduledaudits/{scheduledAuditName}"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledAuditRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduledAuditResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityProfile"
        o.http_method = "POST"
        o.http_request_uri = "/security-profiles/{securityProfileName}"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStream"
        o.http_method = "POST"
        o.http_request_uri = "/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
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

      api.add_operation(:create_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/thing-groups/{thingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: CreateThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:delete_account_audit_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAuditConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/audit/configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAuditConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountAuditConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAuthorizer"
        o.http_method = "DELETE"
        o.http_request_uri = "/authorizer/{authorizerName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJobExecution"
        o.http_method = "DELETE"
        o.http_request_uri = "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_ota_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOTAUpdate"
        o.http_method = "DELETE"
        o.http_request_uri = "/otaUpdates/{otaUpdateId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOTAUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOTAUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
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

      api.add_operation(:delete_role_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoleAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/role-aliases/{roleAlias}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRoleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_scheduled_audit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAudit"
        o.http_method = "DELETE"
        o.http_request_uri = "/audit/scheduledaudits/{scheduledAuditName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledAuditRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduledAuditResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/security-profiles/{securityProfileName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
      end)

      api.add_operation(:delete_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStream"
        o.http_method = "DELETE"
        o.http_request_uri = "/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThingGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/thing-groups/{thingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_v2_logging_level, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteV2LoggingLevel"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2LoggingLevel"
        o.input = Shapes::ShapeRef.new(shape: DeleteV2LoggingLevelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:describe_account_audit_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAuditConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/audit/configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAuditConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAuditConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_audit_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAuditTask"
        o.http_method = "GET"
        o.http_request_uri = "/audit/tasks/{taskId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAuditTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAuditTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAuthorizer"
        o.http_method = "GET"
        o.http_request_uri = "/authorizer/{authorizerName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAuthorizerResponse)
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

      api.add_operation(:describe_default_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDefaultAuthorizer"
        o.http_method = "GET"
        o.http_request_uri = "/default-authorizer"
        o.input = Shapes::ShapeRef.new(shape: DescribeDefaultAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDefaultAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/endpoint"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_event_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/event-configurations"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIndex"
        o.http_method = "GET"
        o.http_request_uri = "/indices/{indexName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobExecution"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_role_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRoleAlias"
        o.http_method = "GET"
        o.http_request_uri = "/role-aliases/{roleAlias}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRoleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRoleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_scheduled_audit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledAudit"
        o.http_method = "GET"
        o.http_request_uri = "/audit/scheduledaudits/{scheduledAuditName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledAuditRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduledAuditResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSecurityProfile"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles/{securityProfileName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStream"
        o.http_method = "GET"
        o.http_request_uri = "/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:describe_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/thing-groups/{thingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_thing_registration_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThingRegistrationTask"
        o.http_method = "GET"
        o.http_request_uri = "/thing-registration-tasks/{taskId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThingRegistrationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThingRegistrationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:detach_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/target-policies/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: DetachPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:detach_principal_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachPrincipalPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/principal-policies/{policyName}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DetachPrincipalPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:detach_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachSecurityProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/security-profiles/{securityProfileName}/targets"
        o.input = Shapes::ShapeRef.new(shape: DetachSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DetachSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:get_effective_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEffectivePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/effective-policies"
        o.input = Shapes::ShapeRef.new(shape: GetEffectivePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEffectivePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_indexing_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIndexingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/indexing/config"
        o.input = Shapes::ShapeRef.new(shape: GetIndexingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIndexingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_job_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobDocument"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{jobId}/job-document"
        o.input = Shapes::ShapeRef.new(shape: GetJobDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:get_ota_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOTAUpdate"
        o.http_method = "GET"
        o.http_request_uri = "/otaUpdates/{otaUpdateId}"
        o.input = Shapes::ShapeRef.new(shape: GetOTAUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOTAUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_v2_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetV2LoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/v2LoggingOptions"
        o.input = Shapes::ShapeRef.new(shape: GetV2LoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetV2LoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotConfiguredException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_active_violations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActiveViolations"
        o.http_method = "GET"
        o.http_request_uri = "/active-violations"
        o.input = Shapes::ShapeRef.new(shape: ListActiveViolationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActiveViolationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_attached_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachedPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/attached-policies/{target}"
        o.input = Shapes::ShapeRef.new(shape: ListAttachedPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachedPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_audit_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAuditFindings"
        o.http_method = "POST"
        o.http_request_uri = "/audit/findings"
        o.input = Shapes::ShapeRef.new(shape: ListAuditFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAuditFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_audit_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAuditTasks"
        o.http_method = "GET"
        o.http_request_uri = "/audit/tasks"
        o.input = Shapes::ShapeRef.new(shape: ListAuditTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAuditTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_authorizers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAuthorizers"
        o.http_method = "GET"
        o.http_request_uri = "/authorizers/"
        o.input = Shapes::ShapeRef.new(shape: ListAuthorizersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAuthorizersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:list_indices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndices"
        o.http_method = "GET"
        o.http_request_uri = "/indices"
        o.input = Shapes::ShapeRef.new(shape: ListIndicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIndicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_job_executions_for_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobExecutionsForJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{jobId}/things"
        o.input = Shapes::ShapeRef.new(shape: ListJobExecutionsForJobRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobExecutionsForJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_job_executions_for_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobExecutionsForThing"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobExecutionsForThingRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobExecutionsForThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_ota_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOTAUpdates"
        o.http_method = "GET"
        o.http_request_uri = "/otaUpdates"
        o.input = Shapes::ShapeRef.new(shape: ListOTAUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOTAUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.deprecated = true
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
        o.deprecated = true
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

      api.add_operation(:list_role_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoleAliases"
        o.http_method = "GET"
        o.http_request_uri = "/role-aliases"
        o.input = Shapes::ShapeRef.new(shape: ListRoleAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoleAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_scheduled_audits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledAudits"
        o.http_method = "GET"
        o.http_request_uri = "/audit/scheduledaudits"
        o.input = Shapes::ShapeRef.new(shape: ListScheduledAuditsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledAuditsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_security_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_security_profiles_for_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityProfilesForTarget"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles-for-target"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityProfilesForTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityProfilesForTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "GET"
        o.http_request_uri = "/streams"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_targets_for_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetsForPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policy-targets/{policyName}"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsForPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsForPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_targets_for_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetsForSecurityProfile"
        o.http_method = "GET"
        o.http_request_uri = "/security-profiles/{securityProfileName}/targets"
        o.input = Shapes::ShapeRef.new(shape: ListTargetsForSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTargetsForSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_thing_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingGroups"
        o.http_method = "GET"
        o.http_request_uri = "/thing-groups"
        o.input = Shapes::ShapeRef.new(shape: ListThingGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_thing_groups_for_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingGroupsForThing"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/thing-groups"
        o.input = Shapes::ShapeRef.new(shape: ListThingGroupsForThingRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingGroupsForThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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

      api.add_operation(:list_thing_registration_task_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingRegistrationTaskReports"
        o.http_method = "GET"
        o.http_request_uri = "/thing-registration-tasks/{taskId}/reports"
        o.input = Shapes::ShapeRef.new(shape: ListThingRegistrationTaskReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingRegistrationTaskReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_thing_registration_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingRegistrationTasks"
        o.http_method = "GET"
        o.http_request_uri = "/thing-registration-tasks"
        o.input = Shapes::ShapeRef.new(shape: ListThingRegistrationTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingRegistrationTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:list_things_in_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThingsInThingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/thing-groups/{thingGroupName}/things"
        o.input = Shapes::ShapeRef.new(shape: ListThingsInThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThingsInThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_v2_logging_levels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListV2LoggingLevels"
        o.http_method = "GET"
        o.http_request_uri = "/v2LoggingLevel"
        o.input = Shapes::ShapeRef.new(shape: ListV2LoggingLevelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListV2LoggingLevelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotConfiguredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_violation_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListViolationEvents"
        o.http_method = "GET"
        o.http_request_uri = "/violation-events"
        o.input = Shapes::ShapeRef.new(shape: ListViolationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListViolationEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:register_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterThing"
        o.http_method = "POST"
        o.http_request_uri = "/things"
        o.input = Shapes::ShapeRef.new(shape: RegisterThingRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingResourceUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceRegistrationFailureException)
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

      api.add_operation(:remove_thing_from_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveThingFromThingGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/thing-groups/removeThingFromThingGroup"
        o.input = Shapes::ShapeRef.new(shape: RemoveThingFromThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveThingFromThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:search_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchIndex"
        o.http_method = "POST"
        o.http_request_uri = "/indices/search"
        o.input = Shapes::ShapeRef.new(shape: SearchIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidQueryException)
        o.errors << Shapes::ShapeRef.new(shape: IndexNotReadyException)
      end)

      api.add_operation(:set_default_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDefaultAuthorizer"
        o.http_method = "POST"
        o.http_request_uri = "/default-authorizer"
        o.input = Shapes::ShapeRef.new(shape: SetDefaultAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: SetDefaultAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
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

      api.add_operation(:set_v2_logging_level, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetV2LoggingLevel"
        o.http_method = "POST"
        o.http_request_uri = "/v2LoggingLevel"
        o.input = Shapes::ShapeRef.new(shape: SetV2LoggingLevelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: NotConfiguredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:set_v2_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetV2LoggingOptions"
        o.http_method = "POST"
        o.http_request_uri = "/v2LoggingOptions"
        o.input = Shapes::ShapeRef.new(shape: SetV2LoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:start_on_demand_audit_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOnDemandAuditTask"
        o.http_method = "POST"
        o.http_request_uri = "/audit/tasks"
        o.input = Shapes::ShapeRef.new(shape: StartOnDemandAuditTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOnDemandAuditTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_thing_registration_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartThingRegistrationTask"
        o.http_method = "POST"
        o.http_request_uri = "/thing-registration-tasks"
        o.input = Shapes::ShapeRef.new(shape: StartThingRegistrationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartThingRegistrationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:stop_thing_registration_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopThingRegistrationTask"
        o.http_method = "PUT"
        o.http_request_uri = "/thing-registration-tasks/{taskId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: StopThingRegistrationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StopThingRegistrationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:test_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/test-authorization"
        o.input = Shapes::ShapeRef.new(shape: TestAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: TestAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:test_invoke_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestInvokeAuthorizer"
        o.http_method = "POST"
        o.http_request_uri = "/authorizer/{authorizerName}/test"
        o.input = Shapes::ShapeRef.new(shape: TestInvokeAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: TestInvokeAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResponseException)
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

      api.add_operation(:update_account_audit_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountAuditConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/audit/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountAuditConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountAuditConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_authorizer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAuthorizer"
        o.http_method = "PUT"
        o.http_request_uri = "/authorizer/{authorizerName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAuthorizerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAuthorizerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:update_event_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventConfigurations"
        o.http_method = "PATCH"
        o.http_request_uri = "/event-configurations"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_indexing_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIndexingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/indexing/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateIndexingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIndexingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_role_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoleAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/role-aliases/{roleAlias}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoleAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoleAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_scheduled_audit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledAudit"
        o.http_method = "PATCH"
        o.http_request_uri = "/audit/scheduledaudits/{scheduledAuditName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledAuditRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduledAuditResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_security_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/security-profiles/{securityProfileName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStream"
        o.http_method = "PUT"
        o.http_request_uri = "/streams/{streamId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:update_thing_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThingGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/thing-groups/{thingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: VersionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_thing_groups_for_thing, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThingGroupsForThing"
        o.http_method = "PUT"
        o.http_request_uri = "/thing-groups/updateThingGroupsForThing"
        o.input = Shapes::ShapeRef.new(shape: UpdateThingGroupsForThingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThingGroupsForThingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:validate_security_profile_behaviors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateSecurityProfileBehaviors"
        o.http_method = "POST"
        o.http_request_uri = "/security-profile-behaviors/validate"
        o.input = Shapes::ShapeRef.new(shape: ValidateSecurityProfileBehaviorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidateSecurityProfileBehaviorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)
    end

  end
end
