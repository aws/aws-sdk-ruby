# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Lambda
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountLimit = Shapes::StructureShape.new(name: 'AccountLimit')
    AccountUsage = Shapes::StructureShape.new(name: 'AccountUsage')
    Action = Shapes::StringShape.new(name: 'Action')
    AddLayerVersionPermissionRequest = Shapes::StructureShape.new(name: 'AddLayerVersionPermissionRequest')
    AddLayerVersionPermissionResponse = Shapes::StructureShape.new(name: 'AddLayerVersionPermissionResponse')
    AddPermissionRequest = Shapes::StructureShape.new(name: 'AddPermissionRequest')
    AddPermissionResponse = Shapes::StructureShape.new(name: 'AddPermissionResponse')
    AdditionalVersion = Shapes::StringShape.new(name: 'AdditionalVersion')
    AdditionalVersionWeights = Shapes::MapShape.new(name: 'AdditionalVersionWeights')
    Alias = Shapes::StringShape.new(name: 'Alias')
    AliasConfiguration = Shapes::StructureShape.new(name: 'AliasConfiguration')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    AliasRoutingConfiguration = Shapes::StructureShape.new(name: 'AliasRoutingConfiguration')
    AllowCredentials = Shapes::BooleanShape.new(name: 'AllowCredentials')
    AllowMethodsList = Shapes::ListShape.new(name: 'AllowMethodsList')
    AllowOriginsList = Shapes::ListShape.new(name: 'AllowOriginsList')
    AllowedPublishers = Shapes::StructureShape.new(name: 'AllowedPublishers')
    AmazonManagedKafkaEventSourceConfig = Shapes::StructureShape.new(name: 'AmazonManagedKafkaEventSourceConfig')
    ApplicationLogLevel = Shapes::StringShape.new(name: 'ApplicationLogLevel')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    ArchitecturesList = Shapes::ListShape.new(name: 'ArchitecturesList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttemptCount = Shapes::IntegerShape.new(name: 'AttemptCount')
    BatchSize = Shapes::IntegerShape.new(name: 'BatchSize')
    BinaryOperationPayload = Shapes::BlobShape.new(name: 'BinaryOperationPayload')
    BisectBatchOnFunctionError = Shapes::BooleanShape.new(name: 'BisectBatchOnFunctionError')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    BlobStream = Shapes::BlobShape.new(name: 'BlobStream', streaming: true)
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CallbackDetails = Shapes::StructureShape.new(name: 'CallbackDetails')
    CallbackFailedDetails = Shapes::StructureShape.new(name: 'CallbackFailedDetails')
    CallbackId = Shapes::StringShape.new(name: 'CallbackId')
    CallbackOptions = Shapes::StructureShape.new(name: 'CallbackOptions')
    CallbackStartedDetails = Shapes::StructureShape.new(name: 'CallbackStartedDetails')
    CallbackSucceededDetails = Shapes::StructureShape.new(name: 'CallbackSucceededDetails')
    CallbackTimedOutDetails = Shapes::StructureShape.new(name: 'CallbackTimedOutDetails')
    CallbackTimeoutException = Shapes::StructureShape.new(name: 'CallbackTimeoutException')
    CapacityProvider = Shapes::StructureShape.new(name: 'CapacityProvider')
    CapacityProviderArn = Shapes::StringShape.new(name: 'CapacityProviderArn')
    CapacityProviderConfig = Shapes::StructureShape.new(name: 'CapacityProviderConfig')
    CapacityProviderLimitExceededException = Shapes::StructureShape.new(name: 'CapacityProviderLimitExceededException')
    CapacityProviderMaxVCpuCount = Shapes::IntegerShape.new(name: 'CapacityProviderMaxVCpuCount')
    CapacityProviderName = Shapes::StringShape.new(name: 'CapacityProviderName')
    CapacityProviderPermissionsConfig = Shapes::StructureShape.new(name: 'CapacityProviderPermissionsConfig')
    CapacityProviderPredefinedMetricType = Shapes::StringShape.new(name: 'CapacityProviderPredefinedMetricType')
    CapacityProviderScalingConfig = Shapes::StructureShape.new(name: 'CapacityProviderScalingConfig')
    CapacityProviderScalingMode = Shapes::StringShape.new(name: 'CapacityProviderScalingMode')
    CapacityProviderScalingPoliciesList = Shapes::ListShape.new(name: 'CapacityProviderScalingPoliciesList')
    CapacityProviderSecurityGroupIds = Shapes::ListShape.new(name: 'CapacityProviderSecurityGroupIds')
    CapacityProviderState = Shapes::StringShape.new(name: 'CapacityProviderState')
    CapacityProviderSubnetIds = Shapes::ListShape.new(name: 'CapacityProviderSubnetIds')
    CapacityProviderVpcConfig = Shapes::StructureShape.new(name: 'CapacityProviderVpcConfig')
    CapacityProvidersList = Shapes::ListShape.new(name: 'CapacityProvidersList')
    ChainedInvokeDetails = Shapes::StructureShape.new(name: 'ChainedInvokeDetails')
    ChainedInvokeFailedDetails = Shapes::StructureShape.new(name: 'ChainedInvokeFailedDetails')
    ChainedInvokeOptions = Shapes::StructureShape.new(name: 'ChainedInvokeOptions')
    ChainedInvokeStartedDetails = Shapes::StructureShape.new(name: 'ChainedInvokeStartedDetails')
    ChainedInvokeStoppedDetails = Shapes::StructureShape.new(name: 'ChainedInvokeStoppedDetails')
    ChainedInvokeSucceededDetails = Shapes::StructureShape.new(name: 'ChainedInvokeSucceededDetails')
    ChainedInvokeTimedOutDetails = Shapes::StructureShape.new(name: 'ChainedInvokeTimedOutDetails')
    CheckpointDurableExecutionRequest = Shapes::StructureShape.new(name: 'CheckpointDurableExecutionRequest')
    CheckpointDurableExecutionResponse = Shapes::StructureShape.new(name: 'CheckpointDurableExecutionResponse')
    CheckpointToken = Shapes::StringShape.new(name: 'CheckpointToken')
    CheckpointUpdatedExecutionState = Shapes::StructureShape.new(name: 'CheckpointUpdatedExecutionState')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CodeSigningConfig = Shapes::StructureShape.new(name: 'CodeSigningConfig')
    CodeSigningConfigArn = Shapes::StringShape.new(name: 'CodeSigningConfigArn')
    CodeSigningConfigId = Shapes::StringShape.new(name: 'CodeSigningConfigId')
    CodeSigningConfigList = Shapes::ListShape.new(name: 'CodeSigningConfigList')
    CodeSigningConfigNotFoundException = Shapes::StructureShape.new(name: 'CodeSigningConfigNotFoundException')
    CodeSigningPolicies = Shapes::StructureShape.new(name: 'CodeSigningPolicies')
    CodeSigningPolicy = Shapes::StringShape.new(name: 'CodeSigningPolicy')
    CodeStorageExceededException = Shapes::StructureShape.new(name: 'CodeStorageExceededException')
    CodeVerificationFailedException = Shapes::StructureShape.new(name: 'CodeVerificationFailedException')
    CollectionName = Shapes::StringShape.new(name: 'CollectionName')
    CompatibleArchitectures = Shapes::ListShape.new(name: 'CompatibleArchitectures')
    CompatibleRuntimes = Shapes::ListShape.new(name: 'CompatibleRuntimes')
    Concurrency = Shapes::StructureShape.new(name: 'Concurrency')
    ContextDetails = Shapes::StructureShape.new(name: 'ContextDetails')
    ContextFailedDetails = Shapes::StructureShape.new(name: 'ContextFailedDetails')
    ContextOptions = Shapes::StructureShape.new(name: 'ContextOptions')
    ContextStartedDetails = Shapes::StructureShape.new(name: 'ContextStartedDetails')
    ContextSucceededDetails = Shapes::StructureShape.new(name: 'ContextSucceededDetails')
    Cors = Shapes::StructureShape.new(name: 'Cors')
    CreateAliasRequest = Shapes::StructureShape.new(name: 'CreateAliasRequest')
    CreateCapacityProviderRequest = Shapes::StructureShape.new(name: 'CreateCapacityProviderRequest')
    CreateCapacityProviderResponse = Shapes::StructureShape.new(name: 'CreateCapacityProviderResponse')
    CreateCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'CreateCodeSigningConfigRequest')
    CreateCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'CreateCodeSigningConfigResponse')
    CreateEventSourceMappingRequest = Shapes::StructureShape.new(name: 'CreateEventSourceMappingRequest')
    CreateFunctionRequest = Shapes::StructureShape.new(name: 'CreateFunctionRequest')
    CreateFunctionUrlConfigRequest = Shapes::StructureShape.new(name: 'CreateFunctionUrlConfigRequest')
    CreateFunctionUrlConfigResponse = Shapes::StructureShape.new(name: 'CreateFunctionUrlConfigResponse')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeadLetterConfig = Shapes::StructureShape.new(name: 'DeadLetterConfig')
    DeleteAliasRequest = Shapes::StructureShape.new(name: 'DeleteAliasRequest')
    DeleteCapacityProviderRequest = Shapes::StructureShape.new(name: 'DeleteCapacityProviderRequest')
    DeleteCapacityProviderResponse = Shapes::StructureShape.new(name: 'DeleteCapacityProviderResponse')
    DeleteCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'DeleteCodeSigningConfigRequest')
    DeleteCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'DeleteCodeSigningConfigResponse')
    DeleteEventSourceMappingRequest = Shapes::StructureShape.new(name: 'DeleteEventSourceMappingRequest')
    DeleteFunctionCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'DeleteFunctionCodeSigningConfigRequest')
    DeleteFunctionConcurrencyRequest = Shapes::StructureShape.new(name: 'DeleteFunctionConcurrencyRequest')
    DeleteFunctionEventInvokeConfigRequest = Shapes::StructureShape.new(name: 'DeleteFunctionEventInvokeConfigRequest')
    DeleteFunctionRequest = Shapes::StructureShape.new(name: 'DeleteFunctionRequest')
    DeleteFunctionResponse = Shapes::StructureShape.new(name: 'DeleteFunctionResponse')
    DeleteFunctionUrlConfigRequest = Shapes::StructureShape.new(name: 'DeleteFunctionUrlConfigRequest')
    DeleteLayerVersionRequest = Shapes::StructureShape.new(name: 'DeleteLayerVersionRequest')
    DeleteProvisionedConcurrencyConfigRequest = Shapes::StructureShape.new(name: 'DeleteProvisionedConcurrencyConfigRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationConfig = Shapes::StructureShape.new(name: 'DestinationConfig')
    DocumentDBEventSourceConfig = Shapes::StructureShape.new(name: 'DocumentDBEventSourceConfig')
    DurableConfig = Shapes::StructureShape.new(name: 'DurableConfig')
    DurableExecutionAlreadyStartedException = Shapes::StructureShape.new(name: 'DurableExecutionAlreadyStartedException')
    DurableExecutionArn = Shapes::StringShape.new(name: 'DurableExecutionArn')
    DurableExecutionName = Shapes::StringShape.new(name: 'DurableExecutionName')
    DurableExecutions = Shapes::ListShape.new(name: 'DurableExecutions')
    DurationSeconds = Shapes::IntegerShape.new(name: 'DurationSeconds')
    EC2AccessDeniedException = Shapes::StructureShape.new(name: 'EC2AccessDeniedException')
    EC2ThrottledException = Shapes::StructureShape.new(name: 'EC2ThrottledException')
    EC2UnexpectedException = Shapes::StructureShape.new(name: 'EC2UnexpectedException')
    EFSIOException = Shapes::StructureShape.new(name: 'EFSIOException')
    EFSMountConnectivityException = Shapes::StructureShape.new(name: 'EFSMountConnectivityException')
    EFSMountFailureException = Shapes::StructureShape.new(name: 'EFSMountFailureException')
    EFSMountTimeoutException = Shapes::StructureShape.new(name: 'EFSMountTimeoutException')
    ENILimitReachedException = Shapes::StructureShape.new(name: 'ENILimitReachedException')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EndPointType = Shapes::StringShape.new(name: 'EndPointType')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EndpointLists = Shapes::ListShape.new(name: 'EndpointLists')
    Endpoints = Shapes::MapShape.new(name: 'Endpoints')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentError = Shapes::StructureShape.new(name: 'EnvironmentError')
    EnvironmentResponse = Shapes::StructureShape.new(name: 'EnvironmentResponse')
    EnvironmentVariableName = Shapes::StringShape.new(name: 'EnvironmentVariableName')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariables = Shapes::MapShape.new(name: 'EnvironmentVariables')
    EphemeralStorage = Shapes::StructureShape.new(name: 'EphemeralStorage')
    EphemeralStorageSize = Shapes::IntegerShape.new(name: 'EphemeralStorageSize')
    ErrorData = Shapes::StringShape.new(name: 'ErrorData')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorObject = Shapes::StructureShape.new(name: 'ErrorObject')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventError = Shapes::StructureShape.new(name: 'EventError')
    EventId = Shapes::IntegerShape.new(name: 'EventId')
    EventInput = Shapes::StructureShape.new(name: 'EventInput')
    EventResult = Shapes::StructureShape.new(name: 'EventResult')
    EventSourceMappingArn = Shapes::StringShape.new(name: 'EventSourceMappingArn')
    EventSourceMappingConfiguration = Shapes::StructureShape.new(name: 'EventSourceMappingConfiguration')
    EventSourceMappingMetric = Shapes::StringShape.new(name: 'EventSourceMappingMetric')
    EventSourceMappingMetricList = Shapes::ListShape.new(name: 'EventSourceMappingMetricList')
    EventSourceMappingMetricsConfig = Shapes::StructureShape.new(name: 'EventSourceMappingMetricsConfig')
    EventSourceMappingsList = Shapes::ListShape.new(name: 'EventSourceMappingsList')
    EventSourcePosition = Shapes::StringShape.new(name: 'EventSourcePosition')
    EventSourceToken = Shapes::StringShape.new(name: 'EventSourceToken')
    EventType = Shapes::StringShape.new(name: 'EventType')
    Events = Shapes::ListShape.new(name: 'Events')
    Execution = Shapes::StructureShape.new(name: 'Execution')
    ExecutionDetails = Shapes::StructureShape.new(name: 'ExecutionDetails')
    ExecutionEnvironmentMemoryGiBPerVCpu = Shapes::FloatShape.new(name: 'ExecutionEnvironmentMemoryGiBPerVCpu')
    ExecutionFailedDetails = Shapes::StructureShape.new(name: 'ExecutionFailedDetails')
    ExecutionStartedDetails = Shapes::StructureShape.new(name: 'ExecutionStartedDetails')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionStatusList = Shapes::ListShape.new(name: 'ExecutionStatusList')
    ExecutionStoppedDetails = Shapes::StructureShape.new(name: 'ExecutionStoppedDetails')
    ExecutionSucceededDetails = Shapes::StructureShape.new(name: 'ExecutionSucceededDetails')
    ExecutionTimedOutDetails = Shapes::StructureShape.new(name: 'ExecutionTimedOutDetails')
    ExecutionTimeout = Shapes::IntegerShape.new(name: 'ExecutionTimeout')
    ExecutionTimestamp = Shapes::TimestampShape.new(name: 'ExecutionTimestamp')
    FileSystemArn = Shapes::StringShape.new(name: 'FileSystemArn')
    FileSystemConfig = Shapes::StructureShape.new(name: 'FileSystemConfig')
    FileSystemConfigList = Shapes::ListShape.new(name: 'FileSystemConfigList')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterCriteria = Shapes::StructureShape.new(name: 'FilterCriteria')
    FilterCriteriaError = Shapes::StructureShape.new(name: 'FilterCriteriaError')
    FilterCriteriaErrorCode = Shapes::StringShape.new(name: 'FilterCriteriaErrorCode')
    FilterCriteriaErrorMessage = Shapes::StringShape.new(name: 'FilterCriteriaErrorMessage')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FullDocument = Shapes::StringShape.new(name: 'FullDocument')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    FunctionArnList = Shapes::ListShape.new(name: 'FunctionArnList')
    FunctionCode = Shapes::StructureShape.new(name: 'FunctionCode')
    FunctionCodeLocation = Shapes::StructureShape.new(name: 'FunctionCodeLocation')
    FunctionConfiguration = Shapes::StructureShape.new(name: 'FunctionConfiguration')
    FunctionEventInvokeConfig = Shapes::StructureShape.new(name: 'FunctionEventInvokeConfig')
    FunctionEventInvokeConfigList = Shapes::ListShape.new(name: 'FunctionEventInvokeConfigList')
    FunctionList = Shapes::ListShape.new(name: 'FunctionList')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    FunctionResponseType = Shapes::StringShape.new(name: 'FunctionResponseType')
    FunctionResponseTypeList = Shapes::ListShape.new(name: 'FunctionResponseTypeList')
    FunctionScalingConfig = Shapes::StructureShape.new(name: 'FunctionScalingConfig')
    FunctionScalingConfigExecutionEnvironments = Shapes::IntegerShape.new(name: 'FunctionScalingConfigExecutionEnvironments')
    FunctionUrl = Shapes::StringShape.new(name: 'FunctionUrl')
    FunctionUrlAuthType = Shapes::StringShape.new(name: 'FunctionUrlAuthType')
    FunctionUrlConfig = Shapes::StructureShape.new(name: 'FunctionUrlConfig')
    FunctionUrlConfigList = Shapes::ListShape.new(name: 'FunctionUrlConfigList')
    FunctionUrlQualifier = Shapes::StringShape.new(name: 'FunctionUrlQualifier')
    FunctionVersion = Shapes::StringShape.new(name: 'FunctionVersion')
    FunctionVersionLatestPublished = Shapes::StringShape.new(name: 'FunctionVersionLatestPublished')
    FunctionVersionsByCapacityProviderList = Shapes::ListShape.new(name: 'FunctionVersionsByCapacityProviderList')
    FunctionVersionsByCapacityProviderListItem = Shapes::StructureShape.new(name: 'FunctionVersionsByCapacityProviderListItem')
    FunctionVersionsPerCapacityProviderLimitExceededException = Shapes::StructureShape.new(name: 'FunctionVersionsPerCapacityProviderLimitExceededException')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetAliasRequest = Shapes::StructureShape.new(name: 'GetAliasRequest')
    GetCapacityProviderRequest = Shapes::StructureShape.new(name: 'GetCapacityProviderRequest')
    GetCapacityProviderResponse = Shapes::StructureShape.new(name: 'GetCapacityProviderResponse')
    GetCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'GetCodeSigningConfigRequest')
    GetCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'GetCodeSigningConfigResponse')
    GetDurableExecutionHistoryRequest = Shapes::StructureShape.new(name: 'GetDurableExecutionHistoryRequest')
    GetDurableExecutionHistoryResponse = Shapes::StructureShape.new(name: 'GetDurableExecutionHistoryResponse')
    GetDurableExecutionRequest = Shapes::StructureShape.new(name: 'GetDurableExecutionRequest')
    GetDurableExecutionResponse = Shapes::StructureShape.new(name: 'GetDurableExecutionResponse')
    GetDurableExecutionStateRequest = Shapes::StructureShape.new(name: 'GetDurableExecutionStateRequest')
    GetDurableExecutionStateResponse = Shapes::StructureShape.new(name: 'GetDurableExecutionStateResponse')
    GetEventSourceMappingRequest = Shapes::StructureShape.new(name: 'GetEventSourceMappingRequest')
    GetFunctionCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'GetFunctionCodeSigningConfigRequest')
    GetFunctionCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'GetFunctionCodeSigningConfigResponse')
    GetFunctionConcurrencyRequest = Shapes::StructureShape.new(name: 'GetFunctionConcurrencyRequest')
    GetFunctionConcurrencyResponse = Shapes::StructureShape.new(name: 'GetFunctionConcurrencyResponse')
    GetFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'GetFunctionConfigurationRequest')
    GetFunctionEventInvokeConfigRequest = Shapes::StructureShape.new(name: 'GetFunctionEventInvokeConfigRequest')
    GetFunctionRecursionConfigRequest = Shapes::StructureShape.new(name: 'GetFunctionRecursionConfigRequest')
    GetFunctionRecursionConfigResponse = Shapes::StructureShape.new(name: 'GetFunctionRecursionConfigResponse')
    GetFunctionRequest = Shapes::StructureShape.new(name: 'GetFunctionRequest')
    GetFunctionResponse = Shapes::StructureShape.new(name: 'GetFunctionResponse')
    GetFunctionScalingConfigRequest = Shapes::StructureShape.new(name: 'GetFunctionScalingConfigRequest')
    GetFunctionScalingConfigResponse = Shapes::StructureShape.new(name: 'GetFunctionScalingConfigResponse')
    GetFunctionUrlConfigRequest = Shapes::StructureShape.new(name: 'GetFunctionUrlConfigRequest')
    GetFunctionUrlConfigResponse = Shapes::StructureShape.new(name: 'GetFunctionUrlConfigResponse')
    GetLayerVersionByArnRequest = Shapes::StructureShape.new(name: 'GetLayerVersionByArnRequest')
    GetLayerVersionPolicyRequest = Shapes::StructureShape.new(name: 'GetLayerVersionPolicyRequest')
    GetLayerVersionPolicyResponse = Shapes::StructureShape.new(name: 'GetLayerVersionPolicyResponse')
    GetLayerVersionRequest = Shapes::StructureShape.new(name: 'GetLayerVersionRequest')
    GetLayerVersionResponse = Shapes::StructureShape.new(name: 'GetLayerVersionResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetProvisionedConcurrencyConfigRequest = Shapes::StructureShape.new(name: 'GetProvisionedConcurrencyConfigRequest')
    GetProvisionedConcurrencyConfigResponse = Shapes::StructureShape.new(name: 'GetProvisionedConcurrencyConfigResponse')
    GetRuntimeManagementConfigRequest = Shapes::StructureShape.new(name: 'GetRuntimeManagementConfigRequest')
    GetRuntimeManagementConfigResponse = Shapes::StructureShape.new(name: 'GetRuntimeManagementConfigResponse')
    Handler = Shapes::StringShape.new(name: 'Handler')
    Header = Shapes::StringShape.new(name: 'Header')
    HeadersList = Shapes::ListShape.new(name: 'HeadersList')
    HttpStatus = Shapes::IntegerShape.new(name: 'HttpStatus')
    ImageConfig = Shapes::StructureShape.new(name: 'ImageConfig')
    ImageConfigError = Shapes::StructureShape.new(name: 'ImageConfigError')
    ImageConfigResponse = Shapes::StructureShape.new(name: 'ImageConfigResponse')
    IncludeExecutionData = Shapes::BooleanShape.new(name: 'IncludeExecutionData')
    InputPayload = Shapes::StringShape.new(name: 'InputPayload')
    InstanceRequirements = Shapes::StructureShape.new(name: 'InstanceRequirements')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeSet = Shapes::ListShape.new(name: 'InstanceTypeSet')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidCodeSignatureException = Shapes::StructureShape.new(name: 'InvalidCodeSignatureException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestContentException = Shapes::StructureShape.new(name: 'InvalidRequestContentException')
    InvalidRuntimeException = Shapes::StructureShape.new(name: 'InvalidRuntimeException')
    InvalidSecurityGroupIDException = Shapes::StructureShape.new(name: 'InvalidSecurityGroupIDException')
    InvalidSubnetIDException = Shapes::StructureShape.new(name: 'InvalidSubnetIDException')
    InvalidZipFileException = Shapes::StructureShape.new(name: 'InvalidZipFileException')
    InvocationCompletedDetails = Shapes::StructureShape.new(name: 'InvocationCompletedDetails')
    InvocationRequest = Shapes::StructureShape.new(name: 'InvocationRequest')
    InvocationResponse = Shapes::StructureShape.new(name: 'InvocationResponse')
    InvocationType = Shapes::StringShape.new(name: 'InvocationType')
    InvokeAsyncRequest = Shapes::StructureShape.new(name: 'InvokeAsyncRequest')
    InvokeAsyncResponse = Shapes::StructureShape.new(name: 'InvokeAsyncResponse')
    InvokeMode = Shapes::StringShape.new(name: 'InvokeMode')
    InvokeResponseStreamUpdate = Shapes::StructureShape.new(name: 'InvokeResponseStreamUpdate')
    InvokeWithResponseStreamCompleteEvent = Shapes::StructureShape.new(name: 'InvokeWithResponseStreamCompleteEvent')
    InvokeWithResponseStreamRequest = Shapes::StructureShape.new(name: 'InvokeWithResponseStreamRequest')
    InvokeWithResponseStreamResponse = Shapes::StructureShape.new(name: 'InvokeWithResponseStreamResponse')
    InvokeWithResponseStreamResponseEvent = Shapes::StructureShape.new(name: 'InvokeWithResponseStreamResponseEvent')
    InvokedViaFunctionUrl = Shapes::BooleanShape.new(name: 'InvokedViaFunctionUrl')
    ItemCount = Shapes::IntegerShape.new(name: 'ItemCount')
    KMSAccessDeniedException = Shapes::StructureShape.new(name: 'KMSAccessDeniedException')
    KMSDisabledException = Shapes::StructureShape.new(name: 'KMSDisabledException')
    KMSInvalidStateException = Shapes::StructureShape.new(name: 'KMSInvalidStateException')
    KMSKeyArn = Shapes::StringShape.new(name: 'KMSKeyArn')
    KMSKeyArnNonEmpty = Shapes::StringShape.new(name: 'KMSKeyArnNonEmpty')
    KMSNotFoundException = Shapes::StructureShape.new(name: 'KMSNotFoundException')
    KafkaSchemaRegistryAccessConfig = Shapes::StructureShape.new(name: 'KafkaSchemaRegistryAccessConfig')
    KafkaSchemaRegistryAccessConfigList = Shapes::ListShape.new(name: 'KafkaSchemaRegistryAccessConfigList')
    KafkaSchemaRegistryAuthType = Shapes::StringShape.new(name: 'KafkaSchemaRegistryAuthType')
    KafkaSchemaRegistryConfig = Shapes::StructureShape.new(name: 'KafkaSchemaRegistryConfig')
    KafkaSchemaValidationAttribute = Shapes::StringShape.new(name: 'KafkaSchemaValidationAttribute')
    KafkaSchemaValidationConfig = Shapes::StructureShape.new(name: 'KafkaSchemaValidationConfig')
    KafkaSchemaValidationConfigList = Shapes::ListShape.new(name: 'KafkaSchemaValidationConfigList')
    LambdaManagedInstancesCapacityProviderConfig = Shapes::StructureShape.new(name: 'LambdaManagedInstancesCapacityProviderConfig')
    LastUpdateStatus = Shapes::StringShape.new(name: 'LastUpdateStatus')
    LastUpdateStatusReason = Shapes::StringShape.new(name: 'LastUpdateStatusReason')
    LastUpdateStatusReasonCode = Shapes::StringShape.new(name: 'LastUpdateStatusReasonCode')
    Layer = Shapes::StructureShape.new(name: 'Layer')
    LayerArn = Shapes::StringShape.new(name: 'LayerArn')
    LayerList = Shapes::ListShape.new(name: 'LayerList')
    LayerName = Shapes::StringShape.new(name: 'LayerName')
    LayerPermissionAllowedAction = Shapes::StringShape.new(name: 'LayerPermissionAllowedAction')
    LayerPermissionAllowedPrincipal = Shapes::StringShape.new(name: 'LayerPermissionAllowedPrincipal')
    LayerVersionArn = Shapes::StringShape.new(name: 'LayerVersionArn')
    LayerVersionContentInput = Shapes::StructureShape.new(name: 'LayerVersionContentInput')
    LayerVersionContentOutput = Shapes::StructureShape.new(name: 'LayerVersionContentOutput')
    LayerVersionNumber = Shapes::IntegerShape.new(name: 'LayerVersionNumber')
    LayerVersionsList = Shapes::ListShape.new(name: 'LayerVersionsList')
    LayerVersionsListItem = Shapes::StructureShape.new(name: 'LayerVersionsListItem')
    LayersList = Shapes::ListShape.new(name: 'LayersList')
    LayersListItem = Shapes::StructureShape.new(name: 'LayersListItem')
    LayersReferenceList = Shapes::ListShape.new(name: 'LayersReferenceList')
    LicenseInfo = Shapes::StringShape.new(name: 'LicenseInfo')
    ListAliasesRequest = Shapes::StructureShape.new(name: 'ListAliasesRequest')
    ListAliasesResponse = Shapes::StructureShape.new(name: 'ListAliasesResponse')
    ListCapacityProvidersRequest = Shapes::StructureShape.new(name: 'ListCapacityProvidersRequest')
    ListCapacityProvidersResponse = Shapes::StructureShape.new(name: 'ListCapacityProvidersResponse')
    ListCodeSigningConfigsRequest = Shapes::StructureShape.new(name: 'ListCodeSigningConfigsRequest')
    ListCodeSigningConfigsResponse = Shapes::StructureShape.new(name: 'ListCodeSigningConfigsResponse')
    ListDurableExecutionsByFunctionRequest = Shapes::StructureShape.new(name: 'ListDurableExecutionsByFunctionRequest')
    ListDurableExecutionsByFunctionResponse = Shapes::StructureShape.new(name: 'ListDurableExecutionsByFunctionResponse')
    ListEventSourceMappingsRequest = Shapes::StructureShape.new(name: 'ListEventSourceMappingsRequest')
    ListEventSourceMappingsResponse = Shapes::StructureShape.new(name: 'ListEventSourceMappingsResponse')
    ListFunctionEventInvokeConfigsRequest = Shapes::StructureShape.new(name: 'ListFunctionEventInvokeConfigsRequest')
    ListFunctionEventInvokeConfigsResponse = Shapes::StructureShape.new(name: 'ListFunctionEventInvokeConfigsResponse')
    ListFunctionUrlConfigsRequest = Shapes::StructureShape.new(name: 'ListFunctionUrlConfigsRequest')
    ListFunctionUrlConfigsResponse = Shapes::StructureShape.new(name: 'ListFunctionUrlConfigsResponse')
    ListFunctionVersionsByCapacityProviderRequest = Shapes::StructureShape.new(name: 'ListFunctionVersionsByCapacityProviderRequest')
    ListFunctionVersionsByCapacityProviderResponse = Shapes::StructureShape.new(name: 'ListFunctionVersionsByCapacityProviderResponse')
    ListFunctionsByCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'ListFunctionsByCodeSigningConfigRequest')
    ListFunctionsByCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'ListFunctionsByCodeSigningConfigResponse')
    ListFunctionsRequest = Shapes::StructureShape.new(name: 'ListFunctionsRequest')
    ListFunctionsResponse = Shapes::StructureShape.new(name: 'ListFunctionsResponse')
    ListLayerVersionsRequest = Shapes::StructureShape.new(name: 'ListLayerVersionsRequest')
    ListLayerVersionsResponse = Shapes::StructureShape.new(name: 'ListLayerVersionsResponse')
    ListLayersRequest = Shapes::StructureShape.new(name: 'ListLayersRequest')
    ListLayersResponse = Shapes::StructureShape.new(name: 'ListLayersResponse')
    ListProvisionedConcurrencyConfigsRequest = Shapes::StructureShape.new(name: 'ListProvisionedConcurrencyConfigsRequest')
    ListProvisionedConcurrencyConfigsResponse = Shapes::StructureShape.new(name: 'ListProvisionedConcurrencyConfigsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    ListVersionsByFunctionRequest = Shapes::StructureShape.new(name: 'ListVersionsByFunctionRequest')
    ListVersionsByFunctionResponse = Shapes::StructureShape.new(name: 'ListVersionsByFunctionResponse')
    LocalMountPath = Shapes::StringShape.new(name: 'LocalMountPath')
    LogFormat = Shapes::StringShape.new(name: 'LogFormat')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MasterRegion = Shapes::StringShape.new(name: 'MasterRegion')
    MaxAge = Shapes::IntegerShape.new(name: 'MaxAge')
    MaxFiftyListItems = Shapes::IntegerShape.new(name: 'MaxFiftyListItems')
    MaxFunctionEventInvokeConfigListItems = Shapes::IntegerShape.new(name: 'MaxFunctionEventInvokeConfigListItems')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    MaxLayerListItems = Shapes::IntegerShape.new(name: 'MaxLayerListItems')
    MaxListItems = Shapes::IntegerShape.new(name: 'MaxListItems')
    MaxProvisionedConcurrencyConfigListItems = Shapes::IntegerShape.new(name: 'MaxProvisionedConcurrencyConfigListItems')
    MaximumBatchingWindowInSeconds = Shapes::IntegerShape.new(name: 'MaximumBatchingWindowInSeconds')
    MaximumConcurrency = Shapes::IntegerShape.new(name: 'MaximumConcurrency')
    MaximumEventAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumEventAgeInSeconds')
    MaximumNumberOfPollers = Shapes::IntegerShape.new(name: 'MaximumNumberOfPollers')
    MaximumRecordAgeInSeconds = Shapes::IntegerShape.new(name: 'MaximumRecordAgeInSeconds')
    MaximumRetryAttempts = Shapes::IntegerShape.new(name: 'MaximumRetryAttempts')
    MaximumRetryAttemptsEventSourceMapping = Shapes::IntegerShape.new(name: 'MaximumRetryAttemptsEventSourceMapping')
    MemorySize = Shapes::IntegerShape.new(name: 'MemorySize')
    Method = Shapes::StringShape.new(name: 'Method')
    MetricTargetValue = Shapes::FloatShape.new(name: 'MetricTargetValue')
    MinimumNumberOfPollers = Shapes::IntegerShape.new(name: 'MinimumNumberOfPollers')
    NameSpacedFunctionArn = Shapes::StringShape.new(name: 'NameSpacedFunctionArn')
    NamespacedFunctionName = Shapes::StringShape.new(name: 'NamespacedFunctionName')
    NamespacedStatementId = Shapes::StringShape.new(name: 'NamespacedStatementId')
    NoPublishedVersionException = Shapes::StructureShape.new(name: 'NoPublishedVersionException')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumericLatestPublishedOrAliasQualifier = Shapes::StringShape.new(name: 'NumericLatestPublishedOrAliasQualifier')
    OnFailure = Shapes::StructureShape.new(name: 'OnFailure')
    OnSuccess = Shapes::StructureShape.new(name: 'OnSuccess')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationAction = Shapes::StringShape.new(name: 'OperationAction')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationName = Shapes::StringShape.new(name: 'OperationName')
    OperationPayload = Shapes::StringShape.new(name: 'OperationPayload')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationSubType = Shapes::StringShape.new(name: 'OperationSubType')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    OperationUpdate = Shapes::StructureShape.new(name: 'OperationUpdate')
    OperationUpdates = Shapes::ListShape.new(name: 'OperationUpdates')
    Operations = Shapes::ListShape.new(name: 'Operations')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    Origin = Shapes::StringShape.new(name: 'Origin')
    OutputPayload = Shapes::StringShape.new(name: 'OutputPayload')
    PackageType = Shapes::StringShape.new(name: 'PackageType')
    ParallelizationFactor = Shapes::IntegerShape.new(name: 'ParallelizationFactor')
    Pattern = Shapes::StringShape.new(name: 'Pattern')
    PerExecutionEnvironmentMaxConcurrency = Shapes::IntegerShape.new(name: 'PerExecutionEnvironmentMaxConcurrency')
    PolicyLengthExceededException = Shapes::StructureShape.new(name: 'PolicyLengthExceededException')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PrincipalOrgID = Shapes::StringShape.new(name: 'PrincipalOrgID')
    ProvisionedConcurrencyConfigList = Shapes::ListShape.new(name: 'ProvisionedConcurrencyConfigList')
    ProvisionedConcurrencyConfigListItem = Shapes::StructureShape.new(name: 'ProvisionedConcurrencyConfigListItem')
    ProvisionedConcurrencyConfigNotFoundException = Shapes::StructureShape.new(name: 'ProvisionedConcurrencyConfigNotFoundException')
    ProvisionedConcurrencyStatusEnum = Shapes::StringShape.new(name: 'ProvisionedConcurrencyStatusEnum')
    ProvisionedPollerConfig = Shapes::StructureShape.new(name: 'ProvisionedPollerConfig')
    ProvisionedPollerGroupName = Shapes::StringShape.new(name: 'ProvisionedPollerGroupName')
    PublishLayerVersionRequest = Shapes::StructureShape.new(name: 'PublishLayerVersionRequest')
    PublishLayerVersionResponse = Shapes::StructureShape.new(name: 'PublishLayerVersionResponse')
    PublishVersionRequest = Shapes::StructureShape.new(name: 'PublishVersionRequest')
    PublishedFunctionQualifier = Shapes::StringShape.new(name: 'PublishedFunctionQualifier')
    PutFunctionCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'PutFunctionCodeSigningConfigRequest')
    PutFunctionCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'PutFunctionCodeSigningConfigResponse')
    PutFunctionConcurrencyRequest = Shapes::StructureShape.new(name: 'PutFunctionConcurrencyRequest')
    PutFunctionEventInvokeConfigRequest = Shapes::StructureShape.new(name: 'PutFunctionEventInvokeConfigRequest')
    PutFunctionRecursionConfigRequest = Shapes::StructureShape.new(name: 'PutFunctionRecursionConfigRequest')
    PutFunctionRecursionConfigResponse = Shapes::StructureShape.new(name: 'PutFunctionRecursionConfigResponse')
    PutFunctionScalingConfigRequest = Shapes::StructureShape.new(name: 'PutFunctionScalingConfigRequest')
    PutFunctionScalingConfigResponse = Shapes::StructureShape.new(name: 'PutFunctionScalingConfigResponse')
    PutProvisionedConcurrencyConfigRequest = Shapes::StructureShape.new(name: 'PutProvisionedConcurrencyConfigRequest')
    PutProvisionedConcurrencyConfigResponse = Shapes::StructureShape.new(name: 'PutProvisionedConcurrencyConfigResponse')
    PutRuntimeManagementConfigRequest = Shapes::StructureShape.new(name: 'PutRuntimeManagementConfigRequest')
    PutRuntimeManagementConfigResponse = Shapes::StructureShape.new(name: 'PutRuntimeManagementConfigResponse')
    Qualifier = Shapes::StringShape.new(name: 'Qualifier')
    Queue = Shapes::StringShape.new(name: 'Queue')
    Queues = Shapes::ListShape.new(name: 'Queues')
    RecursiveInvocationException = Shapes::StructureShape.new(name: 'RecursiveInvocationException')
    RecursiveLoop = Shapes::StringShape.new(name: 'RecursiveLoop')
    RemoveLayerVersionPermissionRequest = Shapes::StructureShape.new(name: 'RemoveLayerVersionPermissionRequest')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    ReplayChildren = Shapes::BooleanShape.new(name: 'ReplayChildren')
    RequestTooLargeException = Shapes::StructureShape.new(name: 'RequestTooLargeException')
    ReservedConcurrentExecutions = Shapes::IntegerShape.new(name: 'ReservedConcurrentExecutions')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotReadyException = Shapes::StructureShape.new(name: 'ResourceNotReadyException')
    ResponseStreamingInvocationType = Shapes::StringShape.new(name: 'ResponseStreamingInvocationType')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RetryDetails = Shapes::StructureShape.new(name: 'RetryDetails')
    ReverseOrder = Shapes::BooleanShape.new(name: 'ReverseOrder')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Runtime = Shapes::StringShape.new(name: 'Runtime')
    RuntimeVersionArn = Shapes::StringShape.new(name: 'RuntimeVersionArn')
    RuntimeVersionConfig = Shapes::StructureShape.new(name: 'RuntimeVersionConfig')
    RuntimeVersionError = Shapes::StructureShape.new(name: 'RuntimeVersionError')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    ScalingConfig = Shapes::StructureShape.new(name: 'ScalingConfig')
    SchemaRegistryEventRecordFormat = Shapes::StringShape.new(name: 'SchemaRegistryEventRecordFormat')
    SchemaRegistryUri = Shapes::StringShape.new(name: 'SchemaRegistryUri')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SelfManagedEventSource = Shapes::StructureShape.new(name: 'SelfManagedEventSource')
    SelfManagedKafkaEventSourceConfig = Shapes::StructureShape.new(name: 'SelfManagedKafkaEventSourceConfig')
    SendDurableExecutionCallbackFailureRequest = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackFailureRequest')
    SendDurableExecutionCallbackFailureResponse = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackFailureResponse')
    SendDurableExecutionCallbackHeartbeatRequest = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackHeartbeatRequest')
    SendDurableExecutionCallbackHeartbeatResponse = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackHeartbeatResponse')
    SendDurableExecutionCallbackSuccessRequest = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackSuccessRequest')
    SendDurableExecutionCallbackSuccessResponse = Shapes::StructureShape.new(name: 'SendDurableExecutionCallbackSuccessResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SerializedRequestEntityTooLargeException = Shapes::StructureShape.new(name: 'SerializedRequestEntityTooLargeException')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    SigningProfileVersionArns = Shapes::ListShape.new(name: 'SigningProfileVersionArns')
    SnapStart = Shapes::StructureShape.new(name: 'SnapStart')
    SnapStartApplyOn = Shapes::StringShape.new(name: 'SnapStartApplyOn')
    SnapStartException = Shapes::StructureShape.new(name: 'SnapStartException')
    SnapStartNotReadyException = Shapes::StructureShape.new(name: 'SnapStartNotReadyException')
    SnapStartOptimizationStatus = Shapes::StringShape.new(name: 'SnapStartOptimizationStatus')
    SnapStartResponse = Shapes::StructureShape.new(name: 'SnapStartResponse')
    SnapStartTimeoutException = Shapes::StructureShape.new(name: 'SnapStartTimeoutException')
    SourceAccessConfiguration = Shapes::StructureShape.new(name: 'SourceAccessConfiguration')
    SourceAccessConfigurations = Shapes::ListShape.new(name: 'SourceAccessConfigurations')
    SourceAccessType = Shapes::StringShape.new(name: 'SourceAccessType')
    SourceOwner = Shapes::StringShape.new(name: 'SourceOwner')
    StackTraceEntries = Shapes::ListShape.new(name: 'StackTraceEntries')
    StackTraceEntry = Shapes::StringShape.new(name: 'StackTraceEntry')
    State = Shapes::StringShape.new(name: 'State')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    StateReasonCode = Shapes::StringShape.new(name: 'StateReasonCode')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    StepDetails = Shapes::StructureShape.new(name: 'StepDetails')
    StepFailedDetails = Shapes::StructureShape.new(name: 'StepFailedDetails')
    StepOptions = Shapes::StructureShape.new(name: 'StepOptions')
    StepOptionsNextAttemptDelaySecondsInteger = Shapes::IntegerShape.new(name: 'StepOptionsNextAttemptDelaySecondsInteger')
    StepStartedDetails = Shapes::StructureShape.new(name: 'StepStartedDetails')
    StepSucceededDetails = Shapes::StructureShape.new(name: 'StepSucceededDetails')
    StopDurableExecutionRequest = Shapes::StructureShape.new(name: 'StopDurableExecutionRequest')
    StopDurableExecutionResponse = Shapes::StructureShape.new(name: 'StopDurableExecutionResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetIPAddressLimitReachedException = Shapes::StructureShape.new(name: 'SubnetIPAddressLimitReachedException')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SystemLogLevel = Shapes::StringShape.new(name: 'SystemLogLevel')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResource = Shapes::StringShape.new(name: 'TaggableResource')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsError = Shapes::StructureShape.new(name: 'TagsError')
    TagsErrorCode = Shapes::StringShape.new(name: 'TagsErrorCode')
    TagsErrorMessage = Shapes::StringShape.new(name: 'TagsErrorMessage')
    TargetTrackingScalingPolicy = Shapes::StructureShape.new(name: 'TargetTrackingScalingPolicy')
    TenancyConfig = Shapes::StructureShape.new(name: 'TenancyConfig')
    TenantId = Shapes::StringShape.new(name: 'TenantId')
    TenantIsolationMode = Shapes::StringShape.new(name: 'TenantIsolationMode')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    Timeout = Shapes::IntegerShape.new(name: 'Timeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Topic = Shapes::StringShape.new(name: 'Topic')
    Topics = Shapes::ListShape.new(name: 'Topics')
    TraceHeader = Shapes::StructureShape.new(name: 'TraceHeader')
    TracingConfig = Shapes::StructureShape.new(name: 'TracingConfig')
    TracingConfigResponse = Shapes::StructureShape.new(name: 'TracingConfigResponse')
    TracingMode = Shapes::StringShape.new(name: 'TracingMode')
    Truncated = Shapes::BooleanShape.new(name: 'Truncated')
    TumblingWindowInSeconds = Shapes::IntegerShape.new(name: 'TumblingWindowInSeconds')
    URI = Shapes::StringShape.new(name: 'URI')
    UnqualifiedFunctionName = Shapes::StringShape.new(name: 'UnqualifiedFunctionName')
    UnreservedConcurrentExecutions = Shapes::IntegerShape.new(name: 'UnreservedConcurrentExecutions')
    UnsupportedMediaTypeException = Shapes::StructureShape.new(name: 'UnsupportedMediaTypeException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAliasRequest = Shapes::StructureShape.new(name: 'UpdateAliasRequest')
    UpdateCapacityProviderRequest = Shapes::StructureShape.new(name: 'UpdateCapacityProviderRequest')
    UpdateCapacityProviderResponse = Shapes::StructureShape.new(name: 'UpdateCapacityProviderResponse')
    UpdateCodeSigningConfigRequest = Shapes::StructureShape.new(name: 'UpdateCodeSigningConfigRequest')
    UpdateCodeSigningConfigResponse = Shapes::StructureShape.new(name: 'UpdateCodeSigningConfigResponse')
    UpdateEventSourceMappingRequest = Shapes::StructureShape.new(name: 'UpdateEventSourceMappingRequest')
    UpdateFunctionCodeRequest = Shapes::StructureShape.new(name: 'UpdateFunctionCodeRequest')
    UpdateFunctionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateFunctionConfigurationRequest')
    UpdateFunctionEventInvokeConfigRequest = Shapes::StructureShape.new(name: 'UpdateFunctionEventInvokeConfigRequest')
    UpdateFunctionUrlConfigRequest = Shapes::StructureShape.new(name: 'UpdateFunctionUrlConfigRequest')
    UpdateFunctionUrlConfigResponse = Shapes::StructureShape.new(name: 'UpdateFunctionUrlConfigResponse')
    UpdateRuntimeOn = Shapes::StringShape.new(name: 'UpdateRuntimeOn')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionWithLatestPublished = Shapes::StringShape.new(name: 'VersionWithLatestPublished')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WaitCancelledDetails = Shapes::StructureShape.new(name: 'WaitCancelledDetails')
    WaitDetails = Shapes::StructureShape.new(name: 'WaitDetails')
    WaitOptions = Shapes::StructureShape.new(name: 'WaitOptions')
    WaitOptionsWaitSecondsInteger = Shapes::IntegerShape.new(name: 'WaitOptionsWaitSecondsInteger')
    WaitStartedDetails = Shapes::StructureShape.new(name: 'WaitStartedDetails')
    WaitSucceededDetails = Shapes::StructureShape.new(name: 'WaitSucceededDetails')
    Weight = Shapes::FloatShape.new(name: 'Weight')
    WorkingDirectory = Shapes::StringShape.new(name: 'WorkingDirectory')
    XAmznTraceId = Shapes::StringShape.new(name: 'XAmznTraceId')

    AccountLimit.add_member(:total_code_size, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCodeSize"))
    AccountLimit.add_member(:code_size_unzipped, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSizeUnzipped"))
    AccountLimit.add_member(:code_size_zipped, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSizeZipped"))
    AccountLimit.add_member(:concurrent_executions, Shapes::ShapeRef.new(shape: Integer, location_name: "ConcurrentExecutions"))
    AccountLimit.add_member(:unreserved_concurrent_executions, Shapes::ShapeRef.new(shape: UnreservedConcurrentExecutions, location_name: "UnreservedConcurrentExecutions"))
    AccountLimit.struct_class = Types::AccountLimit

    AccountUsage.add_member(:total_code_size, Shapes::ShapeRef.new(shape: Long, location_name: "TotalCodeSize"))
    AccountUsage.add_member(:function_count, Shapes::ShapeRef.new(shape: Long, location_name: "FunctionCount"))
    AccountUsage.struct_class = Types::AccountUsage

    AddLayerVersionPermissionRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    AddLayerVersionPermissionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: LayerVersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    AddLayerVersionPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    AddLayerVersionPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: LayerPermissionAllowedAction, required: true, location_name: "Action"))
    AddLayerVersionPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: LayerPermissionAllowedPrincipal, required: true, location_name: "Principal"))
    AddLayerVersionPermissionRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    AddLayerVersionPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "RevisionId"))
    AddLayerVersionPermissionRequest.struct_class = Types::AddLayerVersionPermissionRequest

    AddLayerVersionPermissionResponse.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "Statement"))
    AddLayerVersionPermissionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    AddLayerVersionPermissionResponse.struct_class = Types::AddLayerVersionPermissionResponse

    AddPermissionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    AddPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "StatementId"))
    AddPermissionRequest.add_member(:action, Shapes::ShapeRef.new(shape: Action, required: true, location_name: "Action"))
    AddPermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    AddPermissionRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    AddPermissionRequest.add_member(:source_account, Shapes::ShapeRef.new(shape: SourceOwner, location_name: "SourceAccount"))
    AddPermissionRequest.add_member(:event_source_token, Shapes::ShapeRef.new(shape: EventSourceToken, location_name: "EventSourceToken"))
    AddPermissionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    AddPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    AddPermissionRequest.add_member(:principal_org_id, Shapes::ShapeRef.new(shape: PrincipalOrgID, location_name: "PrincipalOrgID"))
    AddPermissionRequest.add_member(:function_url_auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, location_name: "FunctionUrlAuthType"))
    AddPermissionRequest.add_member(:invoked_via_function_url, Shapes::ShapeRef.new(shape: InvokedViaFunctionUrl, location_name: "InvokedViaFunctionUrl"))
    AddPermissionRequest.struct_class = Types::AddPermissionRequest

    AddPermissionResponse.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "Statement"))
    AddPermissionResponse.struct_class = Types::AddPermissionResponse

    AdditionalVersionWeights.key = Shapes::ShapeRef.new(shape: AdditionalVersion)
    AdditionalVersionWeights.value = Shapes::ShapeRef.new(shape: Weight)

    AliasConfiguration.add_member(:alias_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "AliasArn"))
    AliasConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: Alias, location_name: "Name"))
    AliasConfiguration.add_member(:function_version, Shapes::ShapeRef.new(shape: Version, location_name: "FunctionVersion"))
    AliasConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    AliasConfiguration.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    AliasConfiguration.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    AliasConfiguration.struct_class = Types::AliasConfiguration

    AliasList.member = Shapes::ShapeRef.new(shape: AliasConfiguration)

    AliasRoutingConfiguration.add_member(:additional_version_weights, Shapes::ShapeRef.new(shape: AdditionalVersionWeights, location_name: "AdditionalVersionWeights"))
    AliasRoutingConfiguration.struct_class = Types::AliasRoutingConfiguration

    AllowMethodsList.member = Shapes::ShapeRef.new(shape: Method)

    AllowOriginsList.member = Shapes::ShapeRef.new(shape: Origin)

    AllowedPublishers.add_member(:signing_profile_version_arns, Shapes::ShapeRef.new(shape: SigningProfileVersionArns, required: true, location_name: "SigningProfileVersionArns"))
    AllowedPublishers.struct_class = Types::AllowedPublishers

    AmazonManagedKafkaEventSourceConfig.add_member(:consumer_group_id, Shapes::ShapeRef.new(shape: URI, location_name: "ConsumerGroupId"))
    AmazonManagedKafkaEventSourceConfig.add_member(:schema_registry_config, Shapes::ShapeRef.new(shape: KafkaSchemaRegistryConfig, location_name: "SchemaRegistryConfig"))
    AmazonManagedKafkaEventSourceConfig.struct_class = Types::AmazonManagedKafkaEventSourceConfig

    ArchitecturesList.member = Shapes::ShapeRef.new(shape: Architecture)

    CallbackDetails.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackId, location_name: "CallbackId"))
    CallbackDetails.add_member(:result, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Result"))
    CallbackDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    CallbackDetails.struct_class = Types::CallbackDetails

    CallbackFailedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    CallbackFailedDetails.struct_class = Types::CallbackFailedDetails

    CallbackOptions.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "TimeoutSeconds"))
    CallbackOptions.add_member(:heartbeat_timeout_seconds, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "HeartbeatTimeoutSeconds"))
    CallbackOptions.struct_class = Types::CallbackOptions

    CallbackStartedDetails.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackId, required: true, location_name: "CallbackId"))
    CallbackStartedDetails.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "HeartbeatTimeout"))
    CallbackStartedDetails.add_member(:timeout, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "Timeout"))
    CallbackStartedDetails.struct_class = Types::CallbackStartedDetails

    CallbackSucceededDetails.add_member(:result, Shapes::ShapeRef.new(shape: EventResult, required: true, location_name: "Result"))
    CallbackSucceededDetails.struct_class = Types::CallbackSucceededDetails

    CallbackTimedOutDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    CallbackTimedOutDetails.struct_class = Types::CallbackTimedOutDetails

    CallbackTimeoutException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CallbackTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    CallbackTimeoutException.struct_class = Types::CallbackTimeoutException

    CapacityProvider.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "CapacityProviderArn"))
    CapacityProvider.add_member(:state, Shapes::ShapeRef.new(shape: CapacityProviderState, required: true, location_name: "State"))
    CapacityProvider.add_member(:vpc_config, Shapes::ShapeRef.new(shape: CapacityProviderVpcConfig, required: true, location_name: "VpcConfig"))
    CapacityProvider.add_member(:permissions_config, Shapes::ShapeRef.new(shape: CapacityProviderPermissionsConfig, required: true, location_name: "PermissionsConfig"))
    CapacityProvider.add_member(:instance_requirements, Shapes::ShapeRef.new(shape: InstanceRequirements, location_name: "InstanceRequirements"))
    CapacityProvider.add_member(:capacity_provider_scaling_config, Shapes::ShapeRef.new(shape: CapacityProviderScalingConfig, location_name: "CapacityProviderScalingConfig"))
    CapacityProvider.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KmsKeyArn"))
    CapacityProvider.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    CapacityProvider.struct_class = Types::CapacityProvider

    CapacityProviderConfig.add_member(:lambda_managed_instances_capacity_provider_config, Shapes::ShapeRef.new(shape: LambdaManagedInstancesCapacityProviderConfig, required: true, location_name: "LambdaManagedInstancesCapacityProviderConfig"))
    CapacityProviderConfig.struct_class = Types::CapacityProviderConfig

    CapacityProviderLimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CapacityProviderLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CapacityProviderLimitExceededException.struct_class = Types::CapacityProviderLimitExceededException

    CapacityProviderPermissionsConfig.add_member(:capacity_provider_operator_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "CapacityProviderOperatorRoleArn"))
    CapacityProviderPermissionsConfig.struct_class = Types::CapacityProviderPermissionsConfig

    CapacityProviderScalingConfig.add_member(:max_v_cpu_count, Shapes::ShapeRef.new(shape: CapacityProviderMaxVCpuCount, location_name: "MaxVCpuCount"))
    CapacityProviderScalingConfig.add_member(:scaling_mode, Shapes::ShapeRef.new(shape: CapacityProviderScalingMode, location_name: "ScalingMode"))
    CapacityProviderScalingConfig.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: CapacityProviderScalingPoliciesList, location_name: "ScalingPolicies"))
    CapacityProviderScalingConfig.struct_class = Types::CapacityProviderScalingConfig

    CapacityProviderScalingPoliciesList.member = Shapes::ShapeRef.new(shape: TargetTrackingScalingPolicy)

    CapacityProviderSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    CapacityProviderSubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    CapacityProviderVpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: CapacityProviderSubnetIds, required: true, location_name: "SubnetIds"))
    CapacityProviderVpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: CapacityProviderSecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    CapacityProviderVpcConfig.struct_class = Types::CapacityProviderVpcConfig

    CapacityProvidersList.member = Shapes::ShapeRef.new(shape: CapacityProvider)

    ChainedInvokeDetails.add_member(:result, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Result"))
    ChainedInvokeDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    ChainedInvokeDetails.struct_class = Types::ChainedInvokeDetails

    ChainedInvokeFailedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ChainedInvokeFailedDetails.struct_class = Types::ChainedInvokeFailedDetails

    ChainedInvokeOptions.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location_name: "FunctionName"))
    ChainedInvokeOptions.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    ChainedInvokeOptions.struct_class = Types::ChainedInvokeOptions

    ChainedInvokeStartedDetails.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location_name: "FunctionName"))
    ChainedInvokeStartedDetails.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    ChainedInvokeStartedDetails.add_member(:input, Shapes::ShapeRef.new(shape: EventInput, location_name: "Input"))
    ChainedInvokeStartedDetails.add_member(:executed_version, Shapes::ShapeRef.new(shape: VersionWithLatestPublished, location_name: "ExecutedVersion"))
    ChainedInvokeStartedDetails.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, location_name: "DurableExecutionArn"))
    ChainedInvokeStartedDetails.struct_class = Types::ChainedInvokeStartedDetails

    ChainedInvokeStoppedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ChainedInvokeStoppedDetails.struct_class = Types::ChainedInvokeStoppedDetails

    ChainedInvokeSucceededDetails.add_member(:result, Shapes::ShapeRef.new(shape: EventResult, required: true, location_name: "Result"))
    ChainedInvokeSucceededDetails.struct_class = Types::ChainedInvokeSucceededDetails

    ChainedInvokeTimedOutDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ChainedInvokeTimedOutDetails.struct_class = Types::ChainedInvokeTimedOutDetails

    CheckpointDurableExecutionRequest.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location: "uri", location_name: "DurableExecutionArn"))
    CheckpointDurableExecutionRequest.add_member(:checkpoint_token, Shapes::ShapeRef.new(shape: CheckpointToken, required: true, location_name: "CheckpointToken"))
    CheckpointDurableExecutionRequest.add_member(:updates, Shapes::ShapeRef.new(shape: OperationUpdates, location_name: "Updates"))
    CheckpointDurableExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CheckpointDurableExecutionRequest.struct_class = Types::CheckpointDurableExecutionRequest

    CheckpointDurableExecutionResponse.add_member(:checkpoint_token, Shapes::ShapeRef.new(shape: CheckpointToken, location_name: "CheckpointToken"))
    CheckpointDurableExecutionResponse.add_member(:new_execution_state, Shapes::ShapeRef.new(shape: CheckpointUpdatedExecutionState, required: true, location_name: "NewExecutionState"))
    CheckpointDurableExecutionResponse.struct_class = Types::CheckpointDurableExecutionResponse

    CheckpointUpdatedExecutionState.add_member(:operations, Shapes::ShapeRef.new(shape: Operations, location_name: "Operations"))
    CheckpointUpdatedExecutionState.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    CheckpointUpdatedExecutionState.struct_class = Types::CheckpointUpdatedExecutionState

    CodeSigningConfig.add_member(:code_signing_config_id, Shapes::ShapeRef.new(shape: CodeSigningConfigId, required: true, location_name: "CodeSigningConfigId"))
    CodeSigningConfig.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location_name: "CodeSigningConfigArn"))
    CodeSigningConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CodeSigningConfig.add_member(:allowed_publishers, Shapes::ShapeRef.new(shape: AllowedPublishers, required: true, location_name: "AllowedPublishers"))
    CodeSigningConfig.add_member(:code_signing_policies, Shapes::ShapeRef.new(shape: CodeSigningPolicies, required: true, location_name: "CodeSigningPolicies"))
    CodeSigningConfig.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModified"))
    CodeSigningConfig.struct_class = Types::CodeSigningConfig

    CodeSigningConfigList.member = Shapes::ShapeRef.new(shape: CodeSigningConfig)

    CodeSigningConfigNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CodeSigningConfigNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    CodeSigningConfigNotFoundException.struct_class = Types::CodeSigningConfigNotFoundException

    CodeSigningPolicies.add_member(:untrusted_artifact_on_deployment, Shapes::ShapeRef.new(shape: CodeSigningPolicy, location_name: "UntrustedArtifactOnDeployment"))
    CodeSigningPolicies.struct_class = Types::CodeSigningPolicies

    CodeStorageExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CodeStorageExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CodeStorageExceededException.struct_class = Types::CodeStorageExceededException

    CodeVerificationFailedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    CodeVerificationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    CodeVerificationFailedException.struct_class = Types::CodeVerificationFailedException

    CompatibleArchitectures.member = Shapes::ShapeRef.new(shape: Architecture)

    CompatibleRuntimes.member = Shapes::ShapeRef.new(shape: Runtime)

    Concurrency.add_member(:reserved_concurrent_executions, Shapes::ShapeRef.new(shape: ReservedConcurrentExecutions, location_name: "ReservedConcurrentExecutions"))
    Concurrency.struct_class = Types::Concurrency

    ContextDetails.add_member(:replay_children, Shapes::ShapeRef.new(shape: ReplayChildren, location_name: "ReplayChildren"))
    ContextDetails.add_member(:result, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Result"))
    ContextDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    ContextDetails.struct_class = Types::ContextDetails

    ContextFailedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ContextFailedDetails.struct_class = Types::ContextFailedDetails

    ContextOptions.add_member(:replay_children, Shapes::ShapeRef.new(shape: ReplayChildren, location_name: "ReplayChildren"))
    ContextOptions.struct_class = Types::ContextOptions

    ContextStartedDetails.struct_class = Types::ContextStartedDetails

    ContextSucceededDetails.add_member(:result, Shapes::ShapeRef.new(shape: EventResult, required: true, location_name: "Result"))
    ContextSucceededDetails.struct_class = Types::ContextSucceededDetails

    Cors.add_member(:allow_credentials, Shapes::ShapeRef.new(shape: AllowCredentials, location_name: "AllowCredentials"))
    Cors.add_member(:allow_headers, Shapes::ShapeRef.new(shape: HeadersList, location_name: "AllowHeaders"))
    Cors.add_member(:allow_methods, Shapes::ShapeRef.new(shape: AllowMethodsList, location_name: "AllowMethods"))
    Cors.add_member(:allow_origins, Shapes::ShapeRef.new(shape: AllowOriginsList, location_name: "AllowOrigins"))
    Cors.add_member(:expose_headers, Shapes::ShapeRef.new(shape: HeadersList, location_name: "ExposeHeaders"))
    Cors.add_member(:max_age, Shapes::ShapeRef.new(shape: MaxAge, location_name: "MaxAge"))
    Cors.struct_class = Types::Cors

    CreateAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    CreateAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location_name: "Name"))
    CreateAliasRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: VersionWithLatestPublished, required: true, location_name: "FunctionVersion"))
    CreateAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateAliasRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    CreateAliasRequest.struct_class = Types::CreateAliasRequest

    CreateCapacityProviderRequest.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "CapacityProviderName"))
    CreateCapacityProviderRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: CapacityProviderVpcConfig, required: true, location_name: "VpcConfig"))
    CreateCapacityProviderRequest.add_member(:permissions_config, Shapes::ShapeRef.new(shape: CapacityProviderPermissionsConfig, required: true, location_name: "PermissionsConfig"))
    CreateCapacityProviderRequest.add_member(:instance_requirements, Shapes::ShapeRef.new(shape: InstanceRequirements, location_name: "InstanceRequirements"))
    CreateCapacityProviderRequest.add_member(:capacity_provider_scaling_config, Shapes::ShapeRef.new(shape: CapacityProviderScalingConfig, location_name: "CapacityProviderScalingConfig"))
    CreateCapacityProviderRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArnNonEmpty, location_name: "KmsKeyArn"))
    CreateCapacityProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCapacityProviderRequest.struct_class = Types::CreateCapacityProviderRequest

    CreateCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "CapacityProvider"))
    CreateCapacityProviderResponse.struct_class = Types::CreateCapacityProviderResponse

    CreateCodeSigningConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateCodeSigningConfigRequest.add_member(:allowed_publishers, Shapes::ShapeRef.new(shape: AllowedPublishers, required: true, location_name: "AllowedPublishers"))
    CreateCodeSigningConfigRequest.add_member(:code_signing_policies, Shapes::ShapeRef.new(shape: CodeSigningPolicies, location_name: "CodeSigningPolicies"))
    CreateCodeSigningConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCodeSigningConfigRequest.struct_class = Types::CreateCodeSigningConfigRequest

    CreateCodeSigningConfigResponse.add_member(:code_signing_config, Shapes::ShapeRef.new(shape: CodeSigningConfig, required: true, location_name: "CodeSigningConfig"))
    CreateCodeSigningConfigResponse.struct_class = Types::CreateCodeSigningConfigResponse

    CreateEventSourceMappingRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    CreateEventSourceMappingRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location_name: "FunctionName"))
    CreateEventSourceMappingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    CreateEventSourceMappingRequest.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    CreateEventSourceMappingRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    CreateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    CreateEventSourceMappingRequest.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: ParallelizationFactor, location_name: "ParallelizationFactor"))
    CreateEventSourceMappingRequest.add_member(:starting_position, Shapes::ShapeRef.new(shape: EventSourcePosition, location_name: "StartingPosition"))
    CreateEventSourceMappingRequest.add_member(:starting_position_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "StartingPositionTimestamp"))
    CreateEventSourceMappingRequest.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    CreateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    CreateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, Shapes::ShapeRef.new(shape: BisectBatchOnFunctionError, location_name: "BisectBatchOnFunctionError"))
    CreateEventSourceMappingRequest.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsEventSourceMapping, location_name: "MaximumRetryAttempts"))
    CreateEventSourceMappingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, Shapes::ShapeRef.new(shape: TumblingWindowInSeconds, location_name: "TumblingWindowInSeconds"))
    CreateEventSourceMappingRequest.add_member(:topics, Shapes::ShapeRef.new(shape: Topics, location_name: "Topics"))
    CreateEventSourceMappingRequest.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    CreateEventSourceMappingRequest.add_member(:source_access_configurations, Shapes::ShapeRef.new(shape: SourceAccessConfigurations, location_name: "SourceAccessConfigurations"))
    CreateEventSourceMappingRequest.add_member(:self_managed_event_source, Shapes::ShapeRef.new(shape: SelfManagedEventSource, location_name: "SelfManagedEventSource"))
    CreateEventSourceMappingRequest.add_member(:function_response_types, Shapes::ShapeRef.new(shape: FunctionResponseTypeList, location_name: "FunctionResponseTypes"))
    CreateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: AmazonManagedKafkaEventSourceConfig, location_name: "AmazonManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: SelfManagedKafkaEventSourceConfig, location_name: "SelfManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "ScalingConfig"))
    CreateEventSourceMappingRequest.add_member(:document_db_event_source_config, Shapes::ShapeRef.new(shape: DocumentDBEventSourceConfig, location_name: "DocumentDBEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    CreateEventSourceMappingRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: EventSourceMappingMetricsConfig, location_name: "MetricsConfig"))
    CreateEventSourceMappingRequest.add_member(:provisioned_poller_config, Shapes::ShapeRef.new(shape: ProvisionedPollerConfig, location_name: "ProvisionedPollerConfig"))
    CreateEventSourceMappingRequest.struct_class = Types::CreateEventSourceMappingRequest

    CreateFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    CreateFunctionRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    CreateFunctionRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "Role"))
    CreateFunctionRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    CreateFunctionRequest.add_member(:code, Shapes::ShapeRef.new(shape: FunctionCode, required: true, location_name: "Code"))
    CreateFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFunctionRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    CreateFunctionRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    CreateFunctionRequest.add_member(:publish, Shapes::ShapeRef.new(shape: Boolean, location_name: "Publish"))
    CreateFunctionRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    CreateFunctionRequest.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    CreateFunctionRequest.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    CreateFunctionRequest.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "Environment"))
    CreateFunctionRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    CreateFunctionRequest.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfig, location_name: "TracingConfig"))
    CreateFunctionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFunctionRequest.add_member(:layers, Shapes::ShapeRef.new(shape: LayerList, location_name: "Layers"))
    CreateFunctionRequest.add_member(:file_system_configs, Shapes::ShapeRef.new(shape: FileSystemConfigList, location_name: "FileSystemConfigs"))
    CreateFunctionRequest.add_member(:image_config, Shapes::ShapeRef.new(shape: ImageConfig, location_name: "ImageConfig"))
    CreateFunctionRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, location_name: "CodeSigningConfigArn"))
    CreateFunctionRequest.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitecturesList, location_name: "Architectures"))
    CreateFunctionRequest.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "EphemeralStorage"))
    CreateFunctionRequest.add_member(:snap_start, Shapes::ShapeRef.new(shape: SnapStart, location_name: "SnapStart"))
    CreateFunctionRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    CreateFunctionRequest.add_member(:capacity_provider_config, Shapes::ShapeRef.new(shape: CapacityProviderConfig, location_name: "CapacityProviderConfig"))
    CreateFunctionRequest.add_member(:publish_to, Shapes::ShapeRef.new(shape: FunctionVersionLatestPublished, location_name: "PublishTo"))
    CreateFunctionRequest.add_member(:durable_config, Shapes::ShapeRef.new(shape: DurableConfig, location_name: "DurableConfig"))
    CreateFunctionRequest.add_member(:tenancy_config, Shapes::ShapeRef.new(shape: TenancyConfig, location_name: "TenancyConfig"))
    CreateFunctionRequest.struct_class = Types::CreateFunctionRequest

    CreateFunctionUrlConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    CreateFunctionUrlConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: FunctionUrlQualifier, location: "querystring", location_name: "Qualifier"))
    CreateFunctionUrlConfigRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, required: true, location_name: "AuthType"))
    CreateFunctionUrlConfigRequest.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    CreateFunctionUrlConfigRequest.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    CreateFunctionUrlConfigRequest.struct_class = Types::CreateFunctionUrlConfigRequest

    CreateFunctionUrlConfigResponse.add_member(:function_url, Shapes::ShapeRef.new(shape: FunctionUrl, required: true, location_name: "FunctionUrl"))
    CreateFunctionUrlConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    CreateFunctionUrlConfigResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, required: true, location_name: "AuthType"))
    CreateFunctionUrlConfigResponse.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    CreateFunctionUrlConfigResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    CreateFunctionUrlConfigResponse.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    CreateFunctionUrlConfigResponse.struct_class = Types::CreateFunctionUrlConfigResponse

    DeadLetterConfig.add_member(:target_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "TargetArn"))
    DeadLetterConfig.struct_class = Types::DeadLetterConfig

    DeleteAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    DeleteAliasRequest.struct_class = Types::DeleteAliasRequest

    DeleteCapacityProviderRequest.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location: "uri", location_name: "CapacityProviderName"))
    DeleteCapacityProviderRequest.struct_class = Types::DeleteCapacityProviderRequest

    DeleteCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "CapacityProvider"))
    DeleteCapacityProviderResponse.struct_class = Types::DeleteCapacityProviderResponse

    DeleteCodeSigningConfigRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location: "uri", location_name: "CodeSigningConfigArn"))
    DeleteCodeSigningConfigRequest.struct_class = Types::DeleteCodeSigningConfigRequest

    DeleteCodeSigningConfigResponse.struct_class = Types::DeleteCodeSigningConfigResponse

    DeleteEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    DeleteEventSourceMappingRequest.struct_class = Types::DeleteEventSourceMappingRequest

    DeleteFunctionCodeSigningConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionCodeSigningConfigRequest.struct_class = Types::DeleteFunctionCodeSigningConfigRequest

    DeleteFunctionConcurrencyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionConcurrencyRequest.struct_class = Types::DeleteFunctionConcurrencyRequest

    DeleteFunctionEventInvokeConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionEventInvokeConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    DeleteFunctionEventInvokeConfigRequest.struct_class = Types::DeleteFunctionEventInvokeConfigRequest

    DeleteFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    DeleteFunctionRequest.struct_class = Types::DeleteFunctionRequest

    DeleteFunctionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "StatusCode"))
    DeleteFunctionResponse.struct_class = Types::DeleteFunctionResponse

    DeleteFunctionUrlConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteFunctionUrlConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: FunctionUrlQualifier, location: "querystring", location_name: "Qualifier"))
    DeleteFunctionUrlConfigRequest.struct_class = Types::DeleteFunctionUrlConfigRequest

    DeleteLayerVersionRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    DeleteLayerVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: LayerVersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    DeleteLayerVersionRequest.struct_class = Types::DeleteLayerVersionRequest

    DeleteProvisionedConcurrencyConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    DeleteProvisionedConcurrencyConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, required: true, location: "querystring", location_name: "Qualifier"))
    DeleteProvisionedConcurrencyConfigRequest.struct_class = Types::DeleteProvisionedConcurrencyConfigRequest

    DestinationConfig.add_member(:on_success, Shapes::ShapeRef.new(shape: OnSuccess, location_name: "OnSuccess"))
    DestinationConfig.add_member(:on_failure, Shapes::ShapeRef.new(shape: OnFailure, location_name: "OnFailure"))
    DestinationConfig.struct_class = Types::DestinationConfig

    DocumentDBEventSourceConfig.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "DatabaseName"))
    DocumentDBEventSourceConfig.add_member(:collection_name, Shapes::ShapeRef.new(shape: CollectionName, location_name: "CollectionName"))
    DocumentDBEventSourceConfig.add_member(:full_document, Shapes::ShapeRef.new(shape: FullDocument, location_name: "FullDocument"))
    DocumentDBEventSourceConfig.struct_class = Types::DocumentDBEventSourceConfig

    DurableConfig.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, location_name: "RetentionPeriodInDays"))
    DurableConfig.add_member(:execution_timeout, Shapes::ShapeRef.new(shape: ExecutionTimeout, location_name: "ExecutionTimeout"))
    DurableConfig.struct_class = Types::DurableConfig

    DurableExecutionAlreadyStartedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    DurableExecutionAlreadyStartedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DurableExecutionAlreadyStartedException.struct_class = Types::DurableExecutionAlreadyStartedException

    DurableExecutions.member = Shapes::ShapeRef.new(shape: Execution)

    EC2AccessDeniedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EC2AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2AccessDeniedException.struct_class = Types::EC2AccessDeniedException

    EC2ThrottledException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EC2ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2ThrottledException.struct_class = Types::EC2ThrottledException

    EC2UnexpectedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EC2UnexpectedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2UnexpectedException.add_member(:ec2_error_code, Shapes::ShapeRef.new(shape: String, location_name: "EC2ErrorCode"))
    EC2UnexpectedException.struct_class = Types::EC2UnexpectedException

    EFSIOException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EFSIOException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EFSIOException.struct_class = Types::EFSIOException

    EFSMountConnectivityException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EFSMountConnectivityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EFSMountConnectivityException.struct_class = Types::EFSMountConnectivityException

    EFSMountFailureException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EFSMountFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EFSMountFailureException.struct_class = Types::EFSMountFailureException

    EFSMountTimeoutException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EFSMountTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EFSMountTimeoutException.struct_class = Types::EFSMountTimeoutException

    ENILimitReachedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ENILimitReachedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ENILimitReachedException.struct_class = Types::ENILimitReachedException

    EndpointLists.member = Shapes::ShapeRef.new(shape: Endpoint)

    Endpoints.key = Shapes::ShapeRef.new(shape: EndPointType)
    Endpoints.value = Shapes::ShapeRef.new(shape: EndpointLists)

    Environment.add_member(:variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Variables"))
    Environment.struct_class = Types::Environment

    EnvironmentError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    EnvironmentError.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Message"))
    EnvironmentError.struct_class = Types::EnvironmentError

    EnvironmentResponse.add_member(:variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Variables"))
    EnvironmentResponse.add_member(:error, Shapes::ShapeRef.new(shape: EnvironmentError, location_name: "Error"))
    EnvironmentResponse.struct_class = Types::EnvironmentResponse

    EnvironmentVariables.key = Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariables.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    EphemeralStorage.add_member(:size, Shapes::ShapeRef.new(shape: EphemeralStorageSize, required: true, location_name: "Size"))
    EphemeralStorage.struct_class = Types::EphemeralStorage

    ErrorObject.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorObject.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorType"))
    ErrorObject.add_member(:error_data, Shapes::ShapeRef.new(shape: ErrorData, location_name: "ErrorData"))
    ErrorObject.add_member(:stack_trace, Shapes::ShapeRef.new(shape: StackTraceEntries, location_name: "StackTrace"))
    ErrorObject.struct_class = Types::ErrorObject

    Event.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    Event.add_member(:sub_type, Shapes::ShapeRef.new(shape: OperationSubType, location_name: "SubType"))
    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "EventId"))
    Event.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, location_name: "Id"))
    Event.add_member(:name, Shapes::ShapeRef.new(shape: OperationName, location_name: "Name"))
    Event.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "EventTimestamp"))
    Event.add_member(:parent_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "ParentId"))
    Event.add_member(:execution_started_details, Shapes::ShapeRef.new(shape: ExecutionStartedDetails, location_name: "ExecutionStartedDetails"))
    Event.add_member(:execution_succeeded_details, Shapes::ShapeRef.new(shape: ExecutionSucceededDetails, location_name: "ExecutionSucceededDetails"))
    Event.add_member(:execution_failed_details, Shapes::ShapeRef.new(shape: ExecutionFailedDetails, location_name: "ExecutionFailedDetails"))
    Event.add_member(:execution_timed_out_details, Shapes::ShapeRef.new(shape: ExecutionTimedOutDetails, location_name: "ExecutionTimedOutDetails"))
    Event.add_member(:execution_stopped_details, Shapes::ShapeRef.new(shape: ExecutionStoppedDetails, location_name: "ExecutionStoppedDetails"))
    Event.add_member(:context_started_details, Shapes::ShapeRef.new(shape: ContextStartedDetails, location_name: "ContextStartedDetails"))
    Event.add_member(:context_succeeded_details, Shapes::ShapeRef.new(shape: ContextSucceededDetails, location_name: "ContextSucceededDetails"))
    Event.add_member(:context_failed_details, Shapes::ShapeRef.new(shape: ContextFailedDetails, location_name: "ContextFailedDetails"))
    Event.add_member(:wait_started_details, Shapes::ShapeRef.new(shape: WaitStartedDetails, location_name: "WaitStartedDetails"))
    Event.add_member(:wait_succeeded_details, Shapes::ShapeRef.new(shape: WaitSucceededDetails, location_name: "WaitSucceededDetails"))
    Event.add_member(:wait_cancelled_details, Shapes::ShapeRef.new(shape: WaitCancelledDetails, location_name: "WaitCancelledDetails"))
    Event.add_member(:step_started_details, Shapes::ShapeRef.new(shape: StepStartedDetails, location_name: "StepStartedDetails"))
    Event.add_member(:step_succeeded_details, Shapes::ShapeRef.new(shape: StepSucceededDetails, location_name: "StepSucceededDetails"))
    Event.add_member(:step_failed_details, Shapes::ShapeRef.new(shape: StepFailedDetails, location_name: "StepFailedDetails"))
    Event.add_member(:chained_invoke_started_details, Shapes::ShapeRef.new(shape: ChainedInvokeStartedDetails, location_name: "ChainedInvokeStartedDetails"))
    Event.add_member(:chained_invoke_succeeded_details, Shapes::ShapeRef.new(shape: ChainedInvokeSucceededDetails, location_name: "ChainedInvokeSucceededDetails"))
    Event.add_member(:chained_invoke_failed_details, Shapes::ShapeRef.new(shape: ChainedInvokeFailedDetails, location_name: "ChainedInvokeFailedDetails"))
    Event.add_member(:chained_invoke_timed_out_details, Shapes::ShapeRef.new(shape: ChainedInvokeTimedOutDetails, location_name: "ChainedInvokeTimedOutDetails"))
    Event.add_member(:chained_invoke_stopped_details, Shapes::ShapeRef.new(shape: ChainedInvokeStoppedDetails, location_name: "ChainedInvokeStoppedDetails"))
    Event.add_member(:callback_started_details, Shapes::ShapeRef.new(shape: CallbackStartedDetails, location_name: "CallbackStartedDetails"))
    Event.add_member(:callback_succeeded_details, Shapes::ShapeRef.new(shape: CallbackSucceededDetails, location_name: "CallbackSucceededDetails"))
    Event.add_member(:callback_failed_details, Shapes::ShapeRef.new(shape: CallbackFailedDetails, location_name: "CallbackFailedDetails"))
    Event.add_member(:callback_timed_out_details, Shapes::ShapeRef.new(shape: CallbackTimedOutDetails, location_name: "CallbackTimedOutDetails"))
    Event.add_member(:invocation_completed_details, Shapes::ShapeRef.new(shape: InvocationCompletedDetails, location_name: "InvocationCompletedDetails"))
    Event.struct_class = Types::Event

    EventError.add_member(:payload, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Payload"))
    EventError.add_member(:truncated, Shapes::ShapeRef.new(shape: Truncated, location_name: "Truncated"))
    EventError.struct_class = Types::EventError

    EventInput.add_member(:payload, Shapes::ShapeRef.new(shape: InputPayload, location_name: "Payload"))
    EventInput.add_member(:truncated, Shapes::ShapeRef.new(shape: Truncated, location_name: "Truncated"))
    EventInput.struct_class = Types::EventInput

    EventResult.add_member(:payload, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Payload"))
    EventResult.add_member(:truncated, Shapes::ShapeRef.new(shape: Truncated, location_name: "Truncated"))
    EventResult.struct_class = Types::EventResult

    EventSourceMappingConfiguration.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "UUID"))
    EventSourceMappingConfiguration.add_member(:starting_position, Shapes::ShapeRef.new(shape: EventSourcePosition, location_name: "StartingPosition"))
    EventSourceMappingConfiguration.add_member(:starting_position_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "StartingPositionTimestamp"))
    EventSourceMappingConfiguration.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    EventSourceMappingConfiguration.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    EventSourceMappingConfiguration.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: ParallelizationFactor, location_name: "ParallelizationFactor"))
    EventSourceMappingConfiguration.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventSourceArn"))
    EventSourceMappingConfiguration.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    EventSourceMappingConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionArn"))
    EventSourceMappingConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Date, location_name: "LastModified"))
    EventSourceMappingConfiguration.add_member(:last_processing_result, Shapes::ShapeRef.new(shape: String, location_name: "LastProcessingResult"))
    EventSourceMappingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    EventSourceMappingConfiguration.add_member(:state_transition_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateTransitionReason"))
    EventSourceMappingConfiguration.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    EventSourceMappingConfiguration.add_member(:topics, Shapes::ShapeRef.new(shape: Topics, location_name: "Topics"))
    EventSourceMappingConfiguration.add_member(:queues, Shapes::ShapeRef.new(shape: Queues, location_name: "Queues"))
    EventSourceMappingConfiguration.add_member(:source_access_configurations, Shapes::ShapeRef.new(shape: SourceAccessConfigurations, location_name: "SourceAccessConfigurations"))
    EventSourceMappingConfiguration.add_member(:self_managed_event_source, Shapes::ShapeRef.new(shape: SelfManagedEventSource, location_name: "SelfManagedEventSource"))
    EventSourceMappingConfiguration.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    EventSourceMappingConfiguration.add_member(:bisect_batch_on_function_error, Shapes::ShapeRef.new(shape: BisectBatchOnFunctionError, location_name: "BisectBatchOnFunctionError"))
    EventSourceMappingConfiguration.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsEventSourceMapping, location_name: "MaximumRetryAttempts"))
    EventSourceMappingConfiguration.add_member(:tumbling_window_in_seconds, Shapes::ShapeRef.new(shape: TumblingWindowInSeconds, location_name: "TumblingWindowInSeconds"))
    EventSourceMappingConfiguration.add_member(:function_response_types, Shapes::ShapeRef.new(shape: FunctionResponseTypeList, location_name: "FunctionResponseTypes"))
    EventSourceMappingConfiguration.add_member(:amazon_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: AmazonManagedKafkaEventSourceConfig, location_name: "AmazonManagedKafkaEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:self_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: SelfManagedKafkaEventSourceConfig, location_name: "SelfManagedKafkaEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "ScalingConfig"))
    EventSourceMappingConfiguration.add_member(:document_db_event_source_config, Shapes::ShapeRef.new(shape: DocumentDBEventSourceConfig, location_name: "DocumentDBEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    EventSourceMappingConfiguration.add_member(:filter_criteria_error, Shapes::ShapeRef.new(shape: FilterCriteriaError, location_name: "FilterCriteriaError"))
    EventSourceMappingConfiguration.add_member(:event_source_mapping_arn, Shapes::ShapeRef.new(shape: EventSourceMappingArn, location_name: "EventSourceMappingArn"))
    EventSourceMappingConfiguration.add_member(:metrics_config, Shapes::ShapeRef.new(shape: EventSourceMappingMetricsConfig, location_name: "MetricsConfig"))
    EventSourceMappingConfiguration.add_member(:provisioned_poller_config, Shapes::ShapeRef.new(shape: ProvisionedPollerConfig, location_name: "ProvisionedPollerConfig"))
    EventSourceMappingConfiguration.struct_class = Types::EventSourceMappingConfiguration

    EventSourceMappingMetricList.member = Shapes::ShapeRef.new(shape: EventSourceMappingMetric)

    EventSourceMappingMetricsConfig.add_member(:metrics, Shapes::ShapeRef.new(shape: EventSourceMappingMetricList, location_name: "Metrics"))
    EventSourceMappingMetricsConfig.struct_class = Types::EventSourceMappingMetricsConfig

    EventSourceMappingsList.member = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)

    Events.member = Shapes::ShapeRef.new(shape: Event)

    Execution.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location_name: "DurableExecutionArn"))
    Execution.add_member(:durable_execution_name, Shapes::ShapeRef.new(shape: DurableExecutionName, required: true, location_name: "DurableExecutionName"))
    Execution.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, required: true, location_name: "FunctionArn"))
    Execution.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "Status"))
    Execution.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "StartTimestamp"))
    Execution.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "EndTimestamp"))
    Execution.struct_class = Types::Execution

    ExecutionDetails.add_member(:input_payload, Shapes::ShapeRef.new(shape: InputPayload, location_name: "InputPayload"))
    ExecutionDetails.struct_class = Types::ExecutionDetails

    ExecutionFailedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ExecutionFailedDetails.struct_class = Types::ExecutionFailedDetails

    ExecutionStartedDetails.add_member(:input, Shapes::ShapeRef.new(shape: EventInput, required: true, location_name: "Input"))
    ExecutionStartedDetails.add_member(:execution_timeout, Shapes::ShapeRef.new(shape: DurationSeconds, required: true, location_name: "ExecutionTimeout"))
    ExecutionStartedDetails.struct_class = Types::ExecutionStartedDetails

    ExecutionStatusList.member = Shapes::ShapeRef.new(shape: ExecutionStatus)

    ExecutionStoppedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    ExecutionStoppedDetails.struct_class = Types::ExecutionStoppedDetails

    ExecutionSucceededDetails.add_member(:result, Shapes::ShapeRef.new(shape: EventResult, required: true, location_name: "Result"))
    ExecutionSucceededDetails.struct_class = Types::ExecutionSucceededDetails

    ExecutionTimedOutDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, location_name: "Error"))
    ExecutionTimedOutDetails.struct_class = Types::ExecutionTimedOutDetails

    FileSystemConfig.add_member(:arn, Shapes::ShapeRef.new(shape: FileSystemArn, required: true, location_name: "Arn"))
    FileSystemConfig.add_member(:local_mount_path, Shapes::ShapeRef.new(shape: LocalMountPath, required: true, location_name: "LocalMountPath"))
    FileSystemConfig.struct_class = Types::FileSystemConfig

    FileSystemConfigList.member = Shapes::ShapeRef.new(shape: FileSystemConfig)

    Filter.add_member(:pattern, Shapes::ShapeRef.new(shape: Pattern, location_name: "Pattern"))
    Filter.struct_class = Types::Filter

    FilterCriteria.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    FilterCriteria.struct_class = Types::FilterCriteria

    FilterCriteriaError.add_member(:error_code, Shapes::ShapeRef.new(shape: FilterCriteriaErrorCode, location_name: "ErrorCode"))
    FilterCriteriaError.add_member(:message, Shapes::ShapeRef.new(shape: FilterCriteriaErrorMessage, location_name: "Message"))
    FilterCriteriaError.struct_class = Types::FilterCriteriaError

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FunctionArnList.member = Shapes::ShapeRef.new(shape: FunctionArn)

    FunctionCode.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    FunctionCode.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    FunctionCode.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    FunctionCode.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    FunctionCode.add_member(:image_uri, Shapes::ShapeRef.new(shape: String, location_name: "ImageUri"))
    FunctionCode.add_member(:source_kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "SourceKMSKeyArn"))
    FunctionCode.struct_class = Types::FunctionCode

    FunctionCodeLocation.add_member(:repository_type, Shapes::ShapeRef.new(shape: String, location_name: "RepositoryType"))
    FunctionCodeLocation.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    FunctionCodeLocation.add_member(:image_uri, Shapes::ShapeRef.new(shape: String, location_name: "ImageUri"))
    FunctionCodeLocation.add_member(:resolved_image_uri, Shapes::ShapeRef.new(shape: String, location_name: "ResolvedImageUri"))
    FunctionCodeLocation.add_member(:source_kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceKMSKeyArn"))
    FunctionCodeLocation.struct_class = Types::FunctionCodeLocation

    FunctionConfiguration.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, location_name: "FunctionName"))
    FunctionConfiguration.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, location_name: "FunctionArn"))
    FunctionConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    FunctionConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    FunctionConfiguration.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    FunctionConfiguration.add_member(:code_size, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSize"))
    FunctionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    FunctionConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    FunctionConfiguration.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    FunctionConfiguration.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    FunctionConfiguration.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "CodeSha256"))
    FunctionConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "Version"))
    FunctionConfiguration.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: "VpcConfig"))
    FunctionConfiguration.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    FunctionConfiguration.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentResponse, location_name: "Environment"))
    FunctionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    FunctionConfiguration.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfigResponse, location_name: "TracingConfig"))
    FunctionConfiguration.add_member(:master_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "MasterArn"))
    FunctionConfiguration.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    FunctionConfiguration.add_member(:layers, Shapes::ShapeRef.new(shape: LayersReferenceList, location_name: "Layers"))
    FunctionConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "State"))
    FunctionConfiguration.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    FunctionConfiguration.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: StateReasonCode, location_name: "StateReasonCode"))
    FunctionConfiguration.add_member(:last_update_status, Shapes::ShapeRef.new(shape: LastUpdateStatus, location_name: "LastUpdateStatus"))
    FunctionConfiguration.add_member(:last_update_status_reason, Shapes::ShapeRef.new(shape: LastUpdateStatusReason, location_name: "LastUpdateStatusReason"))
    FunctionConfiguration.add_member(:last_update_status_reason_code, Shapes::ShapeRef.new(shape: LastUpdateStatusReasonCode, location_name: "LastUpdateStatusReasonCode"))
    FunctionConfiguration.add_member(:file_system_configs, Shapes::ShapeRef.new(shape: FileSystemConfigList, location_name: "FileSystemConfigs"))
    FunctionConfiguration.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    FunctionConfiguration.add_member(:image_config_response, Shapes::ShapeRef.new(shape: ImageConfigResponse, location_name: "ImageConfigResponse"))
    FunctionConfiguration.add_member(:signing_profile_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SigningProfileVersionArn"))
    FunctionConfiguration.add_member(:signing_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SigningJobArn"))
    FunctionConfiguration.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitecturesList, location_name: "Architectures"))
    FunctionConfiguration.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "EphemeralStorage"))
    FunctionConfiguration.add_member(:snap_start, Shapes::ShapeRef.new(shape: SnapStartResponse, location_name: "SnapStart"))
    FunctionConfiguration.add_member(:runtime_version_config, Shapes::ShapeRef.new(shape: RuntimeVersionConfig, location_name: "RuntimeVersionConfig"))
    FunctionConfiguration.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    FunctionConfiguration.add_member(:capacity_provider_config, Shapes::ShapeRef.new(shape: CapacityProviderConfig, location_name: "CapacityProviderConfig"))
    FunctionConfiguration.add_member(:config_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "ConfigSha256"))
    FunctionConfiguration.add_member(:durable_config, Shapes::ShapeRef.new(shape: DurableConfig, location_name: "DurableConfig"))
    FunctionConfiguration.add_member(:tenancy_config, Shapes::ShapeRef.new(shape: TenancyConfig, location_name: "TenancyConfig"))
    FunctionConfiguration.struct_class = Types::FunctionConfiguration

    FunctionEventInvokeConfig.add_member(:last_modified, Shapes::ShapeRef.new(shape: Date, location_name: "LastModified"))
    FunctionEventInvokeConfig.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionArn"))
    FunctionEventInvokeConfig.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    FunctionEventInvokeConfig.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    FunctionEventInvokeConfig.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    FunctionEventInvokeConfig.struct_class = Types::FunctionEventInvokeConfig

    FunctionEventInvokeConfigList.member = Shapes::ShapeRef.new(shape: FunctionEventInvokeConfig)

    FunctionList.member = Shapes::ShapeRef.new(shape: FunctionConfiguration)

    FunctionResponseTypeList.member = Shapes::ShapeRef.new(shape: FunctionResponseType)

    FunctionScalingConfig.add_member(:min_execution_environments, Shapes::ShapeRef.new(shape: FunctionScalingConfigExecutionEnvironments, location_name: "MinExecutionEnvironments"))
    FunctionScalingConfig.add_member(:max_execution_environments, Shapes::ShapeRef.new(shape: FunctionScalingConfigExecutionEnvironments, location_name: "MaxExecutionEnvironments"))
    FunctionScalingConfig.struct_class = Types::FunctionScalingConfig

    FunctionUrlConfig.add_member(:function_url, Shapes::ShapeRef.new(shape: FunctionUrl, required: true, location_name: "FunctionUrl"))
    FunctionUrlConfig.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    FunctionUrlConfig.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    FunctionUrlConfig.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    FunctionUrlConfig.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    FunctionUrlConfig.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, required: true, location_name: "AuthType"))
    FunctionUrlConfig.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    FunctionUrlConfig.struct_class = Types::FunctionUrlConfig

    FunctionUrlConfigList.member = Shapes::ShapeRef.new(shape: FunctionUrlConfig)

    FunctionVersionsByCapacityProviderList.member = Shapes::ShapeRef.new(shape: FunctionVersionsByCapacityProviderListItem)

    FunctionVersionsByCapacityProviderListItem.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, required: true, location_name: "FunctionArn"))
    FunctionVersionsByCapacityProviderListItem.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "State"))
    FunctionVersionsByCapacityProviderListItem.struct_class = Types::FunctionVersionsByCapacityProviderListItem

    FunctionVersionsPerCapacityProviderLimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    FunctionVersionsPerCapacityProviderLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FunctionVersionsPerCapacityProviderLimitExceededException.struct_class = Types::FunctionVersionsPerCapacityProviderLimitExceededException

    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_limit, Shapes::ShapeRef.new(shape: AccountLimit, location_name: "AccountLimit"))
    GetAccountSettingsResponse.add_member(:account_usage, Shapes::ShapeRef.new(shape: AccountUsage, location_name: "AccountUsage"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    GetAliasRequest.struct_class = Types::GetAliasRequest

    GetCapacityProviderRequest.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location: "uri", location_name: "CapacityProviderName"))
    GetCapacityProviderRequest.struct_class = Types::GetCapacityProviderRequest

    GetCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "CapacityProvider"))
    GetCapacityProviderResponse.struct_class = Types::GetCapacityProviderResponse

    GetCodeSigningConfigRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location: "uri", location_name: "CodeSigningConfigArn"))
    GetCodeSigningConfigRequest.struct_class = Types::GetCodeSigningConfigRequest

    GetCodeSigningConfigResponse.add_member(:code_signing_config, Shapes::ShapeRef.new(shape: CodeSigningConfig, required: true, location_name: "CodeSigningConfig"))
    GetCodeSigningConfigResponse.struct_class = Types::GetCodeSigningConfigResponse

    GetDurableExecutionHistoryRequest.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location: "uri", location_name: "DurableExecutionArn"))
    GetDurableExecutionHistoryRequest.add_member(:include_execution_data, Shapes::ShapeRef.new(shape: IncludeExecutionData, location: "querystring", location_name: "IncludeExecutionData"))
    GetDurableExecutionHistoryRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: ItemCount, location: "querystring", location_name: "MaxItems"))
    GetDurableExecutionHistoryRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    GetDurableExecutionHistoryRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location: "querystring", location_name: "ReverseOrder"))
    GetDurableExecutionHistoryRequest.struct_class = Types::GetDurableExecutionHistoryRequest

    GetDurableExecutionHistoryResponse.add_member(:events, Shapes::ShapeRef.new(shape: Events, required: true, location_name: "Events"))
    GetDurableExecutionHistoryResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    GetDurableExecutionHistoryResponse.struct_class = Types::GetDurableExecutionHistoryResponse

    GetDurableExecutionRequest.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location: "uri", location_name: "DurableExecutionArn"))
    GetDurableExecutionRequest.struct_class = Types::GetDurableExecutionRequest

    GetDurableExecutionResponse.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location_name: "DurableExecutionArn"))
    GetDurableExecutionResponse.add_member(:durable_execution_name, Shapes::ShapeRef.new(shape: DurableExecutionName, required: true, location_name: "DurableExecutionName"))
    GetDurableExecutionResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, required: true, location_name: "FunctionArn"))
    GetDurableExecutionResponse.add_member(:input_payload, Shapes::ShapeRef.new(shape: InputPayload, location_name: "InputPayload"))
    GetDurableExecutionResponse.add_member(:result, Shapes::ShapeRef.new(shape: OutputPayload, location_name: "Result"))
    GetDurableExecutionResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    GetDurableExecutionResponse.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "StartTimestamp"))
    GetDurableExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "Status"))
    GetDurableExecutionResponse.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "EndTimestamp"))
    GetDurableExecutionResponse.add_member(:version, Shapes::ShapeRef.new(shape: VersionWithLatestPublished, location_name: "Version"))
    GetDurableExecutionResponse.add_member(:trace_header, Shapes::ShapeRef.new(shape: TraceHeader, location_name: "TraceHeader"))
    GetDurableExecutionResponse.struct_class = Types::GetDurableExecutionResponse

    GetDurableExecutionStateRequest.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location: "uri", location_name: "DurableExecutionArn"))
    GetDurableExecutionStateRequest.add_member(:checkpoint_token, Shapes::ShapeRef.new(shape: CheckpointToken, required: true, location: "querystring", location_name: "CheckpointToken"))
    GetDurableExecutionStateRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    GetDurableExecutionStateRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: ItemCount, location: "querystring", location_name: "MaxItems"))
    GetDurableExecutionStateRequest.struct_class = Types::GetDurableExecutionStateRequest

    GetDurableExecutionStateResponse.add_member(:operations, Shapes::ShapeRef.new(shape: Operations, required: true, location_name: "Operations"))
    GetDurableExecutionStateResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    GetDurableExecutionStateResponse.struct_class = Types::GetDurableExecutionStateResponse

    GetEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    GetEventSourceMappingRequest.struct_class = Types::GetEventSourceMappingRequest

    GetFunctionCodeSigningConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionCodeSigningConfigRequest.struct_class = Types::GetFunctionCodeSigningConfigRequest

    GetFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location_name: "CodeSigningConfigArn"))
    GetFunctionCodeSigningConfigResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    GetFunctionCodeSigningConfigResponse.struct_class = Types::GetFunctionCodeSigningConfigResponse

    GetFunctionConcurrencyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionConcurrencyRequest.struct_class = Types::GetFunctionConcurrencyRequest

    GetFunctionConcurrencyResponse.add_member(:reserved_concurrent_executions, Shapes::ShapeRef.new(shape: ReservedConcurrentExecutions, location_name: "ReservedConcurrentExecutions"))
    GetFunctionConcurrencyResponse.struct_class = Types::GetFunctionConcurrencyResponse

    GetFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionConfigurationRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionConfigurationRequest.struct_class = Types::GetFunctionConfigurationRequest

    GetFunctionEventInvokeConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionEventInvokeConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionEventInvokeConfigRequest.struct_class = Types::GetFunctionEventInvokeConfigRequest

    GetFunctionRecursionConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: UnqualifiedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionRecursionConfigRequest.struct_class = Types::GetFunctionRecursionConfigRequest

    GetFunctionRecursionConfigResponse.add_member(:recursive_loop, Shapes::ShapeRef.new(shape: RecursiveLoop, location_name: "RecursiveLoop"))
    GetFunctionRecursionConfigResponse.struct_class = Types::GetFunctionRecursionConfigResponse

    GetFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionRequest.struct_class = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: FunctionConfiguration, location_name: "Configuration"))
    GetFunctionResponse.add_member(:code, Shapes::ShapeRef.new(shape: FunctionCodeLocation, location_name: "Code"))
    GetFunctionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetFunctionResponse.add_member(:tags_error, Shapes::ShapeRef.new(shape: TagsError, location_name: "TagsError"))
    GetFunctionResponse.add_member(:concurrency, Shapes::ShapeRef.new(shape: Concurrency, location_name: "Concurrency"))
    GetFunctionResponse.struct_class = Types::GetFunctionResponse

    GetFunctionScalingConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: UnqualifiedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionScalingConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: PublishedFunctionQualifier, required: true, location: "querystring", location_name: "Qualifier"))
    GetFunctionScalingConfigRequest.struct_class = Types::GetFunctionScalingConfigRequest

    GetFunctionScalingConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionArn"))
    GetFunctionScalingConfigResponse.add_member(:applied_function_scaling_config, Shapes::ShapeRef.new(shape: FunctionScalingConfig, location_name: "AppliedFunctionScalingConfig"))
    GetFunctionScalingConfigResponse.add_member(:requested_function_scaling_config, Shapes::ShapeRef.new(shape: FunctionScalingConfig, location_name: "RequestedFunctionScalingConfig"))
    GetFunctionScalingConfigResponse.struct_class = Types::GetFunctionScalingConfigResponse

    GetFunctionUrlConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetFunctionUrlConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: FunctionUrlQualifier, location: "querystring", location_name: "Qualifier"))
    GetFunctionUrlConfigRequest.struct_class = Types::GetFunctionUrlConfigRequest

    GetFunctionUrlConfigResponse.add_member(:function_url, Shapes::ShapeRef.new(shape: FunctionUrl, required: true, location_name: "FunctionUrl"))
    GetFunctionUrlConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    GetFunctionUrlConfigResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, required: true, location_name: "AuthType"))
    GetFunctionUrlConfigResponse.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    GetFunctionUrlConfigResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    GetFunctionUrlConfigResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    GetFunctionUrlConfigResponse.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    GetFunctionUrlConfigResponse.struct_class = Types::GetFunctionUrlConfigResponse

    GetLayerVersionByArnRequest.add_member(:arn, Shapes::ShapeRef.new(shape: LayerVersionArn, required: true, location: "querystring", location_name: "Arn"))
    GetLayerVersionByArnRequest.struct_class = Types::GetLayerVersionByArnRequest

    GetLayerVersionPolicyRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    GetLayerVersionPolicyRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: LayerVersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    GetLayerVersionPolicyRequest.struct_class = Types::GetLayerVersionPolicyRequest

    GetLayerVersionPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    GetLayerVersionPolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    GetLayerVersionPolicyResponse.struct_class = Types::GetLayerVersionPolicyResponse

    GetLayerVersionRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    GetLayerVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: LayerVersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    GetLayerVersionRequest.struct_class = Types::GetLayerVersionRequest

    GetLayerVersionResponse.add_member(:content, Shapes::ShapeRef.new(shape: LayerVersionContentOutput, location_name: "Content"))
    GetLayerVersionResponse.add_member(:layer_arn, Shapes::ShapeRef.new(shape: LayerArn, location_name: "LayerArn"))
    GetLayerVersionResponse.add_member(:layer_version_arn, Shapes::ShapeRef.new(shape: LayerVersionArn, location_name: "LayerVersionArn"))
    GetLayerVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetLayerVersionResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    GetLayerVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: LayerVersionNumber, location_name: "Version"))
    GetLayerVersionResponse.add_member(:compatible_runtimes, Shapes::ShapeRef.new(shape: CompatibleRuntimes, location_name: "CompatibleRuntimes"))
    GetLayerVersionResponse.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfo, location_name: "LicenseInfo"))
    GetLayerVersionResponse.add_member(:compatible_architectures, Shapes::ShapeRef.new(shape: CompatibleArchitectures, location_name: "CompatibleArchitectures"))
    GetLayerVersionResponse.struct_class = Types::GetLayerVersionResponse

    GetPolicyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetPolicyRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "Policy"))
    GetPolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetProvisionedConcurrencyConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetProvisionedConcurrencyConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, required: true, location: "querystring", location_name: "Qualifier"))
    GetProvisionedConcurrencyConfigRequest.struct_class = Types::GetProvisionedConcurrencyConfigRequest

    GetProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "RequestedProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AvailableProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AllocatedProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedConcurrencyStatusEnum, location_name: "Status"))
    GetProvisionedConcurrencyConfigResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    GetProvisionedConcurrencyConfigResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    GetProvisionedConcurrencyConfigResponse.struct_class = Types::GetProvisionedConcurrencyConfigResponse

    GetRuntimeManagementConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    GetRuntimeManagementConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    GetRuntimeManagementConfigRequest.struct_class = Types::GetRuntimeManagementConfigRequest

    GetRuntimeManagementConfigResponse.add_member(:update_runtime_on, Shapes::ShapeRef.new(shape: UpdateRuntimeOn, location_name: "UpdateRuntimeOn"))
    GetRuntimeManagementConfigResponse.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeVersionArn, location_name: "RuntimeVersionArn"))
    GetRuntimeManagementConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: NameSpacedFunctionArn, location_name: "FunctionArn"))
    GetRuntimeManagementConfigResponse.struct_class = Types::GetRuntimeManagementConfigResponse

    HeadersList.member = Shapes::ShapeRef.new(shape: Header)

    ImageConfig.add_member(:entry_point, Shapes::ShapeRef.new(shape: StringList, location_name: "EntryPoint"))
    ImageConfig.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "Command"))
    ImageConfig.add_member(:working_directory, Shapes::ShapeRef.new(shape: WorkingDirectory, location_name: "WorkingDirectory"))
    ImageConfig.struct_class = Types::ImageConfig

    ImageConfigError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ImageConfigError.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Message"))
    ImageConfigError.struct_class = Types::ImageConfigError

    ImageConfigResponse.add_member(:image_config, Shapes::ShapeRef.new(shape: ImageConfig, location_name: "ImageConfig"))
    ImageConfigResponse.add_member(:error, Shapes::ShapeRef.new(shape: ImageConfigError, location_name: "Error"))
    ImageConfigResponse.struct_class = Types::ImageConfigResponse

    InstanceRequirements.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitecturesList, location_name: "Architectures"))
    InstanceRequirements.add_member(:allowed_instance_types, Shapes::ShapeRef.new(shape: InstanceTypeSet, location_name: "AllowedInstanceTypes"))
    InstanceRequirements.add_member(:excluded_instance_types, Shapes::ShapeRef.new(shape: InstanceTypeSet, location_name: "ExcludedInstanceTypes"))
    InstanceRequirements.struct_class = Types::InstanceRequirements

    InstanceTypeSet.member = Shapes::ShapeRef.new(shape: InstanceType)

    InvalidCodeSignatureException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidCodeSignatureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidCodeSignatureException.struct_class = Types::InvalidCodeSignatureException

    InvalidParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestContentException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidRequestContentException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestContentException.struct_class = Types::InvalidRequestContentException

    InvalidRuntimeException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidRuntimeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRuntimeException.struct_class = Types::InvalidRuntimeException

    InvalidSecurityGroupIDException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidSecurityGroupIDException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidSecurityGroupIDException.struct_class = Types::InvalidSecurityGroupIDException

    InvalidSubnetIDException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidSubnetIDException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidSubnetIDException.struct_class = Types::InvalidSubnetIDException

    InvalidZipFileException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidZipFileException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidZipFileException.struct_class = Types::InvalidZipFileException

    InvocationCompletedDetails.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "StartTimestamp"))
    InvocationCompletedDetails.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "EndTimestamp"))
    InvocationCompletedDetails.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestId"))
    InvocationCompletedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, location_name: "Error"))
    InvocationCompletedDetails.struct_class = Types::InvocationCompletedDetails

    InvocationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvocationRequest.add_member(:invocation_type, Shapes::ShapeRef.new(shape: InvocationType, location: "header", location_name: "X-Amz-Invocation-Type"))
    InvocationRequest.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location: "header", location_name: "X-Amz-Log-Type"))
    InvocationRequest.add_member(:client_context, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Client-Context"))
    InvocationRequest.add_member(:durable_execution_name, Shapes::ShapeRef.new(shape: DurableExecutionName, location: "header", location_name: "X-Amz-Durable-Execution-Name"))
    InvocationRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, location_name: "Payload"))
    InvocationRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    InvocationRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location: "header", location_name: "X-Amz-Tenant-Id"))
    InvocationRequest.struct_class = Types::InvocationRequest
    InvocationRequest[:payload] = :payload
    InvocationRequest[:payload_member] = InvocationRequest.member(:payload)

    InvocationResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "StatusCode"))
    InvocationResponse.add_member(:function_error, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Function-Error"))
    InvocationResponse.add_member(:log_result, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Log-Result"))
    InvocationResponse.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, location_name: "Payload"))
    InvocationResponse.add_member(:executed_version, Shapes::ShapeRef.new(shape: Version, location: "header", location_name: "X-Amz-Executed-Version"))
    InvocationResponse.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, location: "header", location_name: "X-Amz-Durable-Execution-Arn"))
    InvocationResponse.struct_class = Types::InvocationResponse
    InvocationResponse[:payload] = :payload
    InvocationResponse[:payload_member] = InvocationResponse.member(:payload)

    InvokeAsyncRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvokeAsyncRequest.add_member(:invoke_args, Shapes::ShapeRef.new(shape: BlobStream, required: true, location_name: "InvokeArgs"))
    InvokeAsyncRequest.struct_class = Types::InvokeAsyncRequest
    InvokeAsyncRequest[:payload] = :invoke_args
    InvokeAsyncRequest[:payload_member] = InvokeAsyncRequest.member(:invoke_args)

    InvokeAsyncResponse.add_member(:status, Shapes::ShapeRef.new(shape: HttpStatus, location: "statusCode", location_name: "Status"))
    InvokeAsyncResponse.struct_class = Types::InvokeAsyncResponse

    InvokeResponseStreamUpdate.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, eventpayload: true, eventpayload_type: 'blob', location_name: "Payload", metadata: {"eventpayload" => true}))
    InvokeResponseStreamUpdate.struct_class = Types::InvokeResponseStreamUpdate

    InvokeWithResponseStreamCompleteEvent.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    InvokeWithResponseStreamCompleteEvent.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "ErrorDetails"))
    InvokeWithResponseStreamCompleteEvent.add_member(:log_result, Shapes::ShapeRef.new(shape: String, location_name: "LogResult"))
    InvokeWithResponseStreamCompleteEvent.struct_class = Types::InvokeWithResponseStreamCompleteEvent

    InvokeWithResponseStreamRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    InvokeWithResponseStreamRequest.add_member(:invocation_type, Shapes::ShapeRef.new(shape: ResponseStreamingInvocationType, location: "header", location_name: "X-Amz-Invocation-Type"))
    InvokeWithResponseStreamRequest.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location: "header", location_name: "X-Amz-Log-Type"))
    InvokeWithResponseStreamRequest.add_member(:client_context, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amz-Client-Context"))
    InvokeWithResponseStreamRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    InvokeWithResponseStreamRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Blob, location_name: "Payload"))
    InvokeWithResponseStreamRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location: "header", location_name: "X-Amz-Tenant-Id"))
    InvokeWithResponseStreamRequest.struct_class = Types::InvokeWithResponseStreamRequest
    InvokeWithResponseStreamRequest[:payload] = :payload
    InvokeWithResponseStreamRequest[:payload_member] = InvokeWithResponseStreamRequest.member(:payload)

    InvokeWithResponseStreamResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location: "statusCode", location_name: "StatusCode"))
    InvokeWithResponseStreamResponse.add_member(:executed_version, Shapes::ShapeRef.new(shape: Version, location: "header", location_name: "X-Amz-Executed-Version"))
    InvokeWithResponseStreamResponse.add_member(:event_stream, Shapes::ShapeRef.new(shape: InvokeWithResponseStreamResponseEvent, eventstream: true, location_name: "EventStream"))
    InvokeWithResponseStreamResponse.add_member(:response_stream_content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    InvokeWithResponseStreamResponse.struct_class = Types::InvokeWithResponseStreamResponse
    InvokeWithResponseStreamResponse[:payload] = :event_stream
    InvokeWithResponseStreamResponse[:payload_member] = InvokeWithResponseStreamResponse.member(:event_stream)

    InvokeWithResponseStreamResponseEvent.add_member(:payload_chunk, Shapes::ShapeRef.new(shape: InvokeResponseStreamUpdate, event: true, location_name: "PayloadChunk"))
    InvokeWithResponseStreamResponseEvent.add_member(:invoke_complete, Shapes::ShapeRef.new(shape: InvokeWithResponseStreamCompleteEvent, event: true, location_name: "InvokeComplete"))
    InvokeWithResponseStreamResponseEvent.struct_class = Types::InvokeWithResponseStreamResponseEvent

    KMSAccessDeniedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    KMSAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KMSAccessDeniedException.struct_class = Types::KMSAccessDeniedException

    KMSDisabledException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    KMSDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KMSDisabledException.struct_class = Types::KMSDisabledException

    KMSInvalidStateException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    KMSInvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KMSInvalidStateException.struct_class = Types::KMSInvalidStateException

    KMSNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    KMSNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    KMSNotFoundException.struct_class = Types::KMSNotFoundException

    KafkaSchemaRegistryAccessConfig.add_member(:type, Shapes::ShapeRef.new(shape: KafkaSchemaRegistryAuthType, location_name: "Type"))
    KafkaSchemaRegistryAccessConfig.add_member(:uri, Shapes::ShapeRef.new(shape: Arn, location_name: "URI"))
    KafkaSchemaRegistryAccessConfig.struct_class = Types::KafkaSchemaRegistryAccessConfig

    KafkaSchemaRegistryAccessConfigList.member = Shapes::ShapeRef.new(shape: KafkaSchemaRegistryAccessConfig)

    KafkaSchemaRegistryConfig.add_member(:schema_registry_uri, Shapes::ShapeRef.new(shape: SchemaRegistryUri, location_name: "SchemaRegistryURI"))
    KafkaSchemaRegistryConfig.add_member(:event_record_format, Shapes::ShapeRef.new(shape: SchemaRegistryEventRecordFormat, location_name: "EventRecordFormat"))
    KafkaSchemaRegistryConfig.add_member(:access_configs, Shapes::ShapeRef.new(shape: KafkaSchemaRegistryAccessConfigList, location_name: "AccessConfigs"))
    KafkaSchemaRegistryConfig.add_member(:schema_validation_configs, Shapes::ShapeRef.new(shape: KafkaSchemaValidationConfigList, location_name: "SchemaValidationConfigs"))
    KafkaSchemaRegistryConfig.struct_class = Types::KafkaSchemaRegistryConfig

    KafkaSchemaValidationConfig.add_member(:attribute, Shapes::ShapeRef.new(shape: KafkaSchemaValidationAttribute, location_name: "Attribute"))
    KafkaSchemaValidationConfig.struct_class = Types::KafkaSchemaValidationConfig

    KafkaSchemaValidationConfigList.member = Shapes::ShapeRef.new(shape: KafkaSchemaValidationConfig)

    LambdaManagedInstancesCapacityProviderConfig.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "CapacityProviderArn"))
    LambdaManagedInstancesCapacityProviderConfig.add_member(:per_execution_environment_max_concurrency, Shapes::ShapeRef.new(shape: PerExecutionEnvironmentMaxConcurrency, location_name: "PerExecutionEnvironmentMaxConcurrency"))
    LambdaManagedInstancesCapacityProviderConfig.add_member(:execution_environment_memory_gi_b_per_v_cpu, Shapes::ShapeRef.new(shape: ExecutionEnvironmentMemoryGiBPerVCpu, location_name: "ExecutionEnvironmentMemoryGiBPerVCpu"))
    LambdaManagedInstancesCapacityProviderConfig.struct_class = Types::LambdaManagedInstancesCapacityProviderConfig

    Layer.add_member(:arn, Shapes::ShapeRef.new(shape: LayerVersionArn, location_name: "Arn"))
    Layer.add_member(:code_size, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSize"))
    Layer.add_member(:signing_profile_version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SigningProfileVersionArn"))
    Layer.add_member(:signing_job_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SigningJobArn"))
    Layer.struct_class = Types::Layer

    LayerList.member = Shapes::ShapeRef.new(shape: LayerVersionArn)

    LayerVersionContentInput.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    LayerVersionContentInput.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    LayerVersionContentInput.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    LayerVersionContentInput.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    LayerVersionContentInput.struct_class = Types::LayerVersionContentInput

    LayerVersionContentOutput.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    LayerVersionContentOutput.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "CodeSha256"))
    LayerVersionContentOutput.add_member(:code_size, Shapes::ShapeRef.new(shape: Long, location_name: "CodeSize"))
    LayerVersionContentOutput.add_member(:signing_profile_version_arn, Shapes::ShapeRef.new(shape: String, location_name: "SigningProfileVersionArn"))
    LayerVersionContentOutput.add_member(:signing_job_arn, Shapes::ShapeRef.new(shape: String, location_name: "SigningJobArn"))
    LayerVersionContentOutput.struct_class = Types::LayerVersionContentOutput

    LayerVersionsList.member = Shapes::ShapeRef.new(shape: LayerVersionsListItem)

    LayerVersionsListItem.add_member(:layer_version_arn, Shapes::ShapeRef.new(shape: LayerVersionArn, location_name: "LayerVersionArn"))
    LayerVersionsListItem.add_member(:version, Shapes::ShapeRef.new(shape: LayerVersionNumber, location_name: "Version"))
    LayerVersionsListItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    LayerVersionsListItem.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    LayerVersionsListItem.add_member(:compatible_runtimes, Shapes::ShapeRef.new(shape: CompatibleRuntimes, location_name: "CompatibleRuntimes"))
    LayerVersionsListItem.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfo, location_name: "LicenseInfo"))
    LayerVersionsListItem.add_member(:compatible_architectures, Shapes::ShapeRef.new(shape: CompatibleArchitectures, location_name: "CompatibleArchitectures"))
    LayerVersionsListItem.struct_class = Types::LayerVersionsListItem

    LayersList.member = Shapes::ShapeRef.new(shape: LayersListItem)

    LayersListItem.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, location_name: "LayerName"))
    LayersListItem.add_member(:layer_arn, Shapes::ShapeRef.new(shape: LayerArn, location_name: "LayerArn"))
    LayersListItem.add_member(:latest_matching_version, Shapes::ShapeRef.new(shape: LayerVersionsListItem, location_name: "LatestMatchingVersion"))
    LayersListItem.struct_class = Types::LayersListItem

    LayersReferenceList.member = Shapes::ShapeRef.new(shape: Layer)

    ListAliasesRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListAliasesRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: VersionWithLatestPublished, location: "querystring", location_name: "FunctionVersion"))
    ListAliasesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListAliasesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListAliasesRequest.struct_class = Types::ListAliasesRequest

    ListAliasesResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: AliasList, location_name: "Aliases"))
    ListAliasesResponse.struct_class = Types::ListAliasesResponse

    ListCapacityProvidersRequest.add_member(:state, Shapes::ShapeRef.new(shape: CapacityProviderState, location: "querystring", location_name: "State"))
    ListCapacityProvidersRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListCapacityProvidersRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxFiftyListItems, location: "querystring", location_name: "MaxItems"))
    ListCapacityProvidersRequest.struct_class = Types::ListCapacityProvidersRequest

    ListCapacityProvidersResponse.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: CapacityProvidersList, required: true, location_name: "CapacityProviders"))
    ListCapacityProvidersResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListCapacityProvidersResponse.struct_class = Types::ListCapacityProvidersResponse

    ListCodeSigningConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListCodeSigningConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListCodeSigningConfigsRequest.struct_class = Types::ListCodeSigningConfigsRequest

    ListCodeSigningConfigsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListCodeSigningConfigsResponse.add_member(:code_signing_configs, Shapes::ShapeRef.new(shape: CodeSigningConfigList, location_name: "CodeSigningConfigs"))
    ListCodeSigningConfigsResponse.struct_class = Types::ListCodeSigningConfigsResponse

    ListDurableExecutionsByFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListDurableExecutionsByFunctionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    ListDurableExecutionsByFunctionRequest.add_member(:durable_execution_name, Shapes::ShapeRef.new(shape: DurableExecutionName, location: "querystring", location_name: "DurableExecutionName"))
    ListDurableExecutionsByFunctionRequest.add_member(:statuses, Shapes::ShapeRef.new(shape: ExecutionStatusList, location: "querystring", location_name: "Statuses"))
    ListDurableExecutionsByFunctionRequest.add_member(:started_after, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location: "querystring", location_name: "StartedAfter"))
    ListDurableExecutionsByFunctionRequest.add_member(:started_before, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location: "querystring", location_name: "StartedBefore"))
    ListDurableExecutionsByFunctionRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: ReverseOrder, location: "querystring", location_name: "ReverseOrder"))
    ListDurableExecutionsByFunctionRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListDurableExecutionsByFunctionRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: ItemCount, location: "querystring", location_name: "MaxItems"))
    ListDurableExecutionsByFunctionRequest.struct_class = Types::ListDurableExecutionsByFunctionRequest

    ListDurableExecutionsByFunctionResponse.add_member(:durable_executions, Shapes::ShapeRef.new(shape: DurableExecutions, location_name: "DurableExecutions"))
    ListDurableExecutionsByFunctionResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListDurableExecutionsByFunctionResponse.struct_class = Types::ListDurableExecutionsByFunctionResponse

    ListEventSourceMappingsRequest.add_member(:event_source_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "EventSourceArn"))
    ListEventSourceMappingsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, location: "querystring", location_name: "FunctionName"))
    ListEventSourceMappingsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListEventSourceMappingsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListEventSourceMappingsRequest.struct_class = Types::ListEventSourceMappingsRequest

    ListEventSourceMappingsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListEventSourceMappingsResponse.add_member(:event_source_mappings, Shapes::ShapeRef.new(shape: EventSourceMappingsList, location_name: "EventSourceMappings"))
    ListEventSourceMappingsResponse.struct_class = Types::ListEventSourceMappingsResponse

    ListFunctionEventInvokeConfigsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListFunctionEventInvokeConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionEventInvokeConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxFunctionEventInvokeConfigListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionEventInvokeConfigsRequest.struct_class = Types::ListFunctionEventInvokeConfigsRequest

    ListFunctionEventInvokeConfigsResponse.add_member(:function_event_invoke_configs, Shapes::ShapeRef.new(shape: FunctionEventInvokeConfigList, location_name: "FunctionEventInvokeConfigs"))
    ListFunctionEventInvokeConfigsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionEventInvokeConfigsResponse.struct_class = Types::ListFunctionEventInvokeConfigsResponse

    ListFunctionUrlConfigsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListFunctionUrlConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionUrlConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionUrlConfigsRequest.struct_class = Types::ListFunctionUrlConfigsRequest

    ListFunctionUrlConfigsResponse.add_member(:function_url_configs, Shapes::ShapeRef.new(shape: FunctionUrlConfigList, required: true, location_name: "FunctionUrlConfigs"))
    ListFunctionUrlConfigsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionUrlConfigsResponse.struct_class = Types::ListFunctionUrlConfigsResponse

    ListFunctionVersionsByCapacityProviderRequest.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location: "uri", location_name: "CapacityProviderName"))
    ListFunctionVersionsByCapacityProviderRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionVersionsByCapacityProviderRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxFiftyListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionVersionsByCapacityProviderRequest.struct_class = Types::ListFunctionVersionsByCapacityProviderRequest

    ListFunctionVersionsByCapacityProviderResponse.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "CapacityProviderArn"))
    ListFunctionVersionsByCapacityProviderResponse.add_member(:function_versions, Shapes::ShapeRef.new(shape: FunctionVersionsByCapacityProviderList, required: true, location_name: "FunctionVersions"))
    ListFunctionVersionsByCapacityProviderResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionVersionsByCapacityProviderResponse.struct_class = Types::ListFunctionVersionsByCapacityProviderResponse

    ListFunctionsByCodeSigningConfigRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location: "uri", location_name: "CodeSigningConfigArn"))
    ListFunctionsByCodeSigningConfigRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionsByCodeSigningConfigRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionsByCodeSigningConfigRequest.struct_class = Types::ListFunctionsByCodeSigningConfigRequest

    ListFunctionsByCodeSigningConfigResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionsByCodeSigningConfigResponse.add_member(:function_arns, Shapes::ShapeRef.new(shape: FunctionArnList, location_name: "FunctionArns"))
    ListFunctionsByCodeSigningConfigResponse.struct_class = Types::ListFunctionsByCodeSigningConfigResponse

    ListFunctionsRequest.add_member(:master_region, Shapes::ShapeRef.new(shape: MasterRegion, location: "querystring", location_name: "MasterRegion"))
    ListFunctionsRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: FunctionVersion, location: "querystring", location_name: "FunctionVersion"))
    ListFunctionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListFunctionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListFunctionsRequest.struct_class = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListFunctionsResponse.add_member(:functions, Shapes::ShapeRef.new(shape: FunctionList, location_name: "Functions"))
    ListFunctionsResponse.struct_class = Types::ListFunctionsResponse

    ListLayerVersionsRequest.add_member(:compatible_runtime, Shapes::ShapeRef.new(shape: Runtime, location: "querystring", location_name: "CompatibleRuntime"))
    ListLayerVersionsRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    ListLayerVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListLayerVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxLayerListItems, location: "querystring", location_name: "MaxItems"))
    ListLayerVersionsRequest.add_member(:compatible_architecture, Shapes::ShapeRef.new(shape: Architecture, location: "querystring", location_name: "CompatibleArchitecture"))
    ListLayerVersionsRequest.struct_class = Types::ListLayerVersionsRequest

    ListLayerVersionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListLayerVersionsResponse.add_member(:layer_versions, Shapes::ShapeRef.new(shape: LayerVersionsList, location_name: "LayerVersions"))
    ListLayerVersionsResponse.struct_class = Types::ListLayerVersionsResponse

    ListLayersRequest.add_member(:compatible_runtime, Shapes::ShapeRef.new(shape: Runtime, location: "querystring", location_name: "CompatibleRuntime"))
    ListLayersRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListLayersRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxLayerListItems, location: "querystring", location_name: "MaxItems"))
    ListLayersRequest.add_member(:compatible_architecture, Shapes::ShapeRef.new(shape: Architecture, location: "querystring", location_name: "CompatibleArchitecture"))
    ListLayersRequest.struct_class = Types::ListLayersRequest

    ListLayersResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListLayersResponse.add_member(:layers, Shapes::ShapeRef.new(shape: LayersList, location_name: "Layers"))
    ListLayersResponse.struct_class = Types::ListLayersResponse

    ListProvisionedConcurrencyConfigsRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListProvisionedConcurrencyConfigsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListProvisionedConcurrencyConfigsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxProvisionedConcurrencyConfigListItems, location: "querystring", location_name: "MaxItems"))
    ListProvisionedConcurrencyConfigsRequest.struct_class = Types::ListProvisionedConcurrencyConfigsRequest

    ListProvisionedConcurrencyConfigsResponse.add_member(:provisioned_concurrency_configs, Shapes::ShapeRef.new(shape: ProvisionedConcurrencyConfigList, location_name: "ProvisionedConcurrencyConfigs"))
    ListProvisionedConcurrencyConfigsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListProvisionedConcurrencyConfigsResponse.struct_class = Types::ListProvisionedConcurrencyConfigsResponse

    ListTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    ListVersionsByFunctionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    ListVersionsByFunctionRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListVersionsByFunctionRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxListItems, location: "querystring", location_name: "MaxItems"))
    ListVersionsByFunctionRequest.struct_class = Types::ListVersionsByFunctionRequest

    ListVersionsByFunctionResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListVersionsByFunctionResponse.add_member(:versions, Shapes::ShapeRef.new(shape: FunctionList, location_name: "Versions"))
    ListVersionsByFunctionResponse.struct_class = Types::ListVersionsByFunctionResponse

    LoggingConfig.add_member(:log_format, Shapes::ShapeRef.new(shape: LogFormat, location_name: "LogFormat"))
    LoggingConfig.add_member(:application_log_level, Shapes::ShapeRef.new(shape: ApplicationLogLevel, location_name: "ApplicationLogLevel"))
    LoggingConfig.add_member(:system_log_level, Shapes::ShapeRef.new(shape: SystemLogLevel, location_name: "SystemLogLevel"))
    LoggingConfig.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    LoggingConfig.struct_class = Types::LoggingConfig

    NoPublishedVersionException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    NoPublishedVersionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NoPublishedVersionException.struct_class = Types::NoPublishedVersionException

    OnFailure.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Destination"))
    OnFailure.struct_class = Types::OnFailure

    OnSuccess.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "Destination"))
    OnSuccess.struct_class = Types::OnSuccess

    Operation.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "Id"))
    Operation.add_member(:parent_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "ParentId"))
    Operation.add_member(:name, Shapes::ShapeRef.new(shape: OperationName, location_name: "Name"))
    Operation.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, required: true, location_name: "Type"))
    Operation.add_member(:sub_type, Shapes::ShapeRef.new(shape: OperationSubType, location_name: "SubType"))
    Operation.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "StartTimestamp"))
    Operation.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "EndTimestamp"))
    Operation.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, required: true, location_name: "Status"))
    Operation.add_member(:execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "ExecutionDetails"))
    Operation.add_member(:context_details, Shapes::ShapeRef.new(shape: ContextDetails, location_name: "ContextDetails"))
    Operation.add_member(:step_details, Shapes::ShapeRef.new(shape: StepDetails, location_name: "StepDetails"))
    Operation.add_member(:wait_details, Shapes::ShapeRef.new(shape: WaitDetails, location_name: "WaitDetails"))
    Operation.add_member(:callback_details, Shapes::ShapeRef.new(shape: CallbackDetails, location_name: "CallbackDetails"))
    Operation.add_member(:chained_invoke_details, Shapes::ShapeRef.new(shape: ChainedInvokeDetails, location_name: "ChainedInvokeDetails"))
    Operation.struct_class = Types::Operation

    OperationUpdate.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, required: true, location_name: "Id"))
    OperationUpdate.add_member(:parent_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "ParentId"))
    OperationUpdate.add_member(:name, Shapes::ShapeRef.new(shape: OperationName, location_name: "Name"))
    OperationUpdate.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, required: true, location_name: "Type"))
    OperationUpdate.add_member(:sub_type, Shapes::ShapeRef.new(shape: OperationSubType, location_name: "SubType"))
    OperationUpdate.add_member(:action, Shapes::ShapeRef.new(shape: OperationAction, required: true, location_name: "Action"))
    OperationUpdate.add_member(:payload, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Payload"))
    OperationUpdate.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    OperationUpdate.add_member(:context_options, Shapes::ShapeRef.new(shape: ContextOptions, location_name: "ContextOptions"))
    OperationUpdate.add_member(:step_options, Shapes::ShapeRef.new(shape: StepOptions, location_name: "StepOptions"))
    OperationUpdate.add_member(:wait_options, Shapes::ShapeRef.new(shape: WaitOptions, location_name: "WaitOptions"))
    OperationUpdate.add_member(:callback_options, Shapes::ShapeRef.new(shape: CallbackOptions, location_name: "CallbackOptions"))
    OperationUpdate.add_member(:chained_invoke_options, Shapes::ShapeRef.new(shape: ChainedInvokeOptions, location_name: "ChainedInvokeOptions"))
    OperationUpdate.struct_class = Types::OperationUpdate

    OperationUpdates.member = Shapes::ShapeRef.new(shape: OperationUpdate)

    Operations.member = Shapes::ShapeRef.new(shape: Operation)

    PolicyLengthExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    PolicyLengthExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PolicyLengthExceededException.struct_class = Types::PolicyLengthExceededException

    PreconditionFailedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    PreconditionFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PreconditionFailedException.struct_class = Types::PreconditionFailedException

    ProvisionedConcurrencyConfigList.member = Shapes::ShapeRef.new(shape: ProvisionedConcurrencyConfigListItem)

    ProvisionedConcurrencyConfigListItem.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "FunctionArn"))
    ProvisionedConcurrencyConfigListItem.add_member(:requested_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "RequestedProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:available_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AvailableProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:allocated_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AllocatedProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedConcurrencyStatusEnum, location_name: "Status"))
    ProvisionedConcurrencyConfigListItem.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    ProvisionedConcurrencyConfigListItem.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    ProvisionedConcurrencyConfigListItem.struct_class = Types::ProvisionedConcurrencyConfigListItem

    ProvisionedConcurrencyConfigNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ProvisionedConcurrencyConfigNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ProvisionedConcurrencyConfigNotFoundException.struct_class = Types::ProvisionedConcurrencyConfigNotFoundException

    ProvisionedPollerConfig.add_member(:minimum_pollers, Shapes::ShapeRef.new(shape: MinimumNumberOfPollers, location_name: "MinimumPollers"))
    ProvisionedPollerConfig.add_member(:maximum_pollers, Shapes::ShapeRef.new(shape: MaximumNumberOfPollers, location_name: "MaximumPollers"))
    ProvisionedPollerConfig.add_member(:poller_group_name, Shapes::ShapeRef.new(shape: ProvisionedPollerGroupName, location_name: "PollerGroupName"))
    ProvisionedPollerConfig.struct_class = Types::ProvisionedPollerConfig

    PublishLayerVersionRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    PublishLayerVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PublishLayerVersionRequest.add_member(:content, Shapes::ShapeRef.new(shape: LayerVersionContentInput, required: true, location_name: "Content"))
    PublishLayerVersionRequest.add_member(:compatible_runtimes, Shapes::ShapeRef.new(shape: CompatibleRuntimes, location_name: "CompatibleRuntimes"))
    PublishLayerVersionRequest.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfo, location_name: "LicenseInfo"))
    PublishLayerVersionRequest.add_member(:compatible_architectures, Shapes::ShapeRef.new(shape: CompatibleArchitectures, location_name: "CompatibleArchitectures"))
    PublishLayerVersionRequest.struct_class = Types::PublishLayerVersionRequest

    PublishLayerVersionResponse.add_member(:content, Shapes::ShapeRef.new(shape: LayerVersionContentOutput, location_name: "Content"))
    PublishLayerVersionResponse.add_member(:layer_arn, Shapes::ShapeRef.new(shape: LayerArn, location_name: "LayerArn"))
    PublishLayerVersionResponse.add_member(:layer_version_arn, Shapes::ShapeRef.new(shape: LayerVersionArn, location_name: "LayerVersionArn"))
    PublishLayerVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PublishLayerVersionResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedDate"))
    PublishLayerVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: LayerVersionNumber, location_name: "Version"))
    PublishLayerVersionResponse.add_member(:compatible_runtimes, Shapes::ShapeRef.new(shape: CompatibleRuntimes, location_name: "CompatibleRuntimes"))
    PublishLayerVersionResponse.add_member(:license_info, Shapes::ShapeRef.new(shape: LicenseInfo, location_name: "LicenseInfo"))
    PublishLayerVersionResponse.add_member(:compatible_architectures, Shapes::ShapeRef.new(shape: CompatibleArchitectures, location_name: "CompatibleArchitectures"))
    PublishLayerVersionResponse.struct_class = Types::PublishLayerVersionResponse

    PublishVersionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PublishVersionRequest.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "CodeSha256"))
    PublishVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PublishVersionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    PublishVersionRequest.add_member(:publish_to, Shapes::ShapeRef.new(shape: FunctionVersionLatestPublished, location_name: "PublishTo"))
    PublishVersionRequest.struct_class = Types::PublishVersionRequest

    PutFunctionCodeSigningConfigRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location_name: "CodeSigningConfigArn"))
    PutFunctionCodeSigningConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionCodeSigningConfigRequest.struct_class = Types::PutFunctionCodeSigningConfigRequest

    PutFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location_name: "CodeSigningConfigArn"))
    PutFunctionCodeSigningConfigResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "FunctionName"))
    PutFunctionCodeSigningConfigResponse.struct_class = Types::PutFunctionCodeSigningConfigResponse

    PutFunctionConcurrencyRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionConcurrencyRequest.add_member(:reserved_concurrent_executions, Shapes::ShapeRef.new(shape: ReservedConcurrentExecutions, required: true, location_name: "ReservedConcurrentExecutions"))
    PutFunctionConcurrencyRequest.struct_class = Types::PutFunctionConcurrencyRequest

    PutFunctionEventInvokeConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionEventInvokeConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    PutFunctionEventInvokeConfigRequest.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    PutFunctionEventInvokeConfigRequest.struct_class = Types::PutFunctionEventInvokeConfigRequest

    PutFunctionRecursionConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: UnqualifiedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionRecursionConfigRequest.add_member(:recursive_loop, Shapes::ShapeRef.new(shape: RecursiveLoop, required: true, location_name: "RecursiveLoop"))
    PutFunctionRecursionConfigRequest.struct_class = Types::PutFunctionRecursionConfigRequest

    PutFunctionRecursionConfigResponse.add_member(:recursive_loop, Shapes::ShapeRef.new(shape: RecursiveLoop, location_name: "RecursiveLoop"))
    PutFunctionRecursionConfigResponse.struct_class = Types::PutFunctionRecursionConfigResponse

    PutFunctionScalingConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: UnqualifiedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutFunctionScalingConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: PublishedFunctionQualifier, required: true, location: "querystring", location_name: "Qualifier"))
    PutFunctionScalingConfigRequest.add_member(:function_scaling_config, Shapes::ShapeRef.new(shape: FunctionScalingConfig, location_name: "FunctionScalingConfig"))
    PutFunctionScalingConfigRequest.struct_class = Types::PutFunctionScalingConfigRequest

    PutFunctionScalingConfigResponse.add_member(:function_state, Shapes::ShapeRef.new(shape: State, location_name: "FunctionState"))
    PutFunctionScalingConfigResponse.struct_class = Types::PutFunctionScalingConfigResponse

    PutProvisionedConcurrencyConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutProvisionedConcurrencyConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: Qualifier, required: true, location: "querystring", location_name: "Qualifier"))
    PutProvisionedConcurrencyConfigRequest.add_member(:provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "ProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigRequest.struct_class = Types::PutProvisionedConcurrencyConfigRequest

    PutProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "RequestedProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AvailableProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "AllocatedProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedConcurrencyStatusEnum, location_name: "Status"))
    PutProvisionedConcurrencyConfigResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    PutProvisionedConcurrencyConfigResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    PutProvisionedConcurrencyConfigResponse.struct_class = Types::PutProvisionedConcurrencyConfigResponse

    PutRuntimeManagementConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    PutRuntimeManagementConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    PutRuntimeManagementConfigRequest.add_member(:update_runtime_on, Shapes::ShapeRef.new(shape: UpdateRuntimeOn, required: true, location_name: "UpdateRuntimeOn"))
    PutRuntimeManagementConfigRequest.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeVersionArn, location_name: "RuntimeVersionArn"))
    PutRuntimeManagementConfigRequest.struct_class = Types::PutRuntimeManagementConfigRequest

    PutRuntimeManagementConfigResponse.add_member(:update_runtime_on, Shapes::ShapeRef.new(shape: UpdateRuntimeOn, required: true, location_name: "UpdateRuntimeOn"))
    PutRuntimeManagementConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    PutRuntimeManagementConfigResponse.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeVersionArn, location_name: "RuntimeVersionArn"))
    PutRuntimeManagementConfigResponse.struct_class = Types::PutRuntimeManagementConfigResponse

    Queues.member = Shapes::ShapeRef.new(shape: Queue)

    RecursiveInvocationException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    RecursiveInvocationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    RecursiveInvocationException.struct_class = Types::RecursiveInvocationException

    RemoveLayerVersionPermissionRequest.add_member(:layer_name, Shapes::ShapeRef.new(shape: LayerName, required: true, location: "uri", location_name: "LayerName"))
    RemoveLayerVersionPermissionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: LayerVersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    RemoveLayerVersionPermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location: "uri", location_name: "StatementId"))
    RemoveLayerVersionPermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "RevisionId"))
    RemoveLayerVersionPermissionRequest.struct_class = Types::RemoveLayerVersionPermissionRequest

    RemovePermissionRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    RemovePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: NamespacedStatementId, required: true, location: "uri", location_name: "StatementId"))
    RemovePermissionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    RemovePermissionRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "RevisionId"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    RequestTooLargeException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    RequestTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestTooLargeException.struct_class = Types::RequestTooLargeException

    ResourceConflictException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceInUseException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotReadyException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotReadyException.struct_class = Types::ResourceNotReadyException

    RetryDetails.add_member(:current_attempt, Shapes::ShapeRef.new(shape: AttemptCount, location_name: "CurrentAttempt"))
    RetryDetails.add_member(:next_attempt_delay_seconds, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "NextAttemptDelaySeconds"))
    RetryDetails.struct_class = Types::RetryDetails

    RuntimeVersionConfig.add_member(:runtime_version_arn, Shapes::ShapeRef.new(shape: RuntimeVersionArn, location_name: "RuntimeVersionArn"))
    RuntimeVersionConfig.add_member(:error, Shapes::ShapeRef.new(shape: RuntimeVersionError, location_name: "Error"))
    RuntimeVersionConfig.struct_class = Types::RuntimeVersionConfig

    RuntimeVersionError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    RuntimeVersionError.add_member(:message, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Message"))
    RuntimeVersionError.struct_class = Types::RuntimeVersionError

    ScalingConfig.add_member(:maximum_concurrency, Shapes::ShapeRef.new(shape: MaximumConcurrency, location_name: "MaximumConcurrency"))
    ScalingConfig.struct_class = Types::ScalingConfig

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SelfManagedEventSource.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    SelfManagedEventSource.struct_class = Types::SelfManagedEventSource

    SelfManagedKafkaEventSourceConfig.add_member(:consumer_group_id, Shapes::ShapeRef.new(shape: URI, location_name: "ConsumerGroupId"))
    SelfManagedKafkaEventSourceConfig.add_member(:schema_registry_config, Shapes::ShapeRef.new(shape: KafkaSchemaRegistryConfig, location_name: "SchemaRegistryConfig"))
    SelfManagedKafkaEventSourceConfig.struct_class = Types::SelfManagedKafkaEventSourceConfig

    SendDurableExecutionCallbackFailureRequest.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackId, required: true, location: "uri", location_name: "CallbackId"))
    SendDurableExecutionCallbackFailureRequest.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    SendDurableExecutionCallbackFailureRequest.struct_class = Types::SendDurableExecutionCallbackFailureRequest
    SendDurableExecutionCallbackFailureRequest[:payload] = :error
    SendDurableExecutionCallbackFailureRequest[:payload_member] = SendDurableExecutionCallbackFailureRequest.member(:error)

    SendDurableExecutionCallbackFailureResponse.struct_class = Types::SendDurableExecutionCallbackFailureResponse

    SendDurableExecutionCallbackHeartbeatRequest.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackId, required: true, location: "uri", location_name: "CallbackId"))
    SendDurableExecutionCallbackHeartbeatRequest.struct_class = Types::SendDurableExecutionCallbackHeartbeatRequest

    SendDurableExecutionCallbackHeartbeatResponse.struct_class = Types::SendDurableExecutionCallbackHeartbeatResponse

    SendDurableExecutionCallbackSuccessRequest.add_member(:callback_id, Shapes::ShapeRef.new(shape: CallbackId, required: true, location: "uri", location_name: "CallbackId"))
    SendDurableExecutionCallbackSuccessRequest.add_member(:result, Shapes::ShapeRef.new(shape: BinaryOperationPayload, location_name: "Result"))
    SendDurableExecutionCallbackSuccessRequest.struct_class = Types::SendDurableExecutionCallbackSuccessRequest
    SendDurableExecutionCallbackSuccessRequest[:payload] = :result
    SendDurableExecutionCallbackSuccessRequest[:payload_member] = SendDurableExecutionCallbackSuccessRequest.member(:result)

    SendDurableExecutionCallbackSuccessResponse.struct_class = Types::SendDurableExecutionCallbackSuccessResponse

    SerializedRequestEntityTooLargeException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    SerializedRequestEntityTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    SerializedRequestEntityTooLargeException.struct_class = Types::SerializedRequestEntityTooLargeException

    ServiceException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    SigningProfileVersionArns.member = Shapes::ShapeRef.new(shape: Arn)

    SnapStart.add_member(:apply_on, Shapes::ShapeRef.new(shape: SnapStartApplyOn, location_name: "ApplyOn"))
    SnapStart.struct_class = Types::SnapStart

    SnapStartException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    SnapStartException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SnapStartException.struct_class = Types::SnapStartException

    SnapStartNotReadyException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    SnapStartNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SnapStartNotReadyException.struct_class = Types::SnapStartNotReadyException

    SnapStartResponse.add_member(:apply_on, Shapes::ShapeRef.new(shape: SnapStartApplyOn, location_name: "ApplyOn"))
    SnapStartResponse.add_member(:optimization_status, Shapes::ShapeRef.new(shape: SnapStartOptimizationStatus, location_name: "OptimizationStatus"))
    SnapStartResponse.struct_class = Types::SnapStartResponse

    SnapStartTimeoutException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    SnapStartTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SnapStartTimeoutException.struct_class = Types::SnapStartTimeoutException

    SourceAccessConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: SourceAccessType, location_name: "Type"))
    SourceAccessConfiguration.add_member(:uri, Shapes::ShapeRef.new(shape: URI, location_name: "URI"))
    SourceAccessConfiguration.struct_class = Types::SourceAccessConfiguration

    SourceAccessConfigurations.member = Shapes::ShapeRef.new(shape: SourceAccessConfiguration)

    StackTraceEntries.member = Shapes::ShapeRef.new(shape: StackTraceEntry)

    StepDetails.add_member(:attempt, Shapes::ShapeRef.new(shape: AttemptCount, location_name: "Attempt"))
    StepDetails.add_member(:next_attempt_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "NextAttemptTimestamp"))
    StepDetails.add_member(:result, Shapes::ShapeRef.new(shape: OperationPayload, location_name: "Result"))
    StepDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    StepDetails.struct_class = Types::StepDetails

    StepFailedDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, required: true, location_name: "Error"))
    StepFailedDetails.add_member(:retry_details, Shapes::ShapeRef.new(shape: RetryDetails, required: true, location_name: "RetryDetails"))
    StepFailedDetails.struct_class = Types::StepFailedDetails

    StepOptions.add_member(:next_attempt_delay_seconds, Shapes::ShapeRef.new(shape: StepOptionsNextAttemptDelaySecondsInteger, location_name: "NextAttemptDelaySeconds"))
    StepOptions.struct_class = Types::StepOptions

    StepStartedDetails.struct_class = Types::StepStartedDetails

    StepSucceededDetails.add_member(:result, Shapes::ShapeRef.new(shape: EventResult, required: true, location_name: "Result"))
    StepSucceededDetails.add_member(:retry_details, Shapes::ShapeRef.new(shape: RetryDetails, required: true, location_name: "RetryDetails"))
    StepSucceededDetails.struct_class = Types::StepSucceededDetails

    StopDurableExecutionRequest.add_member(:durable_execution_arn, Shapes::ShapeRef.new(shape: DurableExecutionArn, required: true, location: "uri", location_name: "DurableExecutionArn"))
    StopDurableExecutionRequest.add_member(:error, Shapes::ShapeRef.new(shape: ErrorObject, location_name: "Error"))
    StopDurableExecutionRequest.struct_class = Types::StopDurableExecutionRequest
    StopDurableExecutionRequest[:payload] = :error
    StopDurableExecutionRequest[:payload_member] = StopDurableExecutionRequest.member(:error)

    StopDurableExecutionResponse.add_member(:stop_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "StopTimestamp"))
    StopDurableExecutionResponse.struct_class = Types::StopDurableExecutionResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIPAddressLimitReachedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    SubnetIPAddressLimitReachedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SubnetIPAddressLimitReachedException.struct_class = Types::SubnetIPAddressLimitReachedException

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TagsError.add_member(:error_code, Shapes::ShapeRef.new(shape: TagsErrorCode, required: true, location_name: "ErrorCode"))
    TagsError.add_member(:message, Shapes::ShapeRef.new(shape: TagsErrorMessage, required: true, location_name: "Message"))
    TagsError.struct_class = Types::TagsError

    TargetTrackingScalingPolicy.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: CapacityProviderPredefinedMetricType, required: true, location_name: "PredefinedMetricType"))
    TargetTrackingScalingPolicy.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricTargetValue, required: true, location_name: "TargetValue"))
    TargetTrackingScalingPolicy.struct_class = Types::TargetTrackingScalingPolicy

    TenancyConfig.add_member(:tenant_isolation_mode, Shapes::ShapeRef.new(shape: TenantIsolationMode, required: true, location_name: "TenantIsolationMode"))
    TenancyConfig.struct_class = Types::TenancyConfig

    TooManyRequestsException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Retry-After"))
    TooManyRequestsException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.add_member(:reason, Shapes::ShapeRef.new(shape: ThrottleReason, location_name: "Reason"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Topics.member = Shapes::ShapeRef.new(shape: Topic)

    TraceHeader.add_member(:x_amzn_trace_id, Shapes::ShapeRef.new(shape: XAmznTraceId, location_name: "XAmznTraceId"))
    TraceHeader.struct_class = Types::TraceHeader

    TracingConfig.add_member(:mode, Shapes::ShapeRef.new(shape: TracingMode, location_name: "Mode"))
    TracingConfig.struct_class = Types::TracingConfig

    TracingConfigResponse.add_member(:mode, Shapes::ShapeRef.new(shape: TracingMode, location_name: "Mode"))
    TracingConfigResponse.struct_class = Types::TracingConfigResponse

    UnsupportedMediaTypeException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    UnsupportedMediaTypeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedMediaTypeException.struct_class = Types::UnsupportedMediaTypeException

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAliasRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateAliasRequest.add_member(:name, Shapes::ShapeRef.new(shape: Alias, required: true, location: "uri", location_name: "Name"))
    UpdateAliasRequest.add_member(:function_version, Shapes::ShapeRef.new(shape: VersionWithLatestPublished, location_name: "FunctionVersion"))
    UpdateAliasRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateAliasRequest.add_member(:routing_config, Shapes::ShapeRef.new(shape: AliasRoutingConfiguration, location_name: "RoutingConfig"))
    UpdateAliasRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateAliasRequest.struct_class = Types::UpdateAliasRequest

    UpdateCapacityProviderRequest.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location: "uri", location_name: "CapacityProviderName"))
    UpdateCapacityProviderRequest.add_member(:capacity_provider_scaling_config, Shapes::ShapeRef.new(shape: CapacityProviderScalingConfig, location_name: "CapacityProviderScalingConfig"))
    UpdateCapacityProviderRequest.struct_class = Types::UpdateCapacityProviderRequest

    UpdateCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, required: true, location_name: "CapacityProvider"))
    UpdateCapacityProviderResponse.struct_class = Types::UpdateCapacityProviderResponse

    UpdateCodeSigningConfigRequest.add_member(:code_signing_config_arn, Shapes::ShapeRef.new(shape: CodeSigningConfigArn, required: true, location: "uri", location_name: "CodeSigningConfigArn"))
    UpdateCodeSigningConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateCodeSigningConfigRequest.add_member(:allowed_publishers, Shapes::ShapeRef.new(shape: AllowedPublishers, location_name: "AllowedPublishers"))
    UpdateCodeSigningConfigRequest.add_member(:code_signing_policies, Shapes::ShapeRef.new(shape: CodeSigningPolicies, location_name: "CodeSigningPolicies"))
    UpdateCodeSigningConfigRequest.struct_class = Types::UpdateCodeSigningConfigRequest

    UpdateCodeSigningConfigResponse.add_member(:code_signing_config, Shapes::ShapeRef.new(shape: CodeSigningConfig, required: true, location_name: "CodeSigningConfig"))
    UpdateCodeSigningConfigResponse.struct_class = Types::UpdateCodeSigningConfigResponse

    UpdateEventSourceMappingRequest.add_member(:uuid, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "UUID"))
    UpdateEventSourceMappingRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, location_name: "FunctionName"))
    UpdateEventSourceMappingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    UpdateEventSourceMappingRequest.add_member(:batch_size, Shapes::ShapeRef.new(shape: BatchSize, location_name: "BatchSize"))
    UpdateEventSourceMappingRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "FilterCriteria"))
    UpdateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, Shapes::ShapeRef.new(shape: MaximumBatchingWindowInSeconds, location_name: "MaximumBatchingWindowInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    UpdateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumRecordAgeInSeconds, location_name: "MaximumRecordAgeInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, Shapes::ShapeRef.new(shape: BisectBatchOnFunctionError, location_name: "BisectBatchOnFunctionError"))
    UpdateEventSourceMappingRequest.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttemptsEventSourceMapping, location_name: "MaximumRetryAttempts"))
    UpdateEventSourceMappingRequest.add_member(:parallelization_factor, Shapes::ShapeRef.new(shape: ParallelizationFactor, location_name: "ParallelizationFactor"))
    UpdateEventSourceMappingRequest.add_member(:source_access_configurations, Shapes::ShapeRef.new(shape: SourceAccessConfigurations, location_name: "SourceAccessConfigurations"))
    UpdateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, Shapes::ShapeRef.new(shape: TumblingWindowInSeconds, location_name: "TumblingWindowInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:function_response_types, Shapes::ShapeRef.new(shape: FunctionResponseTypeList, location_name: "FunctionResponseTypes"))
    UpdateEventSourceMappingRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: ScalingConfig, location_name: "ScalingConfig"))
    UpdateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: AmazonManagedKafkaEventSourceConfig, location_name: "AmazonManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, Shapes::ShapeRef.new(shape: SelfManagedKafkaEventSourceConfig, location_name: "SelfManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:document_db_event_source_config, Shapes::ShapeRef.new(shape: DocumentDBEventSourceConfig, location_name: "DocumentDBEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    UpdateEventSourceMappingRequest.add_member(:metrics_config, Shapes::ShapeRef.new(shape: EventSourceMappingMetricsConfig, location_name: "MetricsConfig"))
    UpdateEventSourceMappingRequest.add_member(:provisioned_poller_config, Shapes::ShapeRef.new(shape: ProvisionedPollerConfig, location_name: "ProvisionedPollerConfig"))
    UpdateEventSourceMappingRequest.struct_class = Types::UpdateEventSourceMappingRequest

    UpdateFunctionCodeRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionCodeRequest.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    UpdateFunctionCodeRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    UpdateFunctionCodeRequest.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    UpdateFunctionCodeRequest.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "S3ObjectVersion"))
    UpdateFunctionCodeRequest.add_member(:image_uri, Shapes::ShapeRef.new(shape: String, location_name: "ImageUri"))
    UpdateFunctionCodeRequest.add_member(:publish, Shapes::ShapeRef.new(shape: Boolean, location_name: "Publish"))
    UpdateFunctionCodeRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "DryRun"))
    UpdateFunctionCodeRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateFunctionCodeRequest.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitecturesList, location_name: "Architectures"))
    UpdateFunctionCodeRequest.add_member(:source_kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "SourceKMSKeyArn"))
    UpdateFunctionCodeRequest.add_member(:publish_to, Shapes::ShapeRef.new(shape: FunctionVersionLatestPublished, location_name: "PublishTo"))
    UpdateFunctionCodeRequest.struct_class = Types::UpdateFunctionCodeRequest

    UpdateFunctionConfigurationRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionConfigurationRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "Role"))
    UpdateFunctionConfigurationRequest.add_member(:handler, Shapes::ShapeRef.new(shape: Handler, location_name: "Handler"))
    UpdateFunctionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateFunctionConfigurationRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: Timeout, location_name: "Timeout"))
    UpdateFunctionConfigurationRequest.add_member(:memory_size, Shapes::ShapeRef.new(shape: MemorySize, location_name: "MemorySize"))
    UpdateFunctionConfigurationRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "VpcConfig"))
    UpdateFunctionConfigurationRequest.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "Environment"))
    UpdateFunctionConfigurationRequest.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "Runtime"))
    UpdateFunctionConfigurationRequest.add_member(:dead_letter_config, Shapes::ShapeRef.new(shape: DeadLetterConfig, location_name: "DeadLetterConfig"))
    UpdateFunctionConfigurationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KMSKeyArn, location_name: "KMSKeyArn"))
    UpdateFunctionConfigurationRequest.add_member(:tracing_config, Shapes::ShapeRef.new(shape: TracingConfig, location_name: "TracingConfig"))
    UpdateFunctionConfigurationRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "RevisionId"))
    UpdateFunctionConfigurationRequest.add_member(:layers, Shapes::ShapeRef.new(shape: LayerList, location_name: "Layers"))
    UpdateFunctionConfigurationRequest.add_member(:file_system_configs, Shapes::ShapeRef.new(shape: FileSystemConfigList, location_name: "FileSystemConfigs"))
    UpdateFunctionConfigurationRequest.add_member(:image_config, Shapes::ShapeRef.new(shape: ImageConfig, location_name: "ImageConfig"))
    UpdateFunctionConfigurationRequest.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "EphemeralStorage"))
    UpdateFunctionConfigurationRequest.add_member(:snap_start, Shapes::ShapeRef.new(shape: SnapStart, location_name: "SnapStart"))
    UpdateFunctionConfigurationRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "LoggingConfig"))
    UpdateFunctionConfigurationRequest.add_member(:capacity_provider_config, Shapes::ShapeRef.new(shape: CapacityProviderConfig, location_name: "CapacityProviderConfig"))
    UpdateFunctionConfigurationRequest.add_member(:durable_config, Shapes::ShapeRef.new(shape: DurableConfig, location_name: "DurableConfig"))
    UpdateFunctionConfigurationRequest.struct_class = Types::UpdateFunctionConfigurationRequest

    UpdateFunctionEventInvokeConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: NamespacedFunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: NumericLatestPublishedOrAliasQualifier, location: "querystring", location_name: "Qualifier"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, Shapes::ShapeRef.new(shape: MaximumRetryAttempts, location_name: "MaximumRetryAttempts"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, Shapes::ShapeRef.new(shape: MaximumEventAgeInSeconds, location_name: "MaximumEventAgeInSeconds"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "DestinationConfig"))
    UpdateFunctionEventInvokeConfigRequest.struct_class = Types::UpdateFunctionEventInvokeConfigRequest

    UpdateFunctionUrlConfigRequest.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location: "uri", location_name: "FunctionName"))
    UpdateFunctionUrlConfigRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: FunctionUrlQualifier, location: "querystring", location_name: "Qualifier"))
    UpdateFunctionUrlConfigRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, location_name: "AuthType"))
    UpdateFunctionUrlConfigRequest.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    UpdateFunctionUrlConfigRequest.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    UpdateFunctionUrlConfigRequest.struct_class = Types::UpdateFunctionUrlConfigRequest

    UpdateFunctionUrlConfigResponse.add_member(:function_url, Shapes::ShapeRef.new(shape: FunctionUrl, required: true, location_name: "FunctionUrl"))
    UpdateFunctionUrlConfigResponse.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArn, required: true, location_name: "FunctionArn"))
    UpdateFunctionUrlConfigResponse.add_member(:auth_type, Shapes::ShapeRef.new(shape: FunctionUrlAuthType, required: true, location_name: "AuthType"))
    UpdateFunctionUrlConfigResponse.add_member(:cors, Shapes::ShapeRef.new(shape: Cors, location_name: "Cors"))
    UpdateFunctionUrlConfigResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    UpdateFunctionUrlConfigResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastModifiedTime"))
    UpdateFunctionUrlConfigResponse.add_member(:invoke_mode, Shapes::ShapeRef.new(shape: InvokeMode, location_name: "InvokeMode"))
    UpdateFunctionUrlConfigResponse.struct_class = Types::UpdateFunctionUrlConfigResponse

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfig.add_member(:ipv_6_allowed_for_dual_stack, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Ipv6AllowedForDualStack"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcConfigResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    VpcConfigResponse.add_member(:ipv_6_allowed_for_dual_stack, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Ipv6AllowedForDualStack"))
    VpcConfigResponse.struct_class = Types::VpcConfigResponse

    WaitCancelledDetails.add_member(:error, Shapes::ShapeRef.new(shape: EventError, location_name: "Error"))
    WaitCancelledDetails.struct_class = Types::WaitCancelledDetails

    WaitDetails.add_member(:scheduled_end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, location_name: "ScheduledEndTimestamp"))
    WaitDetails.struct_class = Types::WaitDetails

    WaitOptions.add_member(:wait_seconds, Shapes::ShapeRef.new(shape: WaitOptionsWaitSecondsInteger, location_name: "WaitSeconds"))
    WaitOptions.struct_class = Types::WaitOptions

    WaitStartedDetails.add_member(:duration, Shapes::ShapeRef.new(shape: DurationSeconds, required: true, location_name: "Duration"))
    WaitStartedDetails.add_member(:scheduled_end_timestamp, Shapes::ShapeRef.new(shape: ExecutionTimestamp, required: true, location_name: "ScheduledEndTimestamp"))
    WaitStartedDetails.struct_class = Types::WaitStartedDetails

    WaitSucceededDetails.add_member(:duration, Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "Duration"))
    WaitSucceededDetails.struct_class = Types::WaitSucceededDetails


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-03-31"

      api.metadata = {
        "apiVersion" => "2015-03-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Lambda",
        "serviceId" => "Lambda",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-2015-03-31",
      }

      api.add_operation(:add_layer_version_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddLayerVersionPermission"
        o.http_method = "POST"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy"
        o.input = Shapes::ShapeRef.new(shape: AddLayerVersionPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AddLayerVersionPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:add_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddPermission"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy"
        o.input = Shapes::ShapeRef.new(shape: AddPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AddPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:checkpoint_durable_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckpointDurableExecution"
        o.http_method = "POST"
        o.http_request_uri = "/2025-12-01/durable-executions/{DurableExecutionArn}/checkpoint"
        o.input = Shapes::ShapeRef.new(shape: CheckpointDurableExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckpointDurableExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCapacityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/2025-11-30/capacity-providers"
        o.input = Shapes::ShapeRef.new(shape: CreateCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityProviderLimitExceededException)
      end)

      api.add_operation(:create_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeSigningConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2020-04-22/code-signing-configs"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
      end)

      api.add_operation(:create_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSourceMapping"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/event-source-mappings"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunction"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCodeSignatureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeVerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeSigningConfigNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FunctionVersionsPerCapacityProviderLimitExceededException)
      end)

      api.add_operation(:create_function_url_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFunctionUrlConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2021-10-31/functions/{FunctionName}/url"
        o.input = Shapes::ShapeRef.new(shape: CreateFunctionUrlConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFunctionUrlConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapacityProvider"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-11-30/capacity-providers/{CapacityProviderName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeSigningConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSourceMapping"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunction"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_function_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionCodeSigningConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2020-06-30/functions/{FunctionName}/code-signing-config"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeSigningConfigNotFoundException)
      end)

      api.add_operation(:delete_function_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionConcurrency"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-10-31/functions/{FunctionName}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_function_event_invoke_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionEventInvokeConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2019-09-25/functions/{FunctionName}/event-invoke-config"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionEventInvokeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_function_url_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFunctionUrlConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2021-10-31/functions/{FunctionName}/url"
        o.input = Shapes::ShapeRef.new(shape: DeleteFunctionUrlConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_layer_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLayerVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLayerVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_provisioned_concurrency_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisionedConcurrencyConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisionedConcurrencyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/2016-08-19/account-settings"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlias"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapacityProvider"
        o.http_method = "GET"
        o.http_request_uri = "/2025-11-30/capacity-providers/{CapacityProviderName}"
        o.input = Shapes::ShapeRef.new(shape: GetCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeSigningConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_durable_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDurableExecution"
        o.http_method = "GET"
        o.http_request_uri = "/2025-12-01/durable-executions/{DurableExecutionArn}"
        o.input = Shapes::ShapeRef.new(shape: GetDurableExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDurableExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_durable_execution_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDurableExecutionHistory"
        o.http_method = "GET"
        o.http_request_uri = "/2025-12-01/durable-executions/{DurableExecutionArn}/history"
        o.input = Shapes::ShapeRef.new(shape: GetDurableExecutionHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDurableExecutionHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_durable_execution_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDurableExecutionState"
        o.http_method = "GET"
        o.http_request_uri = "/2025-12-01/durable-executions/{DurableExecutionArn}/state"
        o.input = Shapes::ShapeRef.new(shape: GetDurableExecutionStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDurableExecutionStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:get_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventSourceMapping"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: GetEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionCodeSigningConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2020-06-30/functions/{FunctionName}/code-signing-config"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionConcurrency"
        o.http_method = "GET"
        o.http_request_uri = "/2019-09-30/functions/{FunctionName}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionConcurrencyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_event_invoke_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionEventInvokeConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2019-09-25/functions/{FunctionName}/event-invoke-config"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionEventInvokeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionEventInvokeConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_recursion_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionRecursionConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2024-08-31/functions/{FunctionName}/recursion-config"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionRecursionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionRecursionConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_scaling_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionScalingConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2025-11-30/functions/{FunctionName}/function-scaling-config"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionScalingConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionScalingConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_function_url_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFunctionUrlConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2021-10-31/functions/{FunctionName}/url"
        o.input = Shapes::ShapeRef.new(shape: GetFunctionUrlConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFunctionUrlConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_layer_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLayerVersion"
        o.http_method = "GET"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}"
        o.input = Shapes::ShapeRef.new(shape: GetLayerVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLayerVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_layer_version_by_arn, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLayerVersionByArn"
        o.http_method = "GET"
        o.http_request_uri = "/2018-10-31/layers?find=LayerVersion"
        o.input = Shapes::ShapeRef.new(shape: GetLayerVersionByArnRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLayerVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_layer_version_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLayerVersionPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetLayerVersionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLayerVersionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_provisioned_concurrency_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProvisionedConcurrencyConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
        o.input = Shapes::ShapeRef.new(shape: GetProvisionedConcurrencyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProvisionedConcurrencyConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedConcurrencyConfigNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_runtime_management_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRuntimeManagementConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2021-07-20/functions/{FunctionName}/runtime-management-config"
        o.input = Shapes::ShapeRef.new(shape: GetRuntimeManagementConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRuntimeManagementConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invoke, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Invoke"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: InvocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupIDException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: EC2ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountConnectivityException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetIPAddressLimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedMediaTypeException)
        o.errors << Shapes::ShapeRef.new(shape: SerializedRequestEntityTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuntimeException)
        o.errors << Shapes::ShapeRef.new(shape: NoPublishedVersionException)
        o.errors << Shapes::ShapeRef.new(shape: EC2UnexpectedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetIDException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: EC2AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EFSIOException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ENILimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartException)
        o.errors << Shapes::ShapeRef.new(shape: RecursiveInvocationException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
        o.errors << Shapes::ShapeRef.new(shape: DurableExecutionAlreadyStartedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidZipFileException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountFailureException)
      end)

      api.add_operation(:invoke_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAsync"
        o.http_method = "POST"
        o.http_request_uri = "/2014-11-13/functions/{FunctionName}/invoke-async"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: InvokeAsyncRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAsyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuntimeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
      end)

      api.add_operation(:invoke_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/2021-11-15/functions/{FunctionName}/response-streaming-invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeWithResponseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeWithResponseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSecurityGroupIDException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: EC2ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountConnectivityException)
        o.errors << Shapes::ShapeRef.new(shape: SubnetIPAddressLimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedMediaTypeException)
        o.errors << Shapes::ShapeRef.new(shape: SerializedRequestEntityTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRuntimeException)
        o.errors << Shapes::ShapeRef.new(shape: NoPublishedVersionException)
        o.errors << Shapes::ShapeRef.new(shape: EC2UnexpectedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnetIDException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: EC2AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EFSIOException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ENILimitReachedException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: SnapStartException)
        o.errors << Shapes::ShapeRef.new(shape: RecursiveInvocationException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestContentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidZipFileException)
        o.errors << Shapes::ShapeRef.new(shape: EFSMountFailureException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_capacity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCapacityProviders"
        o.http_method = "GET"
        o.http_request_uri = "/2025-11-30/capacity-providers"
        o.input = Shapes::ShapeRef.new(shape: ListCapacityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCapacityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_code_signing_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeSigningConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/2020-04-22/code-signing-configs"
        o.input = Shapes::ShapeRef.new(shape: ListCodeSigningConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeSigningConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_durable_executions_by_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDurableExecutionsByFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2025-12-01/functions/{FunctionName}/durable-executions"
        o.input = Shapes::ShapeRef.new(shape: ListDurableExecutionsByFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDurableExecutionsByFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_event_source_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventSourceMappings"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/event-source-mappings"
        o.input = Shapes::ShapeRef.new(shape: ListEventSourceMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventSourceMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_function_event_invoke_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionEventInvokeConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/2019-09-25/functions/{FunctionName}/event-invoke-config/list"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionEventInvokeConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionEventInvokeConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_function_url_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionUrlConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/2021-10-31/functions/{FunctionName}/urls"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionUrlConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionUrlConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_function_versions_by_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionVersionsByCapacityProvider"
        o.http_method = "GET"
        o.http_request_uri = "/2025-11-30/capacity-providers/{CapacityProviderName}/function-versions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionVersionsByCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionVersionsByCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_functions_by_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFunctionsByCodeSigningConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions"
        o.input = Shapes::ShapeRef.new(shape: ListFunctionsByCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFunctionsByCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_layer_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLayerVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListLayerVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLayerVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_layers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLayers"
        o.http_method = "GET"
        o.http_request_uri = "/2018-10-31/layers"
        o.input = Shapes::ShapeRef.new(shape: ListLayersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLayersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_provisioned_concurrency_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisionedConcurrencyConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL"
        o.input = Shapes::ShapeRef.new(shape: ListProvisionedConcurrencyConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProvisionedConcurrencyConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_versions_by_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVersionsByFunction"
        o.http_method = "GET"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListVersionsByFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVersionsByFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:publish_layer_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishLayerVersion"
        o.http_method = "POST"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions"
        o.input = Shapes::ShapeRef.new(shape: PublishLayerVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishLayerVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
      end)

      api.add_operation(:publish_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishVersion"
        o.http_method = "POST"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/versions"
        o.input = Shapes::ShapeRef.new(shape: PublishVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: FunctionVersionsPerCapacityProviderLimitExceededException)
      end)

      api.add_operation(:put_function_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionCodeSigningConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-06-30/functions/{FunctionName}/code-signing-config"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFunctionCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeSigningConfigNotFoundException)
      end)

      api.add_operation(:put_function_concurrency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionConcurrency"
        o.http_method = "PUT"
        o.http_request_uri = "/2017-10-31/functions/{FunctionName}/concurrency"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionConcurrencyRequest)
        o.output = Shapes::ShapeRef.new(shape: Concurrency)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_function_event_invoke_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionEventInvokeConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2019-09-25/functions/{FunctionName}/event-invoke-config"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionEventInvokeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionEventInvokeConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_function_recursion_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionRecursionConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2024-08-31/functions/{FunctionName}/recursion-config"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionRecursionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFunctionRecursionConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_function_scaling_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFunctionScalingConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-11-30/functions/{FunctionName}/function-scaling-config"
        o.input = Shapes::ShapeRef.new(shape: PutFunctionScalingConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFunctionScalingConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_provisioned_concurrency_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProvisionedConcurrencyConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
        o.input = Shapes::ShapeRef.new(shape: PutProvisionedConcurrencyConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProvisionedConcurrencyConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_runtime_management_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRuntimeManagementConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-07-20/functions/{FunctionName}/runtime-management-config"
        o.input = Shapes::ShapeRef.new(shape: PutRuntimeManagementConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRuntimeManagementConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:remove_layer_version_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveLayerVersionPermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}"
        o.input = Shapes::ShapeRef.new(shape: RemoveLayerVersionPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/policy/{StatementId}"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:send_durable_execution_callback_failure, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDurableExecutionCallbackFailure"
        o.http_method = "POST"
        o.http_request_uri = "/2025-12-01/durable-execution-callbacks/{CallbackId}/fail"
        o.input = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackFailureRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackFailureResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CallbackTimeoutException)
      end)

      api.add_operation(:send_durable_execution_callback_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDurableExecutionCallbackHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/2025-12-01/durable-execution-callbacks/{CallbackId}/heartbeat"
        o.input = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackHeartbeatRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackHeartbeatResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CallbackTimeoutException)
      end)

      api.add_operation(:send_durable_execution_callback_success, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendDurableExecutionCallbackSuccess"
        o.http_method = "POST"
        o.http_request_uri = "/2025-12-01/durable-execution-callbacks/{CallbackId}/succeed"
        o.input = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackSuccessRequest)
        o.output = Shapes::ShapeRef.new(shape: SendDurableExecutionCallbackSuccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: CallbackTimeoutException)
      end)

      api.add_operation(:stop_durable_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDurableExecution"
        o.http_method = "POST"
        o.http_request_uri = "/2025-12-01/durable-executions/{DurableExecutionArn}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopDurableExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDurableExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AliasConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCapacityProvider"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-11-30/capacity-providers/{CapacityProviderName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_code_signing_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeSigningConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeSigningConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeSigningConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_event_source_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventSourceMapping"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/event-source-mappings/{UUID}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventSourceMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: EventSourceMappingConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_function_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionCode"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/code"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCodeSignatureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeVerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeSigningConfigNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeStorageExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_function_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-03-31/functions/{FunctionName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCodeSignatureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeVerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeSigningConfigNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_function_event_invoke_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionEventInvokeConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2019-09-25/functions/{FunctionName}/event-invoke-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionEventInvokeConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: FunctionEventInvokeConfig)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_function_url_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFunctionUrlConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/2021-10-31/functions/{FunctionName}/url"
        o.input = Shapes::ShapeRef.new(shape: UpdateFunctionUrlConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFunctionUrlConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
