# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AccountLimit", name: "AccountLimit")
    AccountUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AccountUsage", name: "AccountUsage")
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Action", name: "Action", traits: {"smithy.api#pattern" => "^(lambda:[*]|lambda:[a-zA-Z]+|[*])$"})
    AddLayerVersionPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddLayerVersionPermissionRequest", name: "AddLayerVersionPermissionRequest", traits: {"aws.api#data" => "permissions"})
    AddLayerVersionPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddLayerVersionPermissionResponse", name: "AddLayerVersionPermissionResponse")
    AddPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddPermissionRequest", name: "AddPermissionRequest", traits: {"aws.api#data" => "permissions"})
    AddPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddPermissionResponse", name: "AddPermissionResponse")
    AdditionalVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#AdditionalVersion", name: "AdditionalVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    AdditionalVersionWeights = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#AdditionalVersionWeights", name: "AdditionalVersionWeights")
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Alias", name: "Alias", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9-_]+)$"})
    AliasConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AliasConfiguration", name: "AliasConfiguration")
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AliasList", name: "AliasList")
    AliasRoutingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AliasRoutingConfiguration", name: "AliasRoutingConfiguration")
    AllowCredentials = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#AllowCredentials", name: "AllowCredentials")
    AllowMethodsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AllowMethodsList", name: "AllowMethodsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}})
    AllowOriginsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AllowOriginsList", name: "AllowOriginsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AllowedPublishers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AllowedPublishers", name: "AllowedPublishers")
    AmazonManagedKafkaEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AmazonManagedKafkaEventSourceConfig", name: "AmazonManagedKafkaEventSourceConfig")
    ApplicationLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ApplicationLogLevel", name: "ApplicationLogLevel")
    Architecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#Architecture", name: "Architecture")
    ArchitecturesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#ArchitecturesList", name: "ArchitecturesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    BatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#BatchSize", name: "BatchSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    BisectBatchOnFunctionError = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#BisectBatchOnFunctionError", name: "BisectBatchOnFunctionError")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lambda#Blob", name: "Blob", traits: {"smithy.api#sensitive" => {}})
    BlobStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lambda#BlobStream", name: "BlobStream", traits: {"smithy.api#streaming" => {}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CodeSigningConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningConfig", name: "CodeSigningConfig")
    CodeSigningConfigArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CodeSigningConfigArn", name: "CodeSigningConfigArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:code-signing-config:csc-[a-z0-9]{17}$"})
    CodeSigningConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CodeSigningConfigId", name: "CodeSigningConfigId", traits: {"smithy.api#pattern" => "^csc-[a-zA-Z0-9-_\\.]{17}$"})
    CodeSigningConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CodeSigningConfigList", name: "CodeSigningConfigList")
    CodeSigningConfigNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningConfigNotFoundException", name: "CodeSigningConfigNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CodeSigningPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningPolicies", name: "CodeSigningPolicies")
    CodeSigningPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#CodeSigningPolicy", name: "CodeSigningPolicy")
    CodeStorageExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeStorageExceededException", name: "CodeStorageExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CodeVerificationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeVerificationFailedException", name: "CodeVerificationFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CollectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CollectionName", name: "CollectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 57}, "smithy.api#pattern" => "^(^(?!(system\\x2e)))(^[_a-zA-Z0-9])([^$]*)$"})
    CompatibleArchitectures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CompatibleArchitectures", name: "CompatibleArchitectures", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    CompatibleRuntimes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CompatibleRuntimes", name: "CompatibleRuntimes", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    Concurrency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Concurrency", name: "Concurrency")
    Cors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Cors", name: "Cors")
    CreateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateAliasOutput", name: "CreateAliasOutput")
    CreateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateAliasRequest", name: "CreateAliasRequest")
    CreateCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCodeSigningConfigRequest", name: "CreateCodeSigningConfigRequest")
    CreateCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCodeSigningConfigResponse", name: "CreateCodeSigningConfigResponse")
    CreateEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateEventSourceMappingOutput", name: "CreateEventSourceMappingOutput")
    CreateEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateEventSourceMappingRequest", name: "CreateEventSourceMappingRequest")
    CreateFunctionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionOutput", name: "CreateFunctionOutput")
    CreateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionRequest", name: "CreateFunctionRequest")
    CreateFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionUrlConfigRequest", name: "CreateFunctionUrlConfigRequest")
    CreateFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionUrlConfigResponse", name: "CreateFunctionUrlConfigResponse")
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[^ /\\.$\\x22]*$"})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lambda#Date", name: "Date")
    DeadLetterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeadLetterConfig", name: "DeadLetterConfig")
    DeleteAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteAliasRequest", name: "DeleteAliasRequest")
    DeleteCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCodeSigningConfigRequest", name: "DeleteCodeSigningConfigRequest")
    DeleteCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCodeSigningConfigResponse", name: "DeleteCodeSigningConfigResponse")
    DeleteEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteEventSourceMappingOutput", name: "DeleteEventSourceMappingOutput")
    DeleteEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteEventSourceMappingRequest", name: "DeleteEventSourceMappingRequest")
    DeleteFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionCodeSigningConfigRequest", name: "DeleteFunctionCodeSigningConfigRequest")
    DeleteFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionConcurrencyRequest", name: "DeleteFunctionConcurrencyRequest")
    DeleteFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionEventInvokeConfigRequest", name: "DeleteFunctionEventInvokeConfigRequest")
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionRequest", name: "DeleteFunctionRequest")
    DeleteFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionUrlConfigRequest", name: "DeleteFunctionUrlConfigRequest")
    DeleteLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteLayerVersionRequest", name: "DeleteLayerVersionRequest")
    DeleteProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteProvisionedConcurrencyConfigRequest", name: "DeleteProvisionedConcurrencyConfigRequest")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DestinationArn", name: "DestinationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$"})
    DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DestinationConfig", name: "DestinationConfig")
    DocumentDBEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DocumentDBEventSourceConfig", name: "DocumentDBEventSourceConfig")
    EC2AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2AccessDeniedException", name: "EC2AccessDeniedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EC2ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2ThrottledException", name: "EC2ThrottledException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EC2UnexpectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2UnexpectedException", name: "EC2UnexpectedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    EFSIOException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSIOException", name: "EFSIOException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    EFSMountConnectivityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountConnectivityException", name: "EFSMountConnectivityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    EFSMountFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountFailureException", name: "EFSMountFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    EFSMountTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountTimeoutException", name: "EFSMountTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ENILimitReachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ENILimitReachedException", name: "ENILimitReachedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#Enabled", name: "Enabled")
    EndPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EndPointType", name: "EndPointType")
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}$"})
    EndpointLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EndpointLists", name: "EndpointLists", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Endpoints = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#Endpoints", name: "Endpoints", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Environment", name: "Environment")
    EnvironmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EnvironmentError", name: "EnvironmentError")
    EnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EnvironmentResponse", name: "EnvironmentResponse")
    EnvironmentVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EnvironmentVariableName", name: "EnvironmentVariableName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])+$", "smithy.api#sensitive" => {}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EnvironmentVariableValue", name: "EnvironmentVariableValue", traits: {"smithy.api#sensitive" => {}})
    EnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#EnvironmentVariables", name: "EnvironmentVariables", traits: {"smithy.api#sensitive" => {}})
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EphemeralStorage", name: "EphemeralStorage")
    EphemeralStorageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#EphemeralStorageSize", name: "EphemeralStorageSize", traits: {"smithy.api#range" => {"min" => 512, "max" => 10240}})
    EventSourceMappingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EventSourceMappingArn", name: "EventSourceMappingArn", traits: {"smithy.api#length" => {"min" => 85, "max" => 120}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    EventSourceMappingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventSourceMappingConfiguration", name: "EventSourceMappingConfiguration")
    EventSourceMappingMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetric", name: "EventSourceMappingMetric")
    EventSourceMappingMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetricList", name: "EventSourceMappingMetricList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EventSourceMappingMetricsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetricsConfig", name: "EventSourceMappingMetricsConfig")
    EventSourceMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EventSourceMappingsList", name: "EventSourceMappingsList")
    EventSourcePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventSourcePosition", name: "EventSourcePosition")
    EventSourceToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EventSourceToken", name: "EventSourceToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$"})
    FileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FileSystemArn", name: "FileSystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:elasticfilesystem:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:access-point/fsap-[a-f0-9]{17}$"})
    FileSystemConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FileSystemConfig", name: "FileSystemConfig")
    FileSystemConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FileSystemConfigList", name: "FileSystemConfigList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Filter", name: "Filter")
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FilterCriteria", name: "FilterCriteria")
    FilterCriteriaError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FilterCriteriaError", name: "FilterCriteriaError")
    FilterCriteriaErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FilterCriteriaErrorCode", name: "FilterCriteriaErrorCode", traits: {"smithy.api#length" => {"min" => 10, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z]+Exception$"})
    FilterCriteriaErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FilterCriteriaErrorMessage", name: "FilterCriteriaErrorMessage", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => ".*"})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FilterList", name: "FilterList")
    FullDocument = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FullDocument", name: "FullDocument")
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionArn", name: "FunctionArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    FunctionArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionArnList", name: "FunctionArnList")
    FunctionCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionCode", name: "FunctionCode")
    FunctionCodeLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionCodeLocation", name: "FunctionCodeLocation")
    FunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionConfiguration", name: "FunctionConfiguration")
    FunctionEventInvokeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionEventInvokeConfig", name: "FunctionEventInvokeConfig")
    FunctionEventInvokeConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionEventInvokeConfigList", name: "FunctionEventInvokeConfigList")
    FunctionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionList", name: "FunctionList")
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionName", name: "FunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    FunctionResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionResponseType", name: "FunctionResponseType")
    FunctionResponseTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionResponseTypeList", name: "FunctionResponseTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    FunctionUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionUrl", name: "FunctionUrl", traits: {"smithy.api#length" => {"min" => 40, "max" => 100}})
    FunctionUrlAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionUrlAuthType", name: "FunctionUrlAuthType")
    FunctionUrlConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionUrlConfig", name: "FunctionUrlConfig")
    FunctionUrlConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionUrlConfigList", name: "FunctionUrlConfigList")
    FunctionUrlQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionUrlQualifier", name: "FunctionUrlQualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^\\$LATEST$)|((?!^[0-9]+$)([a-zA-Z0-9-_]+))$"})
    FunctionVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionVersion", name: "FunctionVersion")
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAccountSettingsRequest", name: "GetAccountSettingsRequest")
    GetAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAccountSettingsResponse", name: "GetAccountSettingsResponse")
    GetAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAliasOutput", name: "GetAliasOutput")
    GetAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAliasRequest", name: "GetAliasRequest")
    GetCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCodeSigningConfigRequest", name: "GetCodeSigningConfigRequest")
    GetCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCodeSigningConfigResponse", name: "GetCodeSigningConfigResponse")
    GetEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetEventSourceMappingOutput", name: "GetEventSourceMappingOutput")
    GetEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetEventSourceMappingRequest", name: "GetEventSourceMappingRequest")
    GetFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionCodeSigningConfigRequest", name: "GetFunctionCodeSigningConfigRequest")
    GetFunctionCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionCodeSigningConfigResponse", name: "GetFunctionCodeSigningConfigResponse")
    GetFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConcurrencyRequest", name: "GetFunctionConcurrencyRequest")
    GetFunctionConcurrencyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConcurrencyResponse", name: "GetFunctionConcurrencyResponse")
    GetFunctionConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConfigurationOutput", name: "GetFunctionConfigurationOutput")
    GetFunctionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConfigurationRequest", name: "GetFunctionConfigurationRequest")
    GetFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionEventInvokeConfigOutput", name: "GetFunctionEventInvokeConfigOutput")
    GetFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionEventInvokeConfigRequest", name: "GetFunctionEventInvokeConfigRequest")
    GetFunctionRecursionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRecursionConfigRequest", name: "GetFunctionRecursionConfigRequest")
    GetFunctionRecursionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRecursionConfigResponse", name: "GetFunctionRecursionConfigResponse")
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRequest", name: "GetFunctionRequest")
    GetFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionResponse", name: "GetFunctionResponse")
    GetFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionUrlConfigRequest", name: "GetFunctionUrlConfigRequest")
    GetFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionUrlConfigResponse", name: "GetFunctionUrlConfigResponse")
    GetLayerVersionByArnOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionByArnOutput", name: "GetLayerVersionByArnOutput")
    GetLayerVersionByArnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionByArnRequest", name: "GetLayerVersionByArnRequest")
    GetLayerVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionOutput", name: "GetLayerVersionOutput")
    GetLayerVersionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionPolicyRequest", name: "GetLayerVersionPolicyRequest")
    GetLayerVersionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionPolicyResponse", name: "GetLayerVersionPolicyResponse")
    GetLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionRequest", name: "GetLayerVersionRequest")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetPolicyRequest", name: "GetPolicyRequest")
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetPolicyResponse", name: "GetPolicyResponse")
    GetProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetProvisionedConcurrencyConfigRequest", name: "GetProvisionedConcurrencyConfigRequest")
    GetProvisionedConcurrencyConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetProvisionedConcurrencyConfigResponse", name: "GetProvisionedConcurrencyConfigResponse")
    GetRuntimeManagementConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetRuntimeManagementConfigRequest", name: "GetRuntimeManagementConfigRequest")
    GetRuntimeManagementConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetRuntimeManagementConfigResponse", name: "GetRuntimeManagementConfigResponse")
    Handler = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Handler", name: "Handler", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^\\s]+$"})
    Header = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Header", name: "Header", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    HeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#HeadersList", name: "HeadersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    HttpStatus = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#HttpStatus", name: "HttpStatus", traits: {"smithy.api#default" => 0})
    ImageConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfig", name: "ImageConfig")
    ImageConfigError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfigError", name: "ImageConfigError")
    ImageConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfigResponse", name: "ImageConfigResponse")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidCodeSignatureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidCodeSignatureException", name: "InvalidCodeSignatureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidRequestContentException", name: "InvalidRequestContentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRuntimeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidRuntimeException", name: "InvalidRuntimeException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidSecurityGroupIDException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidSecurityGroupIDException", name: "InvalidSecurityGroupIDException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidSubnetIDException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidSubnetIDException", name: "InvalidSubnetIDException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvalidZipFileException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidZipFileException", name: "InvalidZipFileException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    InvocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvocationRequest", name: "InvocationRequest")
    InvocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvocationResponse", name: "InvocationResponse")
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#InvocationType", name: "InvocationType")
    InvokeAsyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeAsyncRequest", name: "InvokeAsyncRequest", traits: {"smithy.api#deprecated" => {}})
    InvokeAsyncResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeAsyncResponse", name: "InvokeAsyncResponse", traits: {"smithy.api#deprecated" => {}})
    InvokeMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#InvokeMode", name: "InvokeMode")
    InvokeResponseStreamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeResponseStreamUpdate", name: "InvokeResponseStreamUpdate")
    InvokeWithResponseStreamCompleteEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamCompleteEvent", name: "InvokeWithResponseStreamCompleteEvent")
    InvokeWithResponseStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamRequest", name: "InvokeWithResponseStreamRequest")
    InvokeWithResponseStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamResponse", name: "InvokeWithResponseStreamResponse")
    InvokeWithResponseStreamResponseEvent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamResponseEvent", name: "InvokeWithResponseStreamResponseEvent", traits: {"smithy.api#streaming" => {}})
    KMSAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSAccessDeniedException", name: "KMSAccessDeniedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSDisabledException", name: "KMSDisabledException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSInvalidStateException", name: "KMSInvalidStateException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KMSKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#KMSKeyArn", name: "KMSKeyArn", traits: {"smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"})
    KMSNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSNotFoundException", name: "KMSNotFoundException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    KafkaSchemaRegistryAccessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAccessConfig", name: "KafkaSchemaRegistryAccessConfig")
    KafkaSchemaRegistryAccessConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAccessConfigList", name: "KafkaSchemaRegistryAccessConfigList")
    KafkaSchemaRegistryAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAuthType", name: "KafkaSchemaRegistryAuthType")
    KafkaSchemaRegistryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryConfig", name: "KafkaSchemaRegistryConfig")
    KafkaSchemaValidationAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationAttribute", name: "KafkaSchemaValidationAttribute")
    KafkaSchemaValidationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationConfig", name: "KafkaSchemaValidationConfig")
    KafkaSchemaValidationConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationConfigList", name: "KafkaSchemaValidationConfigList")
    LastUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LastUpdateStatus", name: "LastUpdateStatus")
    LastUpdateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LastUpdateStatusReason", name: "LastUpdateStatusReason")
    LastUpdateStatusReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LastUpdateStatusReasonCode", name: "LastUpdateStatusReasonCode")
    Layer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Layer", name: "Layer")
    LayerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerArn", name: "LayerArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+$"})
    LayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayerList", name: "LayerList")
    LayerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerName", name: "LayerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+$"})
    LayerPermissionAllowedAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerPermissionAllowedAction", name: "LayerPermissionAllowedAction", traits: {"smithy.api#length" => {"min" => 0, "max" => 22}, "smithy.api#pattern" => "^lambda:GetLayerVersion$"})
    LayerPermissionAllowedPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerPermissionAllowedPrincipal", name: "LayerPermissionAllowedPrincipal", traits: {"smithy.api#pattern" => "^\\d{12}|\\*|arn:(aws[a-zA-Z-]*):iam::\\d{12}:root$"})
    LayerVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerVersionArn", name: "LayerVersionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+$"})
    LayerVersionContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionContentInput", name: "LayerVersionContentInput")
    LayerVersionContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionContentOutput", name: "LayerVersionContentOutput")
    LayerVersionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#LayerVersionNumber", name: "LayerVersionNumber", traits: {"smithy.api#default" => 0})
    LayerVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayerVersionsList", name: "LayerVersionsList")
    LayerVersionsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionsListItem", name: "LayerVersionsListItem")
    LayersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayersList", name: "LayersList")
    LayersListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayersListItem", name: "LayersListItem")
    LayersReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayersReferenceList", name: "LayersReferenceList")
    LicenseInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LicenseInfo", name: "LicenseInfo", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ListAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListAliasesRequest", name: "ListAliasesRequest")
    ListAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListAliasesResponse", name: "ListAliasesResponse")
    ListCodeSigningConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCodeSigningConfigsRequest", name: "ListCodeSigningConfigsRequest")
    ListCodeSigningConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCodeSigningConfigsResponse", name: "ListCodeSigningConfigsResponse")
    ListEventSourceMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListEventSourceMappingsRequest", name: "ListEventSourceMappingsRequest")
    ListEventSourceMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListEventSourceMappingsResponse", name: "ListEventSourceMappingsResponse")
    ListFunctionEventInvokeConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionEventInvokeConfigsRequest", name: "ListFunctionEventInvokeConfigsRequest")
    ListFunctionEventInvokeConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionEventInvokeConfigsResponse", name: "ListFunctionEventInvokeConfigsResponse")
    ListFunctionUrlConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionUrlConfigsRequest", name: "ListFunctionUrlConfigsRequest")
    ListFunctionUrlConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionUrlConfigsResponse", name: "ListFunctionUrlConfigsResponse")
    ListFunctionsByCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsByCodeSigningConfigRequest", name: "ListFunctionsByCodeSigningConfigRequest")
    ListFunctionsByCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsByCodeSigningConfigResponse", name: "ListFunctionsByCodeSigningConfigResponse")
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsRequest", name: "ListFunctionsRequest")
    ListFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsResponse", name: "ListFunctionsResponse")
    ListLayerVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayerVersionsRequest", name: "ListLayerVersionsRequest")
    ListLayerVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayerVersionsResponse", name: "ListLayerVersionsResponse")
    ListLayersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayersRequest", name: "ListLayersRequest")
    ListLayersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayersResponse", name: "ListLayersResponse")
    ListProvisionedConcurrencyConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListProvisionedConcurrencyConfigsRequest", name: "ListProvisionedConcurrencyConfigsRequest")
    ListProvisionedConcurrencyConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListProvisionedConcurrencyConfigsResponse", name: "ListProvisionedConcurrencyConfigsResponse")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListTagsResponse", name: "ListTagsResponse")
    ListVersionsByFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListVersionsByFunctionRequest", name: "ListVersionsByFunctionRequest")
    ListVersionsByFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListVersionsByFunctionResponse", name: "ListVersionsByFunctionResponse")
    LocalMountPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LocalMountPath", name: "LocalMountPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => "^/mnt/[a-zA-Z0-9-_.]+$"})
    LogFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LogFormat", name: "LogFormat")
    LogGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LogGroup", name: "LogGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LogType", name: "LogType")
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LoggingConfig", name: "LoggingConfig")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MasterRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#MasterRegion", name: "MasterRegion", traits: {"smithy.api#pattern" => "^ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}$"})
    MaxAge = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxAge", name: "MaxAge", traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}})
    MaxFunctionEventInvokeConfigListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxFunctionEventInvokeConfigListItems", name: "MaxFunctionEventInvokeConfigListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxLayerListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxLayerListItems", name: "MaxLayerListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxListItems", name: "MaxListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MaxProvisionedConcurrencyConfigListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxProvisionedConcurrencyConfigListItems", name: "MaxProvisionedConcurrencyConfigListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaximumBatchingWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumBatchingWindowInSeconds", name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    MaximumConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumConcurrency", name: "MaximumConcurrency", traits: {"smithy.api#range" => {"min" => 2, "max" => 1000}})
    MaximumEventAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumEventAgeInSeconds", name: "MaximumEventAgeInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 21600}})
    MaximumNumberOfPollers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumNumberOfPollers", name: "MaximumNumberOfPollers", traits: {"smithy.api#range" => {"min" => 1, "max" => 2000}})
    MaximumRecordAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRecordAgeInSeconds", name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 604800}})
    MaximumRetryAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRetryAttempts", name: "MaximumRetryAttempts", traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    MaximumRetryAttemptsEventSourceMapping = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRetryAttemptsEventSourceMapping", name: "MaximumRetryAttemptsEventSourceMapping", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}})
    MemorySize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MemorySize", name: "MemorySize", traits: {"smithy.api#range" => {"min" => 128, "max" => 10240}})
    Method = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Method", name: "Method", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}, "smithy.api#pattern" => ".*"})
    MinimumNumberOfPollers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MinimumNumberOfPollers", name: "MinimumNumberOfPollers", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    NameSpacedFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NameSpacedFunctionArn", name: "NameSpacedFunctionArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    NamespacedFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NamespacedFunctionName", name: "NamespacedFunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 170}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    NamespacedStatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NamespacedStatementId", name: "NamespacedStatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_.]+)$"})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#range" => {"min" => 0}})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#NullableBoolean", name: "NullableBoolean")
    OnFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#OnFailure", name: "OnFailure")
    OnSuccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#OnSuccess", name: "OnSuccess")
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OrganizationId", name: "OrganizationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Origin", name: "Origin", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => ".*"})
    PackageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#PackageType", name: "PackageType")
    ParallelizationFactor = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ParallelizationFactor", name: "ParallelizationFactor", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    Pattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Pattern", name: "Pattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => ".*"})
    PolicyLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PolicyLengthExceededException", name: "PolicyLengthExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Principal", name: "Principal", traits: {"smithy.api#pattern" => "^[^\\s]+$"})
    PrincipalOrgID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#PrincipalOrgID", name: "PrincipalOrgID", traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    ProvisionedConcurrencyConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigList", name: "ProvisionedConcurrencyConfigList")
    ProvisionedConcurrencyConfigListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigListItem", name: "ProvisionedConcurrencyConfigListItem")
    ProvisionedConcurrencyConfigNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigNotFoundException", name: "ProvisionedConcurrencyConfigNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ProvisionedConcurrencyStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyStatusEnum", name: "ProvisionedConcurrencyStatusEnum")
    ProvisionedPollerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedPollerConfig", name: "ProvisionedPollerConfig")
    PublishLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishLayerVersionRequest", name: "PublishLayerVersionRequest")
    PublishLayerVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishLayerVersionResponse", name: "PublishLayerVersionResponse")
    PublishVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishVersionOutput", name: "PublishVersionOutput")
    PublishVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishVersionRequest", name: "PublishVersionRequest")
    PutFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionCodeSigningConfigRequest", name: "PutFunctionCodeSigningConfigRequest")
    PutFunctionCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionCodeSigningConfigResponse", name: "PutFunctionCodeSigningConfigResponse")
    PutFunctionConcurrencyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionConcurrencyOutput", name: "PutFunctionConcurrencyOutput")
    PutFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionConcurrencyRequest", name: "PutFunctionConcurrencyRequest")
    PutFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionEventInvokeConfigOutput", name: "PutFunctionEventInvokeConfigOutput")
    PutFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionEventInvokeConfigRequest", name: "PutFunctionEventInvokeConfigRequest")
    PutFunctionRecursionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionRecursionConfigRequest", name: "PutFunctionRecursionConfigRequest")
    PutFunctionRecursionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionRecursionConfigResponse", name: "PutFunctionRecursionConfigResponse")
    PutProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutProvisionedConcurrencyConfigRequest", name: "PutProvisionedConcurrencyConfigRequest")
    PutProvisionedConcurrencyConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutProvisionedConcurrencyConfigResponse", name: "PutProvisionedConcurrencyConfigResponse")
    PutRuntimeManagementConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutRuntimeManagementConfigRequest", name: "PutRuntimeManagementConfigRequest")
    PutRuntimeManagementConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutRuntimeManagementConfigResponse", name: "PutRuntimeManagementConfigResponse")
    Qualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Qualifier", name: "Qualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(|[a-zA-Z0-9$_-]+)$"})
    Queue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Queue", name: "Queue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    Queues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Queues", name: "Queues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RecursiveInvocationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RecursiveInvocationException", name: "RecursiveInvocationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RecursiveLoop = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#RecursiveLoop", name: "RecursiveLoop")
    RemoveLayerVersionPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RemoveLayerVersionPermissionRequest", name: "RemoveLayerVersionPermissionRequest", traits: {"aws.api#data" => "permissions"})
    RemovePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RemovePermissionRequest", name: "RemovePermissionRequest", traits: {"aws.api#data" => "permissions"})
    RequestTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RequestTooLargeException", name: "RequestTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ReservedConcurrentExecutions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ReservedConcurrentExecutions", name: "ReservedConcurrentExecutions", traits: {"smithy.api#range" => {"min" => 0}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceConflictException", name: "ResourceConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceNotReadyException", name: "ResourceNotReadyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    ResponseStreamingInvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ResponseStreamingInvocationType", name: "ResponseStreamingInvocationType")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Runtime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#Runtime", name: "Runtime")
    RuntimeVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#RuntimeVersionArn", name: "RuntimeVersionArn", traits: {"smithy.api#length" => {"min" => 26, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}::runtime:.+$"})
    RuntimeVersionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RuntimeVersionConfig", name: "RuntimeVersionConfig")
    RuntimeVersionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RuntimeVersionError", name: "RuntimeVersionError")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ScalingConfig", name: "ScalingConfig")
    SchemaRegistryEventRecordFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SchemaRegistryEventRecordFormat", name: "SchemaRegistryEventRecordFormat")
    SchemaRegistryUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SchemaRegistryUri", name: "SchemaRegistryUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/*:_+=.@-]*$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SecurityGroupId", name: "SecurityGroupId")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SelfManagedEventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SelfManagedEventSource", name: "SelfManagedEventSource")
    SelfManagedKafkaEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SelfManagedKafkaEventSourceConfig", name: "SelfManagedKafkaEventSourceConfig")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SigningProfileVersionArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SigningProfileVersionArns", name: "SigningProfileVersionArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SnapStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStart", name: "SnapStart")
    SnapStartApplyOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SnapStartApplyOn", name: "SnapStartApplyOn")
    SnapStartException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartException", name: "SnapStartException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapStartNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartNotReadyException", name: "SnapStartNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SnapStartOptimizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SnapStartOptimizationStatus", name: "SnapStartOptimizationStatus")
    SnapStartResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartResponse", name: "SnapStartResponse")
    SnapStartTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartTimeoutException", name: "SnapStartTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    SourceAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SourceAccessConfiguration", name: "SourceAccessConfiguration")
    SourceAccessConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SourceAccessConfigurations", name: "SourceAccessConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 22}})
    SourceAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SourceAccessType", name: "SourceAccessType")
    SourceOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SourceOwner", name: "SourceOwner", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#State", name: "State")
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#StateReason", name: "StateReason")
    StateReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#StateReasonCode", name: "StateReasonCode")
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#StatementId", name: "StatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_]+)$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}})
    SubnetIPAddressLimitReachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SubnetIPAddressLimitReachedException", name: "SubnetIPAddressLimitReachedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SubnetId", name: "SubnetId")
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SystemLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SystemLogLevel", name: "SystemLogLevel")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#TagKeyList", name: "TagKeyList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagValue", name: "TagValue")
    TaggableResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TaggableResource", name: "TaggableResource", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:(function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?|code-signing-config:csc-[a-z0-9]{17}|event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#Tags", name: "Tags")
    TagsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TagsError", name: "TagsError")
    TagsErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagsErrorCode", name: "TagsErrorCode", traits: {"smithy.api#length" => {"min" => 10, "max" => 21}, "smithy.api#pattern" => "^[A-Za-z]+Exception$"})
    TagsErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagsErrorMessage", name: "TagsErrorMessage", traits: {"smithy.api#length" => {"min" => 84, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    ThrottleReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ThrottleReason", name: "ThrottleReason")
    Timeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Timeout", name: "Timeout", traits: {"smithy.api#range" => {"min" => 1}})
    Timestamp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Timestamp", name: "Timestamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Topic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Topic", name: "Topic", traits: {"smithy.api#length" => {"min" => 1, "max" => 249}, "smithy.api#pattern" => "^[^.]([a-zA-Z0-9\\-_.]+)$"})
    Topics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Topics", name: "Topics", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TracingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TracingConfig", name: "TracingConfig")
    TracingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TracingConfigResponse", name: "TracingConfigResponse")
    TracingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#TracingMode", name: "TracingMode")
    TumblingWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#TumblingWindowInSeconds", name: "TumblingWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/*:_+=.@-]*$"})
    UnqualifiedFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#UnqualifiedFunctionName", name: "UnqualifiedFunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)$"})
    UnreservedConcurrentExecutions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#UnreservedConcurrentExecutions", name: "UnreservedConcurrentExecutions", traits: {"smithy.api#range" => {"min" => 0}})
    UnsupportedMediaTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UnsupportedMediaTypeException", name: "UnsupportedMediaTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateAliasOutput", name: "UpdateAliasOutput")
    UpdateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateAliasRequest", name: "UpdateAliasRequest")
    UpdateCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCodeSigningConfigRequest", name: "UpdateCodeSigningConfigRequest")
    UpdateCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCodeSigningConfigResponse", name: "UpdateCodeSigningConfigResponse")
    UpdateEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateEventSourceMappingOutput", name: "UpdateEventSourceMappingOutput")
    UpdateEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateEventSourceMappingRequest", name: "UpdateEventSourceMappingRequest")
    UpdateFunctionCodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionCodeOutput", name: "UpdateFunctionCodeOutput")
    UpdateFunctionCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionCodeRequest", name: "UpdateFunctionCodeRequest")
    UpdateFunctionConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionConfigurationOutput", name: "UpdateFunctionConfigurationOutput")
    UpdateFunctionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionConfigurationRequest", name: "UpdateFunctionConfigurationRequest")
    UpdateFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionEventInvokeConfigOutput", name: "UpdateFunctionEventInvokeConfigOutput")
    UpdateFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionEventInvokeConfigRequest", name: "UpdateFunctionEventInvokeConfigRequest")
    UpdateFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionUrlConfigRequest", name: "UpdateFunctionUrlConfigRequest")
    UpdateFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionUrlConfigResponse", name: "UpdateFunctionUrlConfigResponse")
    UpdateRuntimeOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#UpdateRuntimeOn", name: "UpdateRuntimeOn")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(\\$LATEST|[0-9]+)$"})
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#VpcConfig", name: "VpcConfig")
    VpcConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#VpcConfigResponse", name: "VpcConfigResponse")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#VpcId", name: "VpcId")
    Weight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lambda#Weight", name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    WorkingDirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#WorkingDirectory", name: "WorkingDirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})

    AccountLimit.add_member(:total_code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalCodeSize", traits: {"smithy.api#default" => 0}))
    AccountLimit.add_member(:code_size_unzipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSizeUnzipped", traits: {"smithy.api#default" => 0}))
    AccountLimit.add_member(:code_size_zipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSizeZipped", traits: {"smithy.api#default" => 0}))
    AccountLimit.add_member(:concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ConcurrentExecutions", traits: {"smithy.api#default" => 0}))
    AccountLimit.add_member(:unreserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: UnreservedConcurrentExecutions, name: "UnreservedConcurrentExecutions"))
    AccountLimit.type = Types::AccountLimit
    AccountUsage.add_member(:total_code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalCodeSize", traits: {"smithy.api#default" => 0}))
    AccountUsage.add_member(:function_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FunctionCount", traits: {"smithy.api#default" => 0}))
    AccountUsage.type = Types::AccountUsage
    AddLayerVersionPermissionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddLayerVersionPermissionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddLayerVersionPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#required" => {}}))
    AddLayerVersionPermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerPermissionAllowedAction, name: "Action", traits: {"smithy.api#required" => {}}))
    AddLayerVersionPermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerPermissionAllowedPrincipal, name: "Principal", traits: {"smithy.api#required" => {}}))
    AddLayerVersionPermissionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "OrganizationId"))
    AddLayerVersionPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId"}))
    AddLayerVersionPermissionRequest.type = Types::AddLayerVersionPermissionRequest
    AddLayerVersionPermissionResponse.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Statement"))
    AddLayerVersionPermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    AddLayerVersionPermissionResponse.type = Types::AddLayerVersionPermissionResponse
    AddPermissionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal", traits: {"smithy.api#required" => {}}))
    AddPermissionRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceArn"))
    AddPermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceOwner, name: "SourceAccount"))
    AddPermissionRequest.add_member(:event_source_token, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceToken, name: "EventSourceToken"))
    AddPermissionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    AddPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    AddPermissionRequest.add_member(:principal_org_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrgID, name: "PrincipalOrgID"))
    AddPermissionRequest.add_member(:function_url_auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "FunctionUrlAuthType"))
    AddPermissionRequest.type = Types::AddPermissionRequest
    AddPermissionResponse.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Statement"))
    AddPermissionResponse.type = Types::AddPermissionResponse
    AdditionalVersionWeights.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalVersion, name: "key"))
    AdditionalVersionWeights.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "value"))
    AliasConfiguration.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn"))
    AliasConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name"))
    AliasConfiguration.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion"))
    AliasConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    AliasConfiguration.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    AliasConfiguration.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    AliasConfiguration.type = Types::AliasConfiguration
    AliasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasConfiguration, name: "member"))
    AliasRoutingConfiguration.add_member(:additional_version_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalVersionWeights, name: "AdditionalVersionWeights"))
    AliasRoutingConfiguration.type = Types::AliasRoutingConfiguration
    AllowMethodsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "member"))
    AllowOriginsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "member"))
    AllowedPublishers.add_member(:signing_profile_version_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileVersionArns, name: "SigningProfileVersionArns", traits: {"smithy.api#required" => {}}))
    AllowedPublishers.type = Types::AllowedPublishers
    AmazonManagedKafkaEventSourceConfig.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupId"))
    AmazonManagedKafkaEventSourceConfig.add_member(:schema_registry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryConfig, name: "SchemaRegistryConfig"))
    AmazonManagedKafkaEventSourceConfig.type = Types::AmazonManagedKafkaEventSourceConfig
    ApplicationLogLevel.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Trace", traits: {"smithy.api#enumValue" => "TRACE"}))
    ApplicationLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debug", traits: {"smithy.api#enumValue" => "DEBUG"}))
    ApplicationLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Info", traits: {"smithy.api#enumValue" => "INFO"}))
    ApplicationLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "WARN"}))
    ApplicationLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Error", traits: {"smithy.api#enumValue" => "ERROR"}))
    ApplicationLogLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Fatal", traits: {"smithy.api#enumValue" => "FATAL"}))
    Architecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "x86_64", traits: {"smithy.api#enumValue" => "x86_64"}))
    Architecture.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "arm64", traits: {"smithy.api#enumValue" => "arm64"}))
    ArchitecturesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "member"))
    CodeSigningConfig.add_member(:code_signing_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigId, name: "CodeSigningConfigId", traits: {"smithy.api#required" => {}}))
    CodeSigningConfig.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}}))
    CodeSigningConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CodeSigningConfig.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers", traits: {"smithy.api#required" => {}}))
    CodeSigningConfig.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies", traits: {"smithy.api#required" => {}}))
    CodeSigningConfig.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#required" => {}}))
    CodeSigningConfig.type = Types::CodeSigningConfig
    CodeSigningConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "member"))
    CodeSigningConfigNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    CodeSigningConfigNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CodeSigningConfigNotFoundException.type = Types::CodeSigningConfigNotFoundException
    CodeSigningPolicies.add_member(:untrusted_artifact_on_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicy, name: "UntrustedArtifactOnDeployment"))
    CodeSigningPolicies.type = Types::CodeSigningPolicies
    CodeSigningPolicy.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "Warn"}))
    CodeSigningPolicy.add_member(:enforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enforce", traits: {"smithy.api#enumValue" => "Enforce"}))
    CodeStorageExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    CodeStorageExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    CodeStorageExceededException.type = Types::CodeStorageExceededException
    CodeVerificationFailedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    CodeVerificationFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CodeVerificationFailedException.type = Types::CodeVerificationFailedException
    CompatibleArchitectures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "member"))
    CompatibleRuntimes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "member"))
    Concurrency.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions"))
    Concurrency.type = Types::Concurrency
    Cors.add_member(:allow_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowCredentials, name: "AllowCredentials"))
    Cors.add_member(:allow_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeadersList, name: "AllowHeaders"))
    Cors.add_member(:allow_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMethodsList, name: "AllowMethods"))
    Cors.add_member(:allow_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowOriginsList, name: "AllowOrigins"))
    Cors.add_member(:expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeadersList, name: "ExposeHeaders"))
    Cors.add_member(:max_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAge, name: "MaxAge"))
    Cors.type = Types::Cors
    CreateAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn"))
    CreateAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name"))
    CreateAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion"))
    CreateAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    CreateAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias"}))
    CreateAliasRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#required" => {}}))
    CreateAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateAliasRequest.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateCodeSigningConfigRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateCodeSigningConfigRequest.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers", traits: {"smithy.api#required" => {}}))
    CreateCodeSigningConfigRequest.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies"))
    CreateCodeSigningConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateCodeSigningConfigRequest.type = Types::CreateCodeSigningConfigRequest
    CreateCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}}))
    CreateCodeSigningConfigResponse.type = Types::CreateCodeSigningConfigResponse
    CreateEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID"))
    CreateEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    CreateEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    CreateEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    CreateEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    CreateEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    CreateEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    CreateEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    CreateEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    CreateEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    CreateEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult"))
    CreateEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    CreateEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason"))
    CreateEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    CreateEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    CreateEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    CreateEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    CreateEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    CreateEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    CreateEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    CreateEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    CreateEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    CreateEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    CreateEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    CreateEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    CreateEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    CreateEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError"))
    CreateEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn"))
    CreateEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    CreateEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    CreateEventSourceMappingOutput.type = Types::CreateEventSourceMappingOutput
    CreateEventSourceMappingRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    CreateEventSourceMappingRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}}))
    CreateEventSourceMappingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled"))
    CreateEventSourceMappingRequest.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    CreateEventSourceMappingRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    CreateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    CreateEventSourceMappingRequest.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    CreateEventSourceMappingRequest.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    CreateEventSourceMappingRequest.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    CreateEventSourceMappingRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    CreateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    CreateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    CreateEventSourceMappingRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    CreateEventSourceMappingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    CreateEventSourceMappingRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    CreateEventSourceMappingRequest.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    CreateEventSourceMappingRequest.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    CreateEventSourceMappingRequest.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    CreateEventSourceMappingRequest.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    CreateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    CreateEventSourceMappingRequest.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    CreateEventSourceMappingRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    CreateEventSourceMappingRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    CreateEventSourceMappingRequest.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    CreateEventSourceMappingRequest.type = Types::CreateEventSourceMappingRequest
    CreateFunctionOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    CreateFunctionOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    CreateFunctionOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    CreateFunctionOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    CreateFunctionOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    CreateFunctionOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    CreateFunctionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFunctionOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    CreateFunctionOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    CreateFunctionOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    CreateFunctionOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    CreateFunctionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    CreateFunctionOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    CreateFunctionOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    CreateFunctionOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    CreateFunctionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    CreateFunctionOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    CreateFunctionOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    CreateFunctionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    CreateFunctionOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    CreateFunctionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    CreateFunctionOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    CreateFunctionOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    CreateFunctionOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    CreateFunctionOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    CreateFunctionOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    CreateFunctionOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    CreateFunctionOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    CreateFunctionOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    CreateFunctionOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    CreateFunctionOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    CreateFunctionOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    CreateFunctionOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    CreateFunctionOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    CreateFunctionOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    CreateFunctionOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    CreateFunctionOutput.type = Types::CreateFunctionOutput
    CreateFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    CreateFunctionRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    CreateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionCode, name: "Code", traits: {"smithy.api#required" => {}}))
    CreateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFunctionRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    CreateFunctionRequest.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    CreateFunctionRequest.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Publish", traits: {"smithy.api#default" => false}))
    CreateFunctionRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    CreateFunctionRequest.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    CreateFunctionRequest.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    CreateFunctionRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "Environment"))
    CreateFunctionRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    CreateFunctionRequest.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfig, name: "TracingConfig"))
    CreateFunctionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFunctionRequest.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "Layers"))
    CreateFunctionRequest.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    CreateFunctionRequest.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig"))
    CreateFunctionRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn"))
    CreateFunctionRequest.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    CreateFunctionRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    CreateFunctionRequest.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStart, name: "SnapStart"))
    CreateFunctionRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    CreateFunctionUrlConfigRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}}))
    CreateFunctionUrlConfigRequest.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    CreateFunctionUrlConfigRequest.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    CreateFunctionUrlConfigRequest.type = Types::CreateFunctionUrlConfigRequest
    CreateFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}}))
    CreateFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    CreateFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}}))
    CreateFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    CreateFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CreateFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    CreateFunctionUrlConfigResponse.type = Types::CreateFunctionUrlConfigResponse
    DeadLetterConfig.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TargetArn"))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeleteAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias"}))
    DeleteAliasRequest.type = Types::DeleteAliasRequest
    DeleteCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCodeSigningConfigRequest.type = Types::DeleteCodeSigningConfigRequest
    DeleteCodeSigningConfigResponse.type = Types::DeleteCodeSigningConfigResponse
    DeleteEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID"))
    DeleteEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    DeleteEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    DeleteEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    DeleteEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    DeleteEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    DeleteEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    DeleteEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    DeleteEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    DeleteEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    DeleteEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult"))
    DeleteEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    DeleteEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason"))
    DeleteEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    DeleteEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    DeleteEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    DeleteEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    DeleteEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    DeleteEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    DeleteEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    DeleteEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    DeleteEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    DeleteEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    DeleteEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    DeleteEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    DeleteEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    DeleteEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    DeleteEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    DeleteEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError"))
    DeleteEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn"))
    DeleteEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    DeleteEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    DeleteEventSourceMappingOutput.type = Types::DeleteEventSourceMappingOutput
    DeleteEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventSourceMappingRequest.type = Types::DeleteEventSourceMappingRequest
    DeleteFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionCodeSigningConfigRequest.type = Types::DeleteFunctionCodeSigningConfigRequest
    DeleteFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionConcurrencyRequest.type = Types::DeleteFunctionConcurrencyRequest
    DeleteFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    DeleteFunctionEventInvokeConfigRequest.type = Types::DeleteFunctionEventInvokeConfigRequest
    DeleteFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    DeleteFunctionUrlConfigRequest.type = Types::DeleteFunctionUrlConfigRequest
    DeleteLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLayerVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLayerVersionRequest.type = Types::DeleteLayerVersionRequest
    DeleteProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}}))
    DeleteProvisionedConcurrencyConfigRequest.type = Types::DeleteProvisionedConcurrencyConfigRequest
    DestinationConfig.add_member(:on_success, ::Smithy::Schema::Shapes::MemberShape.new(target: OnSuccess, name: "OnSuccess"))
    DestinationConfig.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailure, name: "OnFailure"))
    DestinationConfig.type = Types::DestinationConfig
    DocumentDBEventSourceConfig.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, name: "DatabaseName"))
    DocumentDBEventSourceConfig.add_member(:collection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "CollectionName"))
    DocumentDBEventSourceConfig.add_member(:full_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FullDocument, name: "FullDocument"))
    DocumentDBEventSourceConfig.type = Types::DocumentDBEventSourceConfig
    EC2AccessDeniedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EC2AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EC2AccessDeniedException.type = Types::EC2AccessDeniedException
    EC2ThrottledException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EC2ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EC2ThrottledException.type = Types::EC2ThrottledException
    EC2UnexpectedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EC2UnexpectedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EC2UnexpectedException.add_member(:ec2_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2ErrorCode"))
    EC2UnexpectedException.type = Types::EC2UnexpectedException
    EFSIOException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EFSIOException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EFSIOException.type = Types::EFSIOException
    EFSMountConnectivityException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EFSMountConnectivityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EFSMountConnectivityException.type = Types::EFSMountConnectivityException
    EFSMountFailureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EFSMountFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EFSMountFailureException.type = Types::EFSMountFailureException
    EFSMountTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    EFSMountTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    EFSMountTimeoutException.type = Types::EFSMountTimeoutException
    ENILimitReachedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ENILimitReachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ENILimitReachedException.type = Types::ENILimitReachedException
    EndPointType.add_member(:kafka_bootstrap_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KAFKA_BOOTSTRAP_SERVERS", traits: {"smithy.api#enumValue" => "KAFKA_BOOTSTRAP_SERVERS"}))
    EndpointLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    Endpoints.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointType, name: "key"))
    Endpoints.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointLists, name: "value"))
    Environment.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "Variables"))
    Environment.type = Types::Environment
    EnvironmentError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    EnvironmentError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message"))
    EnvironmentError.type = Types::EnvironmentError
    EnvironmentResponse.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "Variables"))
    EnvironmentResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentError, name: "Error"))
    EnvironmentResponse.type = Types::EnvironmentResponse
    EnvironmentVariables.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableName, name: "key"))
    EnvironmentVariables.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableValue, name: "value"))
    EphemeralStorage.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorageSize, name: "Size", traits: {"smithy.api#required" => {}}))
    EphemeralStorage.type = Types::EphemeralStorage
    EventSourceMappingConfiguration.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID"))
    EventSourceMappingConfiguration.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    EventSourceMappingConfiguration.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    EventSourceMappingConfiguration.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    EventSourceMappingConfiguration.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    EventSourceMappingConfiguration.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    EventSourceMappingConfiguration.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    EventSourceMappingConfiguration.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    EventSourceMappingConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    EventSourceMappingConfiguration.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    EventSourceMappingConfiguration.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult"))
    EventSourceMappingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    EventSourceMappingConfiguration.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason"))
    EventSourceMappingConfiguration.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    EventSourceMappingConfiguration.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    EventSourceMappingConfiguration.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    EventSourceMappingConfiguration.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    EventSourceMappingConfiguration.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    EventSourceMappingConfiguration.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    EventSourceMappingConfiguration.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    EventSourceMappingConfiguration.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    EventSourceMappingConfiguration.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    EventSourceMappingConfiguration.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    EventSourceMappingConfiguration.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    EventSourceMappingConfiguration.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    EventSourceMappingConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    EventSourceMappingConfiguration.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError"))
    EventSourceMappingConfiguration.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn"))
    EventSourceMappingConfiguration.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    EventSourceMappingConfiguration.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    EventSourceMappingConfiguration.type = Types::EventSourceMappingConfiguration
    EventSourceMappingMetric.add_member(:event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventCount", traits: {"smithy.api#enumValue" => "EventCount"}))
    EventSourceMappingMetricList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetric, name: "member"))
    EventSourceMappingMetricsConfig.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricList, name: "Metrics"))
    EventSourceMappingMetricsConfig.type = Types::EventSourceMappingMetricsConfig
    EventSourceMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingConfiguration, name: "member"))
    EventSourcePosition.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    EventSourcePosition.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    EventSourcePosition.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"}))
    FileSystemConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    FileSystemConfig.add_member(:local_mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalMountPath, name: "LocalMountPath", traits: {"smithy.api#required" => {}}))
    FileSystemConfig.type = Types::FileSystemConfig
    FileSystemConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfig, name: "member"))
    Filter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: Pattern, name: "Pattern"))
    Filter.type = Types::Filter
    FilterCriteria.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    FilterCriteria.type = Types::FilterCriteria
    FilterCriteriaError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaErrorCode, name: "ErrorCode"))
    FilterCriteriaError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaErrorMessage, name: "Message"))
    FilterCriteriaError.type = Types::FilterCriteriaError
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FullDocument.add_member(:update_lookup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateLookup", traits: {"smithy.api#enumValue" => "UpdateLookup"}))
    FullDocument.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "Default"}))
    FunctionArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "member"))
    FunctionCode.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile"))
    FunctionCode.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket"))
    FunctionCode.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    FunctionCode.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion"))
    FunctionCode.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri"))
    FunctionCode.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "SourceKMSKeyArn"))
    FunctionCode.type = Types::FunctionCode
    FunctionCodeLocation.add_member(:repository_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RepositoryType"))
    FunctionCodeLocation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location"))
    FunctionCodeLocation.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri"))
    FunctionCodeLocation.add_member(:resolved_image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResolvedImageUri"))
    FunctionCodeLocation.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKMSKeyArn"))
    FunctionCodeLocation.type = Types::FunctionCodeLocation
    FunctionConfiguration.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    FunctionConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    FunctionConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    FunctionConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    FunctionConfiguration.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    FunctionConfiguration.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    FunctionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    FunctionConfiguration.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    FunctionConfiguration.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    FunctionConfiguration.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    FunctionConfiguration.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    FunctionConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    FunctionConfiguration.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    FunctionConfiguration.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    FunctionConfiguration.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    FunctionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    FunctionConfiguration.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    FunctionConfiguration.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    FunctionConfiguration.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    FunctionConfiguration.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    FunctionConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    FunctionConfiguration.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    FunctionConfiguration.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    FunctionConfiguration.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    FunctionConfiguration.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    FunctionConfiguration.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    FunctionConfiguration.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    FunctionConfiguration.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    FunctionConfiguration.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    FunctionConfiguration.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    FunctionConfiguration.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    FunctionConfiguration.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    FunctionConfiguration.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    FunctionConfiguration.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    FunctionConfiguration.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    FunctionConfiguration.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    FunctionConfiguration.type = Types::FunctionConfiguration
    FunctionEventInvokeConfig.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    FunctionEventInvokeConfig.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    FunctionEventInvokeConfig.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    FunctionEventInvokeConfig.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    FunctionEventInvokeConfig.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    FunctionEventInvokeConfig.type = Types::FunctionEventInvokeConfig
    FunctionEventInvokeConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEventInvokeConfig, name: "member"))
    FunctionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "member"))
    FunctionResponseType.add_member(:report_batch_item_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReportBatchItemFailures", traits: {"smithy.api#enumValue" => "ReportBatchItemFailures"}))
    FunctionResponseTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseType, name: "member"))
    FunctionUrlAuthType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    FunctionUrlAuthType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    FunctionUrlConfig.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}}))
    FunctionUrlConfig.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    FunctionUrlConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    FunctionUrlConfig.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    FunctionUrlConfig.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    FunctionUrlConfig.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}}))
    FunctionUrlConfig.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    FunctionUrlConfig.type = Types::FunctionUrlConfig
    FunctionUrlConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlConfig, name: "member"))
    FunctionVersion.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimit, name: "AccountLimit"))
    GetAccountSettingsResponse.add_member(:account_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountUsage, name: "AccountUsage"))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn"))
    GetAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name"))
    GetAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion"))
    GetAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    GetAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    GetAliasOutput.type = Types::GetAliasOutput
    GetAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias"}))
    GetAliasRequest.type = Types::GetAliasRequest
    GetCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeSigningConfigRequest.type = Types::GetCodeSigningConfigRequest
    GetCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}}))
    GetCodeSigningConfigResponse.type = Types::GetCodeSigningConfigResponse
    GetEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID"))
    GetEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    GetEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    GetEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    GetEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    GetEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    GetEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    GetEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    GetEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    GetEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    GetEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult"))
    GetEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    GetEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason"))
    GetEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    GetEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    GetEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    GetEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    GetEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    GetEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    GetEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    GetEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    GetEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    GetEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    GetEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    GetEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    GetEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    GetEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    GetEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    GetEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError"))
    GetEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn"))
    GetEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    GetEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    GetEventSourceMappingOutput.type = Types::GetEventSourceMappingOutput
    GetEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventSourceMappingRequest.type = Types::GetEventSourceMappingRequest
    GetFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionCodeSigningConfigRequest.type = Types::GetFunctionCodeSigningConfigRequest
    GetFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}}))
    GetFunctionCodeSigningConfigResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}}))
    GetFunctionCodeSigningConfigResponse.type = Types::GetFunctionCodeSigningConfigResponse
    GetFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionConcurrencyRequest.type = Types::GetFunctionConcurrencyRequest
    GetFunctionConcurrencyResponse.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions"))
    GetFunctionConcurrencyResponse.type = Types::GetFunctionConcurrencyResponse
    GetFunctionConfigurationOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    GetFunctionConfigurationOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    GetFunctionConfigurationOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    GetFunctionConfigurationOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    GetFunctionConfigurationOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    GetFunctionConfigurationOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    GetFunctionConfigurationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetFunctionConfigurationOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    GetFunctionConfigurationOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    GetFunctionConfigurationOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    GetFunctionConfigurationOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    GetFunctionConfigurationOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    GetFunctionConfigurationOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    GetFunctionConfigurationOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    GetFunctionConfigurationOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    GetFunctionConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    GetFunctionConfigurationOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    GetFunctionConfigurationOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    GetFunctionConfigurationOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    GetFunctionConfigurationOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    GetFunctionConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    GetFunctionConfigurationOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    GetFunctionConfigurationOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    GetFunctionConfigurationOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    GetFunctionConfigurationOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    GetFunctionConfigurationOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    GetFunctionConfigurationOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    GetFunctionConfigurationOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    GetFunctionConfigurationOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    GetFunctionConfigurationOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    GetFunctionConfigurationOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    GetFunctionConfigurationOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    GetFunctionConfigurationOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    GetFunctionConfigurationOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    GetFunctionConfigurationOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    GetFunctionConfigurationOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    GetFunctionConfigurationOutput.type = Types::GetFunctionConfigurationOutput
    GetFunctionConfigurationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionConfigurationRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetFunctionConfigurationRequest.type = Types::GetFunctionConfigurationRequest
    GetFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    GetFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    GetFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    GetFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    GetFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    GetFunctionEventInvokeConfigOutput.type = Types::GetFunctionEventInvokeConfigOutput
    GetFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetFunctionEventInvokeConfigRequest.type = Types::GetFunctionEventInvokeConfigRequest
    GetFunctionRecursionConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRecursionConfigRequest.type = Types::GetFunctionRecursionConfigRequest
    GetFunctionRecursionConfigResponse.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop"))
    GetFunctionRecursionConfigResponse.type = Types::GetFunctionRecursionConfigResponse
    GetFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "Configuration"))
    GetFunctionResponse.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionCodeLocation, name: "Code"))
    GetFunctionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    GetFunctionResponse.add_member(:tags_error, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsError, name: "TagsError"))
    GetFunctionResponse.add_member(:concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: Concurrency, name: "Concurrency"))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetFunctionUrlConfigRequest.type = Types::GetFunctionUrlConfigRequest
    GetFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}}))
    GetFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    GetFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}}))
    GetFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    GetFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    GetFunctionUrlConfigResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    GetFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    GetFunctionUrlConfigResponse.type = Types::GetFunctionUrlConfigResponse
    GetLayerVersionByArnOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content"))
    GetLayerVersionByArnOutput.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn"))
    GetLayerVersionByArnOutput.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn"))
    GetLayerVersionByArnOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetLayerVersionByArnOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate"))
    GetLayerVersionByArnOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0}))
    GetLayerVersionByArnOutput.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes"))
    GetLayerVersionByArnOutput.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo"))
    GetLayerVersionByArnOutput.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures"))
    GetLayerVersionByArnOutput.type = Types::GetLayerVersionByArnOutput
    GetLayerVersionByArnRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "Arn", traits: {"smithy.api#httpQuery" => "Arn", "smithy.api#required" => {}}))
    GetLayerVersionByArnRequest.type = Types::GetLayerVersionByArnRequest
    GetLayerVersionOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content"))
    GetLayerVersionOutput.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn"))
    GetLayerVersionOutput.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn"))
    GetLayerVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetLayerVersionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate"))
    GetLayerVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0}))
    GetLayerVersionOutput.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes"))
    GetLayerVersionOutput.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo"))
    GetLayerVersionOutput.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures"))
    GetLayerVersionOutput.type = Types::GetLayerVersionOutput
    GetLayerVersionPolicyRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayerVersionPolicyRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayerVersionPolicyRequest.type = Types::GetLayerVersionPolicyRequest
    GetLayerVersionPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    GetLayerVersionPolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    GetLayerVersionPolicyResponse.type = Types::GetLayerVersionPolicyResponse
    GetLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayerVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetLayerVersionRequest.type = Types::GetLayerVersionRequest
    GetPolicyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    GetPolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}}))
    GetProvisionedConcurrencyConfigRequest.type = Types::GetProvisionedConcurrencyConfigRequest
    GetProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions"))
    GetProvisionedConcurrencyConfigResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status"))
    GetProvisionedConcurrencyConfigResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason"))
    GetProvisionedConcurrencyConfigResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    GetProvisionedConcurrencyConfigResponse.type = Types::GetProvisionedConcurrencyConfigResponse
    GetRuntimeManagementConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuntimeManagementConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    GetRuntimeManagementConfigRequest.type = Types::GetRuntimeManagementConfigRequest
    GetRuntimeManagementConfigResponse.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn"))
    GetRuntimeManagementConfigResponse.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn"))
    GetRuntimeManagementConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    GetRuntimeManagementConfigResponse.type = Types::GetRuntimeManagementConfigResponse
    HeadersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "member"))
    ImageConfig.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "EntryPoint"))
    ImageConfig.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Command"))
    ImageConfig.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkingDirectory, name: "WorkingDirectory"))
    ImageConfig.type = Types::ImageConfig
    ImageConfigError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ImageConfigError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message"))
    ImageConfigError.type = Types::ImageConfigError
    ImageConfigResponse.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig"))
    ImageConfigResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigError, name: "Error"))
    ImageConfigResponse.type = Types::ImageConfigResponse
    InvalidCodeSignatureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidCodeSignatureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidCodeSignatureException.type = Types::InvalidCodeSignatureException
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestContentException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidRequestContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidRequestContentException.type = Types::InvalidRequestContentException
    InvalidRuntimeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidRuntimeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidRuntimeException.type = Types::InvalidRuntimeException
    InvalidSecurityGroupIDException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidSecurityGroupIDException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidSecurityGroupIDException.type = Types::InvalidSecurityGroupIDException
    InvalidSubnetIDException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidSubnetIDException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidSubnetIDException.type = Types::InvalidSubnetIDException
    InvalidZipFileException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidZipFileException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidZipFileException.type = Types::InvalidZipFileException
    InvocationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvocationRequest.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, name: "InvocationType", traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type"}))
    InvocationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type"}))
    InvocationRequest.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientContext", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context"}))
    InvocationRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}}))
    InvocationRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    InvocationRequest[:http_payload] = :payload
    InvocationRequest[:http_payload_member] = InvocationRequest.member(:payload)
    InvocationRequest.type = Types::InvocationRequest
    InvocationResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    InvocationResponse.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionError", traits: {"smithy.api#httpHeader" => "X-Amz-Function-Error"}))
    InvocationResponse.add_member(:log_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogResult", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Result"}))
    InvocationResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}}))
    InvocationResponse.add_member(:executed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ExecutedVersion", traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version"}))
    InvocationResponse[:http_payload] = :payload
    InvocationResponse[:http_payload_member] = InvocationResponse.member(:payload)
    InvocationResponse.type = Types::InvocationResponse
    InvocationType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Event", traits: {"smithy.api#enumValue" => "Event"}))
    InvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestResponse", traits: {"smithy.api#enumValue" => "RequestResponse"}))
    InvocationType.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DryRun", traits: {"smithy.api#enumValue" => "DryRun"}))
    InvokeAsyncRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAsyncRequest.add_member(:invoke_args, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobStream, name: "InvokeArgs", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAsyncRequest[:http_payload] = :invoke_args
    InvokeAsyncRequest[:http_payload_member] = InvokeAsyncRequest.member(:invoke_args)
    InvokeAsyncRequest.type = Types::InvokeAsyncRequest
    InvokeAsyncResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpStatus, name: "Status", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    InvokeAsyncResponse.type = Types::InvokeAsyncResponse
    InvokeMode.add_member(:buffered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUFFERED", traits: {"smithy.api#enumValue" => "BUFFERED"}))
    InvokeMode.add_member(:response_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE_STREAM", traits: {"smithy.api#enumValue" => "RESPONSE_STREAM"}))
    InvokeResponseStreamUpdate.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#eventPayload" => {}}))
    InvokeResponseStreamUpdate.type = Types::InvokeResponseStreamUpdate
    InvokeWithResponseStreamCompleteEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    InvokeWithResponseStreamCompleteEvent.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetails"))
    InvokeWithResponseStreamCompleteEvent.add_member(:log_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogResult"))
    InvokeWithResponseStreamCompleteEvent.type = Types::InvokeWithResponseStreamCompleteEvent
    InvokeWithResponseStreamRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeWithResponseStreamRequest.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStreamingInvocationType, name: "InvocationType", traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type"}))
    InvokeWithResponseStreamRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type"}))
    InvokeWithResponseStreamRequest.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientContext", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context"}))
    InvokeWithResponseStreamRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    InvokeWithResponseStreamRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}}))
    InvokeWithResponseStreamRequest[:http_payload] = :payload
    InvokeWithResponseStreamRequest[:http_payload_member] = InvokeWithResponseStreamRequest.member(:payload)
    InvokeWithResponseStreamRequest.type = Types::InvokeWithResponseStreamRequest
    InvokeWithResponseStreamResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    InvokeWithResponseStreamResponse.add_member(:executed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ExecutedVersion", traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version"}))
    InvokeWithResponseStreamResponse.add_member(:event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeWithResponseStreamResponseEvent, name: "EventStream", traits: {"smithy.api#httpPayload" => {}}))
    InvokeWithResponseStreamResponse.add_member(:response_stream_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseStreamContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeWithResponseStreamResponse[:http_payload] = :event_stream
    InvokeWithResponseStreamResponse[:http_payload_member] = InvokeWithResponseStreamResponse.member(:event_stream)
    InvokeWithResponseStreamResponse.type = Types::InvokeWithResponseStreamResponse
    InvokeWithResponseStreamResponseEvent.add_member(:payload_chunk, Types::InvokeWithResponseStreamResponseEvent::PayloadChunk, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeResponseStreamUpdate, name: "PayloadChunk"))
    InvokeWithResponseStreamResponseEvent.add_member(:invoke_complete, Types::InvokeWithResponseStreamResponseEvent::InvokeComplete, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeWithResponseStreamCompleteEvent, name: "InvokeComplete"))
    InvokeWithResponseStreamResponseEvent.add_member(:unknown, Types::InvokeWithResponseStreamResponseEvent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeWithResponseStreamResponseEvent.type = Types::InvokeWithResponseStreamResponseEvent
    KMSAccessDeniedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    KMSAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KMSAccessDeniedException.type = Types::KMSAccessDeniedException
    KMSDisabledException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    KMSDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KMSDisabledException.type = Types::KMSDisabledException
    KMSInvalidStateException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    KMSInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KMSInvalidStateException.type = Types::KMSInvalidStateException
    KMSNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    KMSNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    KMSNotFoundException.type = Types::KMSNotFoundException
    KafkaSchemaRegistryAccessConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAuthType, name: "Type"))
    KafkaSchemaRegistryAccessConfig.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "URI"))
    KafkaSchemaRegistryAccessConfig.type = Types::KafkaSchemaRegistryAccessConfig
    KafkaSchemaRegistryAccessConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAccessConfig, name: "member"))
    KafkaSchemaRegistryAuthType.add_member(:basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH"}))
    KafkaSchemaRegistryAuthType.add_member(:client_certificate_tls_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CERTIFICATE_TLS_AUTH", traits: {"smithy.api#enumValue" => "CLIENT_CERTIFICATE_TLS_AUTH"}))
    KafkaSchemaRegistryAuthType.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_ROOT_CA_CERTIFICATE", traits: {"smithy.api#enumValue" => "SERVER_ROOT_CA_CERTIFICATE"}))
    KafkaSchemaRegistryConfig.add_member(:schema_registry_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryUri, name: "SchemaRegistryURI"))
    KafkaSchemaRegistryConfig.add_member(:event_record_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryEventRecordFormat, name: "EventRecordFormat"))
    KafkaSchemaRegistryConfig.add_member(:access_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAccessConfigList, name: "AccessConfigs"))
    KafkaSchemaRegistryConfig.add_member(:schema_validation_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationConfigList, name: "SchemaValidationConfigs"))
    KafkaSchemaRegistryConfig.type = Types::KafkaSchemaRegistryConfig
    KafkaSchemaValidationAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY", traits: {"smithy.api#enumValue" => "KEY"}))
    KafkaSchemaValidationAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    KafkaSchemaValidationConfig.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationAttribute, name: "Attribute"))
    KafkaSchemaValidationConfig.type = Types::KafkaSchemaValidationConfig
    KafkaSchemaValidationConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationConfig, name: "member"))
    LastUpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    LastUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    LastUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    LastUpdateStatusReasonCode.add_member(:eni_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EniLimitExceeded", traits: {"smithy.api#enumValue" => "EniLimitExceeded"}))
    LastUpdateStatusReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions"}))
    LastUpdateStatusReasonCode.add_member(:invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidConfiguration", traits: {"smithy.api#enumValue" => "InvalidConfiguration"}))
    LastUpdateStatusReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError"}))
    LastUpdateStatusReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses"}))
    LastUpdateStatusReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet"}))
    LastUpdateStatusReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup"}))
    LastUpdateStatusReasonCode.add_member(:image_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageDeleted", traits: {"smithy.api#enumValue" => "ImageDeleted"}))
    LastUpdateStatusReasonCode.add_member(:image_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageAccessDenied", traits: {"smithy.api#enumValue" => "ImageAccessDenied"}))
    LastUpdateStatusReasonCode.add_member(:invalid_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImage", traits: {"smithy.api#enumValue" => "InvalidImage"}))
    LastUpdateStatusReasonCode.add_member(:kms_key_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyAccessDenied", traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied"}))
    LastUpdateStatusReasonCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyNotFound", traits: {"smithy.api#enumValue" => "KMSKeyNotFound"}))
    LastUpdateStatusReasonCode.add_member(:invalid_state_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidStateKMSKey", traits: {"smithy.api#enumValue" => "InvalidStateKMSKey"}))
    LastUpdateStatusReasonCode.add_member(:disabled_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisabledKMSKey", traits: {"smithy.api#enumValue" => "DisabledKMSKey"}))
    LastUpdateStatusReasonCode.add_member(:efsio_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSIOError", traits: {"smithy.api#enumValue" => "EFSIOError"}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_connectivity_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountConnectivityError", traits: {"smithy.api#enumValue" => "EFSMountConnectivityError"}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountFailure", traits: {"smithy.api#enumValue" => "EFSMountFailure"}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountTimeout", traits: {"smithy.api#enumValue" => "EFSMountTimeout"}))
    LastUpdateStatusReasonCode.add_member(:invalid_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRuntime", traits: {"smithy.api#enumValue" => "InvalidRuntime"}))
    LastUpdateStatusReasonCode.add_member(:invalid_zip_file_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidZipFileException", traits: {"smithy.api#enumValue" => "InvalidZipFileException"}))
    LastUpdateStatusReasonCode.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionError", traits: {"smithy.api#enumValue" => "FunctionError"}))
    Layer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "Arn"))
    Layer.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    Layer.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    Layer.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    Layer.type = Types::Layer
    LayerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "member"))
    LayerVersionContentInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket"))
    LayerVersionContentInput.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    LayerVersionContentInput.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion"))
    LayerVersionContentInput.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile"))
    LayerVersionContentInput.type = Types::LayerVersionContentInput
    LayerVersionContentOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location"))
    LayerVersionContentOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    LayerVersionContentOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    LayerVersionContentOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SigningProfileVersionArn"))
    LayerVersionContentOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SigningJobArn"))
    LayerVersionContentOutput.type = Types::LayerVersionContentOutput
    LayerVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsListItem, name: "member"))
    LayerVersionsListItem.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn"))
    LayerVersionsListItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0}))
    LayerVersionsListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    LayerVersionsListItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate"))
    LayerVersionsListItem.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes"))
    LayerVersionsListItem.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo"))
    LayerVersionsListItem.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures"))
    LayerVersionsListItem.type = Types::LayerVersionsListItem
    LayersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersListItem, name: "member"))
    LayersListItem.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName"))
    LayersListItem.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn"))
    LayersListItem.add_member(:latest_matching_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsListItem, name: "LatestMatchingVersion"))
    LayersListItem.type = Types::LayersListItem
    LayersReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Layer, name: "member"))
    ListAliasesRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAliasesRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#httpQuery" => "FunctionVersion"}))
    ListAliasesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListAliasesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListAliasesRequest.type = Types::ListAliasesRequest
    ListAliasesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasList, name: "Aliases"))
    ListAliasesResponse.type = Types::ListAliasesResponse
    ListCodeSigningConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListCodeSigningConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListCodeSigningConfigsRequest.type = Types::ListCodeSigningConfigsRequest
    ListCodeSigningConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListCodeSigningConfigsResponse.add_member(:code_signing_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigList, name: "CodeSigningConfigs"))
    ListCodeSigningConfigsResponse.type = Types::ListCodeSigningConfigsResponse
    ListEventSourceMappingsRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#httpQuery" => "EventSourceArn"}))
    ListEventSourceMappingsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpQuery" => "FunctionName"}))
    ListEventSourceMappingsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListEventSourceMappingsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListEventSourceMappingsRequest.type = Types::ListEventSourceMappingsRequest
    ListEventSourceMappingsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListEventSourceMappingsResponse.add_member(:event_source_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingsList, name: "EventSourceMappings"))
    ListEventSourceMappingsResponse.type = Types::ListEventSourceMappingsResponse
    ListFunctionEventInvokeConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionEventInvokeConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFunctionEventInvokeConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFunctionEventInvokeConfigListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionEventInvokeConfigsRequest.type = Types::ListFunctionEventInvokeConfigsRequest
    ListFunctionEventInvokeConfigsResponse.add_member(:function_event_invoke_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEventInvokeConfigList, name: "FunctionEventInvokeConfigs"))
    ListFunctionEventInvokeConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListFunctionEventInvokeConfigsResponse.type = Types::ListFunctionEventInvokeConfigsResponse
    ListFunctionUrlConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionUrlConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFunctionUrlConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionUrlConfigsRequest.type = Types::ListFunctionUrlConfigsRequest
    ListFunctionUrlConfigsResponse.add_member(:function_url_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlConfigList, name: "FunctionUrlConfigs", traits: {"smithy.api#required" => {}}))
    ListFunctionUrlConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListFunctionUrlConfigsResponse.type = Types::ListFunctionUrlConfigsResponse
    ListFunctionsByCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFunctionsByCodeSigningConfigRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFunctionsByCodeSigningConfigRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionsByCodeSigningConfigRequest.type = Types::ListFunctionsByCodeSigningConfigRequest
    ListFunctionsByCodeSigningConfigResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListFunctionsByCodeSigningConfigResponse.add_member(:function_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArnList, name: "FunctionArns"))
    ListFunctionsByCodeSigningConfigResponse.type = Types::ListFunctionsByCodeSigningConfigResponse
    ListFunctionsRequest.add_member(:master_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterRegion, name: "MasterRegion", traits: {"smithy.api#httpQuery" => "MasterRegion"}))
    ListFunctionsRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersion, name: "FunctionVersion", traits: {"smithy.api#httpQuery" => "FunctionVersion"}))
    ListFunctionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListFunctionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListFunctionsResponse.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionList, name: "Functions"))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListLayerVersionsRequest.add_member(:compatible_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "CompatibleRuntime", traits: {"smithy.api#httpQuery" => "CompatibleRuntime"}))
    ListLayerVersionsRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLayerVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListLayerVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLayerListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListLayerVersionsRequest.add_member(:compatible_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "CompatibleArchitecture", traits: {"smithy.api#httpQuery" => "CompatibleArchitecture"}))
    ListLayerVersionsRequest.type = Types::ListLayerVersionsRequest
    ListLayerVersionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListLayerVersionsResponse.add_member(:layer_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsList, name: "LayerVersions"))
    ListLayerVersionsResponse.type = Types::ListLayerVersionsResponse
    ListLayersRequest.add_member(:compatible_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "CompatibleRuntime", traits: {"smithy.api#httpQuery" => "CompatibleRuntime"}))
    ListLayersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListLayersRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLayerListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListLayersRequest.add_member(:compatible_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "CompatibleArchitecture", traits: {"smithy.api#httpQuery" => "CompatibleArchitecture"}))
    ListLayersRequest.type = Types::ListLayersRequest
    ListLayersResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListLayersResponse.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersList, name: "Layers"))
    ListLayersResponse.type = Types::ListLayersResponse
    ListProvisionedConcurrencyConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProvisionedConcurrencyConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListProvisionedConcurrencyConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxProvisionedConcurrencyConfigListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListProvisionedConcurrencyConfigsRequest.type = Types::ListProvisionedConcurrencyConfigsRequest
    ListProvisionedConcurrencyConfigsResponse.add_member(:provisioned_concurrency_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyConfigList, name: "ProvisionedConcurrencyConfigs"))
    ListProvisionedConcurrencyConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListProvisionedConcurrencyConfigsResponse.type = Types::ListProvisionedConcurrencyConfigsResponse
    ListTagsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsResponse.type = Types::ListTagsResponse
    ListVersionsByFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVersionsByFunctionRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    ListVersionsByFunctionRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    ListVersionsByFunctionRequest.type = Types::ListVersionsByFunctionRequest
    ListVersionsByFunctionResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker"))
    ListVersionsByFunctionResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionList, name: "Versions"))
    ListVersionsByFunctionResponse.type = Types::ListVersionsByFunctionResponse
    LogFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Json", traits: {"smithy.api#enumValue" => "JSON"}))
    LogFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text"}))
    LogType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    LogType.add_member(:tail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tail", traits: {"smithy.api#enumValue" => "Tail"}))
    LoggingConfig.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormat, name: "LogFormat"))
    LoggingConfig.add_member(:application_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogLevel, name: "ApplicationLogLevel"))
    LoggingConfig.add_member(:system_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemLogLevel, name: "SystemLogLevel"))
    LoggingConfig.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroup, name: "LogGroup"))
    LoggingConfig.type = Types::LoggingConfig
    OnFailure.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Destination"))
    OnFailure.type = Types::OnFailure
    OnSuccess.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Destination"))
    OnSuccess.type = Types::OnSuccess
    PackageType.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zip", traits: {"smithy.api#enumValue" => "Zip"}))
    PackageType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Image", traits: {"smithy.api#enumValue" => "Image"}))
    PolicyLengthExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    PolicyLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException
    PreconditionFailedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PreconditionFailedException.type = Types::PreconditionFailedException
    ProvisionedConcurrencyConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyConfigListItem, name: "member"))
    ProvisionedConcurrencyConfigListItem.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    ProvisionedConcurrencyConfigListItem.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions"))
    ProvisionedConcurrencyConfigListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status"))
    ProvisionedConcurrencyConfigListItem.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason"))
    ProvisionedConcurrencyConfigListItem.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    ProvisionedConcurrencyConfigListItem.type = Types::ProvisionedConcurrencyConfigListItem
    ProvisionedConcurrencyConfigNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ProvisionedConcurrencyConfigNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ProvisionedConcurrencyConfigNotFoundException.type = Types::ProvisionedConcurrencyConfigNotFoundException
    ProvisionedConcurrencyStatusEnum.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ProvisionedConcurrencyStatusEnum.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ProvisionedConcurrencyStatusEnum.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProvisionedPollerConfig.add_member(:minimum_pollers, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNumberOfPollers, name: "MinimumPollers"))
    ProvisionedPollerConfig.add_member(:maximum_pollers, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumNumberOfPollers, name: "MaximumPollers"))
    ProvisionedPollerConfig.type = Types::ProvisionedPollerConfig
    PublishLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishLayerVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PublishLayerVersionRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentInput, name: "Content", traits: {"smithy.api#required" => {}}))
    PublishLayerVersionRequest.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes"))
    PublishLayerVersionRequest.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo"))
    PublishLayerVersionRequest.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures"))
    PublishLayerVersionRequest.type = Types::PublishLayerVersionRequest
    PublishLayerVersionResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content"))
    PublishLayerVersionResponse.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn"))
    PublishLayerVersionResponse.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn"))
    PublishLayerVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PublishLayerVersionResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate"))
    PublishLayerVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0}))
    PublishLayerVersionResponse.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes"))
    PublishLayerVersionResponse.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo"))
    PublishLayerVersionResponse.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures"))
    PublishLayerVersionResponse.type = Types::PublishLayerVersionResponse
    PublishVersionOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    PublishVersionOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    PublishVersionOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    PublishVersionOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    PublishVersionOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    PublishVersionOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    PublishVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PublishVersionOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    PublishVersionOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    PublishVersionOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    PublishVersionOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    PublishVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    PublishVersionOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    PublishVersionOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    PublishVersionOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    PublishVersionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    PublishVersionOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    PublishVersionOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    PublishVersionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    PublishVersionOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    PublishVersionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    PublishVersionOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    PublishVersionOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    PublishVersionOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    PublishVersionOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    PublishVersionOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    PublishVersionOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    PublishVersionOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    PublishVersionOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    PublishVersionOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    PublishVersionOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    PublishVersionOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    PublishVersionOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    PublishVersionOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    PublishVersionOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    PublishVersionOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    PublishVersionOutput.type = Types::PublishVersionOutput
    PublishVersionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PublishVersionRequest.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    PublishVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    PublishVersionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    PublishVersionRequest.type = Types::PublishVersionRequest
    PutFunctionCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}}))
    PutFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFunctionCodeSigningConfigRequest.type = Types::PutFunctionCodeSigningConfigRequest
    PutFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}}))
    PutFunctionCodeSigningConfigResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}}))
    PutFunctionCodeSigningConfigResponse.type = Types::PutFunctionCodeSigningConfigResponse
    PutFunctionConcurrencyOutput.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions"))
    PutFunctionConcurrencyOutput.type = Types::PutFunctionConcurrencyOutput
    PutFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFunctionConcurrencyRequest.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions", traits: {"smithy.api#required" => {}}))
    PutFunctionConcurrencyRequest.type = Types::PutFunctionConcurrencyRequest
    PutFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    PutFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    PutFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    PutFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    PutFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    PutFunctionEventInvokeConfigOutput.type = Types::PutFunctionEventInvokeConfigOutput
    PutFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    PutFunctionEventInvokeConfigRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    PutFunctionEventInvokeConfigRequest.type = Types::PutFunctionEventInvokeConfigRequest
    PutFunctionRecursionConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFunctionRecursionConfigRequest.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop", traits: {"smithy.api#required" => {}}))
    PutFunctionRecursionConfigRequest.type = Types::PutFunctionRecursionConfigRequest
    PutFunctionRecursionConfigResponse.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop"))
    PutFunctionRecursionConfigResponse.type = Types::PutFunctionRecursionConfigResponse
    PutProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}}))
    PutProvisionedConcurrencyConfigRequest.add_member(:provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ProvisionedConcurrentExecutions", traits: {"smithy.api#required" => {}}))
    PutProvisionedConcurrencyConfigRequest.type = Types::PutProvisionedConcurrencyConfigRequest
    PutProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions"))
    PutProvisionedConcurrencyConfigResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status"))
    PutProvisionedConcurrencyConfigResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason"))
    PutProvisionedConcurrencyConfigResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    PutProvisionedConcurrencyConfigResponse.type = Types::PutProvisionedConcurrencyConfigResponse
    PutRuntimeManagementConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutRuntimeManagementConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    PutRuntimeManagementConfigRequest.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn", traits: {"smithy.api#required" => {}}))
    PutRuntimeManagementConfigRequest.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn"))
    PutRuntimeManagementConfigRequest.type = Types::PutRuntimeManagementConfigRequest
    PutRuntimeManagementConfigResponse.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn", traits: {"smithy.api#required" => {}}))
    PutRuntimeManagementConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    PutRuntimeManagementConfigResponse.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn"))
    PutRuntimeManagementConfigResponse.type = Types::PutRuntimeManagementConfigResponse
    Queues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Queue, name: "member"))
    RecursiveInvocationException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    RecursiveInvocationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    RecursiveInvocationException.type = Types::RecursiveInvocationException
    RecursiveLoop.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Allow", traits: {"smithy.api#enumValue" => "Allow"}))
    RecursiveLoop.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terminate", traits: {"smithy.api#enumValue" => "Terminate"}))
    RemoveLayerVersionPermissionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveLayerVersionPermissionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveLayerVersionPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveLayerVersionPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId"}))
    RemoveLayerVersionPermissionRequest.type = Types::RemoveLayerVersionPermissionRequest
    RemovePermissionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemovePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedStatementId, name: "StatementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemovePermissionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    RemovePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId"}))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RequestTooLargeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    RequestTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestTooLargeException.type = Types::RequestTooLargeException
    ResourceConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceInUseException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotReadyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ResourceNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    ResponseStreamingInvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestResponse", traits: {"smithy.api#enumValue" => "RequestResponse"}))
    ResponseStreamingInvocationType.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DryRun", traits: {"smithy.api#enumValue" => "DryRun"}))
    Runtime.add_member(:nodejs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs", traits: {"smithy.api#enumValue" => "nodejs"}))
    Runtime.add_member(:nodejs43, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs43", traits: {"smithy.api#enumValue" => "nodejs4.3"}))
    Runtime.add_member(:nodejs610, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs610", traits: {"smithy.api#enumValue" => "nodejs6.10"}))
    Runtime.add_member(:nodejs810, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs810", traits: {"smithy.api#enumValue" => "nodejs8.10"}))
    Runtime.add_member(:nodejs10x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs10x", traits: {"smithy.api#enumValue" => "nodejs10.x"}))
    Runtime.add_member(:nodejs12x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs12x", traits: {"smithy.api#enumValue" => "nodejs12.x"}))
    Runtime.add_member(:nodejs14x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs14x", traits: {"smithy.api#enumValue" => "nodejs14.x"}))
    Runtime.add_member(:nodejs16x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs16x", traits: {"smithy.api#enumValue" => "nodejs16.x"}))
    Runtime.add_member(:java8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java8", traits: {"smithy.api#enumValue" => "java8"}))
    Runtime.add_member(:java8al2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java8al2", traits: {"smithy.api#enumValue" => "java8.al2"}))
    Runtime.add_member(:java11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java11", traits: {"smithy.api#enumValue" => "java11"}))
    Runtime.add_member(:python27, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python27", traits: {"smithy.api#enumValue" => "python2.7"}))
    Runtime.add_member(:python36, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python36", traits: {"smithy.api#enumValue" => "python3.6"}))
    Runtime.add_member(:python37, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python37", traits: {"smithy.api#enumValue" => "python3.7"}))
    Runtime.add_member(:python38, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python38", traits: {"smithy.api#enumValue" => "python3.8"}))
    Runtime.add_member(:python39, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python39", traits: {"smithy.api#enumValue" => "python3.9"}))
    Runtime.add_member(:dotnetcore10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore10", traits: {"smithy.api#enumValue" => "dotnetcore1.0"}))
    Runtime.add_member(:dotnetcore20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore20", traits: {"smithy.api#enumValue" => "dotnetcore2.0"}))
    Runtime.add_member(:dotnetcore21, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore21", traits: {"smithy.api#enumValue" => "dotnetcore2.1"}))
    Runtime.add_member(:dotnetcore31, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore31", traits: {"smithy.api#enumValue" => "dotnetcore3.1"}))
    Runtime.add_member(:dotnet6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnet6", traits: {"smithy.api#enumValue" => "dotnet6"}))
    Runtime.add_member(:dotnet8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnet8", traits: {"smithy.api#enumValue" => "dotnet8"}))
    Runtime.add_member(:nodejs43edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs43edge", traits: {"smithy.api#enumValue" => "nodejs4.3-edge"}))
    Runtime.add_member(:go1x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "go1x", traits: {"smithy.api#enumValue" => "go1.x"}))
    Runtime.add_member(:ruby25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby25", traits: {"smithy.api#enumValue" => "ruby2.5"}))
    Runtime.add_member(:ruby27, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby27", traits: {"smithy.api#enumValue" => "ruby2.7"}))
    Runtime.add_member(:provided, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "provided", traits: {"smithy.api#enumValue" => "provided"}))
    Runtime.add_member(:providedal2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "providedal2", traits: {"smithy.api#enumValue" => "provided.al2"}))
    Runtime.add_member(:nodejs18x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs18x", traits: {"smithy.api#enumValue" => "nodejs18.x"}))
    Runtime.add_member(:python310, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python310", traits: {"smithy.api#enumValue" => "python3.10"}))
    Runtime.add_member(:java17, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java17", traits: {"smithy.api#enumValue" => "java17"}))
    Runtime.add_member(:ruby32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby32", traits: {"smithy.api#enumValue" => "ruby3.2"}))
    Runtime.add_member(:ruby33, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby33", traits: {"smithy.api#enumValue" => "ruby3.3"}))
    Runtime.add_member(:ruby34, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby34", traits: {"smithy.api#enumValue" => "ruby3.4"}))
    Runtime.add_member(:python311, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python311", traits: {"smithy.api#enumValue" => "python3.11"}))
    Runtime.add_member(:nodejs20x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs20x", traits: {"smithy.api#enumValue" => "nodejs20.x"}))
    Runtime.add_member(:providedal2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "providedal2023", traits: {"smithy.api#enumValue" => "provided.al2023"}))
    Runtime.add_member(:python312, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python312", traits: {"smithy.api#enumValue" => "python3.12"}))
    Runtime.add_member(:java21, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java21", traits: {"smithy.api#enumValue" => "java21"}))
    Runtime.add_member(:python313, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python313", traits: {"smithy.api#enumValue" => "python3.13"}))
    Runtime.add_member(:nodejs22x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs22x", traits: {"smithy.api#enumValue" => "nodejs22.x"}))
    RuntimeVersionConfig.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn"))
    RuntimeVersionConfig.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionError, name: "Error"))
    RuntimeVersionConfig.type = Types::RuntimeVersionConfig
    RuntimeVersionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    RuntimeVersionError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message"))
    RuntimeVersionError.type = Types::RuntimeVersionError
    ScalingConfig.add_member(:maximum_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumConcurrency, name: "MaximumConcurrency"))
    ScalingConfig.type = Types::ScalingConfig
    SchemaRegistryEventRecordFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    SchemaRegistryEventRecordFormat.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE"}))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SelfManagedEventSource.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints"))
    SelfManagedEventSource.type = Types::SelfManagedEventSource
    SelfManagedKafkaEventSourceConfig.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupId"))
    SelfManagedKafkaEventSourceConfig.add_member(:schema_registry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryConfig, name: "SchemaRegistryConfig"))
    SelfManagedKafkaEventSourceConfig.type = Types::SelfManagedKafkaEventSourceConfig
    ServiceException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceException.type = Types::ServiceException
    SigningProfileVersionArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    SnapStart.add_member(:apply_on, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartApplyOn, name: "ApplyOn"))
    SnapStart.type = Types::SnapStart
    SnapStartApplyOn.add_member(:published_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PublishedVersions", traits: {"smithy.api#enumValue" => "PublishedVersions"}))
    SnapStartApplyOn.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None"}))
    SnapStartException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    SnapStartException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    SnapStartException.type = Types::SnapStartException
    SnapStartNotReadyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    SnapStartNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    SnapStartNotReadyException.type = Types::SnapStartNotReadyException
    SnapStartOptimizationStatus.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "On", traits: {"smithy.api#enumValue" => "On"}))
    SnapStartOptimizationStatus.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Off", traits: {"smithy.api#enumValue" => "Off"}))
    SnapStartResponse.add_member(:apply_on, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartApplyOn, name: "ApplyOn"))
    SnapStartResponse.add_member(:optimization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartOptimizationStatus, name: "OptimizationStatus"))
    SnapStartResponse.type = Types::SnapStartResponse
    SnapStartTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    SnapStartTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    SnapStartTimeoutException.type = Types::SnapStartTimeoutException
    SourceAccessConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessType, name: "Type"))
    SourceAccessConfiguration.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "URI"))
    SourceAccessConfiguration.type = Types::SourceAccessConfiguration
    SourceAccessConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfiguration, name: "member"))
    SourceAccessType.add_member(:basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH"}))
    SourceAccessType.add_member(:vpc_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_SUBNET", traits: {"smithy.api#enumValue" => "VPC_SUBNET"}))
    SourceAccessType.add_member(:vpc_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_SECURITY_GROUP", traits: {"smithy.api#enumValue" => "VPC_SECURITY_GROUP"}))
    SourceAccessType.add_member(:sasl_scram_512_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SASL_SCRAM_512_AUTH", traits: {"smithy.api#enumValue" => "SASL_SCRAM_512_AUTH"}))
    SourceAccessType.add_member(:sasl_scram_256_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SASL_SCRAM_256_AUTH", traits: {"smithy.api#enumValue" => "SASL_SCRAM_256_AUTH"}))
    SourceAccessType.add_member(:virtual_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUAL_HOST", traits: {"smithy.api#enumValue" => "VIRTUAL_HOST"}))
    SourceAccessType.add_member(:client_certificate_tls_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CERTIFICATE_TLS_AUTH", traits: {"smithy.api#enumValue" => "CLIENT_CERTIFICATE_TLS_AUTH"}))
    SourceAccessType.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_ROOT_CA_CERTIFICATE", traits: {"smithy.api#enumValue" => "SERVER_ROOT_CA_CERTIFICATE"}))
    State.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    State.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    State.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    State.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    StateReasonCode.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Idle", traits: {"smithy.api#enumValue" => "Idle"}))
    StateReasonCode.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating"}))
    StateReasonCode.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restoring", traits: {"smithy.api#enumValue" => "Restoring"}))
    StateReasonCode.add_member(:eni_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EniLimitExceeded", traits: {"smithy.api#enumValue" => "EniLimitExceeded"}))
    StateReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions"}))
    StateReasonCode.add_member(:invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidConfiguration", traits: {"smithy.api#enumValue" => "InvalidConfiguration"}))
    StateReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError"}))
    StateReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses"}))
    StateReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet"}))
    StateReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup"}))
    StateReasonCode.add_member(:image_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageDeleted", traits: {"smithy.api#enumValue" => "ImageDeleted"}))
    StateReasonCode.add_member(:image_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageAccessDenied", traits: {"smithy.api#enumValue" => "ImageAccessDenied"}))
    StateReasonCode.add_member(:invalid_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImage", traits: {"smithy.api#enumValue" => "InvalidImage"}))
    StateReasonCode.add_member(:kms_key_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyAccessDenied", traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied"}))
    StateReasonCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyNotFound", traits: {"smithy.api#enumValue" => "KMSKeyNotFound"}))
    StateReasonCode.add_member(:invalid_state_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidStateKMSKey", traits: {"smithy.api#enumValue" => "InvalidStateKMSKey"}))
    StateReasonCode.add_member(:disabled_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisabledKMSKey", traits: {"smithy.api#enumValue" => "DisabledKMSKey"}))
    StateReasonCode.add_member(:efsio_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSIOError", traits: {"smithy.api#enumValue" => "EFSIOError"}))
    StateReasonCode.add_member(:efs_mount_connectivity_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountConnectivityError", traits: {"smithy.api#enumValue" => "EFSMountConnectivityError"}))
    StateReasonCode.add_member(:efs_mount_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountFailure", traits: {"smithy.api#enumValue" => "EFSMountFailure"}))
    StateReasonCode.add_member(:efs_mount_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountTimeout", traits: {"smithy.api#enumValue" => "EFSMountTimeout"}))
    StateReasonCode.add_member(:invalid_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRuntime", traits: {"smithy.api#enumValue" => "InvalidRuntime"}))
    StateReasonCode.add_member(:invalid_zip_file_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidZipFileException", traits: {"smithy.api#enumValue" => "InvalidZipFileException"}))
    StateReasonCode.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionError", traits: {"smithy.api#enumValue" => "FunctionError"}))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetIPAddressLimitReachedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    SubnetIPAddressLimitReachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    SubnetIPAddressLimitReachedException.type = Types::SubnetIPAddressLimitReachedException
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    SystemLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debug", traits: {"smithy.api#enumValue" => "DEBUG"}))
    SystemLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Info", traits: {"smithy.api#enumValue" => "INFO"}))
    SystemLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "WARN"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    TagsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsErrorMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    TagsError.type = Types::TagsError
    ThrottleReason.add_member(:concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentInvocationLimitExceeded"}))
    ThrottleReason.add_member(:function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "FunctionInvocationRateLimitExceeded"}))
    ThrottleReason.add_member(:reserved_function_concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionConcurrentInvocationLimitExceeded"}))
    ThrottleReason.add_member(:reserved_function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionInvocationRateLimitExceeded"}))
    ThrottleReason.add_member(:caller_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallerRateLimitExceeded", traits: {"smithy.api#enumValue" => "CallerRateLimitExceeded"}))
    ThrottleReason.add_member(:concurrent_snapshot_create_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentSnapshotCreateLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentSnapshotCreateLimitExceeded"}))
    TooManyRequestsException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyRequestsException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleReason, name: "Reason"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Topics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "member"))
    TracingConfig.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingMode, name: "Mode"))
    TracingConfig.type = Types::TracingConfig
    TracingConfigResponse.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingMode, name: "Mode"))
    TracingConfigResponse.type = Types::TracingConfigResponse
    TracingMode.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    TracingMode.add_member(:pass_through, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PassThrough", traits: {"smithy.api#enumValue" => "PassThrough"}))
    UnsupportedMediaTypeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    UnsupportedMediaTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnsupportedMediaTypeException.type = Types::UnsupportedMediaTypeException
    UntagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn"))
    UpdateAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name"))
    UpdateAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion"))
    UpdateAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    UpdateAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    UpdateAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias"}))
    UpdateAliasRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion"))
    UpdateAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateAliasRequest.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig"))
    UpdateAliasRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateAliasRequest.type = Types::UpdateAliasRequest
    UpdateCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCodeSigningConfigRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateCodeSigningConfigRequest.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers"))
    UpdateCodeSigningConfigRequest.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies"))
    UpdateCodeSigningConfigRequest.type = Types::UpdateCodeSigningConfigRequest
    UpdateCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}}))
    UpdateCodeSigningConfigResponse.type = Types::UpdateCodeSigningConfigResponse
    UpdateEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID"))
    UpdateEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition"))
    UpdateEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp"))
    UpdateEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    UpdateEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdateEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    UpdateEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn"))
    UpdateEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    UpdateEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    UpdateEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    UpdateEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult"))
    UpdateEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    UpdateEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason"))
    UpdateEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    UpdateEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    UpdateEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues"))
    UpdateEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    UpdateEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource"))
    UpdateEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    UpdateEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    UpdateEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    UpdateEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    UpdateEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    UpdateEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    UpdateEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    UpdateEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    UpdateEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError"))
    UpdateEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn"))
    UpdateEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    UpdateEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    UpdateEventSourceMappingOutput.type = Types::UpdateEventSourceMappingOutput
    UpdateEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventSourceMappingRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName"))
    UpdateEventSourceMappingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled"))
    UpdateEventSourceMappingRequest.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize"))
    UpdateEventSourceMappingRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria"))
    UpdateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    UpdateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError"))
    UpdateEventSourceMappingRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts"))
    UpdateEventSourceMappingRequest.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor"))
    UpdateEventSourceMappingRequest.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations"))
    UpdateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds"))
    UpdateEventSourceMappingRequest.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes"))
    UpdateEventSourceMappingRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig"))
    UpdateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig"))
    UpdateEventSourceMappingRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    UpdateEventSourceMappingRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig"))
    UpdateEventSourceMappingRequest.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig"))
    UpdateEventSourceMappingRequest.type = Types::UpdateEventSourceMappingRequest
    UpdateFunctionCodeOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    UpdateFunctionCodeOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    UpdateFunctionCodeOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    UpdateFunctionCodeOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    UpdateFunctionCodeOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    UpdateFunctionCodeOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    UpdateFunctionCodeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFunctionCodeOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    UpdateFunctionCodeOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    UpdateFunctionCodeOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    UpdateFunctionCodeOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    UpdateFunctionCodeOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    UpdateFunctionCodeOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    UpdateFunctionCodeOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    UpdateFunctionCodeOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    UpdateFunctionCodeOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    UpdateFunctionCodeOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    UpdateFunctionCodeOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    UpdateFunctionCodeOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateFunctionCodeOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    UpdateFunctionCodeOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    UpdateFunctionCodeOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    UpdateFunctionCodeOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    UpdateFunctionCodeOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    UpdateFunctionCodeOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    UpdateFunctionCodeOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    UpdateFunctionCodeOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    UpdateFunctionCodeOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    UpdateFunctionCodeOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    UpdateFunctionCodeOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    UpdateFunctionCodeOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    UpdateFunctionCodeOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    UpdateFunctionCodeOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    UpdateFunctionCodeOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    UpdateFunctionCodeOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    UpdateFunctionCodeOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    UpdateFunctionCodeOutput.type = Types::UpdateFunctionCodeOutput
    UpdateFunctionCodeRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionCodeRequest.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile"))
    UpdateFunctionCodeRequest.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket"))
    UpdateFunctionCodeRequest.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    UpdateFunctionCodeRequest.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion"))
    UpdateFunctionCodeRequest.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri"))
    UpdateFunctionCodeRequest.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Publish", traits: {"smithy.api#default" => false}))
    UpdateFunctionCodeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false}))
    UpdateFunctionCodeRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateFunctionCodeRequest.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    UpdateFunctionCodeRequest.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "SourceKMSKeyArn"))
    UpdateFunctionCodeRequest.type = Types::UpdateFunctionCodeRequest
    UpdateFunctionConfigurationOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName"))
    UpdateFunctionConfigurationOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn"))
    UpdateFunctionConfigurationOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    UpdateFunctionConfigurationOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    UpdateFunctionConfigurationOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    UpdateFunctionConfigurationOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0}))
    UpdateFunctionConfigurationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFunctionConfigurationOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    UpdateFunctionConfigurationOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    UpdateFunctionConfigurationOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified"))
    UpdateFunctionConfigurationOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256"))
    UpdateFunctionConfigurationOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version"))
    UpdateFunctionConfigurationOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig"))
    UpdateFunctionConfigurationOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    UpdateFunctionConfigurationOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment"))
    UpdateFunctionConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    UpdateFunctionConfigurationOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig"))
    UpdateFunctionConfigurationOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn"))
    UpdateFunctionConfigurationOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateFunctionConfigurationOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers"))
    UpdateFunctionConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    UpdateFunctionConfigurationOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason"))
    UpdateFunctionConfigurationOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode"))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus"))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason"))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode"))
    UpdateFunctionConfigurationOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    UpdateFunctionConfigurationOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType"))
    UpdateFunctionConfigurationOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse"))
    UpdateFunctionConfigurationOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn"))
    UpdateFunctionConfigurationOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn"))
    UpdateFunctionConfigurationOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures"))
    UpdateFunctionConfigurationOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    UpdateFunctionConfigurationOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart"))
    UpdateFunctionConfigurationOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig"))
    UpdateFunctionConfigurationOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    UpdateFunctionConfigurationOutput.type = Types::UpdateFunctionConfigurationOutput
    UpdateFunctionConfigurationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionConfigurationRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role"))
    UpdateFunctionConfigurationRequest.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler"))
    UpdateFunctionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFunctionConfigurationRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout"))
    UpdateFunctionConfigurationRequest.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize"))
    UpdateFunctionConfigurationRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    UpdateFunctionConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "Environment"))
    UpdateFunctionConfigurationRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime"))
    UpdateFunctionConfigurationRequest.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig"))
    UpdateFunctionConfigurationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn"))
    UpdateFunctionConfigurationRequest.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfig, name: "TracingConfig"))
    UpdateFunctionConfigurationRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    UpdateFunctionConfigurationRequest.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "Layers"))
    UpdateFunctionConfigurationRequest.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs"))
    UpdateFunctionConfigurationRequest.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig"))
    UpdateFunctionConfigurationRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage"))
    UpdateFunctionConfigurationRequest.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStart, name: "SnapStart"))
    UpdateFunctionConfigurationRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig"))
    UpdateFunctionConfigurationRequest.type = Types::UpdateFunctionConfigurationRequest
    UpdateFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified"))
    UpdateFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn"))
    UpdateFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    UpdateFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    UpdateFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    UpdateFunctionEventInvokeConfigOutput.type = Types::UpdateFunctionEventInvokeConfigOutput
    UpdateFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds"))
    UpdateFunctionEventInvokeConfigRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig"))
    UpdateFunctionEventInvokeConfigRequest.type = Types::UpdateFunctionEventInvokeConfigRequest
    UpdateFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier"}))
    UpdateFunctionUrlConfigRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType"))
    UpdateFunctionUrlConfigRequest.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    UpdateFunctionUrlConfigRequest.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    UpdateFunctionUrlConfigRequest.type = Types::UpdateFunctionUrlConfigRequest
    UpdateFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}}))
    UpdateFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    UpdateFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}}))
    UpdateFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors"))
    UpdateFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    UpdateFunctionUrlConfigResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    UpdateFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode"))
    UpdateFunctionUrlConfigResponse.type = Types::UpdateFunctionUrlConfigResponse
    UpdateRuntimeOn.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "Auto"}))
    UpdateRuntimeOn.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Manual", traits: {"smithy.api#enumValue" => "Manual"}))
    UpdateRuntimeOn.add_member(:function_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionUpdate", traits: {"smithy.api#enumValue" => "FunctionUpdate"}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    VpcConfig.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Ipv6AllowedForDualStack"))
    VpcConfig.type = Types::VpcConfig
    VpcConfigResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    VpcConfigResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    VpcConfigResponse.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Ipv6AllowedForDualStack"))
    VpcConfigResponse.type = Types::VpcConfigResponse

    AWSGirApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lambda#AWSGirApiService"
      service.name = "AWSGirApiService"
      service.version = "2015-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda", "arnNamespace" => "lambda", "cloudFormationName" => "Lambda", "cloudTrailEventSource" => "lambda.amazonaws.com", "endpointPrefix" => "lambda"}, "aws.api#tagEnabled" => {"disableDefaultOperations" => true}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.iam#defineConditionKeys" => {"lambda:VpcIds" => {"type" => "String", "documentation" => "Filters access by the ID of the VPC configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:SubnetIds" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ID of subnets configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:Layer" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ARN of a version of an AWS Lambda layer", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:EventSourceToken" => {"type" => "String", "documentation" => "Filters access by the ID from a non-AWS event source configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:FunctionUrlAuthType" => {"type" => "String", "documentation" => "Filters access by authorization type specified in request. Available during CreateFunctionUrlConfig, UpdateFunctionUrlConfig, DeleteFunctionUrlConfig, GetFunctionUrlConfig, ListFunctionUrlConfig, AddPermission and RemovePermission operations", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag", "required" => false}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag", "required" => false}, "lambda:CodeSigningConfigArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an AWS Lambda code signing config", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:FunctionArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys", "required" => false}, "lambda:SourceFunctionArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of the AWS Lambda function from which the request originated", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:SecurityGroupIds" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ID of security groups configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:Principal" => {"type" => "String", "documentation" => "Filters access by restricting the AWS service or account that can invoke a function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#suppress" => ["ServiceTagging"], "smithy.api#title" => "AWS Lambda"}
      service.add_operation(:add_layer_version_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#AddLayerVersionPermission"
        operation.name = "AddLayerVersionPermission"
        operation.input = AddLayerVersionPermissionRequest
        operation.output = AddLayerVersionPermissionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add permissions to the resource-based policy of a version of an AWS Lambda layer", "relativeDocumentation" => "API_AddLayerVersionPermission.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 201}}
      end)
      service.add_operation(:add_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#AddPermission"
        operation.name = "AddPermission"
        operation.input = AddPermissionRequest
        operation.output = AddPermissionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType", "lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to give an AWS service or another account permission to use an AWS Lambda function", "relativeDocumentation" => "API_AddPermission.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 201}}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasRequest
        operation.output = CreateAliasOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an alias for a Lambda function version", "relativeDocumentation" => "API_CreateAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateCodeSigningConfig"
        operation.name = "CreateCodeSigningConfig"
        operation.input = CreateCodeSigningConfigRequest
        operation.output = CreateCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"createsResources" => ["code signing config"], "documentation" => "Grants permission to create an AWS Lambda code signing config", "relativeDocumentation" => "API_CreateCodeSigningConfig.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2020-04-22/code-signing-configs", "code" => 201}}
      end)
      service.add_operation(:create_event_source_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateEventSourceMapping"
        operation.name = "CreateEventSourceMapping"
        operation.input = CreateEventSourceMappingRequest
        operation.output = CreateEventSourceMappingOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "lambda:FunctionArn", "aws:TagKeys"], "aws.iam#iamAction" => {"createsResources" => ["eventSourceMapping"], "documentation" => "Grants permission to create a mapping between an event source and an AWS Lambda function", "relativeDocumentation" => "API_CreateEventSourceMapping.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/event-source-mappings", "code" => 202}}
      end)
      service.add_operation(:create_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = CreateFunctionRequest
        operation.output = CreateFunctionOutput
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeStorageExceededException
        operation.errors << CodeVerificationFailedException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:VpcIds", "lambda:SubnetIds", "lambda:CodeSigningConfigArn", "lambda:Layer", "aws:RequestTag/${TagKey}", "aws:TagKeys", "lambda:SecurityGroupIds"], "aws.iam#iamAction" => {"createsResources" => ["function"], "documentation" => "Grants permission to create an AWS Lambda function", "relativeDocumentation" => "API_CreateFunction.html", "requiredActions" => ["iam:PassRole"], "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions", "code" => 201}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["TaggableResource"]}
      end)
      service.add_operation(:create_function_url_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateFunctionUrlConfig"
        operation.name = "CreateFunctionUrlConfig"
        operation.input = CreateFunctionUrlConfigRequest
        operation.output = CreateFunctionUrlConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a function url configuration for a Lambda function", "relativeDocumentation" => "API_CreateFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 201}}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = DeleteAliasRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda function alias", "relativeDocumentation" => "API_DeleteAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteCodeSigningConfig"
        operation.name = "DeleteCodeSigningConfig"
        operation.input = DeleteCodeSigningConfigRequest
        operation.output = DeleteCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda code signing config", "relativeDocumentation" => "API_DeleteCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event_source_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteEventSourceMapping"
        operation.name = "DeleteEventSourceMapping"
        operation.input = DeleteEventSourceMappingRequest
        operation.output = DeleteEventSourceMappingOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda event source mapping", "relativeDocumentation" => "API_DeleteEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_function_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionCodeSigningConfig"
        operation.name = "DeleteFunctionCodeSigningConfig"
        operation.input = DeleteFunctionCodeSigningConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to detach a code signing config from an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 204}}
      end)
      service.add_operation(:delete_function_concurrency, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionConcurrency"
        operation.name = "DeleteFunctionConcurrency"
        operation.input = DeleteFunctionConcurrencyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a concurrent execution limit from an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 204}}
      end)
      service.add_operation(:delete_function_event_invoke_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionEventInvokeConfig"
        operation.name = "DeleteFunctionEventInvokeConfig"
        operation.input = DeleteFunctionEventInvokeConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the configuration for asynchronous invocation for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_DeleteFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 204}}
      end)
      service.add_operation(:delete_function_url_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionUrlConfig"
        operation.name = "DeleteFunctionUrlConfig"
        operation.input = DeleteFunctionUrlConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete function url configuration for a Lambda function", "relativeDocumentation" => "API_DeleteFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 204}}
      end)
      service.add_operation(:delete_layer_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteLayerVersion"
        operation.name = "DeleteLayerVersion"
        operation.input = DeleteLayerVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a version of an AWS Lambda layer", "relativeDocumentation" => "API_DeleteLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_provisioned_concurrency_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteProvisionedConcurrencyConfig"
        operation.name = "DeleteProvisionedConcurrencyConfig"
        operation.input = DeleteProvisionedConcurrencyConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the provisioned concurrency configuration for an AWS Lambda function", "relativeDocumentation" => "API_DeleteProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsRequest
        operation.output = GetAccountSettingsResponse
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an account's limits and usage in an AWS Region", "relativeDocumentation" => "API_GetAccountSettings.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2016-08-19/account-settings", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetAlias"
        operation.name = "GetAlias"
        operation.input = GetAliasRequest
        operation.output = GetAliasOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda function alias", "relativeDocumentation" => "API_GetAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetCodeSigningConfig"
        operation.name = "GetCodeSigningConfig"
        operation.input = GetCodeSigningConfigRequest
        operation.output = GetCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda code signing config", "relativeDocumentation" => "API_GetCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_event_source_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetEventSourceMapping"
        operation.name = "GetEventSourceMapping"
        operation.input = GetEventSourceMappingRequest
        operation.output = GetEventSourceMappingOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda event source mapping", "relativeDocumentation" => "API_GetEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunction"
        operation.name = "GetFunction"
        operation.input = GetFunctionRequest
        operation.output = GetFunctionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda function", "relativeDocumentation" => "API_GetFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionCodeSigningConfig"
        operation.name = "GetFunctionCodeSigningConfig"
        operation.input = GetFunctionCodeSigningConfigRequest
        operation.output = GetFunctionCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the code signing config arn attached to an AWS Lambda function", "relativeDocumentation" => "API_GetFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_concurrency, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionConcurrency"
        operation.name = "GetFunctionConcurrency"
        operation.input = GetFunctionConcurrencyRequest
        operation.output = GetFunctionConcurrencyResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about the reserved concurrency configuration for a function", "relativeDocumentation" => "API_GetFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/concurrency", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionConfiguration"
        operation.name = "GetFunctionConfiguration"
        operation.input = GetFunctionConfigurationRequest
        operation.output = GetFunctionConfigurationOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about the version-specific settings of an AWS Lambda function or version", "relativeDocumentation" => "API_GetFunctionConfiguration.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_event_invoke_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionEventInvokeConfig"
        operation.name = "GetFunctionEventInvokeConfig"
        operation.input = GetFunctionEventInvokeConfigRequest
        operation.output = GetFunctionEventInvokeConfigOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the configuration for asynchronous invocation for a function, version, or alias", "relativeDocumentation" => "API_GetFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_recursion_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionRecursionConfig"
        operation.name = "GetFunctionRecursionConfig"
        operation.input = GetFunctionRecursionConfigRequest
        operation.output = GetFunctionRecursionConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the recursion configuration of an AWS Lambda function", "relativeDocumentation" => "API_GetFunctionRecursionConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_function_url_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionUrlConfig"
        operation.name = "GetFunctionUrlConfig"
        operation.input = GetFunctionUrlConfigRequest
        operation.output = GetFunctionUrlConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to read function url configuration for a Lambda function", "relativeDocumentation" => "API_GetFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_layer_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersion"
        operation.name = "GetLayerVersion"
        operation.input = GetLayerVersionRequest
        operation.output = GetLayerVersionOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about a version of an AWS Lambda layer. Note this action also supports GetLayerVersionByArn API", "relativeDocumentation" => "API_GetLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_layer_version_by_arn, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersionByArn"
        operation.name = "GetLayerVersionByArn"
        operation.input = GetLayerVersionByArnRequest
        operation.output = GetLayerVersionByArnOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetLayerVersion", "documentation" => "Grants permission to view details about a version of an AWS Lambda layer. Note this action also supports GetLayerVersionByArn API", "relativeDocumentation" => "API_GetLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers?find=LayerVersion", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_layer_version_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetLayerVersionPolicy"
        operation.name = "GetLayerVersionPolicy"
        operation.input = GetLayerVersionPolicyRequest
        operation.output = GetLayerVersionPolicyResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the resource-based policy for a version of an AWS Lambda layer", "relativeDocumentation" => "API_GetLayerVersionPolicy.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the resource-based policy for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_GetPolicy.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_provisioned_concurrency_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetProvisionedConcurrencyConfig"
        operation.name = "GetProvisionedConcurrencyConfig"
        operation.input = GetProvisionedConcurrencyConfigRequest
        operation.output = GetProvisionedConcurrencyConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ProvisionedConcurrencyConfigNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the provisioned concurrency configuration for an AWS Lambda function's alias or version", "relativeDocumentation" => "API_GetProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_runtime_management_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetRuntimeManagementConfig"
        operation.name = "GetRuntimeManagementConfig"
        operation.input = GetRuntimeManagementConfigRequest
        operation.output = GetRuntimeManagementConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the runtime management configuration of an AWS Lambda function", "relativeDocumentation" => "API_GetRuntimeManagementConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#Invoke"
        operation.name = "Invoke"
        operation.input = InvocationRequest
        operation.output = InvocationResponse
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:EventSourceToken"], "aws.iam#iamAction" => {"name" => "InvokeFunction", "documentation" => "Grants permission to invoke an AWS Lambda function", "relativeDocumentation" => "API_Invoke.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/invocations", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "ErrorInvalidFunctionName", "params" => {"FunctionName" => "bogus-function"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.lambda#ResourceNotFoundException"}}, "vendorParams" => {}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:invoke_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeAsync"
        operation.name = "InvokeAsync"
        operation.input = InvokeAsyncRequest
        operation.output = InvokeAsyncResponse
        operation.errors << InvalidRequestContentException
        operation.errors << InvalidRuntimeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to invoke a function asynchronously (Deprecated)", "relativeDocumentation" => "API_InvokeAsync.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#deprecated" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/2014-11-13/functions/{FunctionName}/invoke-async", "code" => 202}, "smithy.api#suppress" => ["DeprecatedShape"]}
      end)
      service.add_operation(:invoke_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeWithResponseStream"
        operation.name = "InvokeWithResponseStream"
        operation.input = InvokeWithResponseStreamRequest
        operation.output = InvokeWithResponseStreamResponse
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:EventSourceToken"], "aws.iam#iamAction" => {"name" => "InvokeFunction", "documentation" => "Grants permission to invoke an AWS Lambda function", "relativeDocumentation" => "API_Invoke.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2021-11-15/functions/{FunctionName}/response-streaming-invocations", "code" => 200}}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListAliases"
        operation.name = "ListAliases"
        operation.input = ListAliasesRequest
        operation.output = ListAliasesResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of aliases for an AWS Lambda function", "relativeDocumentation" => "API_ListAliases.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_code_signing_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListCodeSigningConfigs"
        operation.name = "ListCodeSigningConfigs"
        operation.input = ListCodeSigningConfigsRequest
        operation.output = ListCodeSigningConfigsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda code signing configs", "relativeDocumentation" => "API_ListCodeSigningConfigs.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCodeSigningConfigs.new
      end)
      service.add_operation(:list_event_source_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListEventSourceMappings"
        operation.name = "ListEventSourceMappings"
        operation.input = ListEventSourceMappingsRequest
        operation.output = ListEventSourceMappingsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda event source mappings", "relativeDocumentation" => "API_ListEventSourceMappings.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventSourceMappings.new
      end)
      service.add_operation(:list_function_event_invoke_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionEventInvokeConfigs"
        operation.name = "ListFunctionEventInvokeConfigs"
        operation.input = ListFunctionEventInvokeConfigsRequest
        operation.output = ListFunctionEventInvokeConfigsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of configurations for asynchronous invocation for a function", "relativeDocumentation" => "API_ListFunctionEventInvokeConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFunctionEventInvokeConfigs.new
      end)
      service.add_operation(:list_function_url_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionUrlConfigs"
        operation.name = "ListFunctionUrlConfigs"
        operation.input = ListFunctionUrlConfigsRequest
        operation.output = ListFunctionUrlConfigsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to read function url configurations for a function", "relativeDocumentation" => "API_ListFunctionUrlConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/urls", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFunctionUrlConfigs.new
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda functions, with the version-specific configuration of each function", "relativeDocumentation" => "API_ListFunctions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListFunctionsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParams" => {}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_functions_by_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionsByCodeSigningConfig"
        operation.name = "ListFunctionsByCodeSigningConfig"
        operation.input = ListFunctionsByCodeSigningConfigRequest
        operation.output = ListFunctionsByCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda functions by the code signing config assigned ", "relativeDocumentation" => "API_ListFunctionsByCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFunctionsByCodeSigningConfig.new
      end)
      service.add_operation(:list_layer_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListLayerVersions"
        operation.name = "ListLayerVersions"
        operation.input = ListLayerVersionsRequest
        operation.output = ListLayerVersionsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions of an AWS Lambda layer", "relativeDocumentation" => "API_ListLayerVersions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLayerVersions.new
      end)
      service.add_operation(:list_layers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListLayers"
        operation.name = "ListLayers"
        operation.input = ListLayersRequest
        operation.output = ListLayersResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda layers, with details about the latest version of each layer", "relativeDocumentation" => "API_ListLayers.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLayers.new
      end)
      service.add_operation(:list_provisioned_concurrency_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListProvisionedConcurrencyConfigs"
        operation.name = "ListProvisionedConcurrencyConfigs"
        operation.input = ListProvisionedConcurrencyConfigsRequest
        operation.output = ListProvisionedConcurrencyConfigsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of provisioned concurrency configurations for an AWS Lambda function", "relativeDocumentation" => "API_ListProvisionedConcurrencyConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProvisionedConcurrencyConfigs.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of tags for an AWS Lambda function, event source mapping or code signing configuration resource", "relativeDocumentation" => "API_ListTags.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2017-03-31/tags/{Resource}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_versions_by_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListVersionsByFunction"
        operation.name = "ListVersionsByFunction"
        operation.input = ListVersionsByFunctionRequest
        operation.output = ListVersionsByFunctionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions for an AWS Lambda function", "relativeDocumentation" => "API_ListVersionsByFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVersionsByFunction.new
      end)
      service.add_operation(:publish_layer_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PublishLayerVersion"
        operation.name = "PublishLayerVersion"
        operation.input = PublishLayerVersionRequest
        operation.output = PublishLayerVersionResponse
        operation.errors << CodeStorageExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"createsResources" => ["layerVersion"], "documentation" => "Grants permission to create an AWS Lambda layer", "relativeDocumentation" => "API_PublishLayerVersion.html", "resources" => {"required" => {"layer" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 201}}
      end)
      service.add_operation(:publish_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PublishVersion"
        operation.name = "PublishVersion"
        operation.input = PublishVersionRequest
        operation.output = PublishVersionOutput
        operation.errors << CodeStorageExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Lambda function version", "relativeDocumentation" => "API_PublishVersion.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 201}}
      end)
      service.add_operation(:put_function_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionCodeSigningConfig"
        operation.name = "PutFunctionCodeSigningConfig"
        operation.input = PutFunctionCodeSigningConfigRequest
        operation.output = PutFunctionCodeSigningConfigResponse
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:CodeSigningConfigArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to attach a code signing config to an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}, "code signing config" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}}
      end)
      service.add_operation(:put_function_concurrency, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionConcurrency"
        operation.name = "PutFunctionConcurrency"
        operation.input = PutFunctionConcurrencyRequest
        operation.output = PutFunctionConcurrencyOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure reserved concurrency for an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 200}}
      end)
      service.add_operation(:put_function_event_invoke_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionEventInvokeConfig"
        operation.name = "PutFunctionEventInvokeConfig"
        operation.input = PutFunctionEventInvokeConfigRequest
        operation.output = PutFunctionEventInvokeConfigOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configures options for asynchronous invocation on an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_PutFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}}
      end)
      service.add_operation(:put_function_recursion_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionRecursionConfig"
        operation.name = "PutFunctionRecursionConfig"
        operation.input = PutFunctionRecursionConfigRequest
        operation.output = PutFunctionRecursionConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the recursion configuration of an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionRecursionConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}}
      end)
      service.add_operation(:put_provisioned_concurrency_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutProvisionedConcurrencyConfig"
        operation.name = "PutProvisionedConcurrencyConfig"
        operation.input = PutProvisionedConcurrencyConfigRequest
        operation.output = PutProvisionedConcurrencyConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure provisioned concurrency for an AWS Lambda function's alias or version", "relativeDocumentation" => "API_PutProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_runtime_management_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutRuntimeManagementConfig"
        operation.name = "PutRuntimeManagementConfig"
        operation.input = PutRuntimeManagementConfigRequest
        operation.output = PutRuntimeManagementConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the runtime management configuration of an AWS Lambda function", "relativeDocumentation" => "API_PutRuntimeManagementConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}}
      end)
      service.add_operation(:remove_layer_version_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#RemoveLayerVersionPermission"
        operation.name = "RemoveLayerVersionPermission"
        operation.input = RemoveLayerVersionPermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a statement from the permissions policy for a version of an AWS Lambda layer", "relativeDocumentation" => "API_RemoveLayerVersionPermission.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}", "code" => 204}}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType", "lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to revoke function-use permission from an AWS service or another account", "relativeDocumentation" => "API_RemovePermission.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to an AWS Lambda function, event source mapping or code signing configuration resource", "relativeDocumentation" => "API_TagResources.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from an AWS Lambda function, event source mapping or code signing configuration resource", "relativeDocumentation" => "API_UntagResource.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}}
      end)
      service.add_operation(:update_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = UpdateAliasRequest
        operation.output = UpdateAliasOutput
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the configuration of an AWS Lambda function's alias", "relativeDocumentation" => "API_UpdateAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateCodeSigningConfig"
        operation.name = "UpdateCodeSigningConfig"
        operation.input = UpdateCodeSigningConfigRequest
        operation.output = UpdateCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Lambda code signing config", "relativeDocumentation" => "API_UpdateCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}}
      end)
      service.add_operation(:update_event_source_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateEventSourceMapping"
        operation.name = "UpdateEventSourceMapping"
        operation.input = UpdateEventSourceMappingRequest
        operation.output = UpdateEventSourceMappingOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update the configuration of an AWS Lambda event source mapping", "relativeDocumentation" => "API_UpdateEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}}
      end)
      service.add_operation(:update_function_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionCode"
        operation.name = "UpdateFunctionCode"
        operation.input = UpdateFunctionCodeRequest
        operation.output = UpdateFunctionCodeOutput
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the code of an AWS Lambda function", "relativeDocumentation" => "API_UpdateFunctionCode.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/code", "code" => 200}, "smithy.api#suppress" => ["DefaultValueInUpdate"]}
      end)
      service.add_operation(:update_function_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionConfiguration"
        operation.name = "UpdateFunctionConfiguration"
        operation.input = UpdateFunctionConfigurationRequest
        operation.output = UpdateFunctionConfigurationOutput
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeVerificationFailedException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:VpcIds", "lambda:SubnetIds", "lambda:SecurityGroupIds", "lambda:Layer"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the version-specific settings of an AWS Lambda function", "relativeDocumentation" => "API_UpdateFunctionConfiguration.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}}
      end)
      service.add_operation(:update_function_event_invoke_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionEventInvokeConfig"
        operation.name = "UpdateFunctionEventInvokeConfig"
        operation.input = UpdateFunctionEventInvokeConfigRequest
        operation.output = UpdateFunctionEventInvokeConfigOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the configuration for asynchronous invocation for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_UpdateFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}}
      end)
      service.add_operation(:update_function_url_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateFunctionUrlConfig"
        operation.name = "UpdateFunctionUrlConfig"
        operation.input = UpdateFunctionUrlConfigRequest
        operation.output = UpdateFunctionUrlConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update a function url configuration for a Lambda function", "relativeDocumentation" => "API_UpdateFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}}
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
