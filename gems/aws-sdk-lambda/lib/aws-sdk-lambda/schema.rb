# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # This module contains a schema composed of shapes used by the client.
  module Schema
    include Smithy::Schema::Shapes

    AccountLimit = StructureShape.new(id: 'com.amazonaws.lambda#AccountLimit')
    AccountUsage = StructureShape.new(id: 'com.amazonaws.lambda#AccountUsage')
    Action = StringShape.new(id: 'com.amazonaws.lambda#Action', traits: {"smithy.api#pattern" => "^(lambda:[*]|lambda:[a-zA-Z]+|[*])$"})
    AddLayerVersionPermissionRequest = StructureShape.new(id: 'com.amazonaws.lambda#AddLayerVersionPermissionRequest', traits: {"smithy.api#input" => {}})
    AddLayerVersionPermissionResponse = StructureShape.new(id: 'com.amazonaws.lambda#AddLayerVersionPermissionResponse', traits: {"smithy.api#output" => {}})
    AddPermissionRequest = StructureShape.new(id: 'com.amazonaws.lambda#AddPermissionRequest', traits: {"smithy.api#input" => {}})
    AddPermissionResponse = StructureShape.new(id: 'com.amazonaws.lambda#AddPermissionResponse', traits: {"smithy.api#output" => {}})
    AdditionalVersion = StringShape.new(id: 'com.amazonaws.lambda#AdditionalVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    AdditionalVersionWeights = MapShape.new(id: 'com.amazonaws.lambda#AdditionalVersionWeights')
    Alias = StringShape.new(id: 'com.amazonaws.lambda#Alias', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9-_]+)$"})
    AliasConfiguration = StructureShape.new(id: 'com.amazonaws.lambda#AliasConfiguration')
    AliasList = ListShape.new(id: 'com.amazonaws.lambda#AliasList')
    AliasRoutingConfiguration = StructureShape.new(id: 'com.amazonaws.lambda#AliasRoutingConfiguration')
    AllowCredentials = BooleanShape.new(id: 'com.amazonaws.lambda#AllowCredentials')
    AllowMethodsList = ListShape.new(id: 'com.amazonaws.lambda#AllowMethodsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    AllowOriginsList = ListShape.new(id: 'com.amazonaws.lambda#AllowOriginsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AllowedPublishers = StructureShape.new(id: 'com.amazonaws.lambda#AllowedPublishers')
    AmazonManagedKafkaEventSourceConfig = StructureShape.new(id: 'com.amazonaws.lambda#AmazonManagedKafkaEventSourceConfig')
    ApplicationLogLevel = EnumShape.new(id: 'com.amazonaws.lambda#ApplicationLogLevel')
    Architecture = EnumShape.new(id: 'com.amazonaws.lambda#Architecture')
    ArchitecturesList = ListShape.new(id: 'com.amazonaws.lambda#ArchitecturesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Arn = StringShape.new(id: 'com.amazonaws.lambda#Arn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    BatchSize = IntegerShape.new(id: 'com.amazonaws.lambda#BatchSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    BisectBatchOnFunctionError = BooleanShape.new(id: 'com.amazonaws.lambda#BisectBatchOnFunctionError')
    Blob = BlobShape.new(id: 'com.amazonaws.lambda#Blob', traits: {"smithy.api#sensitive" => {}})
    BlobStream = BlobShape.new(id: 'com.amazonaws.lambda#BlobStream', traits: {"smithy.api#streaming" => {}})
    Boolean = BooleanShape.new(id: 'com.amazonaws.lambda#Boolean', traits: {"smithy.api#default" => false})
    CodeSigningConfig = StructureShape.new(id: 'com.amazonaws.lambda#CodeSigningConfig')
    CodeSigningConfigArn = StringShape.new(id: 'com.amazonaws.lambda#CodeSigningConfigArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:code-signing-config:csc-[a-z0-9]{17}$"})
    CodeSigningConfigId = StringShape.new(id: 'com.amazonaws.lambda#CodeSigningConfigId', traits: {"smithy.api#pattern" => "^csc-[a-zA-Z0-9-_\\.]{17}$"})
    CodeSigningConfigList = ListShape.new(id: 'com.amazonaws.lambda#CodeSigningConfigList')
    CodeSigningConfigNotFoundException = StructureShape.new(id: 'com.amazonaws.lambda#CodeSigningConfigNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CodeSigningPolicies = StructureShape.new(id: 'com.amazonaws.lambda#CodeSigningPolicies')
    CodeSigningPolicy = EnumShape.new(id: 'com.amazonaws.lambda#CodeSigningPolicy')
    CodeStorageExceededException = StructureShape.new(id: 'com.amazonaws.lambda#CodeStorageExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CodeVerificationFailedException = StructureShape.new(id: 'com.amazonaws.lambda#CodeVerificationFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CollectionName = StringShape.new(id: 'com.amazonaws.lambda#CollectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 57}, "smithy.api#pattern" => "^(^(?!(system\\x2e)))(^[_a-zA-Z0-9])([^$]*)$"})
    CompatibleArchitectures = ListShape.new(id: 'com.amazonaws.lambda#CompatibleArchitectures', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    CompatibleRuntimes = ListShape.new(id: 'com.amazonaws.lambda#CompatibleRuntimes', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    Concurrency = StructureShape.new(id: 'com.amazonaws.lambda#Concurrency')
    Cors = StructureShape.new(id: 'com.amazonaws.lambda#Cors')
    CreateAliasRequest = StructureShape.new(id: 'com.amazonaws.lambda#CreateAliasRequest', traits: {"smithy.api#input" => {}})
    CreateCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#CreateCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    CreateCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#CreateCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    CreateEventSourceMappingRequest = StructureShape.new(id: 'com.amazonaws.lambda#CreateEventSourceMappingRequest', traits: {"smithy.api#input" => {}})
    CreateFunctionRequest = StructureShape.new(id: 'com.amazonaws.lambda#CreateFunctionRequest', traits: {"smithy.api#input" => {}})
    CreateFunctionUrlConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#CreateFunctionUrlConfigRequest', traits: {"smithy.api#input" => {}})
    CreateFunctionUrlConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#CreateFunctionUrlConfigResponse', traits: {"smithy.api#output" => {}})
    DatabaseName = StringShape.new(id: 'com.amazonaws.lambda#DatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[^ /\\.$\\x22]*$"})
    Date = TimestampShape.new(id: 'com.amazonaws.lambda#Date')
    DeadLetterConfig = StructureShape.new(id: 'com.amazonaws.lambda#DeadLetterConfig')
    DeleteAliasRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteAliasRequest', traits: {"smithy.api#input" => {}})
    DeleteCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    DeleteCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#DeleteCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    DeleteEventSourceMappingRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteEventSourceMappingRequest', traits: {"smithy.api#input" => {}})
    DeleteFunctionCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteFunctionCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    DeleteFunctionConcurrencyRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteFunctionConcurrencyRequest', traits: {"smithy.api#input" => {}})
    DeleteFunctionEventInvokeConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteFunctionEventInvokeConfigRequest', traits: {"smithy.api#input" => {}})
    DeleteFunctionRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteFunctionRequest', traits: {"smithy.api#input" => {}})
    DeleteFunctionUrlConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteFunctionUrlConfigRequest', traits: {"smithy.api#input" => {}})
    DeleteLayerVersionRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteLayerVersionRequest', traits: {"smithy.api#input" => {}})
    DeleteProvisionedConcurrencyConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#DeleteProvisionedConcurrencyConfigRequest', traits: {"smithy.api#input" => {}})
    Description = StringShape.new(id: 'com.amazonaws.lambda#Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DestinationArn = StringShape.new(id: 'com.amazonaws.lambda#DestinationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    DestinationConfig = StructureShape.new(id: 'com.amazonaws.lambda#DestinationConfig')
    DocumentDBEventSourceConfig = StructureShape.new(id: 'com.amazonaws.lambda#DocumentDBEventSourceConfig')
    EC2AccessDeniedException = StructureShape.new(id: 'com.amazonaws.lambda#EC2AccessDeniedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EC2ThrottledException = StructureShape.new(id: 'com.amazonaws.lambda#EC2ThrottledException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EC2UnexpectedException = StructureShape.new(id: 'com.amazonaws.lambda#EC2UnexpectedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EFSIOException = StructureShape.new(id: 'com.amazonaws.lambda#EFSIOException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    EFSMountConnectivityException = StructureShape.new(id: 'com.amazonaws.lambda#EFSMountConnectivityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    EFSMountFailureException = StructureShape.new(id: 'com.amazonaws.lambda#EFSMountFailureException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    EFSMountTimeoutException = StructureShape.new(id: 'com.amazonaws.lambda#EFSMountTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ENILimitReachedException = StructureShape.new(id: 'com.amazonaws.lambda#ENILimitReachedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    Enabled = BooleanShape.new(id: 'com.amazonaws.lambda#Enabled')
    EndPointType = EnumShape.new(id: 'com.amazonaws.lambda#EndPointType')
    Endpoint = StringShape.new(id: 'com.amazonaws.lambda#Endpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}$"})
    EndpointLists = ListShape.new(id: 'com.amazonaws.lambda#EndpointLists', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Endpoints = MapShape.new(id: 'com.amazonaws.lambda#Endpoints', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Environment = StructureShape.new(id: 'com.amazonaws.lambda#Environment')
    EnvironmentError = StructureShape.new(id: 'com.amazonaws.lambda#EnvironmentError')
    EnvironmentResponse = StructureShape.new(id: 'com.amazonaws.lambda#EnvironmentResponse')
    EnvironmentVariableName = StringShape.new(id: 'com.amazonaws.lambda#EnvironmentVariableName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])+$", "smithy.api#sensitive" => {}})
    EnvironmentVariableValue = StringShape.new(id: 'com.amazonaws.lambda#EnvironmentVariableValue', traits: {"smithy.api#sensitive" => {}})
    EnvironmentVariables = MapShape.new(id: 'com.amazonaws.lambda#EnvironmentVariables', traits: {"smithy.api#sensitive" => {}})
    EphemeralStorage = StructureShape.new(id: 'com.amazonaws.lambda#EphemeralStorage')
    EphemeralStorageSize = IntegerShape.new(id: 'com.amazonaws.lambda#EphemeralStorageSize', traits: {"smithy.api#range" => {"min" => 512, "max" => 10240}})
    EventSourceMappingArn = StringShape.new(id: 'com.amazonaws.lambda#EventSourceMappingArn', traits: {"smithy.api#length" => {"min" => 85, "max" => 120}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    EventSourceMappingConfiguration = StructureShape.new(id: 'com.amazonaws.lambda#EventSourceMappingConfiguration')
    EventSourceMappingMetric = EnumShape.new(id: 'com.amazonaws.lambda#EventSourceMappingMetric')
    EventSourceMappingMetricList = ListShape.new(id: 'com.amazonaws.lambda#EventSourceMappingMetricList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EventSourceMappingMetricsConfig = StructureShape.new(id: 'com.amazonaws.lambda#EventSourceMappingMetricsConfig')
    EventSourceMappingsList = ListShape.new(id: 'com.amazonaws.lambda#EventSourceMappingsList')
    EventSourcePosition = EnumShape.new(id: 'com.amazonaws.lambda#EventSourcePosition')
    EventSourceToken = StringShape.new(id: 'com.amazonaws.lambda#EventSourceToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    FileSystemArn = StringShape.new(id: 'com.amazonaws.lambda#FileSystemArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:elasticfilesystem:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:access-point/fsap-[a-f0-9]{17}$"})
    FileSystemConfig = StructureShape.new(id: 'com.amazonaws.lambda#FileSystemConfig')
    FileSystemConfigList = ListShape.new(id: 'com.amazonaws.lambda#FileSystemConfigList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Filter = StructureShape.new(id: 'com.amazonaws.lambda#Filter')
    FilterCriteria = StructureShape.new(id: 'com.amazonaws.lambda#FilterCriteria')
    FilterCriteriaError = StructureShape.new(id: 'com.amazonaws.lambda#FilterCriteriaError')
    FilterCriteriaErrorCode = StringShape.new(id: 'com.amazonaws.lambda#FilterCriteriaErrorCode', traits: {"smithy.api#length" => {"min" => 10, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z]+Exception$"})
    FilterCriteriaErrorMessage = StringShape.new(id: 'com.amazonaws.lambda#FilterCriteriaErrorMessage', traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => ".*"})
    FilterList = ListShape.new(id: 'com.amazonaws.lambda#FilterList')
    FullDocument = EnumShape.new(id: 'com.amazonaws.lambda#FullDocument')
    FunctionArn = StringShape.new(id: 'com.amazonaws.lambda#FunctionArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    FunctionArnList = ListShape.new(id: 'com.amazonaws.lambda#FunctionArnList')
    FunctionCode = StructureShape.new(id: 'com.amazonaws.lambda#FunctionCode')
    FunctionCodeLocation = StructureShape.new(id: 'com.amazonaws.lambda#FunctionCodeLocation')
    FunctionConfiguration = StructureShape.new(id: 'com.amazonaws.lambda#FunctionConfiguration')
    FunctionEventInvokeConfig = StructureShape.new(id: 'com.amazonaws.lambda#FunctionEventInvokeConfig')
    FunctionEventInvokeConfigList = ListShape.new(id: 'com.amazonaws.lambda#FunctionEventInvokeConfigList')
    FunctionList = ListShape.new(id: 'com.amazonaws.lambda#FunctionList')
    FunctionName = StringShape.new(id: 'com.amazonaws.lambda#FunctionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    FunctionResponseType = EnumShape.new(id: 'com.amazonaws.lambda#FunctionResponseType')
    FunctionResponseTypeList = ListShape.new(id: 'com.amazonaws.lambda#FunctionResponseTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    FunctionUrl = StringShape.new(id: 'com.amazonaws.lambda#FunctionUrl', traits: {"smithy.api#length" => {"min" => 40, "max" => 100}})
    FunctionUrlAuthType = EnumShape.new(id: 'com.amazonaws.lambda#FunctionUrlAuthType')
    FunctionUrlConfig = StructureShape.new(id: 'com.amazonaws.lambda#FunctionUrlConfig')
    FunctionUrlConfigList = ListShape.new(id: 'com.amazonaws.lambda#FunctionUrlConfigList')
    FunctionUrlQualifier = StringShape.new(id: 'com.amazonaws.lambda#FunctionUrlQualifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^\\$LATEST$)|((?!^[0-9]+$)([a-zA-Z0-9-_]+))$"})
    FunctionVersion = EnumShape.new(id: 'com.amazonaws.lambda#FunctionVersion')
    GetAccountSettingsRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetAccountSettingsRequest', traits: {"smithy.api#input" => {}})
    GetAccountSettingsResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetAccountSettingsResponse', traits: {"smithy.api#output" => {}})
    GetAliasRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetAliasRequest', traits: {"smithy.api#input" => {}})
    GetCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    GetCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    GetEventSourceMappingRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetEventSourceMappingRequest', traits: {"smithy.api#input" => {}})
    GetFunctionCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    GetFunctionCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    GetFunctionConcurrencyRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionConcurrencyRequest', traits: {"smithy.api#input" => {}})
    GetFunctionConcurrencyResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionConcurrencyResponse', traits: {"smithy.api#output" => {}})
    GetFunctionConfigurationRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionConfigurationRequest', traits: {"smithy.api#input" => {}})
    GetFunctionEventInvokeConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionEventInvokeConfigRequest', traits: {"smithy.api#input" => {}})
    GetFunctionRecursionConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionRecursionConfigRequest', traits: {"smithy.api#input" => {}})
    GetFunctionRecursionConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionRecursionConfigResponse', traits: {"smithy.api#output" => {}})
    GetFunctionRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionRequest', traits: {"smithy.api#input" => {}})
    GetFunctionResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionResponse', traits: {"smithy.api#output" => {}})
    GetFunctionUrlConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionUrlConfigRequest', traits: {"smithy.api#input" => {}})
    GetFunctionUrlConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetFunctionUrlConfigResponse', traits: {"smithy.api#output" => {}})
    GetLayerVersionByArnRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetLayerVersionByArnRequest', traits: {"smithy.api#input" => {}})
    GetLayerVersionPolicyRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetLayerVersionPolicyRequest', traits: {"smithy.api#input" => {}})
    GetLayerVersionPolicyResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetLayerVersionPolicyResponse', traits: {"smithy.api#output" => {}})
    GetLayerVersionRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetLayerVersionRequest', traits: {"smithy.api#input" => {}})
    GetLayerVersionResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetLayerVersionResponse')
    GetPolicyRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetPolicyRequest', traits: {"smithy.api#input" => {}})
    GetPolicyResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetPolicyResponse', traits: {"smithy.api#output" => {}})
    GetProvisionedConcurrencyConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetProvisionedConcurrencyConfigRequest', traits: {"smithy.api#input" => {}})
    GetProvisionedConcurrencyConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetProvisionedConcurrencyConfigResponse', traits: {"smithy.api#output" => {}})
    GetRuntimeManagementConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#GetRuntimeManagementConfigRequest', traits: {"smithy.api#input" => {}})
    GetRuntimeManagementConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#GetRuntimeManagementConfigResponse', traits: {"smithy.api#output" => {}})
    Handler = StringShape.new(id: 'com.amazonaws.lambda#Handler', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^\\s]+$"})
    Header = StringShape.new(id: 'com.amazonaws.lambda#Header', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    HeadersList = ListShape.new(id: 'com.amazonaws.lambda#HeadersList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    HttpStatus = IntegerShape.new(id: 'com.amazonaws.lambda#HttpStatus', traits: {"smithy.api#default" => 0})
    ImageConfig = StructureShape.new(id: 'com.amazonaws.lambda#ImageConfig')
    ImageConfigError = StructureShape.new(id: 'com.amazonaws.lambda#ImageConfigError')
    ImageConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#ImageConfigResponse')
    Integer = IntegerShape.new(id: 'com.amazonaws.lambda#Integer', traits: {"smithy.api#default" => 0})
    InvalidCodeSignatureException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidCodeSignatureException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidParameterValueException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestContentException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidRequestContentException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRuntimeException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidRuntimeException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidSecurityGroupIDException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidSecurityGroupIDException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidSubnetIDException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidSubnetIDException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidZipFileException = StructureShape.new(id: 'com.amazonaws.lambda#InvalidZipFileException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvocationRequest = StructureShape.new(id: 'com.amazonaws.lambda#InvocationRequest', traits: {"smithy.api#input" => {}})
    InvocationResponse = StructureShape.new(id: 'com.amazonaws.lambda#InvocationResponse', traits: {"smithy.api#output" => {}})
    InvocationType = EnumShape.new(id: 'com.amazonaws.lambda#InvocationType')
    InvokeAsyncRequest = StructureShape.new(id: 'com.amazonaws.lambda#InvokeAsyncRequest', traits: {"smithy.api#deprecated" => {}, "smithy.api#input" => {}})
    InvokeAsyncResponse = StructureShape.new(id: 'com.amazonaws.lambda#InvokeAsyncResponse', traits: {"smithy.api#deprecated" => {}, "smithy.api#output" => {}})
    InvokeMode = EnumShape.new(id: 'com.amazonaws.lambda#InvokeMode')
    InvokeResponseStreamUpdate = StructureShape.new(id: 'com.amazonaws.lambda#InvokeResponseStreamUpdate')
    InvokeWithResponseStreamCompleteEvent = StructureShape.new(id: 'com.amazonaws.lambda#InvokeWithResponseStreamCompleteEvent')
    InvokeWithResponseStreamRequest = StructureShape.new(id: 'com.amazonaws.lambda#InvokeWithResponseStreamRequest', traits: {"smithy.api#input" => {}})
    InvokeWithResponseStreamResponse = StructureShape.new(id: 'com.amazonaws.lambda#InvokeWithResponseStreamResponse', traits: {"smithy.api#output" => {}})
    InvokeWithResponseStreamResponseEvent = UnionShape.new(id: 'com.amazonaws.lambda#InvokeWithResponseStreamResponseEvent', traits: {"smithy.api#streaming" => {}})
    KMSAccessDeniedException = StructureShape.new(id: 'com.amazonaws.lambda#KMSAccessDeniedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSDisabledException = StructureShape.new(id: 'com.amazonaws.lambda#KMSDisabledException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSInvalidStateException = StructureShape.new(id: 'com.amazonaws.lambda#KMSInvalidStateException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSKeyArn = StringShape.new(id: 'com.amazonaws.lambda#KMSKeyArn', traits: {"smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"})
    KMSNotFoundException = StructureShape.new(id: 'com.amazonaws.lambda#KMSNotFoundException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    LastUpdateStatus = EnumShape.new(id: 'com.amazonaws.lambda#LastUpdateStatus')
    LastUpdateStatusReason = StringShape.new(id: 'com.amazonaws.lambda#LastUpdateStatusReason')
    LastUpdateStatusReasonCode = EnumShape.new(id: 'com.amazonaws.lambda#LastUpdateStatusReasonCode')
    Layer = StructureShape.new(id: 'com.amazonaws.lambda#Layer')
    LayerArn = StringShape.new(id: 'com.amazonaws.lambda#LayerArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+$"})
    LayerList = ListShape.new(id: 'com.amazonaws.lambda#LayerList')
    LayerName = StringShape.new(id: 'com.amazonaws.lambda#LayerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+$"})
    LayerPermissionAllowedAction = StringShape.new(id: 'com.amazonaws.lambda#LayerPermissionAllowedAction', traits: {"smithy.api#length" => {"min" => 0, "max" => 22}, "smithy.api#pattern" => "^lambda:GetLayerVersion$"})
    LayerPermissionAllowedPrincipal = StringShape.new(id: 'com.amazonaws.lambda#LayerPermissionAllowedPrincipal', traits: {"smithy.api#pattern" => "^\\d{12}|\\*|arn:(aws[a-zA-Z-]*):iam::\\d{12}:root$"})
    LayerVersionArn = StringShape.new(id: 'com.amazonaws.lambda#LayerVersionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+$"})
    LayerVersionContentInput = StructureShape.new(id: 'com.amazonaws.lambda#LayerVersionContentInput')
    LayerVersionContentOutput = StructureShape.new(id: 'com.amazonaws.lambda#LayerVersionContentOutput')
    LayerVersionNumber = IntegerShape.new(id: 'com.amazonaws.lambda#LayerVersionNumber', traits: {"smithy.api#default" => 0})
    LayerVersionsList = ListShape.new(id: 'com.amazonaws.lambda#LayerVersionsList')
    LayerVersionsListItem = StructureShape.new(id: 'com.amazonaws.lambda#LayerVersionsListItem')
    LayersList = ListShape.new(id: 'com.amazonaws.lambda#LayersList')
    LayersListItem = StructureShape.new(id: 'com.amazonaws.lambda#LayersListItem')
    LayersReferenceList = ListShape.new(id: 'com.amazonaws.lambda#LayersReferenceList')
    LicenseInfo = StringShape.new(id: 'com.amazonaws.lambda#LicenseInfo', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ListAliasesRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListAliasesRequest', traits: {"smithy.api#input" => {}})
    ListAliasesResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListAliasesResponse', traits: {"smithy.api#output" => {}})
    ListCodeSigningConfigsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListCodeSigningConfigsRequest', traits: {"smithy.api#input" => {}})
    ListCodeSigningConfigsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListCodeSigningConfigsResponse', traits: {"smithy.api#output" => {}})
    ListEventSourceMappingsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListEventSourceMappingsRequest', traits: {"smithy.api#input" => {}})
    ListEventSourceMappingsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListEventSourceMappingsResponse', traits: {"smithy.api#output" => {}})
    ListFunctionEventInvokeConfigsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionEventInvokeConfigsRequest', traits: {"smithy.api#input" => {}})
    ListFunctionEventInvokeConfigsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionEventInvokeConfigsResponse', traits: {"smithy.api#output" => {}})
    ListFunctionUrlConfigsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionUrlConfigsRequest', traits: {"smithy.api#input" => {}})
    ListFunctionUrlConfigsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionUrlConfigsResponse', traits: {"smithy.api#output" => {}})
    ListFunctionsByCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionsByCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    ListFunctionsByCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionsByCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    ListFunctionsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionsRequest', traits: {"smithy.api#input" => {}})
    ListFunctionsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListFunctionsResponse', traits: {"smithy.api#output" => {}})
    ListLayerVersionsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListLayerVersionsRequest', traits: {"smithy.api#input" => {}})
    ListLayerVersionsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListLayerVersionsResponse', traits: {"smithy.api#output" => {}})
    ListLayersRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListLayersRequest', traits: {"smithy.api#input" => {}})
    ListLayersResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListLayersResponse', traits: {"smithy.api#output" => {}})
    ListProvisionedConcurrencyConfigsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListProvisionedConcurrencyConfigsRequest', traits: {"smithy.api#input" => {}})
    ListProvisionedConcurrencyConfigsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListProvisionedConcurrencyConfigsResponse', traits: {"smithy.api#output" => {}})
    ListTagsRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListTagsRequest', traits: {"smithy.api#input" => {}})
    ListTagsResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListTagsResponse', traits: {"smithy.api#output" => {}})
    ListVersionsByFunctionRequest = StructureShape.new(id: 'com.amazonaws.lambda#ListVersionsByFunctionRequest', traits: {"smithy.api#input" => {}})
    ListVersionsByFunctionResponse = StructureShape.new(id: 'com.amazonaws.lambda#ListVersionsByFunctionResponse', traits: {"smithy.api#output" => {}})
    LocalMountPath = StringShape.new(id: 'com.amazonaws.lambda#LocalMountPath', traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => "^/mnt/[a-zA-Z0-9-_.]+$"})
    LogFormat = EnumShape.new(id: 'com.amazonaws.lambda#LogFormat')
    LogGroup = StringShape.new(id: 'com.amazonaws.lambda#LogGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogType = EnumShape.new(id: 'com.amazonaws.lambda#LogType')
    LoggingConfig = StructureShape.new(id: 'com.amazonaws.lambda#LoggingConfig')
    Long = IntegerShape.new(id: 'com.amazonaws.lambda#Long', traits: {"smithy.api#default" => 0})
    MasterRegion = StringShape.new(id: 'com.amazonaws.lambda#MasterRegion', traits: {"smithy.api#pattern" => "^ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}$"})
    MaxAge = IntegerShape.new(id: 'com.amazonaws.lambda#MaxAge', traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}})
    MaxFunctionEventInvokeConfigListItems = IntegerShape.new(id: 'com.amazonaws.lambda#MaxFunctionEventInvokeConfigListItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxItems = IntegerShape.new(id: 'com.amazonaws.lambda#MaxItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxLayerListItems = IntegerShape.new(id: 'com.amazonaws.lambda#MaxLayerListItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxListItems = IntegerShape.new(id: 'com.amazonaws.lambda#MaxListItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MaxProvisionedConcurrencyConfigListItems = IntegerShape.new(id: 'com.amazonaws.lambda#MaxProvisionedConcurrencyConfigListItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumBatchingWindowInSeconds = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumBatchingWindowInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    MaximumConcurrency = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumConcurrency', traits: {"smithy.api#range" => {"min" => 2, "max" => 1000}})
    MaximumEventAgeInSeconds = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumEventAgeInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 21600}})
    MaximumNumberOfPollers = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumNumberOfPollers', traits: {"smithy.api#range" => {"min" => 1, "max" => 2000}})
    MaximumRecordAgeInSeconds = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumRecordAgeInSeconds', traits: {"smithy.api#range" => {"min" => -1, "max" => 604800}})
    MaximumRetryAttempts = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumRetryAttempts', traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    MaximumRetryAttemptsEventSourceMapping = IntegerShape.new(id: 'com.amazonaws.lambda#MaximumRetryAttemptsEventSourceMapping', traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}})
    MemorySize = IntegerShape.new(id: 'com.amazonaws.lambda#MemorySize', traits: {"smithy.api#range" => {"min" => 128, "max" => 10240}})
    Method = StringShape.new(id: 'com.amazonaws.lambda#Method', traits: {"smithy.api#length" => {"min" => 0, "max" => 6}, "smithy.api#pattern" => ".*"})
    MinimumNumberOfPollers = IntegerShape.new(id: 'com.amazonaws.lambda#MinimumNumberOfPollers', traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    NameSpacedFunctionArn = StringShape.new(id: 'com.amazonaws.lambda#NameSpacedFunctionArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    NamespacedFunctionName = StringShape.new(id: 'com.amazonaws.lambda#NamespacedFunctionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 170}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    NamespacedStatementId = StringShape.new(id: 'com.amazonaws.lambda#NamespacedStatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_.]+)$"})
    NonNegativeInteger = IntegerShape.new(id: 'com.amazonaws.lambda#NonNegativeInteger', traits: {"smithy.api#range" => {"min" => 0}})
    NullableBoolean = BooleanShape.new(id: 'com.amazonaws.lambda#NullableBoolean')
    OnFailure = StructureShape.new(id: 'com.amazonaws.lambda#OnFailure')
    OnSuccess = StructureShape.new(id: 'com.amazonaws.lambda#OnSuccess')
    OrganizationId = StringShape.new(id: 'com.amazonaws.lambda#OrganizationId', traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    Origin = StringShape.new(id: 'com.amazonaws.lambda#Origin', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => ".*"})
    PackageType = EnumShape.new(id: 'com.amazonaws.lambda#PackageType')
    ParallelizationFactor = IntegerShape.new(id: 'com.amazonaws.lambda#ParallelizationFactor', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    Pattern = StringShape.new(id: 'com.amazonaws.lambda#Pattern', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => ".*"})
    PolicyLengthExceededException = StructureShape.new(id: 'com.amazonaws.lambda#PolicyLengthExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PositiveInteger = IntegerShape.new(id: 'com.amazonaws.lambda#PositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    PreconditionFailedException = StructureShape.new(id: 'com.amazonaws.lambda#PreconditionFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Principal = StringShape.new(id: 'com.amazonaws.lambda#Principal', traits: {"smithy.api#pattern" => "^[^\\s]+$"})
    PrincipalOrgID = StringShape.new(id: 'com.amazonaws.lambda#PrincipalOrgID', traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    ProvisionedConcurrencyConfigList = ListShape.new(id: 'com.amazonaws.lambda#ProvisionedConcurrencyConfigList')
    ProvisionedConcurrencyConfigListItem = StructureShape.new(id: 'com.amazonaws.lambda#ProvisionedConcurrencyConfigListItem')
    ProvisionedConcurrencyConfigNotFoundException = StructureShape.new(id: 'com.amazonaws.lambda#ProvisionedConcurrencyConfigNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ProvisionedConcurrencyStatusEnum = EnumShape.new(id: 'com.amazonaws.lambda#ProvisionedConcurrencyStatusEnum')
    ProvisionedPollerConfig = StructureShape.new(id: 'com.amazonaws.lambda#ProvisionedPollerConfig')
    PublishLayerVersionRequest = StructureShape.new(id: 'com.amazonaws.lambda#PublishLayerVersionRequest', traits: {"smithy.api#input" => {}})
    PublishLayerVersionResponse = StructureShape.new(id: 'com.amazonaws.lambda#PublishLayerVersionResponse', traits: {"smithy.api#output" => {}})
    PublishVersionRequest = StructureShape.new(id: 'com.amazonaws.lambda#PublishVersionRequest', traits: {"smithy.api#input" => {}})
    PutFunctionCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    PutFunctionCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    PutFunctionConcurrencyRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionConcurrencyRequest', traits: {"smithy.api#input" => {}})
    PutFunctionEventInvokeConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionEventInvokeConfigRequest', traits: {"smithy.api#input" => {}})
    PutFunctionRecursionConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionRecursionConfigRequest', traits: {"smithy.api#input" => {}})
    PutFunctionRecursionConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#PutFunctionRecursionConfigResponse', traits: {"smithy.api#output" => {}})
    PutProvisionedConcurrencyConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutProvisionedConcurrencyConfigRequest', traits: {"smithy.api#input" => {}})
    PutProvisionedConcurrencyConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#PutProvisionedConcurrencyConfigResponse', traits: {"smithy.api#output" => {}})
    PutRuntimeManagementConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#PutRuntimeManagementConfigRequest', traits: {"smithy.api#input" => {}})
    PutRuntimeManagementConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#PutRuntimeManagementConfigResponse', traits: {"smithy.api#output" => {}})
    Qualifier = StringShape.new(id: 'com.amazonaws.lambda#Qualifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(|[a-zA-Z0-9$_-]+)$"})
    Queue = StringShape.new(id: 'com.amazonaws.lambda#Queue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Queues = ListShape.new(id: 'com.amazonaws.lambda#Queues', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RecursiveInvocationException = StructureShape.new(id: 'com.amazonaws.lambda#RecursiveInvocationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RecursiveLoop = EnumShape.new(id: 'com.amazonaws.lambda#RecursiveLoop')
    RemoveLayerVersionPermissionRequest = StructureShape.new(id: 'com.amazonaws.lambda#RemoveLayerVersionPermissionRequest', traits: {"smithy.api#input" => {}})
    RemovePermissionRequest = StructureShape.new(id: 'com.amazonaws.lambda#RemovePermissionRequest', traits: {"smithy.api#input" => {}})
    RequestTooLargeException = StructureShape.new(id: 'com.amazonaws.lambda#RequestTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ReservedConcurrentExecutions = IntegerShape.new(id: 'com.amazonaws.lambda#ReservedConcurrentExecutions', traits: {"smithy.api#range" => {"min" => 0}})
    ResourceArn = StringShape.new(id: 'com.amazonaws.lambda#ResourceArn', traits: {"smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"})
    ResourceConflictException = StructureShape.new(id: 'com.amazonaws.lambda#ResourceConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = StructureShape.new(id: 'com.amazonaws.lambda#ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = StructureShape.new(id: 'com.amazonaws.lambda#ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotReadyException = StructureShape.new(id: 'com.amazonaws.lambda#ResourceNotReadyException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    ResponseStreamingInvocationType = EnumShape.new(id: 'com.amazonaws.lambda#ResponseStreamingInvocationType')
    RoleArn = StringShape.new(id: 'com.amazonaws.lambda#RoleArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Runtime = EnumShape.new(id: 'com.amazonaws.lambda#Runtime')
    RuntimeVersionArn = StringShape.new(id: 'com.amazonaws.lambda#RuntimeVersionArn', traits: {"smithy.api#length" => {"min" => 26, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}::runtime:.+$"})
    RuntimeVersionConfig = StructureShape.new(id: 'com.amazonaws.lambda#RuntimeVersionConfig')
    RuntimeVersionError = StructureShape.new(id: 'com.amazonaws.lambda#RuntimeVersionError')
    S3Bucket = StringShape.new(id: 'com.amazonaws.lambda#S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"})
    S3Key = StringShape.new(id: 'com.amazonaws.lambda#S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectVersion = StringShape.new(id: 'com.amazonaws.lambda#S3ObjectVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ScalingConfig = StructureShape.new(id: 'com.amazonaws.lambda#ScalingConfig')
    SecurityGroupId = StringShape.new(id: 'com.amazonaws.lambda#SecurityGroupId')
    SecurityGroupIds = ListShape.new(id: 'com.amazonaws.lambda#SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SelfManagedEventSource = StructureShape.new(id: 'com.amazonaws.lambda#SelfManagedEventSource')
    SelfManagedKafkaEventSourceConfig = StructureShape.new(id: 'com.amazonaws.lambda#SelfManagedKafkaEventSourceConfig')
    SensitiveString = StringShape.new(id: 'com.amazonaws.lambda#SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceException = StructureShape.new(id: 'com.amazonaws.lambda#ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SigningProfileVersionArns = ListShape.new(id: 'com.amazonaws.lambda#SigningProfileVersionArns', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SnapStart = StructureShape.new(id: 'com.amazonaws.lambda#SnapStart')
    SnapStartApplyOn = EnumShape.new(id: 'com.amazonaws.lambda#SnapStartApplyOn')
    SnapStartException = StructureShape.new(id: 'com.amazonaws.lambda#SnapStartException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapStartNotReadyException = StructureShape.new(id: 'com.amazonaws.lambda#SnapStartNotReadyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SnapStartOptimizationStatus = EnumShape.new(id: 'com.amazonaws.lambda#SnapStartOptimizationStatus')
    SnapStartResponse = StructureShape.new(id: 'com.amazonaws.lambda#SnapStartResponse')
    SnapStartTimeoutException = StructureShape.new(id: 'com.amazonaws.lambda#SnapStartTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    SourceAccessConfiguration = StructureShape.new(id: 'com.amazonaws.lambda#SourceAccessConfiguration')
    SourceAccessConfigurations = ListShape.new(id: 'com.amazonaws.lambda#SourceAccessConfigurations', traits: {"smithy.api#length" => {"min" => 0, "max" => 22}})
    SourceAccessType = EnumShape.new(id: 'com.amazonaws.lambda#SourceAccessType')
    SourceOwner = StringShape.new(id: 'com.amazonaws.lambda#SourceOwner', traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    State = EnumShape.new(id: 'com.amazonaws.lambda#State')
    StateReason = StringShape.new(id: 'com.amazonaws.lambda#StateReason')
    StateReasonCode = EnumShape.new(id: 'com.amazonaws.lambda#StateReasonCode')
    StatementId = StringShape.new(id: 'com.amazonaws.lambda#StatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_]+)$"})
    String = StringShape.new(id: 'com.amazonaws.lambda#String')
    StringList = ListShape.new(id: 'com.amazonaws.lambda#StringList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}})
    SubnetIPAddressLimitReachedException = StructureShape.new(id: 'com.amazonaws.lambda#SubnetIPAddressLimitReachedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    SubnetId = StringShape.new(id: 'com.amazonaws.lambda#SubnetId')
    SubnetIds = ListShape.new(id: 'com.amazonaws.lambda#SubnetIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SystemLogLevel = EnumShape.new(id: 'com.amazonaws.lambda#SystemLogLevel')
    TagKey = StringShape.new(id: 'com.amazonaws.lambda#TagKey')
    TagKeyList = ListShape.new(id: 'com.amazonaws.lambda#TagKeyList')
    TagResourceRequest = StructureShape.new(id: 'com.amazonaws.lambda#TagResourceRequest', traits: {"smithy.api#input" => {}})
    TagValue = StringShape.new(id: 'com.amazonaws.lambda#TagValue')
    TaggableResource = StringShape.new(id: 'com.amazonaws.lambda#TaggableResource', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:(function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?|code-signing-config:csc-[a-z0-9]{17}|event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})$"})
    Tags = MapShape.new(id: 'com.amazonaws.lambda#Tags')
    TagsError = StructureShape.new(id: 'com.amazonaws.lambda#TagsError')
    TagsErrorCode = StringShape.new(id: 'com.amazonaws.lambda#TagsErrorCode', traits: {"smithy.api#length" => {"min" => 10, "max" => 21}, "smithy.api#pattern" => "^[A-Za-z]+Exception$"})
    TagsErrorMessage = StringShape.new(id: 'com.amazonaws.lambda#TagsErrorMessage', traits: {"smithy.api#length" => {"min" => 84, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    ThrottleReason = EnumShape.new(id: 'com.amazonaws.lambda#ThrottleReason')
    Timeout = IntegerShape.new(id: 'com.amazonaws.lambda#Timeout', traits: {"smithy.api#range" => {"min" => 1}})
    Timestamp = StringShape.new(id: 'com.amazonaws.lambda#Timestamp')
    TooManyRequestsException = StructureShape.new(id: 'com.amazonaws.lambda#TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Topic = StringShape.new(id: 'com.amazonaws.lambda#Topic', traits: {"smithy.api#length" => {"min" => 1, "max" => 249}, "smithy.api#pattern" => "^[^.]([a-zA-Z0-9\\-_.]+)$"})
    Topics = ListShape.new(id: 'com.amazonaws.lambda#Topics', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TracingConfig = StructureShape.new(id: 'com.amazonaws.lambda#TracingConfig')
    TracingConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#TracingConfigResponse')
    TracingMode = EnumShape.new(id: 'com.amazonaws.lambda#TracingMode')
    TumblingWindowInSeconds = IntegerShape.new(id: 'com.amazonaws.lambda#TumblingWindowInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    URI = StringShape.new(id: 'com.amazonaws.lambda#URI', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/*:_+=.@-]*$"})
    UnqualifiedFunctionName = StringShape.new(id: 'com.amazonaws.lambda#UnqualifiedFunctionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)$"})
    UnreservedConcurrentExecutions = IntegerShape.new(id: 'com.amazonaws.lambda#UnreservedConcurrentExecutions', traits: {"smithy.api#range" => {"min" => 0}})
    UnsupportedMediaTypeException = StructureShape.new(id: 'com.amazonaws.lambda#UnsupportedMediaTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UntagResourceRequest = StructureShape.new(id: 'com.amazonaws.lambda#UntagResourceRequest', traits: {"smithy.api#input" => {}})
    UpdateAliasRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateAliasRequest', traits: {"smithy.api#input" => {}})
    UpdateCodeSigningConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateCodeSigningConfigRequest', traits: {"smithy.api#input" => {}})
    UpdateCodeSigningConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#UpdateCodeSigningConfigResponse', traits: {"smithy.api#output" => {}})
    UpdateEventSourceMappingRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateEventSourceMappingRequest', traits: {"smithy.api#input" => {}})
    UpdateFunctionCodeRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateFunctionCodeRequest', traits: {"smithy.api#input" => {}})
    UpdateFunctionConfigurationRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateFunctionConfigurationRequest', traits: {"smithy.api#input" => {}})
    UpdateFunctionEventInvokeConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateFunctionEventInvokeConfigRequest', traits: {"smithy.api#input" => {}})
    UpdateFunctionUrlConfigRequest = StructureShape.new(id: 'com.amazonaws.lambda#UpdateFunctionUrlConfigRequest', traits: {"smithy.api#input" => {}})
    UpdateFunctionUrlConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#UpdateFunctionUrlConfigResponse', traits: {"smithy.api#output" => {}})
    UpdateRuntimeOn = EnumShape.new(id: 'com.amazonaws.lambda#UpdateRuntimeOn')
    Version = StringShape.new(id: 'com.amazonaws.lambda#Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(\\$LATEST|[0-9]+)$"})
    VpcConfig = StructureShape.new(id: 'com.amazonaws.lambda#VpcConfig')
    VpcConfigResponse = StructureShape.new(id: 'com.amazonaws.lambda#VpcConfigResponse')
    VpcId = StringShape.new(id: 'com.amazonaws.lambda#VpcId')
    Weight = FloatShape.new(id: 'com.amazonaws.lambda#Weight', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    WorkingDirectory = StringShape.new(id: 'com.amazonaws.lambda#WorkingDirectory', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccountLimit.add_member(:total_code_size, 'TotalCodeSize', Long, traits: {"smithy.api#default" => 0})
    AccountLimit.add_member(:code_size_unzipped, 'CodeSizeUnzipped', Long, traits: {"smithy.api#default" => 0})
    AccountLimit.add_member(:code_size_zipped, 'CodeSizeZipped', Long, traits: {"smithy.api#default" => 0})
    AccountLimit.add_member(:concurrent_executions, 'ConcurrentExecutions', Integer, traits: {"smithy.api#default" => 0})
    AccountLimit.add_member(:unreserved_concurrent_executions, 'UnreservedConcurrentExecutions', UnreservedConcurrentExecutions)
    AccountLimit.type = Types::AccountLimit

    AccountUsage.add_member(:total_code_size, 'TotalCodeSize', Long, traits: {"smithy.api#default" => 0})
    AccountUsage.add_member(:function_count, 'FunctionCount', Long, traits: {"smithy.api#default" => 0})
    AccountUsage.type = Types::AccountUsage

    AddLayerVersionPermissionRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    AddLayerVersionPermissionRequest.add_member(:version_number, 'VersionNumber', LayerVersionNumber, traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    AddLayerVersionPermissionRequest.add_member(:statement_id, 'StatementId', StatementId, traits: {"smithy.api#required" => {}})
    AddLayerVersionPermissionRequest.add_member(:action, 'Action', LayerPermissionAllowedAction, traits: {"smithy.api#required" => {}})
    AddLayerVersionPermissionRequest.add_member(:principal, 'Principal', LayerPermissionAllowedPrincipal, traits: {"smithy.api#required" => {}})
    AddLayerVersionPermissionRequest.add_member(:organization_id, 'OrganizationId', OrganizationId)
    AddLayerVersionPermissionRequest.add_member(:revision_id, 'RevisionId', String, traits: {"smithy.api#httpQuery" => "RevisionId"})
    AddLayerVersionPermissionRequest.type = Types::AddLayerVersionPermissionRequest

    AddLayerVersionPermissionResponse.add_member(:statement, 'Statement', String)
    AddLayerVersionPermissionResponse.add_member(:revision_id, 'RevisionId', String)
    AddLayerVersionPermissionResponse.type = Types::AddLayerVersionPermissionResponse

    AddPermissionRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    AddPermissionRequest.add_member(:statement_id, 'StatementId', StatementId, traits: {"smithy.api#required" => {}})
    AddPermissionRequest.add_member(:action, 'Action', Action, traits: {"smithy.api#required" => {}})
    AddPermissionRequest.add_member(:principal, 'Principal', Principal, traits: {"smithy.api#required" => {}})
    AddPermissionRequest.add_member(:source_arn, 'SourceArn', Arn)
    AddPermissionRequest.add_member(:source_account, 'SourceAccount', SourceOwner)
    AddPermissionRequest.add_member(:event_source_token, 'EventSourceToken', EventSourceToken)
    AddPermissionRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    AddPermissionRequest.add_member(:revision_id, 'RevisionId', String)
    AddPermissionRequest.add_member(:principal_org_id, 'PrincipalOrgID', PrincipalOrgID)
    AddPermissionRequest.add_member(:function_url_auth_type, 'FunctionUrlAuthType', FunctionUrlAuthType)
    AddPermissionRequest.type = Types::AddPermissionRequest

    AddPermissionResponse.add_member(:statement, 'Statement', String)
    AddPermissionResponse.type = Types::AddPermissionResponse

    AdditionalVersionWeights.set_key(AdditionalVersion)
    AdditionalVersionWeights.set_value(Weight)

    AliasConfiguration.add_member(:alias_arn, 'AliasArn', FunctionArn)
    AliasConfiguration.add_member(:name, 'Name', Alias)
    AliasConfiguration.add_member(:function_version, 'FunctionVersion', Version)
    AliasConfiguration.add_member(:description, 'Description', Description)
    AliasConfiguration.add_member(:routing_config, 'RoutingConfig', AliasRoutingConfiguration)
    AliasConfiguration.add_member(:revision_id, 'RevisionId', String)
    AliasConfiguration.type = Types::AliasConfiguration

    AliasList.set_member(AliasConfiguration)

    AliasRoutingConfiguration.add_member(:additional_version_weights, 'AdditionalVersionWeights', AdditionalVersionWeights)
    AliasRoutingConfiguration.type = Types::AliasRoutingConfiguration

    AllowMethodsList.set_member(Method)

    AllowOriginsList.set_member(Origin)

    AllowedPublishers.add_member(:signing_profile_version_arns, 'SigningProfileVersionArns', SigningProfileVersionArns, traits: {"smithy.api#required" => {}})
    AllowedPublishers.type = Types::AllowedPublishers

    AmazonManagedKafkaEventSourceConfig.add_member(:consumer_group_id, 'ConsumerGroupId', URI)
    AmazonManagedKafkaEventSourceConfig.type = Types::AmazonManagedKafkaEventSourceConfig

    ApplicationLogLevel.add_member(:trace, 'Trace', Prelude::Unit, traits: {"smithy.api#enumValue" => "TRACE"})
    ApplicationLogLevel.add_member(:debug, 'Debug', Prelude::Unit, traits: {"smithy.api#enumValue" => "DEBUG"})
    ApplicationLogLevel.add_member(:info, 'Info', Prelude::Unit, traits: {"smithy.api#enumValue" => "INFO"})
    ApplicationLogLevel.add_member(:warn, 'Warn', Prelude::Unit, traits: {"smithy.api#enumValue" => "WARN"})
    ApplicationLogLevel.add_member(:error, 'Error', Prelude::Unit, traits: {"smithy.api#enumValue" => "ERROR"})
    ApplicationLogLevel.add_member(:fatal, 'Fatal', Prelude::Unit, traits: {"smithy.api#enumValue" => "FATAL"})

    Architecture.add_member(:x86_64, 'x86_64', Prelude::Unit, traits: {"smithy.api#enumValue" => "x86_64"})
    Architecture.add_member(:arm64, 'arm64', Prelude::Unit, traits: {"smithy.api#enumValue" => "arm64"})

    ArchitecturesList.set_member(Architecture)

    CodeSigningConfig.add_member(:code_signing_config_id, 'CodeSigningConfigId', CodeSigningConfigId, traits: {"smithy.api#required" => {}})
    CodeSigningConfig.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#required" => {}})
    CodeSigningConfig.add_member(:description, 'Description', Description)
    CodeSigningConfig.add_member(:allowed_publishers, 'AllowedPublishers', AllowedPublishers, traits: {"smithy.api#required" => {}})
    CodeSigningConfig.add_member(:code_signing_policies, 'CodeSigningPolicies', CodeSigningPolicies, traits: {"smithy.api#required" => {}})
    CodeSigningConfig.add_member(:last_modified, 'LastModified', Timestamp, traits: {"smithy.api#required" => {}})
    CodeSigningConfig.type = Types::CodeSigningConfig

    CodeSigningConfigList.set_member(CodeSigningConfig)

    CodeSigningConfigNotFoundException.add_member(:type, 'Type', String)
    CodeSigningConfigNotFoundException.add_member(:message, 'Message', String)
    CodeSigningConfigNotFoundException.type = Types::CodeSigningConfigNotFoundException

    CodeSigningPolicies.add_member(:untrusted_artifact_on_deployment, 'UntrustedArtifactOnDeployment', CodeSigningPolicy)
    CodeSigningPolicies.type = Types::CodeSigningPolicies

    CodeSigningPolicy.add_member(:warn, 'Warn', Prelude::Unit, traits: {"smithy.api#enumValue" => "Warn"})
    CodeSigningPolicy.add_member(:enforce, 'Enforce', Prelude::Unit, traits: {"smithy.api#enumValue" => "Enforce"})

    CodeStorageExceededException.add_member(:type, 'Type', String)
    CodeStorageExceededException.add_member(:message, 'message', String)
    CodeStorageExceededException.type = Types::CodeStorageExceededException

    CodeVerificationFailedException.add_member(:type, 'Type', String)
    CodeVerificationFailedException.add_member(:message, 'Message', String)
    CodeVerificationFailedException.type = Types::CodeVerificationFailedException

    CompatibleArchitectures.set_member(Architecture)

    CompatibleRuntimes.set_member(Runtime)

    Concurrency.add_member(:reserved_concurrent_executions, 'ReservedConcurrentExecutions', ReservedConcurrentExecutions)
    Concurrency.type = Types::Concurrency

    Cors.add_member(:allow_credentials, 'AllowCredentials', AllowCredentials)
    Cors.add_member(:allow_headers, 'AllowHeaders', HeadersList)
    Cors.add_member(:allow_methods, 'AllowMethods', AllowMethodsList)
    Cors.add_member(:allow_origins, 'AllowOrigins', AllowOriginsList)
    Cors.add_member(:expose_headers, 'ExposeHeaders', HeadersList)
    Cors.add_member(:max_age, 'MaxAge', MaxAge)
    Cors.type = Types::Cors

    CreateAliasRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    CreateAliasRequest.add_member(:name, 'Name', Alias, traits: {"smithy.api#required" => {}})
    CreateAliasRequest.add_member(:function_version, 'FunctionVersion', Version, traits: {"smithy.api#required" => {}})
    CreateAliasRequest.add_member(:description, 'Description', Description)
    CreateAliasRequest.add_member(:routing_config, 'RoutingConfig', AliasRoutingConfiguration)
    CreateAliasRequest.type = Types::CreateAliasRequest

    CreateCodeSigningConfigRequest.add_member(:description, 'Description', Description)
    CreateCodeSigningConfigRequest.add_member(:allowed_publishers, 'AllowedPublishers', AllowedPublishers, traits: {"smithy.api#required" => {}})
    CreateCodeSigningConfigRequest.add_member(:code_signing_policies, 'CodeSigningPolicies', CodeSigningPolicies)
    CreateCodeSigningConfigRequest.add_member(:tags, 'Tags', Tags)
    CreateCodeSigningConfigRequest.type = Types::CreateCodeSigningConfigRequest

    CreateCodeSigningConfigResponse.add_member(:code_signing_config, 'CodeSigningConfig', CodeSigningConfig, traits: {"smithy.api#required" => {}})
    CreateCodeSigningConfigResponse.type = Types::CreateCodeSigningConfigResponse

    CreateEventSourceMappingRequest.add_member(:event_source_arn, 'EventSourceArn', Arn)
    CreateEventSourceMappingRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#required" => {}})
    CreateEventSourceMappingRequest.add_member(:enabled, 'Enabled', Enabled)
    CreateEventSourceMappingRequest.add_member(:batch_size, 'BatchSize', BatchSize)
    CreateEventSourceMappingRequest.add_member(:filter_criteria, 'FilterCriteria', FilterCriteria)
    CreateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, 'MaximumBatchingWindowInSeconds', MaximumBatchingWindowInSeconds)
    CreateEventSourceMappingRequest.add_member(:parallelization_factor, 'ParallelizationFactor', ParallelizationFactor)
    CreateEventSourceMappingRequest.add_member(:starting_position, 'StartingPosition', EventSourcePosition)
    CreateEventSourceMappingRequest.add_member(:starting_position_timestamp, 'StartingPositionTimestamp', Date)
    CreateEventSourceMappingRequest.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    CreateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, 'MaximumRecordAgeInSeconds', MaximumRecordAgeInSeconds)
    CreateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, 'BisectBatchOnFunctionError', BisectBatchOnFunctionError)
    CreateEventSourceMappingRequest.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttemptsEventSourceMapping)
    CreateEventSourceMappingRequest.add_member(:tags, 'Tags', Tags)
    CreateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, 'TumblingWindowInSeconds', TumblingWindowInSeconds)
    CreateEventSourceMappingRequest.add_member(:topics, 'Topics', Topics)
    CreateEventSourceMappingRequest.add_member(:queues, 'Queues', Queues)
    CreateEventSourceMappingRequest.add_member(:source_access_configurations, 'SourceAccessConfigurations', SourceAccessConfigurations)
    CreateEventSourceMappingRequest.add_member(:self_managed_event_source, 'SelfManagedEventSource', SelfManagedEventSource)
    CreateEventSourceMappingRequest.add_member(:function_response_types, 'FunctionResponseTypes', FunctionResponseTypeList)
    CreateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, 'AmazonManagedKafkaEventSourceConfig', AmazonManagedKafkaEventSourceConfig)
    CreateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, 'SelfManagedKafkaEventSourceConfig', SelfManagedKafkaEventSourceConfig)
    CreateEventSourceMappingRequest.add_member(:scaling_config, 'ScalingConfig', ScalingConfig)
    CreateEventSourceMappingRequest.add_member(:document_db_event_source_config, 'DocumentDBEventSourceConfig', DocumentDBEventSourceConfig)
    CreateEventSourceMappingRequest.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    CreateEventSourceMappingRequest.add_member(:metrics_config, 'MetricsConfig', EventSourceMappingMetricsConfig)
    CreateEventSourceMappingRequest.add_member(:provisioned_poller_config, 'ProvisionedPollerConfig', ProvisionedPollerConfig)
    CreateEventSourceMappingRequest.type = Types::CreateEventSourceMappingRequest

    CreateFunctionRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#required" => {}})
    CreateFunctionRequest.add_member(:runtime, 'Runtime', Runtime)
    CreateFunctionRequest.add_member(:role, 'Role', RoleArn, traits: {"smithy.api#required" => {}})
    CreateFunctionRequest.add_member(:handler, 'Handler', Handler)
    CreateFunctionRequest.add_member(:code, 'Code', FunctionCode, traits: {"smithy.api#required" => {}})
    CreateFunctionRequest.add_member(:description, 'Description', Description)
    CreateFunctionRequest.add_member(:timeout, 'Timeout', Timeout)
    CreateFunctionRequest.add_member(:memory_size, 'MemorySize', MemorySize)
    CreateFunctionRequest.add_member(:publish, 'Publish', Boolean, traits: {"smithy.api#default" => false})
    CreateFunctionRequest.add_member(:vpc_config, 'VpcConfig', VpcConfig)
    CreateFunctionRequest.add_member(:package_type, 'PackageType', PackageType)
    CreateFunctionRequest.add_member(:dead_letter_config, 'DeadLetterConfig', DeadLetterConfig)
    CreateFunctionRequest.add_member(:environment, 'Environment', Environment)
    CreateFunctionRequest.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    CreateFunctionRequest.add_member(:tracing_config, 'TracingConfig', TracingConfig)
    CreateFunctionRequest.add_member(:tags, 'Tags', Tags)
    CreateFunctionRequest.add_member(:layers, 'Layers', LayerList)
    CreateFunctionRequest.add_member(:file_system_configs, 'FileSystemConfigs', FileSystemConfigList)
    CreateFunctionRequest.add_member(:image_config, 'ImageConfig', ImageConfig)
    CreateFunctionRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn)
    CreateFunctionRequest.add_member(:architectures, 'Architectures', ArchitecturesList)
    CreateFunctionRequest.add_member(:ephemeral_storage, 'EphemeralStorage', EphemeralStorage)
    CreateFunctionRequest.add_member(:snap_start, 'SnapStart', SnapStart)
    CreateFunctionRequest.add_member(:logging_config, 'LoggingConfig', LoggingConfig)
    CreateFunctionRequest.type = Types::CreateFunctionRequest

    CreateFunctionUrlConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    CreateFunctionUrlConfigRequest.add_member(:qualifier, 'Qualifier', FunctionUrlQualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    CreateFunctionUrlConfigRequest.add_member(:auth_type, 'AuthType', FunctionUrlAuthType, traits: {"smithy.api#required" => {}})
    CreateFunctionUrlConfigRequest.add_member(:cors, 'Cors', Cors)
    CreateFunctionUrlConfigRequest.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    CreateFunctionUrlConfigRequest.type = Types::CreateFunctionUrlConfigRequest

    CreateFunctionUrlConfigResponse.add_member(:function_url, 'FunctionUrl', FunctionUrl, traits: {"smithy.api#required" => {}})
    CreateFunctionUrlConfigResponse.add_member(:function_arn, 'FunctionArn', FunctionArn, traits: {"smithy.api#required" => {}})
    CreateFunctionUrlConfigResponse.add_member(:auth_type, 'AuthType', FunctionUrlAuthType, traits: {"smithy.api#required" => {}})
    CreateFunctionUrlConfigResponse.add_member(:cors, 'Cors', Cors)
    CreateFunctionUrlConfigResponse.add_member(:creation_time, 'CreationTime', Timestamp, traits: {"smithy.api#required" => {}})
    CreateFunctionUrlConfigResponse.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    CreateFunctionUrlConfigResponse.type = Types::CreateFunctionUrlConfigResponse

    DeadLetterConfig.add_member(:target_arn, 'TargetArn', ResourceArn)
    DeadLetterConfig.type = Types::DeadLetterConfig

    DeleteAliasRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteAliasRequest.add_member(:name, 'Name', Alias, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteAliasRequest.type = Types::DeleteAliasRequest

    DeleteCodeSigningConfigRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteCodeSigningConfigRequest.type = Types::DeleteCodeSigningConfigRequest

    DeleteCodeSigningConfigResponse.type = Types::DeleteCodeSigningConfigResponse

    DeleteEventSourceMappingRequest.add_member(:uuid, 'UUID', String, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteEventSourceMappingRequest.type = Types::DeleteEventSourceMappingRequest

    DeleteFunctionCodeSigningConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteFunctionCodeSigningConfigRequest.type = Types::DeleteFunctionCodeSigningConfigRequest

    DeleteFunctionConcurrencyRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteFunctionConcurrencyRequest.type = Types::DeleteFunctionConcurrencyRequest

    DeleteFunctionEventInvokeConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteFunctionEventInvokeConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    DeleteFunctionEventInvokeConfigRequest.type = Types::DeleteFunctionEventInvokeConfigRequest

    DeleteFunctionRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteFunctionRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest

    DeleteFunctionUrlConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteFunctionUrlConfigRequest.add_member(:qualifier, 'Qualifier', FunctionUrlQualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    DeleteFunctionUrlConfigRequest.type = Types::DeleteFunctionUrlConfigRequest

    DeleteLayerVersionRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteLayerVersionRequest.add_member(:version_number, 'VersionNumber', LayerVersionNumber, traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteLayerVersionRequest.type = Types::DeleteLayerVersionRequest

    DeleteProvisionedConcurrencyConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    DeleteProvisionedConcurrencyConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}})
    DeleteProvisionedConcurrencyConfigRequest.type = Types::DeleteProvisionedConcurrencyConfigRequest

    DestinationConfig.add_member(:on_success, 'OnSuccess', OnSuccess)
    DestinationConfig.add_member(:on_failure, 'OnFailure', OnFailure)
    DestinationConfig.type = Types::DestinationConfig

    DocumentDBEventSourceConfig.add_member(:database_name, 'DatabaseName', DatabaseName)
    DocumentDBEventSourceConfig.add_member(:collection_name, 'CollectionName', CollectionName)
    DocumentDBEventSourceConfig.add_member(:full_document, 'FullDocument', FullDocument)
    DocumentDBEventSourceConfig.type = Types::DocumentDBEventSourceConfig

    EC2AccessDeniedException.add_member(:type, 'Type', String)
    EC2AccessDeniedException.add_member(:message, 'Message', String)
    EC2AccessDeniedException.type = Types::EC2AccessDeniedException

    EC2ThrottledException.add_member(:type, 'Type', String)
    EC2ThrottledException.add_member(:message, 'Message', String)
    EC2ThrottledException.type = Types::EC2ThrottledException

    EC2UnexpectedException.add_member(:type, 'Type', String)
    EC2UnexpectedException.add_member(:message, 'Message', String)
    EC2UnexpectedException.add_member(:ec2_error_code, 'EC2ErrorCode', String)
    EC2UnexpectedException.type = Types::EC2UnexpectedException

    EFSIOException.add_member(:type, 'Type', String)
    EFSIOException.add_member(:message, 'Message', String)
    EFSIOException.type = Types::EFSIOException

    EFSMountConnectivityException.add_member(:type, 'Type', String)
    EFSMountConnectivityException.add_member(:message, 'Message', String)
    EFSMountConnectivityException.type = Types::EFSMountConnectivityException

    EFSMountFailureException.add_member(:type, 'Type', String)
    EFSMountFailureException.add_member(:message, 'Message', String)
    EFSMountFailureException.type = Types::EFSMountFailureException

    EFSMountTimeoutException.add_member(:type, 'Type', String)
    EFSMountTimeoutException.add_member(:message, 'Message', String)
    EFSMountTimeoutException.type = Types::EFSMountTimeoutException

    ENILimitReachedException.add_member(:type, 'Type', String)
    ENILimitReachedException.add_member(:message, 'Message', String)
    ENILimitReachedException.type = Types::ENILimitReachedException

    EndPointType.add_member(:kafka_bootstrap_servers, 'KAFKA_BOOTSTRAP_SERVERS', Prelude::Unit, traits: {"smithy.api#enumValue" => "KAFKA_BOOTSTRAP_SERVERS"})

    EndpointLists.set_member(Endpoint)

    Endpoints.set_key(EndPointType)
    Endpoints.set_value(EndpointLists)

    Environment.add_member(:variables, 'Variables', EnvironmentVariables)
    Environment.type = Types::Environment

    EnvironmentError.add_member(:error_code, 'ErrorCode', String)
    EnvironmentError.add_member(:message, 'Message', SensitiveString)
    EnvironmentError.type = Types::EnvironmentError

    EnvironmentResponse.add_member(:variables, 'Variables', EnvironmentVariables)
    EnvironmentResponse.add_member(:error, 'Error', EnvironmentError)
    EnvironmentResponse.type = Types::EnvironmentResponse

    EnvironmentVariables.set_key(EnvironmentVariableName)
    EnvironmentVariables.set_value(EnvironmentVariableValue)

    EphemeralStorage.add_member(:size, 'Size', EphemeralStorageSize, traits: {"smithy.api#required" => {}})
    EphemeralStorage.type = Types::EphemeralStorage

    EventSourceMappingConfiguration.add_member(:uuid, 'UUID', String)
    EventSourceMappingConfiguration.add_member(:starting_position, 'StartingPosition', EventSourcePosition)
    EventSourceMappingConfiguration.add_member(:starting_position_timestamp, 'StartingPositionTimestamp', Date)
    EventSourceMappingConfiguration.add_member(:batch_size, 'BatchSize', BatchSize)
    EventSourceMappingConfiguration.add_member(:maximum_batching_window_in_seconds, 'MaximumBatchingWindowInSeconds', MaximumBatchingWindowInSeconds)
    EventSourceMappingConfiguration.add_member(:parallelization_factor, 'ParallelizationFactor', ParallelizationFactor)
    EventSourceMappingConfiguration.add_member(:event_source_arn, 'EventSourceArn', Arn)
    EventSourceMappingConfiguration.add_member(:filter_criteria, 'FilterCriteria', FilterCriteria)
    EventSourceMappingConfiguration.add_member(:function_arn, 'FunctionArn', FunctionArn)
    EventSourceMappingConfiguration.add_member(:last_modified, 'LastModified', Date)
    EventSourceMappingConfiguration.add_member(:last_processing_result, 'LastProcessingResult', String)
    EventSourceMappingConfiguration.add_member(:state, 'State', String)
    EventSourceMappingConfiguration.add_member(:state_transition_reason, 'StateTransitionReason', String)
    EventSourceMappingConfiguration.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    EventSourceMappingConfiguration.add_member(:topics, 'Topics', Topics)
    EventSourceMappingConfiguration.add_member(:queues, 'Queues', Queues)
    EventSourceMappingConfiguration.add_member(:source_access_configurations, 'SourceAccessConfigurations', SourceAccessConfigurations)
    EventSourceMappingConfiguration.add_member(:self_managed_event_source, 'SelfManagedEventSource', SelfManagedEventSource)
    EventSourceMappingConfiguration.add_member(:maximum_record_age_in_seconds, 'MaximumRecordAgeInSeconds', MaximumRecordAgeInSeconds)
    EventSourceMappingConfiguration.add_member(:bisect_batch_on_function_error, 'BisectBatchOnFunctionError', BisectBatchOnFunctionError)
    EventSourceMappingConfiguration.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttemptsEventSourceMapping)
    EventSourceMappingConfiguration.add_member(:tumbling_window_in_seconds, 'TumblingWindowInSeconds', TumblingWindowInSeconds)
    EventSourceMappingConfiguration.add_member(:function_response_types, 'FunctionResponseTypes', FunctionResponseTypeList)
    EventSourceMappingConfiguration.add_member(:amazon_managed_kafka_event_source_config, 'AmazonManagedKafkaEventSourceConfig', AmazonManagedKafkaEventSourceConfig)
    EventSourceMappingConfiguration.add_member(:self_managed_kafka_event_source_config, 'SelfManagedKafkaEventSourceConfig', SelfManagedKafkaEventSourceConfig)
    EventSourceMappingConfiguration.add_member(:scaling_config, 'ScalingConfig', ScalingConfig)
    EventSourceMappingConfiguration.add_member(:document_db_event_source_config, 'DocumentDBEventSourceConfig', DocumentDBEventSourceConfig)
    EventSourceMappingConfiguration.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    EventSourceMappingConfiguration.add_member(:filter_criteria_error, 'FilterCriteriaError', FilterCriteriaError)
    EventSourceMappingConfiguration.add_member(:event_source_mapping_arn, 'EventSourceMappingArn', EventSourceMappingArn)
    EventSourceMappingConfiguration.add_member(:metrics_config, 'MetricsConfig', EventSourceMappingMetricsConfig)
    EventSourceMappingConfiguration.add_member(:provisioned_poller_config, 'ProvisionedPollerConfig', ProvisionedPollerConfig)
    EventSourceMappingConfiguration.type = Types::EventSourceMappingConfiguration

    EventSourceMappingMetric.add_member(:event_count, 'EventCount', Prelude::Unit, traits: {"smithy.api#enumValue" => "EventCount"})

    EventSourceMappingMetricList.set_member(EventSourceMappingMetric)

    EventSourceMappingMetricsConfig.add_member(:metrics, 'Metrics', EventSourceMappingMetricList)
    EventSourceMappingMetricsConfig.type = Types::EventSourceMappingMetricsConfig

    EventSourceMappingsList.set_member(EventSourceMappingConfiguration)

    EventSourcePosition.add_member(:trim_horizon, 'TRIM_HORIZON', Prelude::Unit, traits: {"smithy.api#enumValue" => "TRIM_HORIZON"})
    EventSourcePosition.add_member(:latest, 'LATEST', Prelude::Unit, traits: {"smithy.api#enumValue" => "LATEST"})
    EventSourcePosition.add_member(:at_timestamp, 'AT_TIMESTAMP', Prelude::Unit, traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"})

    FileSystemConfig.add_member(:arn, 'Arn', FileSystemArn, traits: {"smithy.api#required" => {}})
    FileSystemConfig.add_member(:local_mount_path, 'LocalMountPath', LocalMountPath, traits: {"smithy.api#required" => {}})
    FileSystemConfig.type = Types::FileSystemConfig

    FileSystemConfigList.set_member(FileSystemConfig)

    Filter.add_member(:pattern, 'Pattern', Pattern)
    Filter.type = Types::Filter

    FilterCriteria.add_member(:filters, 'Filters', FilterList)
    FilterCriteria.type = Types::FilterCriteria

    FilterCriteriaError.add_member(:error_code, 'ErrorCode', FilterCriteriaErrorCode)
    FilterCriteriaError.add_member(:message, 'Message', FilterCriteriaErrorMessage)
    FilterCriteriaError.type = Types::FilterCriteriaError

    FilterList.set_member(Filter)

    FullDocument.add_member(:update_lookup, 'UpdateLookup', Prelude::Unit, traits: {"smithy.api#enumValue" => "UpdateLookup"})
    FullDocument.add_member(:default, 'Default', Prelude::Unit, traits: {"smithy.api#enumValue" => "Default"})

    FunctionArnList.set_member(FunctionArn)

    FunctionCode.add_member(:zip_file, 'ZipFile', Blob)
    FunctionCode.add_member(:s3_bucket, 'S3Bucket', S3Bucket)
    FunctionCode.add_member(:s3_key, 'S3Key', S3Key)
    FunctionCode.add_member(:s3_object_version, 'S3ObjectVersion', S3ObjectVersion)
    FunctionCode.add_member(:image_uri, 'ImageUri', String)
    FunctionCode.add_member(:source_kms_key_arn, 'SourceKMSKeyArn', KMSKeyArn)
    FunctionCode.type = Types::FunctionCode

    FunctionCodeLocation.add_member(:repository_type, 'RepositoryType', String)
    FunctionCodeLocation.add_member(:location, 'Location', String)
    FunctionCodeLocation.add_member(:image_uri, 'ImageUri', String)
    FunctionCodeLocation.add_member(:resolved_image_uri, 'ResolvedImageUri', String)
    FunctionCodeLocation.add_member(:source_kms_key_arn, 'SourceKMSKeyArn', String)
    FunctionCodeLocation.type = Types::FunctionCodeLocation

    FunctionConfiguration.add_member(:function_name, 'FunctionName', NamespacedFunctionName)
    FunctionConfiguration.add_member(:function_arn, 'FunctionArn', NameSpacedFunctionArn)
    FunctionConfiguration.add_member(:runtime, 'Runtime', Runtime)
    FunctionConfiguration.add_member(:role, 'Role', RoleArn)
    FunctionConfiguration.add_member(:handler, 'Handler', Handler)
    FunctionConfiguration.add_member(:code_size, 'CodeSize', Long, traits: {"smithy.api#default" => 0})
    FunctionConfiguration.add_member(:description, 'Description', Description)
    FunctionConfiguration.add_member(:timeout, 'Timeout', Timeout)
    FunctionConfiguration.add_member(:memory_size, 'MemorySize', MemorySize)
    FunctionConfiguration.add_member(:last_modified, 'LastModified', Timestamp)
    FunctionConfiguration.add_member(:code_sha256, 'CodeSha256', String)
    FunctionConfiguration.add_member(:version, 'Version', Version)
    FunctionConfiguration.add_member(:vpc_config, 'VpcConfig', VpcConfigResponse)
    FunctionConfiguration.add_member(:dead_letter_config, 'DeadLetterConfig', DeadLetterConfig)
    FunctionConfiguration.add_member(:environment, 'Environment', EnvironmentResponse)
    FunctionConfiguration.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    FunctionConfiguration.add_member(:tracing_config, 'TracingConfig', TracingConfigResponse)
    FunctionConfiguration.add_member(:master_arn, 'MasterArn', FunctionArn)
    FunctionConfiguration.add_member(:revision_id, 'RevisionId', String)
    FunctionConfiguration.add_member(:layers, 'Layers', LayersReferenceList)
    FunctionConfiguration.add_member(:state, 'State', State)
    FunctionConfiguration.add_member(:state_reason, 'StateReason', StateReason)
    FunctionConfiguration.add_member(:state_reason_code, 'StateReasonCode', StateReasonCode)
    FunctionConfiguration.add_member(:last_update_status, 'LastUpdateStatus', LastUpdateStatus)
    FunctionConfiguration.add_member(:last_update_status_reason, 'LastUpdateStatusReason', LastUpdateStatusReason)
    FunctionConfiguration.add_member(:last_update_status_reason_code, 'LastUpdateStatusReasonCode', LastUpdateStatusReasonCode)
    FunctionConfiguration.add_member(:file_system_configs, 'FileSystemConfigs', FileSystemConfigList)
    FunctionConfiguration.add_member(:package_type, 'PackageType', PackageType)
    FunctionConfiguration.add_member(:image_config_response, 'ImageConfigResponse', ImageConfigResponse)
    FunctionConfiguration.add_member(:signing_profile_version_arn, 'SigningProfileVersionArn', Arn)
    FunctionConfiguration.add_member(:signing_job_arn, 'SigningJobArn', Arn)
    FunctionConfiguration.add_member(:architectures, 'Architectures', ArchitecturesList)
    FunctionConfiguration.add_member(:ephemeral_storage, 'EphemeralStorage', EphemeralStorage)
    FunctionConfiguration.add_member(:snap_start, 'SnapStart', SnapStartResponse)
    FunctionConfiguration.add_member(:runtime_version_config, 'RuntimeVersionConfig', RuntimeVersionConfig)
    FunctionConfiguration.add_member(:logging_config, 'LoggingConfig', LoggingConfig)
    FunctionConfiguration.type = Types::FunctionConfiguration

    FunctionEventInvokeConfig.add_member(:last_modified, 'LastModified', Date)
    FunctionEventInvokeConfig.add_member(:function_arn, 'FunctionArn', FunctionArn)
    FunctionEventInvokeConfig.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttempts)
    FunctionEventInvokeConfig.add_member(:maximum_event_age_in_seconds, 'MaximumEventAgeInSeconds', MaximumEventAgeInSeconds)
    FunctionEventInvokeConfig.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    FunctionEventInvokeConfig.type = Types::FunctionEventInvokeConfig

    FunctionEventInvokeConfigList.set_member(FunctionEventInvokeConfig)

    FunctionList.set_member(FunctionConfiguration)

    FunctionResponseType.add_member(:report_batch_item_failures, 'ReportBatchItemFailures', Prelude::Unit, traits: {"smithy.api#enumValue" => "ReportBatchItemFailures"})

    FunctionResponseTypeList.set_member(FunctionResponseType)

    FunctionUrlAuthType.add_member(:none, 'NONE', Prelude::Unit, traits: {"smithy.api#enumValue" => "NONE"})
    FunctionUrlAuthType.add_member(:aws_iam, 'AWS_IAM', Prelude::Unit, traits: {"smithy.api#enumValue" => "AWS_IAM"})

    FunctionUrlConfig.add_member(:function_url, 'FunctionUrl', FunctionUrl, traits: {"smithy.api#required" => {}})
    FunctionUrlConfig.add_member(:function_arn, 'FunctionArn', FunctionArn, traits: {"smithy.api#required" => {}})
    FunctionUrlConfig.add_member(:creation_time, 'CreationTime', Timestamp, traits: {"smithy.api#required" => {}})
    FunctionUrlConfig.add_member(:last_modified_time, 'LastModifiedTime', Timestamp, traits: {"smithy.api#required" => {}})
    FunctionUrlConfig.add_member(:cors, 'Cors', Cors)
    FunctionUrlConfig.add_member(:auth_type, 'AuthType', FunctionUrlAuthType, traits: {"smithy.api#required" => {}})
    FunctionUrlConfig.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    FunctionUrlConfig.type = Types::FunctionUrlConfig

    FunctionUrlConfigList.set_member(FunctionUrlConfig)

    FunctionVersion.add_member(:all, 'ALL', Prelude::Unit, traits: {"smithy.api#enumValue" => "ALL"})

    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_limit, 'AccountLimit', AccountLimit)
    GetAccountSettingsResponse.add_member(:account_usage, 'AccountUsage', AccountUsage)
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse

    GetAliasRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetAliasRequest.add_member(:name, 'Name', Alias, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetAliasRequest.type = Types::GetAliasRequest

    GetCodeSigningConfigRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetCodeSigningConfigRequest.type = Types::GetCodeSigningConfigRequest

    GetCodeSigningConfigResponse.add_member(:code_signing_config, 'CodeSigningConfig', CodeSigningConfig, traits: {"smithy.api#required" => {}})
    GetCodeSigningConfigResponse.type = Types::GetCodeSigningConfigResponse

    GetEventSourceMappingRequest.add_member(:uuid, 'UUID', String, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetEventSourceMappingRequest.type = Types::GetEventSourceMappingRequest

    GetFunctionCodeSigningConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionCodeSigningConfigRequest.type = Types::GetFunctionCodeSigningConfigRequest

    GetFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#required" => {}})
    GetFunctionCodeSigningConfigResponse.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#required" => {}})
    GetFunctionCodeSigningConfigResponse.type = Types::GetFunctionCodeSigningConfigResponse

    GetFunctionConcurrencyRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionConcurrencyRequest.type = Types::GetFunctionConcurrencyRequest

    GetFunctionConcurrencyResponse.add_member(:reserved_concurrent_executions, 'ReservedConcurrentExecutions', ReservedConcurrentExecutions)
    GetFunctionConcurrencyResponse.type = Types::GetFunctionConcurrencyResponse

    GetFunctionConfigurationRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionConfigurationRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetFunctionConfigurationRequest.type = Types::GetFunctionConfigurationRequest

    GetFunctionEventInvokeConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionEventInvokeConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetFunctionEventInvokeConfigRequest.type = Types::GetFunctionEventInvokeConfigRequest

    GetFunctionRecursionConfigRequest.add_member(:function_name, 'FunctionName', UnqualifiedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionRecursionConfigRequest.type = Types::GetFunctionRecursionConfigRequest

    GetFunctionRecursionConfigResponse.add_member(:recursive_loop, 'RecursiveLoop', RecursiveLoop)
    GetFunctionRecursionConfigResponse.type = Types::GetFunctionRecursionConfigResponse

    GetFunctionRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetFunctionRequest.type = Types::GetFunctionRequest

    GetFunctionResponse.add_member(:configuration, 'Configuration', FunctionConfiguration)
    GetFunctionResponse.add_member(:code, 'Code', FunctionCodeLocation)
    GetFunctionResponse.add_member(:tags, 'Tags', Tags)
    GetFunctionResponse.add_member(:tags_error, 'TagsError', TagsError)
    GetFunctionResponse.add_member(:concurrency, 'Concurrency', Concurrency)
    GetFunctionResponse.type = Types::GetFunctionResponse

    GetFunctionUrlConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetFunctionUrlConfigRequest.add_member(:qualifier, 'Qualifier', FunctionUrlQualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetFunctionUrlConfigRequest.type = Types::GetFunctionUrlConfigRequest

    GetFunctionUrlConfigResponse.add_member(:function_url, 'FunctionUrl', FunctionUrl, traits: {"smithy.api#required" => {}})
    GetFunctionUrlConfigResponse.add_member(:function_arn, 'FunctionArn', FunctionArn, traits: {"smithy.api#required" => {}})
    GetFunctionUrlConfigResponse.add_member(:auth_type, 'AuthType', FunctionUrlAuthType, traits: {"smithy.api#required" => {}})
    GetFunctionUrlConfigResponse.add_member(:cors, 'Cors', Cors)
    GetFunctionUrlConfigResponse.add_member(:creation_time, 'CreationTime', Timestamp, traits: {"smithy.api#required" => {}})
    GetFunctionUrlConfigResponse.add_member(:last_modified_time, 'LastModifiedTime', Timestamp, traits: {"smithy.api#required" => {}})
    GetFunctionUrlConfigResponse.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    GetFunctionUrlConfigResponse.type = Types::GetFunctionUrlConfigResponse

    GetLayerVersionByArnRequest.add_member(:arn, 'Arn', LayerVersionArn, traits: {"smithy.api#httpQuery" => "Arn", "smithy.api#required" => {}})
    GetLayerVersionByArnRequest.type = Types::GetLayerVersionByArnRequest

    GetLayerVersionPolicyRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetLayerVersionPolicyRequest.add_member(:version_number, 'VersionNumber', LayerVersionNumber, traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetLayerVersionPolicyRequest.type = Types::GetLayerVersionPolicyRequest

    GetLayerVersionPolicyResponse.add_member(:policy, 'Policy', String)
    GetLayerVersionPolicyResponse.add_member(:revision_id, 'RevisionId', String)
    GetLayerVersionPolicyResponse.type = Types::GetLayerVersionPolicyResponse

    GetLayerVersionRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetLayerVersionRequest.add_member(:version_number, 'VersionNumber', LayerVersionNumber, traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetLayerVersionRequest.type = Types::GetLayerVersionRequest

    GetLayerVersionResponse.add_member(:content, 'Content', LayerVersionContentOutput)
    GetLayerVersionResponse.add_member(:layer_arn, 'LayerArn', LayerArn)
    GetLayerVersionResponse.add_member(:layer_version_arn, 'LayerVersionArn', LayerVersionArn)
    GetLayerVersionResponse.add_member(:description, 'Description', Description)
    GetLayerVersionResponse.add_member(:created_date, 'CreatedDate', Timestamp)
    GetLayerVersionResponse.add_member(:version, 'Version', LayerVersionNumber, traits: {"smithy.api#default" => 0})
    GetLayerVersionResponse.add_member(:compatible_runtimes, 'CompatibleRuntimes', CompatibleRuntimes)
    GetLayerVersionResponse.add_member(:license_info, 'LicenseInfo', LicenseInfo)
    GetLayerVersionResponse.add_member(:compatible_architectures, 'CompatibleArchitectures', CompatibleArchitectures)
    GetLayerVersionResponse.type = Types::GetLayerVersionResponse

    GetPolicyRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetPolicyRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetPolicyRequest.type = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, 'Policy', String)
    GetPolicyResponse.add_member(:revision_id, 'RevisionId', String)
    GetPolicyResponse.type = Types::GetPolicyResponse

    GetProvisionedConcurrencyConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetProvisionedConcurrencyConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}})
    GetProvisionedConcurrencyConfigRequest.type = Types::GetProvisionedConcurrencyConfigRequest

    GetProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, 'RequestedProvisionedConcurrentExecutions', PositiveInteger)
    GetProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, 'AvailableProvisionedConcurrentExecutions', NonNegativeInteger)
    GetProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, 'AllocatedProvisionedConcurrentExecutions', NonNegativeInteger)
    GetProvisionedConcurrencyConfigResponse.add_member(:status, 'Status', ProvisionedConcurrencyStatusEnum)
    GetProvisionedConcurrencyConfigResponse.add_member(:status_reason, 'StatusReason', String)
    GetProvisionedConcurrencyConfigResponse.add_member(:last_modified, 'LastModified', Timestamp)
    GetProvisionedConcurrencyConfigResponse.type = Types::GetProvisionedConcurrencyConfigResponse

    GetRuntimeManagementConfigRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    GetRuntimeManagementConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    GetRuntimeManagementConfigRequest.type = Types::GetRuntimeManagementConfigRequest

    GetRuntimeManagementConfigResponse.add_member(:update_runtime_on, 'UpdateRuntimeOn', UpdateRuntimeOn)
    GetRuntimeManagementConfigResponse.add_member(:runtime_version_arn, 'RuntimeVersionArn', RuntimeVersionArn)
    GetRuntimeManagementConfigResponse.add_member(:function_arn, 'FunctionArn', NameSpacedFunctionArn)
    GetRuntimeManagementConfigResponse.type = Types::GetRuntimeManagementConfigResponse

    HeadersList.set_member(Header)

    ImageConfig.add_member(:entry_point, 'EntryPoint', StringList)
    ImageConfig.add_member(:command, 'Command', StringList)
    ImageConfig.add_member(:working_directory, 'WorkingDirectory', WorkingDirectory)
    ImageConfig.type = Types::ImageConfig

    ImageConfigError.add_member(:error_code, 'ErrorCode', String)
    ImageConfigError.add_member(:message, 'Message', SensitiveString)
    ImageConfigError.type = Types::ImageConfigError

    ImageConfigResponse.add_member(:image_config, 'ImageConfig', ImageConfig)
    ImageConfigResponse.add_member(:error, 'Error', ImageConfigError)
    ImageConfigResponse.type = Types::ImageConfigResponse

    InvalidCodeSignatureException.add_member(:type, 'Type', String)
    InvalidCodeSignatureException.add_member(:message, 'Message', String)
    InvalidCodeSignatureException.type = Types::InvalidCodeSignatureException

    InvalidParameterValueException.add_member(:type, 'Type', String)
    InvalidParameterValueException.add_member(:message, 'message', String)
    InvalidParameterValueException.type = Types::InvalidParameterValueException

    InvalidRequestContentException.add_member(:type, 'Type', String)
    InvalidRequestContentException.add_member(:message, 'message', String)
    InvalidRequestContentException.type = Types::InvalidRequestContentException

    InvalidRuntimeException.add_member(:type, 'Type', String)
    InvalidRuntimeException.add_member(:message, 'Message', String)
    InvalidRuntimeException.type = Types::InvalidRuntimeException

    InvalidSecurityGroupIDException.add_member(:type, 'Type', String)
    InvalidSecurityGroupIDException.add_member(:message, 'Message', String)
    InvalidSecurityGroupIDException.type = Types::InvalidSecurityGroupIDException

    InvalidSubnetIDException.add_member(:type, 'Type', String)
    InvalidSubnetIDException.add_member(:message, 'Message', String)
    InvalidSubnetIDException.type = Types::InvalidSubnetIDException

    InvalidZipFileException.add_member(:type, 'Type', String)
    InvalidZipFileException.add_member(:message, 'Message', String)
    InvalidZipFileException.type = Types::InvalidZipFileException

    InvocationRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    InvocationRequest.add_member(:invocation_type, 'InvocationType', InvocationType, traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type"})
    InvocationRequest.add_member(:log_type, 'LogType', LogType, traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type"})
    InvocationRequest.add_member(:client_context, 'ClientContext', String, traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context"})
    InvocationRequest.add_member(:payload, 'Payload', Blob, traits: {"smithy.api#httpPayload" => {}})
    InvocationRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    InvocationRequest[:http_payload] = :payload
    InvocationRequest[:http_payload_member] = InvocationRequest.member(:payload)
    InvocationRequest.type = Types::InvocationRequest

    InvocationResponse.add_member(:status_code, 'StatusCode', Integer, traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}})
    InvocationResponse.add_member(:function_error, 'FunctionError', String, traits: {"smithy.api#httpHeader" => "X-Amz-Function-Error"})
    InvocationResponse.add_member(:log_result, 'LogResult', String, traits: {"smithy.api#httpHeader" => "X-Amz-Log-Result"})
    InvocationResponse.add_member(:payload, 'Payload', Blob, traits: {"smithy.api#httpPayload" => {}})
    InvocationResponse.add_member(:executed_version, 'ExecutedVersion', Version, traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version"})
    InvocationResponse[:http_payload] = :payload
    InvocationResponse[:http_payload_member] = InvocationResponse.member(:payload)
    InvocationResponse.type = Types::InvocationResponse

    InvocationType.add_member(:event, 'Event', Prelude::Unit, traits: {"smithy.api#enumValue" => "Event"})
    InvocationType.add_member(:request_response, 'RequestResponse', Prelude::Unit, traits: {"smithy.api#enumValue" => "RequestResponse"})
    InvocationType.add_member(:dry_run, 'DryRun', Prelude::Unit, traits: {"smithy.api#enumValue" => "DryRun"})

    InvokeAsyncRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    InvokeAsyncRequest.add_member(:invoke_args, 'InvokeArgs', BlobStream, traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}})
    InvokeAsyncRequest[:http_payload] = :invoke_args
    InvokeAsyncRequest[:http_payload_member] = InvokeAsyncRequest.member(:invoke_args)
    InvokeAsyncRequest.type = Types::InvokeAsyncRequest

    InvokeAsyncResponse.add_member(:status, 'Status', HttpStatus, traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}})
    InvokeAsyncResponse.type = Types::InvokeAsyncResponse

    InvokeMode.add_member(:buffered, 'BUFFERED', Prelude::Unit, traits: {"smithy.api#enumValue" => "BUFFERED"})
    InvokeMode.add_member(:response_stream, 'RESPONSE_STREAM', Prelude::Unit, traits: {"smithy.api#enumValue" => "RESPONSE_STREAM"})

    InvokeResponseStreamUpdate.add_member(:payload, 'Payload', Blob, traits: {"smithy.api#eventPayload" => {}})
    InvokeResponseStreamUpdate.type = Types::InvokeResponseStreamUpdate

    InvokeWithResponseStreamCompleteEvent.add_member(:error_code, 'ErrorCode', String)
    InvokeWithResponseStreamCompleteEvent.add_member(:error_details, 'ErrorDetails', String)
    InvokeWithResponseStreamCompleteEvent.add_member(:log_result, 'LogResult', String)
    InvokeWithResponseStreamCompleteEvent.type = Types::InvokeWithResponseStreamCompleteEvent

    InvokeWithResponseStreamRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    InvokeWithResponseStreamRequest.add_member(:invocation_type, 'InvocationType', ResponseStreamingInvocationType, traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type"})
    InvokeWithResponseStreamRequest.add_member(:log_type, 'LogType', LogType, traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type"})
    InvokeWithResponseStreamRequest.add_member(:client_context, 'ClientContext', String, traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context"})
    InvokeWithResponseStreamRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    InvokeWithResponseStreamRequest.add_member(:payload, 'Payload', Blob, traits: {"smithy.api#httpPayload" => {}})
    InvokeWithResponseStreamRequest[:http_payload] = :payload
    InvokeWithResponseStreamRequest[:http_payload_member] = InvokeWithResponseStreamRequest.member(:payload)
    InvokeWithResponseStreamRequest.type = Types::InvokeWithResponseStreamRequest

    InvokeWithResponseStreamResponse.add_member(:status_code, 'StatusCode', Integer, traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}})
    InvokeWithResponseStreamResponse.add_member(:executed_version, 'ExecutedVersion', Version, traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version"})
    InvokeWithResponseStreamResponse.add_member(:event_stream, 'EventStream', InvokeWithResponseStreamResponseEvent, traits: {"smithy.api#httpPayload" => {}})
    InvokeWithResponseStreamResponse.add_member(:response_stream_content_type, 'ResponseStreamContentType', String, traits: {"smithy.api#httpHeader" => "Content-Type"})
    InvokeWithResponseStreamResponse[:http_payload] = :event_stream
    InvokeWithResponseStreamResponse[:http_payload_member] = InvokeWithResponseStreamResponse.member(:event_stream)
    InvokeWithResponseStreamResponse.type = Types::InvokeWithResponseStreamResponse

    InvokeWithResponseStreamResponseEvent.add_member(:payload_chunk, 'PayloadChunk', InvokeResponseStreamUpdate, Types::InvokeWithResponseStreamResponseEvent::PayloadChunk)
    InvokeWithResponseStreamResponseEvent.add_member(:invoke_complete, 'InvokeComplete', InvokeWithResponseStreamCompleteEvent, Types::InvokeWithResponseStreamResponseEvent::InvokeComplete)
    InvokeWithResponseStreamResponseEvent.add_member(:unknown, 'unknown', Prelude::Unit, Types::InvokeWithResponseStreamResponseEvent::Unknown)
    InvokeWithResponseStreamResponseEvent.type = Types::InvokeWithResponseStreamResponseEvent

    KMSAccessDeniedException.add_member(:type, 'Type', String)
    KMSAccessDeniedException.add_member(:message, 'Message', String)
    KMSAccessDeniedException.type = Types::KMSAccessDeniedException

    KMSDisabledException.add_member(:type, 'Type', String)
    KMSDisabledException.add_member(:message, 'Message', String)
    KMSDisabledException.type = Types::KMSDisabledException

    KMSInvalidStateException.add_member(:type, 'Type', String)
    KMSInvalidStateException.add_member(:message, 'Message', String)
    KMSInvalidStateException.type = Types::KMSInvalidStateException

    KMSNotFoundException.add_member(:type, 'Type', String)
    KMSNotFoundException.add_member(:message, 'Message', String)
    KMSNotFoundException.type = Types::KMSNotFoundException

    LastUpdateStatus.add_member(:successful, 'Successful', Prelude::Unit, traits: {"smithy.api#enumValue" => "Successful"})
    LastUpdateStatus.add_member(:failed, 'Failed', Prelude::Unit, traits: {"smithy.api#enumValue" => "Failed"})
    LastUpdateStatus.add_member(:in_progress, 'InProgress', Prelude::Unit, traits: {"smithy.api#enumValue" => "InProgress"})

    LastUpdateStatusReasonCode.add_member(:eni_limit_exceeded, 'EniLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "EniLimitExceeded"})
    LastUpdateStatusReasonCode.add_member(:insufficient_role_permissions, 'InsufficientRolePermissions', Prelude::Unit, traits: {"smithy.api#enumValue" => "InsufficientRolePermissions"})
    LastUpdateStatusReasonCode.add_member(:invalid_configuration, 'InvalidConfiguration', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidConfiguration"})
    LastUpdateStatusReasonCode.add_member(:internal_error, 'InternalError', Prelude::Unit, traits: {"smithy.api#enumValue" => "InternalError"})
    LastUpdateStatusReasonCode.add_member(:subnet_out_of_ip_addresses, 'SubnetOutOfIPAddresses', Prelude::Unit, traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses"})
    LastUpdateStatusReasonCode.add_member(:invalid_subnet, 'InvalidSubnet', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidSubnet"})
    LastUpdateStatusReasonCode.add_member(:invalid_security_group, 'InvalidSecurityGroup', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidSecurityGroup"})
    LastUpdateStatusReasonCode.add_member(:image_deleted, 'ImageDeleted', Prelude::Unit, traits: {"smithy.api#enumValue" => "ImageDeleted"})
    LastUpdateStatusReasonCode.add_member(:image_access_denied, 'ImageAccessDenied', Prelude::Unit, traits: {"smithy.api#enumValue" => "ImageAccessDenied"})
    LastUpdateStatusReasonCode.add_member(:invalid_image, 'InvalidImage', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidImage"})
    LastUpdateStatusReasonCode.add_member(:kms_key_access_denied, 'KMSKeyAccessDenied', Prelude::Unit, traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied"})
    LastUpdateStatusReasonCode.add_member(:kms_key_not_found, 'KMSKeyNotFound', Prelude::Unit, traits: {"smithy.api#enumValue" => "KMSKeyNotFound"})
    LastUpdateStatusReasonCode.add_member(:invalid_state_kms_key, 'InvalidStateKMSKey', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidStateKMSKey"})
    LastUpdateStatusReasonCode.add_member(:disabled_kms_key, 'DisabledKMSKey', Prelude::Unit, traits: {"smithy.api#enumValue" => "DisabledKMSKey"})
    LastUpdateStatusReasonCode.add_member(:efsio_error, 'EFSIOError', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSIOError"})
    LastUpdateStatusReasonCode.add_member(:efs_mount_connectivity_error, 'EFSMountConnectivityError', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountConnectivityError"})
    LastUpdateStatusReasonCode.add_member(:efs_mount_failure, 'EFSMountFailure', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountFailure"})
    LastUpdateStatusReasonCode.add_member(:efs_mount_timeout, 'EFSMountTimeout', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountTimeout"})
    LastUpdateStatusReasonCode.add_member(:invalid_runtime, 'InvalidRuntime', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidRuntime"})
    LastUpdateStatusReasonCode.add_member(:invalid_zip_file_exception, 'InvalidZipFileException', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidZipFileException"})
    LastUpdateStatusReasonCode.add_member(:function_error, 'FunctionError', Prelude::Unit, traits: {"smithy.api#enumValue" => "FunctionError"})

    Layer.add_member(:arn, 'Arn', LayerVersionArn)
    Layer.add_member(:code_size, 'CodeSize', Long, traits: {"smithy.api#default" => 0})
    Layer.add_member(:signing_profile_version_arn, 'SigningProfileVersionArn', Arn)
    Layer.add_member(:signing_job_arn, 'SigningJobArn', Arn)
    Layer.type = Types::Layer

    LayerList.set_member(LayerVersionArn)

    LayerVersionContentInput.add_member(:s3_bucket, 'S3Bucket', S3Bucket)
    LayerVersionContentInput.add_member(:s3_key, 'S3Key', S3Key)
    LayerVersionContentInput.add_member(:s3_object_version, 'S3ObjectVersion', S3ObjectVersion)
    LayerVersionContentInput.add_member(:zip_file, 'ZipFile', Blob)
    LayerVersionContentInput.type = Types::LayerVersionContentInput

    LayerVersionContentOutput.add_member(:location, 'Location', String)
    LayerVersionContentOutput.add_member(:code_sha256, 'CodeSha256', String)
    LayerVersionContentOutput.add_member(:code_size, 'CodeSize', Long, traits: {"smithy.api#default" => 0})
    LayerVersionContentOutput.add_member(:signing_profile_version_arn, 'SigningProfileVersionArn', String)
    LayerVersionContentOutput.add_member(:signing_job_arn, 'SigningJobArn', String)
    LayerVersionContentOutput.type = Types::LayerVersionContentOutput

    LayerVersionsList.set_member(LayerVersionsListItem)

    LayerVersionsListItem.add_member(:layer_version_arn, 'LayerVersionArn', LayerVersionArn)
    LayerVersionsListItem.add_member(:version, 'Version', LayerVersionNumber, traits: {"smithy.api#default" => 0})
    LayerVersionsListItem.add_member(:description, 'Description', Description)
    LayerVersionsListItem.add_member(:created_date, 'CreatedDate', Timestamp)
    LayerVersionsListItem.add_member(:compatible_runtimes, 'CompatibleRuntimes', CompatibleRuntimes)
    LayerVersionsListItem.add_member(:license_info, 'LicenseInfo', LicenseInfo)
    LayerVersionsListItem.add_member(:compatible_architectures, 'CompatibleArchitectures', CompatibleArchitectures)
    LayerVersionsListItem.type = Types::LayerVersionsListItem

    LayersList.set_member(LayersListItem)

    LayersListItem.add_member(:layer_name, 'LayerName', LayerName)
    LayersListItem.add_member(:layer_arn, 'LayerArn', LayerArn)
    LayersListItem.add_member(:latest_matching_version, 'LatestMatchingVersion', LayerVersionsListItem)
    LayersListItem.type = Types::LayersListItem

    LayersReferenceList.set_member(Layer)

    ListAliasesRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListAliasesRequest.add_member(:function_version, 'FunctionVersion', Version, traits: {"smithy.api#httpQuery" => "FunctionVersion"})
    ListAliasesRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListAliasesRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListAliasesRequest.type = Types::ListAliasesRequest

    ListAliasesResponse.add_member(:next_marker, 'NextMarker', String)
    ListAliasesResponse.add_member(:aliases, 'Aliases', AliasList)
    ListAliasesResponse.type = Types::ListAliasesResponse

    ListCodeSigningConfigsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListCodeSigningConfigsRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListCodeSigningConfigsRequest.type = Types::ListCodeSigningConfigsRequest

    ListCodeSigningConfigsResponse.add_member(:next_marker, 'NextMarker', String)
    ListCodeSigningConfigsResponse.add_member(:code_signing_configs, 'CodeSigningConfigs', CodeSigningConfigList)
    ListCodeSigningConfigsResponse.type = Types::ListCodeSigningConfigsResponse

    ListEventSourceMappingsRequest.add_member(:event_source_arn, 'EventSourceArn', Arn, traits: {"smithy.api#httpQuery" => "EventSourceArn"})
    ListEventSourceMappingsRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpQuery" => "FunctionName"})
    ListEventSourceMappingsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListEventSourceMappingsRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListEventSourceMappingsRequest.type = Types::ListEventSourceMappingsRequest

    ListEventSourceMappingsResponse.add_member(:next_marker, 'NextMarker', String)
    ListEventSourceMappingsResponse.add_member(:event_source_mappings, 'EventSourceMappings', EventSourceMappingsList)
    ListEventSourceMappingsResponse.type = Types::ListEventSourceMappingsResponse

    ListFunctionEventInvokeConfigsRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListFunctionEventInvokeConfigsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListFunctionEventInvokeConfigsRequest.add_member(:max_items, 'MaxItems', MaxFunctionEventInvokeConfigListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListFunctionEventInvokeConfigsRequest.type = Types::ListFunctionEventInvokeConfigsRequest

    ListFunctionEventInvokeConfigsResponse.add_member(:function_event_invoke_configs, 'FunctionEventInvokeConfigs', FunctionEventInvokeConfigList)
    ListFunctionEventInvokeConfigsResponse.add_member(:next_marker, 'NextMarker', String)
    ListFunctionEventInvokeConfigsResponse.type = Types::ListFunctionEventInvokeConfigsResponse

    ListFunctionUrlConfigsRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListFunctionUrlConfigsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListFunctionUrlConfigsRequest.add_member(:max_items, 'MaxItems', MaxItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListFunctionUrlConfigsRequest.type = Types::ListFunctionUrlConfigsRequest

    ListFunctionUrlConfigsResponse.add_member(:function_url_configs, 'FunctionUrlConfigs', FunctionUrlConfigList, traits: {"smithy.api#required" => {}})
    ListFunctionUrlConfigsResponse.add_member(:next_marker, 'NextMarker', String)
    ListFunctionUrlConfigsResponse.type = Types::ListFunctionUrlConfigsResponse

    ListFunctionsByCodeSigningConfigRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListFunctionsByCodeSigningConfigRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListFunctionsByCodeSigningConfigRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListFunctionsByCodeSigningConfigRequest.type = Types::ListFunctionsByCodeSigningConfigRequest

    ListFunctionsByCodeSigningConfigResponse.add_member(:next_marker, 'NextMarker', String)
    ListFunctionsByCodeSigningConfigResponse.add_member(:function_arns, 'FunctionArns', FunctionArnList)
    ListFunctionsByCodeSigningConfigResponse.type = Types::ListFunctionsByCodeSigningConfigResponse

    ListFunctionsRequest.add_member(:master_region, 'MasterRegion', MasterRegion, traits: {"smithy.api#httpQuery" => "MasterRegion"})
    ListFunctionsRequest.add_member(:function_version, 'FunctionVersion', FunctionVersion, traits: {"smithy.api#httpQuery" => "FunctionVersion"})
    ListFunctionsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListFunctionsRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListFunctionsRequest.type = Types::ListFunctionsRequest

    ListFunctionsResponse.add_member(:next_marker, 'NextMarker', String)
    ListFunctionsResponse.add_member(:functions, 'Functions', FunctionList)
    ListFunctionsResponse.type = Types::ListFunctionsResponse

    ListLayerVersionsRequest.add_member(:compatible_runtime, 'CompatibleRuntime', Runtime, traits: {"smithy.api#httpQuery" => "CompatibleRuntime"})
    ListLayerVersionsRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListLayerVersionsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListLayerVersionsRequest.add_member(:max_items, 'MaxItems', MaxLayerListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListLayerVersionsRequest.add_member(:compatible_architecture, 'CompatibleArchitecture', Architecture, traits: {"smithy.api#httpQuery" => "CompatibleArchitecture"})
    ListLayerVersionsRequest.type = Types::ListLayerVersionsRequest

    ListLayerVersionsResponse.add_member(:next_marker, 'NextMarker', String)
    ListLayerVersionsResponse.add_member(:layer_versions, 'LayerVersions', LayerVersionsList)
    ListLayerVersionsResponse.type = Types::ListLayerVersionsResponse

    ListLayersRequest.add_member(:compatible_runtime, 'CompatibleRuntime', Runtime, traits: {"smithy.api#httpQuery" => "CompatibleRuntime"})
    ListLayersRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListLayersRequest.add_member(:max_items, 'MaxItems', MaxLayerListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListLayersRequest.add_member(:compatible_architecture, 'CompatibleArchitecture', Architecture, traits: {"smithy.api#httpQuery" => "CompatibleArchitecture"})
    ListLayersRequest.type = Types::ListLayersRequest

    ListLayersResponse.add_member(:next_marker, 'NextMarker', String)
    ListLayersResponse.add_member(:layers, 'Layers', LayersList)
    ListLayersResponse.type = Types::ListLayersResponse

    ListProvisionedConcurrencyConfigsRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListProvisionedConcurrencyConfigsRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListProvisionedConcurrencyConfigsRequest.add_member(:max_items, 'MaxItems', MaxProvisionedConcurrencyConfigListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListProvisionedConcurrencyConfigsRequest.type = Types::ListProvisionedConcurrencyConfigsRequest

    ListProvisionedConcurrencyConfigsResponse.add_member(:provisioned_concurrency_configs, 'ProvisionedConcurrencyConfigs', ProvisionedConcurrencyConfigList)
    ListProvisionedConcurrencyConfigsResponse.add_member(:next_marker, 'NextMarker', String)
    ListProvisionedConcurrencyConfigsResponse.type = Types::ListProvisionedConcurrencyConfigsResponse

    ListTagsRequest.add_member(:resource, 'Resource', TaggableResource, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListTagsRequest.type = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, 'Tags', Tags)
    ListTagsResponse.type = Types::ListTagsResponse

    ListVersionsByFunctionRequest.add_member(:function_name, 'FunctionName', NamespacedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    ListVersionsByFunctionRequest.add_member(:marker, 'Marker', String, traits: {"smithy.api#httpQuery" => "Marker"})
    ListVersionsByFunctionRequest.add_member(:max_items, 'MaxItems', MaxListItems, traits: {"smithy.api#httpQuery" => "MaxItems"})
    ListVersionsByFunctionRequest.type = Types::ListVersionsByFunctionRequest

    ListVersionsByFunctionResponse.add_member(:next_marker, 'NextMarker', String)
    ListVersionsByFunctionResponse.add_member(:versions, 'Versions', FunctionList)
    ListVersionsByFunctionResponse.type = Types::ListVersionsByFunctionResponse

    LogFormat.add_member(:json, 'Json', Prelude::Unit, traits: {"smithy.api#enumValue" => "JSON"})
    LogFormat.add_member(:text, 'Text', Prelude::Unit, traits: {"smithy.api#enumValue" => "Text"})

    LogType.add_member(:none, 'None', Prelude::Unit, traits: {"smithy.api#enumValue" => "None"})
    LogType.add_member(:tail, 'Tail', Prelude::Unit, traits: {"smithy.api#enumValue" => "Tail"})

    LoggingConfig.add_member(:log_format, 'LogFormat', LogFormat)
    LoggingConfig.add_member(:application_log_level, 'ApplicationLogLevel', ApplicationLogLevel)
    LoggingConfig.add_member(:system_log_level, 'SystemLogLevel', SystemLogLevel)
    LoggingConfig.add_member(:log_group, 'LogGroup', LogGroup)
    LoggingConfig.type = Types::LoggingConfig

    OnFailure.add_member(:destination, 'Destination', DestinationArn)
    OnFailure.type = Types::OnFailure

    OnSuccess.add_member(:destination, 'Destination', DestinationArn)
    OnSuccess.type = Types::OnSuccess

    PackageType.add_member(:zip, 'Zip', Prelude::Unit, traits: {"smithy.api#enumValue" => "Zip"})
    PackageType.add_member(:image, 'Image', Prelude::Unit, traits: {"smithy.api#enumValue" => "Image"})

    PolicyLengthExceededException.add_member(:type, 'Type', String)
    PolicyLengthExceededException.add_member(:message, 'message', String)
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException

    PreconditionFailedException.add_member(:type, 'Type', String)
    PreconditionFailedException.add_member(:message, 'message', String)
    PreconditionFailedException.type = Types::PreconditionFailedException

    ProvisionedConcurrencyConfigList.set_member(ProvisionedConcurrencyConfigListItem)

    ProvisionedConcurrencyConfigListItem.add_member(:function_arn, 'FunctionArn', FunctionArn)
    ProvisionedConcurrencyConfigListItem.add_member(:requested_provisioned_concurrent_executions, 'RequestedProvisionedConcurrentExecutions', PositiveInteger)
    ProvisionedConcurrencyConfigListItem.add_member(:available_provisioned_concurrent_executions, 'AvailableProvisionedConcurrentExecutions', NonNegativeInteger)
    ProvisionedConcurrencyConfigListItem.add_member(:allocated_provisioned_concurrent_executions, 'AllocatedProvisionedConcurrentExecutions', NonNegativeInteger)
    ProvisionedConcurrencyConfigListItem.add_member(:status, 'Status', ProvisionedConcurrencyStatusEnum)
    ProvisionedConcurrencyConfigListItem.add_member(:status_reason, 'StatusReason', String)
    ProvisionedConcurrencyConfigListItem.add_member(:last_modified, 'LastModified', Timestamp)
    ProvisionedConcurrencyConfigListItem.type = Types::ProvisionedConcurrencyConfigListItem

    ProvisionedConcurrencyConfigNotFoundException.add_member(:type, 'Type', String)
    ProvisionedConcurrencyConfigNotFoundException.add_member(:message, 'message', String)
    ProvisionedConcurrencyConfigNotFoundException.type = Types::ProvisionedConcurrencyConfigNotFoundException

    ProvisionedConcurrencyStatusEnum.add_member(:in_progress, 'IN_PROGRESS', Prelude::Unit, traits: {"smithy.api#enumValue" => "IN_PROGRESS"})
    ProvisionedConcurrencyStatusEnum.add_member(:ready, 'READY', Prelude::Unit, traits: {"smithy.api#enumValue" => "READY"})
    ProvisionedConcurrencyStatusEnum.add_member(:failed, 'FAILED', Prelude::Unit, traits: {"smithy.api#enumValue" => "FAILED"})

    ProvisionedPollerConfig.add_member(:minimum_pollers, 'MinimumPollers', MinimumNumberOfPollers)
    ProvisionedPollerConfig.add_member(:maximum_pollers, 'MaximumPollers', MaximumNumberOfPollers)
    ProvisionedPollerConfig.type = Types::ProvisionedPollerConfig

    PublishLayerVersionRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PublishLayerVersionRequest.add_member(:description, 'Description', Description)
    PublishLayerVersionRequest.add_member(:content, 'Content', LayerVersionContentInput, traits: {"smithy.api#required" => {}})
    PublishLayerVersionRequest.add_member(:compatible_runtimes, 'CompatibleRuntimes', CompatibleRuntimes)
    PublishLayerVersionRequest.add_member(:license_info, 'LicenseInfo', LicenseInfo)
    PublishLayerVersionRequest.add_member(:compatible_architectures, 'CompatibleArchitectures', CompatibleArchitectures)
    PublishLayerVersionRequest.type = Types::PublishLayerVersionRequest

    PublishLayerVersionResponse.add_member(:content, 'Content', LayerVersionContentOutput)
    PublishLayerVersionResponse.add_member(:layer_arn, 'LayerArn', LayerArn)
    PublishLayerVersionResponse.add_member(:layer_version_arn, 'LayerVersionArn', LayerVersionArn)
    PublishLayerVersionResponse.add_member(:description, 'Description', Description)
    PublishLayerVersionResponse.add_member(:created_date, 'CreatedDate', Timestamp)
    PublishLayerVersionResponse.add_member(:version, 'Version', LayerVersionNumber, traits: {"smithy.api#default" => 0})
    PublishLayerVersionResponse.add_member(:compatible_runtimes, 'CompatibleRuntimes', CompatibleRuntimes)
    PublishLayerVersionResponse.add_member(:license_info, 'LicenseInfo', LicenseInfo)
    PublishLayerVersionResponse.add_member(:compatible_architectures, 'CompatibleArchitectures', CompatibleArchitectures)
    PublishLayerVersionResponse.type = Types::PublishLayerVersionResponse

    PublishVersionRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PublishVersionRequest.add_member(:code_sha256, 'CodeSha256', String)
    PublishVersionRequest.add_member(:description, 'Description', Description)
    PublishVersionRequest.add_member(:revision_id, 'RevisionId', String)
    PublishVersionRequest.type = Types::PublishVersionRequest

    PutFunctionCodeSigningConfigRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#required" => {}})
    PutFunctionCodeSigningConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutFunctionCodeSigningConfigRequest.type = Types::PutFunctionCodeSigningConfigRequest

    PutFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#required" => {}})
    PutFunctionCodeSigningConfigResponse.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#required" => {}})
    PutFunctionCodeSigningConfigResponse.type = Types::PutFunctionCodeSigningConfigResponse

    PutFunctionConcurrencyRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutFunctionConcurrencyRequest.add_member(:reserved_concurrent_executions, 'ReservedConcurrentExecutions', ReservedConcurrentExecutions, traits: {"smithy.api#required" => {}})
    PutFunctionConcurrencyRequest.type = Types::PutFunctionConcurrencyRequest

    PutFunctionEventInvokeConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutFunctionEventInvokeConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttempts)
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, 'MaximumEventAgeInSeconds', MaximumEventAgeInSeconds)
    PutFunctionEventInvokeConfigRequest.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    PutFunctionEventInvokeConfigRequest.type = Types::PutFunctionEventInvokeConfigRequest

    PutFunctionRecursionConfigRequest.add_member(:function_name, 'FunctionName', UnqualifiedFunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutFunctionRecursionConfigRequest.add_member(:recursive_loop, 'RecursiveLoop', RecursiveLoop, traits: {"smithy.api#required" => {}})
    PutFunctionRecursionConfigRequest.type = Types::PutFunctionRecursionConfigRequest

    PutFunctionRecursionConfigResponse.add_member(:recursive_loop, 'RecursiveLoop', RecursiveLoop)
    PutFunctionRecursionConfigResponse.type = Types::PutFunctionRecursionConfigResponse

    PutProvisionedConcurrencyConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutProvisionedConcurrencyConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}})
    PutProvisionedConcurrencyConfigRequest.add_member(:provisioned_concurrent_executions, 'ProvisionedConcurrentExecutions', PositiveInteger, traits: {"smithy.api#required" => {}})
    PutProvisionedConcurrencyConfigRequest.type = Types::PutProvisionedConcurrencyConfigRequest

    PutProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, 'RequestedProvisionedConcurrentExecutions', PositiveInteger)
    PutProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, 'AvailableProvisionedConcurrentExecutions', NonNegativeInteger)
    PutProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, 'AllocatedProvisionedConcurrentExecutions', NonNegativeInteger)
    PutProvisionedConcurrencyConfigResponse.add_member(:status, 'Status', ProvisionedConcurrencyStatusEnum)
    PutProvisionedConcurrencyConfigResponse.add_member(:status_reason, 'StatusReason', String)
    PutProvisionedConcurrencyConfigResponse.add_member(:last_modified, 'LastModified', Timestamp)
    PutProvisionedConcurrencyConfigResponse.type = Types::PutProvisionedConcurrencyConfigResponse

    PutRuntimeManagementConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    PutRuntimeManagementConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    PutRuntimeManagementConfigRequest.add_member(:update_runtime_on, 'UpdateRuntimeOn', UpdateRuntimeOn, traits: {"smithy.api#required" => {}})
    PutRuntimeManagementConfigRequest.add_member(:runtime_version_arn, 'RuntimeVersionArn', RuntimeVersionArn)
    PutRuntimeManagementConfigRequest.type = Types::PutRuntimeManagementConfigRequest

    PutRuntimeManagementConfigResponse.add_member(:update_runtime_on, 'UpdateRuntimeOn', UpdateRuntimeOn, traits: {"smithy.api#required" => {}})
    PutRuntimeManagementConfigResponse.add_member(:function_arn, 'FunctionArn', FunctionArn, traits: {"smithy.api#required" => {}})
    PutRuntimeManagementConfigResponse.add_member(:runtime_version_arn, 'RuntimeVersionArn', RuntimeVersionArn)
    PutRuntimeManagementConfigResponse.type = Types::PutRuntimeManagementConfigResponse

    Queues.set_member(Queue)

    RecursiveInvocationException.add_member(:type, 'Type', String)
    RecursiveInvocationException.add_member(:message, 'Message', String)
    RecursiveInvocationException.type = Types::RecursiveInvocationException

    RecursiveLoop.add_member(:allow, 'Allow', Prelude::Unit, traits: {"smithy.api#enumValue" => "Allow"})
    RecursiveLoop.add_member(:terminate, 'Terminate', Prelude::Unit, traits: {"smithy.api#enumValue" => "Terminate"})

    RemoveLayerVersionPermissionRequest.add_member(:layer_name, 'LayerName', LayerName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    RemoveLayerVersionPermissionRequest.add_member(:version_number, 'VersionNumber', LayerVersionNumber, traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    RemoveLayerVersionPermissionRequest.add_member(:statement_id, 'StatementId', StatementId, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    RemoveLayerVersionPermissionRequest.add_member(:revision_id, 'RevisionId', String, traits: {"smithy.api#httpQuery" => "RevisionId"})
    RemoveLayerVersionPermissionRequest.type = Types::RemoveLayerVersionPermissionRequest

    RemovePermissionRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    RemovePermissionRequest.add_member(:statement_id, 'StatementId', NamespacedStatementId, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    RemovePermissionRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    RemovePermissionRequest.add_member(:revision_id, 'RevisionId', String, traits: {"smithy.api#httpQuery" => "RevisionId"})
    RemovePermissionRequest.type = Types::RemovePermissionRequest

    RequestTooLargeException.add_member(:type, 'Type', String)
    RequestTooLargeException.add_member(:message, 'message', String)
    RequestTooLargeException.type = Types::RequestTooLargeException

    ResourceConflictException.add_member(:type, 'Type', String)
    ResourceConflictException.add_member(:message, 'message', String)
    ResourceConflictException.type = Types::ResourceConflictException

    ResourceInUseException.add_member(:type, 'Type', String)
    ResourceInUseException.add_member(:message, 'Message', String)
    ResourceInUseException.type = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:type, 'Type', String)
    ResourceNotFoundException.add_member(:message, 'Message', String)
    ResourceNotFoundException.type = Types::ResourceNotFoundException

    ResourceNotReadyException.add_member(:type, 'Type', String)
    ResourceNotReadyException.add_member(:message, 'message', String)
    ResourceNotReadyException.type = Types::ResourceNotReadyException

    ResponseStreamingInvocationType.add_member(:request_response, 'RequestResponse', Prelude::Unit, traits: {"smithy.api#enumValue" => "RequestResponse"})
    ResponseStreamingInvocationType.add_member(:dry_run, 'DryRun', Prelude::Unit, traits: {"smithy.api#enumValue" => "DryRun"})

    Runtime.add_member(:nodejs, 'nodejs', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs"})
    Runtime.add_member(:nodejs43, 'nodejs43', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs4.3"})
    Runtime.add_member(:nodejs610, 'nodejs610', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs6.10"})
    Runtime.add_member(:nodejs810, 'nodejs810', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs8.10"})
    Runtime.add_member(:nodejs10x, 'nodejs10x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs10.x"})
    Runtime.add_member(:nodejs12x, 'nodejs12x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs12.x"})
    Runtime.add_member(:nodejs14x, 'nodejs14x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs14.x"})
    Runtime.add_member(:nodejs16x, 'nodejs16x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs16.x"})
    Runtime.add_member(:java8, 'java8', Prelude::Unit, traits: {"smithy.api#enumValue" => "java8"})
    Runtime.add_member(:java8al2, 'java8al2', Prelude::Unit, traits: {"smithy.api#enumValue" => "java8.al2"})
    Runtime.add_member(:java11, 'java11', Prelude::Unit, traits: {"smithy.api#enumValue" => "java11"})
    Runtime.add_member(:python27, 'python27', Prelude::Unit, traits: {"smithy.api#enumValue" => "python2.7"})
    Runtime.add_member(:python36, 'python36', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.6"})
    Runtime.add_member(:python37, 'python37', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.7"})
    Runtime.add_member(:python38, 'python38', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.8"})
    Runtime.add_member(:python39, 'python39', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.9"})
    Runtime.add_member(:dotnetcore10, 'dotnetcore10', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnetcore1.0"})
    Runtime.add_member(:dotnetcore20, 'dotnetcore20', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnetcore2.0"})
    Runtime.add_member(:dotnetcore21, 'dotnetcore21', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnetcore2.1"})
    Runtime.add_member(:dotnetcore31, 'dotnetcore31', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnetcore3.1"})
    Runtime.add_member(:dotnet6, 'dotnet6', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnet6"})
    Runtime.add_member(:dotnet8, 'dotnet8', Prelude::Unit, traits: {"smithy.api#enumValue" => "dotnet8"})
    Runtime.add_member(:nodejs43edge, 'nodejs43edge', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs4.3-edge"})
    Runtime.add_member(:go1x, 'go1x', Prelude::Unit, traits: {"smithy.api#enumValue" => "go1.x"})
    Runtime.add_member(:ruby25, 'ruby25', Prelude::Unit, traits: {"smithy.api#enumValue" => "ruby2.5"})
    Runtime.add_member(:ruby27, 'ruby27', Prelude::Unit, traits: {"smithy.api#enumValue" => "ruby2.7"})
    Runtime.add_member(:provided, 'provided', Prelude::Unit, traits: {"smithy.api#enumValue" => "provided"})
    Runtime.add_member(:providedal2, 'providedal2', Prelude::Unit, traits: {"smithy.api#enumValue" => "provided.al2"})
    Runtime.add_member(:nodejs18x, 'nodejs18x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs18.x"})
    Runtime.add_member(:python310, 'python310', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.10"})
    Runtime.add_member(:java17, 'java17', Prelude::Unit, traits: {"smithy.api#enumValue" => "java17"})
    Runtime.add_member(:ruby32, 'ruby32', Prelude::Unit, traits: {"smithy.api#enumValue" => "ruby3.2"})
    Runtime.add_member(:ruby33, 'ruby33', Prelude::Unit, traits: {"smithy.api#enumValue" => "ruby3.3"})
    Runtime.add_member(:ruby34, 'ruby34', Prelude::Unit, traits: {"smithy.api#enumValue" => "ruby3.4"})
    Runtime.add_member(:python311, 'python311', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.11"})
    Runtime.add_member(:nodejs20x, 'nodejs20x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs20.x"})
    Runtime.add_member(:providedal2023, 'providedal2023', Prelude::Unit, traits: {"smithy.api#enumValue" => "provided.al2023"})
    Runtime.add_member(:python312, 'python312', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.12"})
    Runtime.add_member(:java21, 'java21', Prelude::Unit, traits: {"smithy.api#enumValue" => "java21"})
    Runtime.add_member(:python313, 'python313', Prelude::Unit, traits: {"smithy.api#enumValue" => "python3.13"})
    Runtime.add_member(:nodejs22x, 'nodejs22x', Prelude::Unit, traits: {"smithy.api#enumValue" => "nodejs22.x"})

    RuntimeVersionConfig.add_member(:runtime_version_arn, 'RuntimeVersionArn', RuntimeVersionArn)
    RuntimeVersionConfig.add_member(:error, 'Error', RuntimeVersionError)
    RuntimeVersionConfig.type = Types::RuntimeVersionConfig

    RuntimeVersionError.add_member(:error_code, 'ErrorCode', String)
    RuntimeVersionError.add_member(:message, 'Message', SensitiveString)
    RuntimeVersionError.type = Types::RuntimeVersionError

    ScalingConfig.add_member(:maximum_concurrency, 'MaximumConcurrency', MaximumConcurrency)
    ScalingConfig.type = Types::ScalingConfig

    SecurityGroupIds.set_member(SecurityGroupId)

    SelfManagedEventSource.add_member(:endpoints, 'Endpoints', Endpoints)
    SelfManagedEventSource.type = Types::SelfManagedEventSource

    SelfManagedKafkaEventSourceConfig.add_member(:consumer_group_id, 'ConsumerGroupId', URI)
    SelfManagedKafkaEventSourceConfig.type = Types::SelfManagedKafkaEventSourceConfig

    ServiceException.add_member(:type, 'Type', String)
    ServiceException.add_member(:message, 'Message', String)
    ServiceException.type = Types::ServiceException

    SigningProfileVersionArns.set_member(Arn)

    SnapStart.add_member(:apply_on, 'ApplyOn', SnapStartApplyOn)
    SnapStart.type = Types::SnapStart

    SnapStartApplyOn.add_member(:published_versions, 'PublishedVersions', Prelude::Unit, traits: {"smithy.api#enumValue" => "PublishedVersions"})
    SnapStartApplyOn.add_member(:none, 'None', Prelude::Unit, traits: {"smithy.api#enumValue" => "None"})

    SnapStartException.add_member(:type, 'Type', String)
    SnapStartException.add_member(:message, 'Message', String)
    SnapStartException.type = Types::SnapStartException

    SnapStartNotReadyException.add_member(:type, 'Type', String)
    SnapStartNotReadyException.add_member(:message, 'Message', String)
    SnapStartNotReadyException.type = Types::SnapStartNotReadyException

    SnapStartOptimizationStatus.add_member(:on, 'On', Prelude::Unit, traits: {"smithy.api#enumValue" => "On"})
    SnapStartOptimizationStatus.add_member(:off, 'Off', Prelude::Unit, traits: {"smithy.api#enumValue" => "Off"})

    SnapStartResponse.add_member(:apply_on, 'ApplyOn', SnapStartApplyOn)
    SnapStartResponse.add_member(:optimization_status, 'OptimizationStatus', SnapStartOptimizationStatus)
    SnapStartResponse.type = Types::SnapStartResponse

    SnapStartTimeoutException.add_member(:type, 'Type', String)
    SnapStartTimeoutException.add_member(:message, 'Message', String)
    SnapStartTimeoutException.type = Types::SnapStartTimeoutException

    SourceAccessConfiguration.add_member(:type, 'Type', SourceAccessType)
    SourceAccessConfiguration.add_member(:uri, 'URI', URI)
    SourceAccessConfiguration.type = Types::SourceAccessConfiguration

    SourceAccessConfigurations.set_member(SourceAccessConfiguration)

    SourceAccessType.add_member(:basic_auth, 'BASIC_AUTH', Prelude::Unit, traits: {"smithy.api#enumValue" => "BASIC_AUTH"})
    SourceAccessType.add_member(:vpc_subnet, 'VPC_SUBNET', Prelude::Unit, traits: {"smithy.api#enumValue" => "VPC_SUBNET"})
    SourceAccessType.add_member(:vpc_security_group, 'VPC_SECURITY_GROUP', Prelude::Unit, traits: {"smithy.api#enumValue" => "VPC_SECURITY_GROUP"})
    SourceAccessType.add_member(:sasl_scram_512_auth, 'SASL_SCRAM_512_AUTH', Prelude::Unit, traits: {"smithy.api#enumValue" => "SASL_SCRAM_512_AUTH"})
    SourceAccessType.add_member(:sasl_scram_256_auth, 'SASL_SCRAM_256_AUTH', Prelude::Unit, traits: {"smithy.api#enumValue" => "SASL_SCRAM_256_AUTH"})
    SourceAccessType.add_member(:virtual_host, 'VIRTUAL_HOST', Prelude::Unit, traits: {"smithy.api#enumValue" => "VIRTUAL_HOST"})
    SourceAccessType.add_member(:client_certificate_tls_auth, 'CLIENT_CERTIFICATE_TLS_AUTH', Prelude::Unit, traits: {"smithy.api#enumValue" => "CLIENT_CERTIFICATE_TLS_AUTH"})
    SourceAccessType.add_member(:server_root_ca_certificate, 'SERVER_ROOT_CA_CERTIFICATE', Prelude::Unit, traits: {"smithy.api#enumValue" => "SERVER_ROOT_CA_CERTIFICATE"})

    State.add_member(:pending, 'Pending', Prelude::Unit, traits: {"smithy.api#enumValue" => "Pending"})
    State.add_member(:active, 'Active', Prelude::Unit, traits: {"smithy.api#enumValue" => "Active"})
    State.add_member(:inactive, 'Inactive', Prelude::Unit, traits: {"smithy.api#enumValue" => "Inactive"})
    State.add_member(:failed, 'Failed', Prelude::Unit, traits: {"smithy.api#enumValue" => "Failed"})

    StateReasonCode.add_member(:idle, 'Idle', Prelude::Unit, traits: {"smithy.api#enumValue" => "Idle"})
    StateReasonCode.add_member(:creating, 'Creating', Prelude::Unit, traits: {"smithy.api#enumValue" => "Creating"})
    StateReasonCode.add_member(:restoring, 'Restoring', Prelude::Unit, traits: {"smithy.api#enumValue" => "Restoring"})
    StateReasonCode.add_member(:eni_limit_exceeded, 'EniLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "EniLimitExceeded"})
    StateReasonCode.add_member(:insufficient_role_permissions, 'InsufficientRolePermissions', Prelude::Unit, traits: {"smithy.api#enumValue" => "InsufficientRolePermissions"})
    StateReasonCode.add_member(:invalid_configuration, 'InvalidConfiguration', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidConfiguration"})
    StateReasonCode.add_member(:internal_error, 'InternalError', Prelude::Unit, traits: {"smithy.api#enumValue" => "InternalError"})
    StateReasonCode.add_member(:subnet_out_of_ip_addresses, 'SubnetOutOfIPAddresses', Prelude::Unit, traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses"})
    StateReasonCode.add_member(:invalid_subnet, 'InvalidSubnet', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidSubnet"})
    StateReasonCode.add_member(:invalid_security_group, 'InvalidSecurityGroup', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidSecurityGroup"})
    StateReasonCode.add_member(:image_deleted, 'ImageDeleted', Prelude::Unit, traits: {"smithy.api#enumValue" => "ImageDeleted"})
    StateReasonCode.add_member(:image_access_denied, 'ImageAccessDenied', Prelude::Unit, traits: {"smithy.api#enumValue" => "ImageAccessDenied"})
    StateReasonCode.add_member(:invalid_image, 'InvalidImage', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidImage"})
    StateReasonCode.add_member(:kms_key_access_denied, 'KMSKeyAccessDenied', Prelude::Unit, traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied"})
    StateReasonCode.add_member(:kms_key_not_found, 'KMSKeyNotFound', Prelude::Unit, traits: {"smithy.api#enumValue" => "KMSKeyNotFound"})
    StateReasonCode.add_member(:invalid_state_kms_key, 'InvalidStateKMSKey', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidStateKMSKey"})
    StateReasonCode.add_member(:disabled_kms_key, 'DisabledKMSKey', Prelude::Unit, traits: {"smithy.api#enumValue" => "DisabledKMSKey"})
    StateReasonCode.add_member(:efsio_error, 'EFSIOError', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSIOError"})
    StateReasonCode.add_member(:efs_mount_connectivity_error, 'EFSMountConnectivityError', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountConnectivityError"})
    StateReasonCode.add_member(:efs_mount_failure, 'EFSMountFailure', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountFailure"})
    StateReasonCode.add_member(:efs_mount_timeout, 'EFSMountTimeout', Prelude::Unit, traits: {"smithy.api#enumValue" => "EFSMountTimeout"})
    StateReasonCode.add_member(:invalid_runtime, 'InvalidRuntime', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidRuntime"})
    StateReasonCode.add_member(:invalid_zip_file_exception, 'InvalidZipFileException', Prelude::Unit, traits: {"smithy.api#enumValue" => "InvalidZipFileException"})
    StateReasonCode.add_member(:function_error, 'FunctionError', Prelude::Unit, traits: {"smithy.api#enumValue" => "FunctionError"})

    StringList.set_member(String)

    SubnetIPAddressLimitReachedException.add_member(:type, 'Type', String)
    SubnetIPAddressLimitReachedException.add_member(:message, 'Message', String)
    SubnetIPAddressLimitReachedException.type = Types::SubnetIPAddressLimitReachedException

    SubnetIds.set_member(SubnetId)

    SystemLogLevel.add_member(:debug, 'Debug', Prelude::Unit, traits: {"smithy.api#enumValue" => "DEBUG"})
    SystemLogLevel.add_member(:info, 'Info', Prelude::Unit, traits: {"smithy.api#enumValue" => "INFO"})
    SystemLogLevel.add_member(:warn, 'Warn', Prelude::Unit, traits: {"smithy.api#enumValue" => "WARN"})

    TagKeyList.set_member(TagKey)

    TagResourceRequest.add_member(:resource, 'Resource', TaggableResource, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    TagResourceRequest.add_member(:tags, 'Tags', Tags, traits: {"smithy.api#required" => {}})
    TagResourceRequest.type = Types::TagResourceRequest

    Tags.set_key(TagKey)
    Tags.set_value(TagValue)

    TagsError.add_member(:error_code, 'ErrorCode', TagsErrorCode, traits: {"smithy.api#required" => {}})
    TagsError.add_member(:message, 'Message', TagsErrorMessage, traits: {"smithy.api#required" => {}})
    TagsError.type = Types::TagsError

    ThrottleReason.add_member(:concurrent_invocation_limit_exceeded, 'ConcurrentInvocationLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "ConcurrentInvocationLimitExceeded"})
    ThrottleReason.add_member(:function_invocation_rate_limit_exceeded, 'FunctionInvocationRateLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "FunctionInvocationRateLimitExceeded"})
    ThrottleReason.add_member(:reserved_function_concurrent_invocation_limit_exceeded, 'ReservedFunctionConcurrentInvocationLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "ReservedFunctionConcurrentInvocationLimitExceeded"})
    ThrottleReason.add_member(:reserved_function_invocation_rate_limit_exceeded, 'ReservedFunctionInvocationRateLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "ReservedFunctionInvocationRateLimitExceeded"})
    ThrottleReason.add_member(:caller_rate_limit_exceeded, 'CallerRateLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "CallerRateLimitExceeded"})
    ThrottleReason.add_member(:concurrent_snapshot_create_limit_exceeded, 'ConcurrentSnapshotCreateLimitExceeded', Prelude::Unit, traits: {"smithy.api#enumValue" => "ConcurrentSnapshotCreateLimitExceeded"})

    TooManyRequestsException.add_member(:retry_after_seconds, 'retryAfterSeconds', String, traits: {"smithy.api#httpHeader" => "Retry-After"})
    TooManyRequestsException.add_member(:type, 'Type', String)
    TooManyRequestsException.add_member(:message, 'message', String)
    TooManyRequestsException.add_member(:reason, 'Reason', ThrottleReason)
    TooManyRequestsException.type = Types::TooManyRequestsException

    Topics.set_member(Topic)

    TracingConfig.add_member(:mode, 'Mode', TracingMode)
    TracingConfig.type = Types::TracingConfig

    TracingConfigResponse.add_member(:mode, 'Mode', TracingMode)
    TracingConfigResponse.type = Types::TracingConfigResponse

    TracingMode.add_member(:active, 'Active', Prelude::Unit, traits: {"smithy.api#enumValue" => "Active"})
    TracingMode.add_member(:pass_through, 'PassThrough', Prelude::Unit, traits: {"smithy.api#enumValue" => "PassThrough"})

    UnsupportedMediaTypeException.add_member(:type, 'Type', String)
    UnsupportedMediaTypeException.add_member(:message, 'message', String)
    UnsupportedMediaTypeException.type = Types::UnsupportedMediaTypeException

    UntagResourceRequest.add_member(:resource, 'Resource', TaggableResource, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UntagResourceRequest.add_member(:tag_keys, 'TagKeys', TagKeyList, traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}})
    UntagResourceRequest.type = Types::UntagResourceRequest

    UpdateAliasRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateAliasRequest.add_member(:name, 'Name', Alias, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateAliasRequest.add_member(:function_version, 'FunctionVersion', Version)
    UpdateAliasRequest.add_member(:description, 'Description', Description)
    UpdateAliasRequest.add_member(:routing_config, 'RoutingConfig', AliasRoutingConfiguration)
    UpdateAliasRequest.add_member(:revision_id, 'RevisionId', String)
    UpdateAliasRequest.type = Types::UpdateAliasRequest

    UpdateCodeSigningConfigRequest.add_member(:code_signing_config_arn, 'CodeSigningConfigArn', CodeSigningConfigArn, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateCodeSigningConfigRequest.add_member(:description, 'Description', Description)
    UpdateCodeSigningConfigRequest.add_member(:allowed_publishers, 'AllowedPublishers', AllowedPublishers)
    UpdateCodeSigningConfigRequest.add_member(:code_signing_policies, 'CodeSigningPolicies', CodeSigningPolicies)
    UpdateCodeSigningConfigRequest.type = Types::UpdateCodeSigningConfigRequest

    UpdateCodeSigningConfigResponse.add_member(:code_signing_config, 'CodeSigningConfig', CodeSigningConfig, traits: {"smithy.api#required" => {}})
    UpdateCodeSigningConfigResponse.type = Types::UpdateCodeSigningConfigResponse

    UpdateEventSourceMappingRequest.add_member(:uuid, 'UUID', String, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateEventSourceMappingRequest.add_member(:function_name, 'FunctionName', FunctionName)
    UpdateEventSourceMappingRequest.add_member(:enabled, 'Enabled', Enabled)
    UpdateEventSourceMappingRequest.add_member(:batch_size, 'BatchSize', BatchSize)
    UpdateEventSourceMappingRequest.add_member(:filter_criteria, 'FilterCriteria', FilterCriteria)
    UpdateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, 'MaximumBatchingWindowInSeconds', MaximumBatchingWindowInSeconds)
    UpdateEventSourceMappingRequest.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    UpdateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, 'MaximumRecordAgeInSeconds', MaximumRecordAgeInSeconds)
    UpdateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, 'BisectBatchOnFunctionError', BisectBatchOnFunctionError)
    UpdateEventSourceMappingRequest.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttemptsEventSourceMapping)
    UpdateEventSourceMappingRequest.add_member(:parallelization_factor, 'ParallelizationFactor', ParallelizationFactor)
    UpdateEventSourceMappingRequest.add_member(:source_access_configurations, 'SourceAccessConfigurations', SourceAccessConfigurations)
    UpdateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, 'TumblingWindowInSeconds', TumblingWindowInSeconds)
    UpdateEventSourceMappingRequest.add_member(:function_response_types, 'FunctionResponseTypes', FunctionResponseTypeList)
    UpdateEventSourceMappingRequest.add_member(:scaling_config, 'ScalingConfig', ScalingConfig)
    UpdateEventSourceMappingRequest.add_member(:document_db_event_source_config, 'DocumentDBEventSourceConfig', DocumentDBEventSourceConfig)
    UpdateEventSourceMappingRequest.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    UpdateEventSourceMappingRequest.add_member(:metrics_config, 'MetricsConfig', EventSourceMappingMetricsConfig)
    UpdateEventSourceMappingRequest.add_member(:provisioned_poller_config, 'ProvisionedPollerConfig', ProvisionedPollerConfig)
    UpdateEventSourceMappingRequest.type = Types::UpdateEventSourceMappingRequest

    UpdateFunctionCodeRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateFunctionCodeRequest.add_member(:zip_file, 'ZipFile', Blob)
    UpdateFunctionCodeRequest.add_member(:s3_bucket, 'S3Bucket', S3Bucket)
    UpdateFunctionCodeRequest.add_member(:s3_key, 'S3Key', S3Key)
    UpdateFunctionCodeRequest.add_member(:s3_object_version, 'S3ObjectVersion', S3ObjectVersion)
    UpdateFunctionCodeRequest.add_member(:image_uri, 'ImageUri', String)
    UpdateFunctionCodeRequest.add_member(:publish, 'Publish', Boolean, traits: {"smithy.api#default" => false})
    UpdateFunctionCodeRequest.add_member(:dry_run, 'DryRun', Boolean, traits: {"smithy.api#default" => false})
    UpdateFunctionCodeRequest.add_member(:revision_id, 'RevisionId', String)
    UpdateFunctionCodeRequest.add_member(:architectures, 'Architectures', ArchitecturesList)
    UpdateFunctionCodeRequest.add_member(:source_kms_key_arn, 'SourceKMSKeyArn', KMSKeyArn)
    UpdateFunctionCodeRequest.type = Types::UpdateFunctionCodeRequest

    UpdateFunctionConfigurationRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateFunctionConfigurationRequest.add_member(:role, 'Role', RoleArn)
    UpdateFunctionConfigurationRequest.add_member(:handler, 'Handler', Handler)
    UpdateFunctionConfigurationRequest.add_member(:description, 'Description', Description)
    UpdateFunctionConfigurationRequest.add_member(:timeout, 'Timeout', Timeout)
    UpdateFunctionConfigurationRequest.add_member(:memory_size, 'MemorySize', MemorySize)
    UpdateFunctionConfigurationRequest.add_member(:vpc_config, 'VpcConfig', VpcConfig)
    UpdateFunctionConfigurationRequest.add_member(:environment, 'Environment', Environment)
    UpdateFunctionConfigurationRequest.add_member(:runtime, 'Runtime', Runtime)
    UpdateFunctionConfigurationRequest.add_member(:dead_letter_config, 'DeadLetterConfig', DeadLetterConfig)
    UpdateFunctionConfigurationRequest.add_member(:kms_key_arn, 'KMSKeyArn', KMSKeyArn)
    UpdateFunctionConfigurationRequest.add_member(:tracing_config, 'TracingConfig', TracingConfig)
    UpdateFunctionConfigurationRequest.add_member(:revision_id, 'RevisionId', String)
    UpdateFunctionConfigurationRequest.add_member(:layers, 'Layers', LayerList)
    UpdateFunctionConfigurationRequest.add_member(:file_system_configs, 'FileSystemConfigs', FileSystemConfigList)
    UpdateFunctionConfigurationRequest.add_member(:image_config, 'ImageConfig', ImageConfig)
    UpdateFunctionConfigurationRequest.add_member(:ephemeral_storage, 'EphemeralStorage', EphemeralStorage)
    UpdateFunctionConfigurationRequest.add_member(:snap_start, 'SnapStart', SnapStart)
    UpdateFunctionConfigurationRequest.add_member(:logging_config, 'LoggingConfig', LoggingConfig)
    UpdateFunctionConfigurationRequest.type = Types::UpdateFunctionConfigurationRequest

    UpdateFunctionEventInvokeConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateFunctionEventInvokeConfigRequest.add_member(:qualifier, 'Qualifier', Qualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, 'MaximumRetryAttempts', MaximumRetryAttempts)
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, 'MaximumEventAgeInSeconds', MaximumEventAgeInSeconds)
    UpdateFunctionEventInvokeConfigRequest.add_member(:destination_config, 'DestinationConfig', DestinationConfig)
    UpdateFunctionEventInvokeConfigRequest.type = Types::UpdateFunctionEventInvokeConfigRequest

    UpdateFunctionUrlConfigRequest.add_member(:function_name, 'FunctionName', FunctionName, traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}})
    UpdateFunctionUrlConfigRequest.add_member(:qualifier, 'Qualifier', FunctionUrlQualifier, traits: {"smithy.api#httpQuery" => "Qualifier"})
    UpdateFunctionUrlConfigRequest.add_member(:auth_type, 'AuthType', FunctionUrlAuthType)
    UpdateFunctionUrlConfigRequest.add_member(:cors, 'Cors', Cors)
    UpdateFunctionUrlConfigRequest.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    UpdateFunctionUrlConfigRequest.type = Types::UpdateFunctionUrlConfigRequest

    UpdateFunctionUrlConfigResponse.add_member(:function_url, 'FunctionUrl', FunctionUrl, traits: {"smithy.api#required" => {}})
    UpdateFunctionUrlConfigResponse.add_member(:function_arn, 'FunctionArn', FunctionArn, traits: {"smithy.api#required" => {}})
    UpdateFunctionUrlConfigResponse.add_member(:auth_type, 'AuthType', FunctionUrlAuthType, traits: {"smithy.api#required" => {}})
    UpdateFunctionUrlConfigResponse.add_member(:cors, 'Cors', Cors)
    UpdateFunctionUrlConfigResponse.add_member(:creation_time, 'CreationTime', Timestamp, traits: {"smithy.api#required" => {}})
    UpdateFunctionUrlConfigResponse.add_member(:last_modified_time, 'LastModifiedTime', Timestamp, traits: {"smithy.api#required" => {}})
    UpdateFunctionUrlConfigResponse.add_member(:invoke_mode, 'InvokeMode', InvokeMode)
    UpdateFunctionUrlConfigResponse.type = Types::UpdateFunctionUrlConfigResponse

    UpdateRuntimeOn.add_member(:auto, 'Auto', Prelude::Unit, traits: {"smithy.api#enumValue" => "Auto"})
    UpdateRuntimeOn.add_member(:manual, 'Manual', Prelude::Unit, traits: {"smithy.api#enumValue" => "Manual"})
    UpdateRuntimeOn.add_member(:function_update, 'FunctionUpdate', Prelude::Unit, traits: {"smithy.api#enumValue" => "FunctionUpdate"})

    VpcConfig.add_member(:subnet_ids, 'SubnetIds', SubnetIds)
    VpcConfig.add_member(:security_group_ids, 'SecurityGroupIds', SecurityGroupIds)
    VpcConfig.add_member(:ipv6_allowed_for_dual_stack, 'Ipv6AllowedForDualStack', NullableBoolean)
    VpcConfig.type = Types::VpcConfig

    VpcConfigResponse.add_member(:subnet_ids, 'SubnetIds', SubnetIds)
    VpcConfigResponse.add_member(:security_group_ids, 'SecurityGroupIds', SecurityGroupIds)
    VpcConfigResponse.add_member(:vpc_id, 'VpcId', VpcId)
    VpcConfigResponse.add_member(:ipv6_allowed_for_dual_stack, 'Ipv6AllowedForDualStack', NullableBoolean)
    VpcConfigResponse.type = Types::VpcConfigResponse

    SERVICE = ServiceShape.new do |service|
      service.id = "com.amazonaws.lambda#AWSGirApiService"
      service.name = "AWSGirApiService"
      service.version = "2015-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda", "arnNamespace" => "lambda", "cloudFormationName" => "Lambda", "cloudTrailEventSource" => "lambda.amazonaws.com", "endpointPrefix" => "lambda"}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Lambda"}
      service.add_operation(:add_layer_version_permission, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#AddLayerVersionPermission"
        operation.name = "AddLayerVersionPermission"
        operation.input = AddLayerVersionPermissionRequest
        operation.output = AddLayerVersionPermissionResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 201}}
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:add_permission, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#AddPermission"
        operation.name = "AddPermission"
        operation.input = AddPermissionRequest
        operation.output = AddPermissionResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 201}}
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:create_alias, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasRequest
        operation.output = AliasConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 201}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:create_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateCodeSigningConfig"
        operation.name = "CreateCodeSigningConfig"
        operation.input = CreateCodeSigningConfigRequest
        operation.output = CreateCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2020-04-22/code-signing-configs", "code" => 201}}
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
      end)
      service.add_operation(:create_event_source_mapping, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateEventSourceMapping"
        operation.name = "CreateEventSourceMapping"
        operation.input = CreateEventSourceMappingRequest
        operation.output = EventSourceMappingConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/event-source-mappings", "code" => 202}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:create_function, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = CreateFunctionRequest
        operation.output = FunctionConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions", "code" => 201}}
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeStorageExceededException
        operation.errors << CodeVerificationFailedException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:create_function_url_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateFunctionUrlConfig"
        operation.name = "CreateFunctionUrlConfig"
        operation.input = CreateFunctionUrlConfigRequest
        operation.output = CreateFunctionUrlConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 201}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_alias, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = DeleteAliasRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteCodeSigningConfig"
        operation.name = "DeleteCodeSigningConfig"
        operation.input = DeleteCodeSigningConfigRequest
        operation.output = DeleteCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
      end)
      service.add_operation(:delete_event_source_mapping, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteEventSourceMapping"
        operation.name = "DeleteEventSourceMapping"
        operation.input = DeleteEventSourceMappingRequest
        operation.output = EventSourceMappingConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_function, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_function_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionCodeSigningConfig"
        operation.name = "DeleteFunctionCodeSigningConfig"
        operation.input = DeleteFunctionCodeSigningConfigRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 204}}
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_function_concurrency, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionConcurrency"
        operation.name = "DeleteFunctionConcurrency"
        operation.input = DeleteFunctionConcurrencyRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_function_event_invoke_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionEventInvokeConfig"
        operation.name = "DeleteFunctionEventInvokeConfig"
        operation.input = DeleteFunctionEventInvokeConfigRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_function_url_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionUrlConfig"
        operation.name = "DeleteFunctionUrlConfig"
        operation.input = DeleteFunctionUrlConfigRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 204}}
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_layer_version, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteLayerVersion"
        operation.name = "DeleteLayerVersion"
        operation.input = DeleteLayerVersionRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 204}}
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:delete_provisioned_concurrency_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteProvisionedConcurrencyConfig"
        operation.name = "DeleteProvisionedConcurrencyConfig"
        operation.input = DeleteProvisionedConcurrencyConfigRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_account_settings, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsRequest
        operation.output = GetAccountSettingsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2016-08-19/account-settings", "code" => 200}}
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_alias, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetAlias"
        operation.name = "GetAlias"
        operation.input = GetAliasRequest
        operation.output = AliasConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetCodeSigningConfig"
        operation.name = "GetCodeSigningConfig"
        operation.input = GetCodeSigningConfigRequest
        operation.output = GetCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
      end)
      service.add_operation(:get_event_source_mapping, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetEventSourceMapping"
        operation.name = "GetEventSourceMapping"
        operation.input = GetEventSourceMappingRequest
        operation.output = EventSourceMappingConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunction"
        operation.name = "GetFunction"
        operation.input = GetFunctionRequest
        operation.output = GetFunctionResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}", "code" => 200}, "smithy.waiters#waitable" => {"FunctionActiveV2" => {"documentation" => "Waits for the function's State to be Active. This waiter uses GetFunction API. This should be used after new function creation.", "acceptors" => [{"state" => "success", "matcher" => {"output" => {"path" => "Configuration.State", "expected" => "Active", "comparator" => "stringEquals"}}}, {"state" => "failure", "matcher" => {"output" => {"path" => "Configuration.State", "expected" => "Failed", "comparator" => "stringEquals"}}}, {"state" => "retry", "matcher" => {"output" => {"path" => "Configuration.State", "expected" => "Pending", "comparator" => "stringEquals"}}}], "minDelay" => 1}, "FunctionExists" => {"acceptors" => [{"state" => "success", "matcher" => {"success" => true}}, {"state" => "retry", "matcher" => {"errorType" => "ResourceNotFoundException"}}], "minDelay" => 1}, "FunctionUpdatedV2" => {"documentation" => "Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunction API. This should be used after function updates.", "acceptors" => [{"state" => "success", "matcher" => {"output" => {"path" => "Configuration.LastUpdateStatus", "expected" => "Successful", "comparator" => "stringEquals"}}}, {"state" => "failure", "matcher" => {"output" => {"path" => "Configuration.LastUpdateStatus", "expected" => "Failed", "comparator" => "stringEquals"}}}, {"state" => "retry", "matcher" => {"output" => {"path" => "Configuration.LastUpdateStatus", "expected" => "InProgress", "comparator" => "stringEquals"}}}], "minDelay" => 1}}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionCodeSigningConfig"
        operation.name = "GetFunctionCodeSigningConfig"
        operation.input = GetFunctionCodeSigningConfigRequest
        operation.output = GetFunctionCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_concurrency, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionConcurrency"
        operation.name = "GetFunctionConcurrency"
        operation.input = GetFunctionConcurrencyRequest
        operation.output = GetFunctionConcurrencyResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/concurrency", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_configuration, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionConfiguration"
        operation.name = "GetFunctionConfiguration"
        operation.input = GetFunctionConfigurationRequest
        operation.output = FunctionConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}, "smithy.waiters#waitable" => {"FunctionActive" => {"documentation" => "Waits for the function's State to be Active. This waiter uses GetFunctionConfiguration API. This should be used after new function creation.", "acceptors" => [{"state" => "success", "matcher" => {"output" => {"path" => "State", "expected" => "Active", "comparator" => "stringEquals"}}}, {"state" => "failure", "matcher" => {"output" => {"path" => "State", "expected" => "Failed", "comparator" => "stringEquals"}}}, {"state" => "retry", "matcher" => {"output" => {"path" => "State", "expected" => "Pending", "comparator" => "stringEquals"}}}], "minDelay" => 5}, "FunctionUpdated" => {"documentation" => "Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunctionConfiguration API. This should be used after function updates.", "acceptors" => [{"state" => "success", "matcher" => {"output" => {"path" => "LastUpdateStatus", "expected" => "Successful", "comparator" => "stringEquals"}}}, {"state" => "failure", "matcher" => {"output" => {"path" => "LastUpdateStatus", "expected" => "Failed", "comparator" => "stringEquals"}}}, {"state" => "retry", "matcher" => {"output" => {"path" => "LastUpdateStatus", "expected" => "InProgress", "comparator" => "stringEquals"}}}], "minDelay" => 5}, "PublishedVersionActive" => {"documentation" => "Waits for the published version's State to be Active. This waiter uses GetFunctionConfiguration API. This should be used after new version is published.", "acceptors" => [{"state" => "success", "matcher" => {"output" => {"path" => "State", "expected" => "Active", "comparator" => "stringEquals"}}}, {"state" => "failure", "matcher" => {"output" => {"path" => "State", "expected" => "Failed", "comparator" => "stringEquals"}}}, {"state" => "retry", "matcher" => {"output" => {"path" => "State", "expected" => "Pending", "comparator" => "stringEquals"}}}], "minDelay" => 5}}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_event_invoke_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionEventInvokeConfig"
        operation.name = "GetFunctionEventInvokeConfig"
        operation.input = GetFunctionEventInvokeConfigRequest
        operation.output = FunctionEventInvokeConfig
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_recursion_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionRecursionConfig"
        operation.name = "GetFunctionRecursionConfig"
        operation.input = GetFunctionRecursionConfigRequest
        operation.output = GetFunctionRecursionConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_function_url_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionUrlConfig"
        operation.name = "GetFunctionUrlConfig"
        operation.input = GetFunctionUrlConfigRequest
        operation.output = GetFunctionUrlConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_layer_version, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersion"
        operation.name = "GetLayerVersion"
        operation.input = GetLayerVersionRequest
        operation.output = GetLayerVersionResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_layer_version_by_arn, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersionByArn"
        operation.name = "GetLayerVersionByArn"
        operation.input = GetLayerVersionByArnRequest
        operation.output = GetLayerVersionResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers?find=LayerVersion", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_layer_version_policy, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersionPolicy"
        operation.name = "GetLayerVersionPolicy"
        operation.input = GetLayerVersionPolicyRequest
        operation.output = GetLayerVersionPolicyResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_policy, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_provisioned_concurrency_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetProvisionedConcurrencyConfig"
        operation.name = "GetProvisionedConcurrencyConfig"
        operation.input = GetProvisionedConcurrencyConfigRequest
        operation.output = GetProvisionedConcurrencyConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ProvisionedConcurrencyConfigNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:get_runtime_management_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetRuntimeManagementConfig"
        operation.name = "GetRuntimeManagementConfig"
        operation.input = GetRuntimeManagementConfigRequest
        operation.output = GetRuntimeManagementConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:invoke, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#Invoke"
        operation.name = "Invoke"
        operation.input = InvocationRequest
        operation.output = InvocationResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/invocations", "code" => 200}}
        operation.errors << EC2AccessDeniedException
        operation.errors << EC2ThrottledException
        operation.errors << EC2UnexpectedException
        operation.errors << EFSIOException
        operation.errors << EFSMountConnectivityException
        operation.errors << EFSMountFailureException
        operation.errors << EFSMountTimeoutException
        operation.errors << ENILimitReachedException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestContentException
        operation.errors << InvalidRuntimeException
        operation.errors << InvalidSecurityGroupIDException
        operation.errors << InvalidSubnetIDException
        operation.errors << InvalidZipFileException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << RecursiveInvocationException
        operation.errors << RequestTooLargeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceNotReadyException
        operation.errors << ServiceException
        operation.errors << SnapStartException
        operation.errors << SnapStartNotReadyException
        operation.errors << SnapStartTimeoutException
        operation.errors << SubnetIPAddressLimitReachedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedMediaTypeException
      end)
      service.add_operation(:invoke_async, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeAsync"
        operation.name = "InvokeAsync"
        operation.input = InvokeAsyncRequest
        operation.output = InvokeAsyncResponse
        operation.traits = {"smithy.api#deprecated" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/2014-11-13/functions/{FunctionName}/invoke-async", "code" => 202}}
        operation.errors << InvalidRequestContentException
        operation.errors << InvalidRuntimeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
      end)
      service.add_operation(:invoke_with_response_stream, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeWithResponseStream"
        operation.name = "InvokeWithResponseStream"
        operation.input = InvokeWithResponseStreamRequest
        operation.output = InvokeWithResponseStreamResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2021-11-15/functions/{FunctionName}/response-streaming-invocations", "code" => 200}}
        operation.errors << EC2AccessDeniedException
        operation.errors << EC2ThrottledException
        operation.errors << EC2UnexpectedException
        operation.errors << EFSIOException
        operation.errors << EFSMountConnectivityException
        operation.errors << EFSMountFailureException
        operation.errors << EFSMountTimeoutException
        operation.errors << ENILimitReachedException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestContentException
        operation.errors << InvalidRuntimeException
        operation.errors << InvalidSecurityGroupIDException
        operation.errors << InvalidSubnetIDException
        operation.errors << InvalidZipFileException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << RecursiveInvocationException
        operation.errors << RequestTooLargeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceNotReadyException
        operation.errors << ServiceException
        operation.errors << SnapStartException
        operation.errors << SnapStartNotReadyException
        operation.errors << SnapStartTimeoutException
        operation.errors << SubnetIPAddressLimitReachedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedMediaTypeException
      end)
      service.add_operation(:list_aliases, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListAliases"
        operation.name = "ListAliases"
        operation.input = ListAliasesRequest
        operation.output = ListAliasesResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "Aliases", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_code_signing_configs, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListCodeSigningConfigs"
        operation.name = "ListCodeSigningConfigs"
        operation.input = ListCodeSigningConfigsRequest
        operation.output = ListCodeSigningConfigsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "CodeSigningConfigs", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation[:paginator] = Paginators::ListCodeSigningConfigs.new
      end)
      service.add_operation(:list_event_source_mappings, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListEventSourceMappings"
        operation.name = "ListEventSourceMappings"
        operation.input = ListEventSourceMappingsRequest
        operation.output = ListEventSourceMappingsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "EventSourceMappings", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListEventSourceMappings.new
      end)
      service.add_operation(:list_function_event_invoke_configs, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionEventInvokeConfigs"
        operation.name = "ListFunctionEventInvokeConfigs"
        operation.input = ListFunctionEventInvokeConfigsRequest
        operation.output = ListFunctionEventInvokeConfigsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config/list", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "FunctionEventInvokeConfigs", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListFunctionEventInvokeConfigs.new
      end)
      service.add_operation(:list_function_url_configs, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionUrlConfigs"
        operation.name = "ListFunctionUrlConfigs"
        operation.input = ListFunctionUrlConfigsRequest
        operation.output = ListFunctionUrlConfigsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/urls", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "FunctionUrlConfigs", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListFunctionUrlConfigs.new
      end)
      service.add_operation(:list_functions, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "Functions", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_functions_by_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionsByCodeSigningConfig"
        operation.name = "ListFunctionsByCodeSigningConfig"
        operation.input = ListFunctionsByCodeSigningConfigRequest
        operation.output = ListFunctionsByCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "FunctionArns", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation[:paginator] = Paginators::ListFunctionsByCodeSigningConfig.new
      end)
      service.add_operation(:list_layer_versions, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListLayerVersions"
        operation.name = "ListLayerVersions"
        operation.input = ListLayerVersionsRequest
        operation.output = ListLayerVersionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "LayerVersions", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListLayerVersions.new
      end)
      service.add_operation(:list_layers, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListLayers"
        operation.name = "ListLayers"
        operation.input = ListLayersRequest
        operation.output = ListLayersResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "Layers", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListLayers.new
      end)
      service.add_operation(:list_provisioned_concurrency_configs, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListProvisionedConcurrencyConfigs"
        operation.name = "ListProvisionedConcurrencyConfigs"
        operation.input = ListProvisionedConcurrencyConfigsRequest
        operation.output = ListProvisionedConcurrencyConfigsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "ProvisionedConcurrencyConfigs", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListProvisionedConcurrencyConfigs.new
      end)
      service.add_operation(:list_tags, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2017-03-31/tags/{Resource}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:list_versions_by_function, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListVersionsByFunction"
        operation.name = "ListVersionsByFunction"
        operation.input = ListVersionsByFunctionRequest
        operation.output = ListVersionsByFunctionResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 200}, "smithy.api#paginated" => {"inputToken" => "Marker", "outputToken" => "NextMarker", "items" => "Versions", "pageSize" => "MaxItems"}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation[:paginator] = Paginators::ListVersionsByFunction.new
      end)
      service.add_operation(:publish_layer_version, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PublishLayerVersion"
        operation.name = "PublishLayerVersion"
        operation.input = PublishLayerVersionRequest
        operation.output = PublishLayerVersionResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 201}}
        operation.errors << CodeStorageExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:publish_version, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PublishVersion"
        operation.name = "PublishVersion"
        operation.input = PublishVersionRequest
        operation.output = FunctionConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 201}}
        operation.errors << CodeStorageExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_function_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionCodeSigningConfig"
        operation.name = "PutFunctionCodeSigningConfig"
        operation.input = PutFunctionCodeSigningConfigRequest
        operation.output = PutFunctionCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}}
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_function_concurrency, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionConcurrency"
        operation.name = "PutFunctionConcurrency"
        operation.input = PutFunctionConcurrencyRequest
        operation.output = Concurrency
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_function_event_invoke_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionEventInvokeConfig"
        operation.name = "PutFunctionEventInvokeConfig"
        operation.input = PutFunctionEventInvokeConfigRequest
        operation.output = FunctionEventInvokeConfig
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_function_recursion_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionRecursionConfig"
        operation.name = "PutFunctionRecursionConfig"
        operation.input = PutFunctionRecursionConfigRequest
        operation.output = PutFunctionRecursionConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_provisioned_concurrency_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutProvisionedConcurrencyConfig"
        operation.name = "PutProvisionedConcurrencyConfig"
        operation.input = PutProvisionedConcurrencyConfigRequest
        operation.output = PutProvisionedConcurrencyConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 202}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:put_runtime_management_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutRuntimeManagementConfig"
        operation.name = "PutRuntimeManagementConfig"
        operation.input = PutRuntimeManagementConfigRequest
        operation.output = PutRuntimeManagementConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:remove_layer_version_permission, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#RemoveLayerVersionPermission"
        operation.name = "RemoveLayerVersionPermission"
        operation.input = RemoveLayerVersionPermissionRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:remove_permission, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:tag_resource, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:untag_resource, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_alias, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = UpdateAliasRequest
        operation.output = AliasConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_code_signing_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateCodeSigningConfig"
        operation.name = "UpdateCodeSigningConfig"
        operation.input = UpdateCodeSigningConfigRequest
        operation.output = UpdateCodeSigningConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
      end)
      service.add_operation(:update_event_source_mapping, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateEventSourceMapping"
        operation.name = "UpdateEventSourceMapping"
        operation.input = UpdateEventSourceMappingRequest
        operation.output = EventSourceMappingConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_function_code, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionCode"
        operation.name = "UpdateFunctionCode"
        operation.input = UpdateFunctionCodeRequest
        operation.output = FunctionConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/code", "code" => 200}}
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeStorageExceededException
        operation.errors << CodeVerificationFailedException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_function_configuration, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionConfiguration"
        operation.name = "UpdateFunctionConfiguration"
        operation.input = UpdateFunctionConfigurationRequest
        operation.output = FunctionConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}}
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeVerificationFailedException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_function_event_invoke_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionEventInvokeConfig"
        operation.name = "UpdateFunctionEventInvokeConfig"
        operation.input = UpdateFunctionEventInvokeConfigRequest
        operation.output = FunctionEventInvokeConfig
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
      service.add_operation(:update_function_url_config, OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionUrlConfig"
        operation.name = "UpdateFunctionUrlConfig"
        operation.input = UpdateFunctionUrlConfigRequest
        operation.output = UpdateFunctionUrlConfigResponse
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}}
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
      end)
    end
  end
end
