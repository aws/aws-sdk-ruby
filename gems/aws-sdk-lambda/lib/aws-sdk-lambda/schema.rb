# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AccountLimit", name: "AccountLimit", traits: {"smithy.api#tags" => ["feature:public"]})
    AccountUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AccountUsage", name: "AccountUsage", traits: {"smithy.api#tags" => ["feature:public"]})
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Action", name: "Action", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(lambda:[*]|lambda:[a-zA-Z]+|[*])$", "smithy.api#tags" => ["feature:public"]})
    AddLayerVersionPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddLayerVersionPermissionRequest", name: "AddLayerVersionPermissionRequest", traits: {"aws.api#data" => "permissions", "smithy.api#tags" => ["feature:public"]})
    AddLayerVersionPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddLayerVersionPermissionResponse", name: "AddLayerVersionPermissionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    AddPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddPermissionRequest", name: "AddPermissionRequest", traits: {"aws.api#data" => "permissions", "smithy.api#tags" => ["feature:public"]})
    AddPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AddPermissionResponse", name: "AddPermissionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    AdditionalVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#AdditionalVersion", name: "AdditionalVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#tags" => ["feature:public"]})
    AdditionalVersionWeights = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#AdditionalVersionWeights", name: "AdditionalVersionWeights", traits: {"smithy.api#tags" => ["feature:public"]})
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Alias", name: "Alias", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!^[0-9]+$)([a-zA-Z0-9-_]+)$", "smithy.api#tags" => ["feature:public"]})
    AliasConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AliasConfiguration", name: "AliasConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    AliasLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AliasLimitExceededException", name: "AliasLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AliasList", name: "AliasList", traits: {"smithy.api#tags" => ["feature:public"]})
    AliasRoutingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AliasRoutingConfiguration", name: "AliasRoutingConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    AllowCredentials = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#AllowCredentials", name: "AllowCredentials", traits: {"smithy.api#tags" => ["feature:public"]})
    AllowMethodsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AllowMethodsList", name: "AllowMethodsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}, "smithy.api#tags" => ["feature:public"]})
    AllowOriginsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#AllowOriginsList", name: "AllowOriginsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#tags" => ["feature:public"]})
    AllowedPublishers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AllowedPublishers", name: "AllowedPublishers", traits: {"smithy.api#tags" => ["feature:public"]})
    AmazonManagedKafkaEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#AmazonManagedKafkaEventSourceConfig", name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    ApplicationLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ApplicationLogLevel", name: "ApplicationLogLevel", traits: {"smithy.api#tags" => ["feature:public"]})
    Architecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#Architecture", name: "Architecture", traits: {"smithy.api#tags" => ["feature:public"]})
    ArchitecturesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#ArchitecturesList", name: "ArchitecturesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$", "smithy.api#tags" => ["feature:public"]})
    AttemptCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#AttemptCount", name: "AttemptCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#tags" => ["feature:public"]})
    BatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#BatchSize", name: "BatchSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#tags" => ["feature:public"]})
    BinaryOperationPayload = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lambda#BinaryOperationPayload", name: "BinaryOperationPayload", traits: {"smithy.api#length" => {"min" => 0, "max" => 1048576}, "smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    BisectBatchOnFunctionError = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#BisectBatchOnFunctionError", name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lambda#Blob", name: "Blob", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    BlobStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lambda#BlobStream", name: "BlobStream", traits: {"smithy.api#streaming" => {}, "smithy.api#tags" => ["feature:public"]})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#Boolean", name: "Boolean", traits: {"smithy.api#default" => false, "smithy.api#tags" => ["feature:public"]})
    CallbackDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackDetails", name: "CallbackDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackFailedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackFailedDetails", name: "CallbackFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CallbackId", name: "CallbackId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9+/]+={0,2}$", "smithy.api#tags" => ["feature:public"]})
    CallbackOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackOptions", name: "CallbackOptions", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackStartedDetails", name: "CallbackStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackSucceededDetails", name: "CallbackSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackTimedOutDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackTimedOutDetails", name: "CallbackTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CallbackTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CallbackTimeoutException", name: "CallbackTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    CapacityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProvider", name: "CapacityProvider", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CapacityProviderArn", name: "CapacityProviderArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::CapacityProvider", "resource" => "com.amazonaws.lambda#CapacityProviderResource"}, "smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:capacity-provider:[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    CapacityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderConfig", name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderLimitExceededException", name: "CapacityProviderLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    CapacityProviderLoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderLoggingConfig", name: "CapacityProviderLoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderMaxVCpuCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#CapacityProviderMaxVCpuCount", name: "CapacityProviderMaxVCpuCount", traits: {"smithy.api#range" => {"min" => 2, "max" => 15000}, "smithy.api#tags" => ["feature:public"]})
    CapacityProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CapacityProviderName", name: "CapacityProviderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:capacity-provider:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    CapacityProviderPermissionsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderPermissionsConfig", name: "CapacityProviderPermissionsConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderPredefinedMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#CapacityProviderPredefinedMetricType", name: "CapacityProviderPredefinedMetricType", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderScalingConfig", name: "CapacityProviderScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#CapacityProviderScalingMode", name: "CapacityProviderScalingMode", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderScalingPoliciesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CapacityProviderScalingPoliciesList", name: "CapacityProviderScalingPoliciesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#tags" => ["feature:public"]})
    CapacityProviderSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CapacityProviderSecurityGroupIds", name: "CapacityProviderSecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}, "smithy.api#tags" => ["feature:public"]})
    CapacityProviderState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#CapacityProviderState", name: "CapacityProviderState", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderSubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CapacityProviderSubnetIds", name: "CapacityProviderSubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#tags" => ["feature:public"]})
    CapacityProviderTelemetryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderTelemetryConfig", name: "CapacityProviderTelemetryConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProviderVpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CapacityProviderVpcConfig", name: "CapacityProviderVpcConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CapacityProvidersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CapacityProvidersList", name: "CapacityProvidersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    ChainedInvokeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeDetails", name: "ChainedInvokeDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeFailedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeFailedDetails", name: "ChainedInvokeFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeOptions", name: "ChainedInvokeOptions", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeStartedDetails", name: "ChainedInvokeStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeStoppedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeStoppedDetails", name: "ChainedInvokeStoppedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeSucceededDetails", name: "ChainedInvokeSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ChainedInvokeTimedOutDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ChainedInvokeTimedOutDetails", name: "ChainedInvokeTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    CheckpointDurableExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CheckpointDurableExecutionRequest", name: "CheckpointDurableExecutionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CheckpointDurableExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CheckpointDurableExecutionResponse", name: "CheckpointDurableExecutionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    CheckpointToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CheckpointToken", name: "CheckpointToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9+/]+={0,2}$", "smithy.api#tags" => ["feature:public"]})
    CheckpointUpdatedExecutionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CheckpointUpdatedExecutionState", name: "CheckpointUpdatedExecutionState", traits: {"smithy.api#tags" => ["feature:public"]})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$", "smithy.api#tags" => ["feature:public"]})
    CodeArtifactUserDeletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeArtifactUserDeletedException", name: "CodeArtifactUserDeletedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    CodeArtifactUserFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeArtifactUserFailedException", name: "CodeArtifactUserFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    CodeArtifactUserPendingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeArtifactUserPendingException", name: "CodeArtifactUserPendingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    CodeSigningConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningConfig", name: "CodeSigningConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    CodeSigningConfigArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CodeSigningConfigArn", name: "CodeSigningConfigArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::CodeSigningConfig", "resource" => "com.amazonaws.lambda#CodeSigningConfigResource"}, "smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:code-signing-config:csc-[a-z0-9]{17}$", "smithy.api#tags" => ["feature:public"]})
    CodeSigningConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CodeSigningConfigId", name: "CodeSigningConfigId", traits: {"smithy.api#pattern" => "^csc-[a-zA-Z0-9-_\\.]{17}$", "smithy.api#tags" => ["feature:public"]})
    CodeSigningConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CodeSigningConfigList", name: "CodeSigningConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    CodeSigningConfigNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningConfigNotFoundException", name: "CodeSigningConfigNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404, "smithy.api#tags" => ["feature:public"]})
    CodeSigningPolicies = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeSigningPolicies", name: "CodeSigningPolicies", traits: {"smithy.api#tags" => ["feature:public"]})
    CodeSigningPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#CodeSigningPolicy", name: "CodeSigningPolicy", traits: {"smithy.api#tags" => ["feature:public"]})
    CodeStorageExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeStorageExceededException", name: "CodeStorageExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    CodeVerificationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CodeVerificationFailedException", name: "CodeVerificationFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    CollectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#CollectionName", name: "CollectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 57}, "smithy.api#pattern" => "^(^(?!(system\\x2e)))(^[_a-zA-Z0-9])([^$]*)$", "smithy.api#tags" => ["feature:public"]})
    CompatibleArchitectures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CompatibleArchitectures", name: "CompatibleArchitectures", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#tags" => ["feature:public"]})
    CompatibleRuntimes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#CompatibleRuntimes", name: "CompatibleRuntimes", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}, "smithy.api#tags" => ["feature:public"]})
    Concurrency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Concurrency", name: "Concurrency", traits: {"smithy.api#tags" => ["feature:public"]})
    ContextDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ContextDetails", name: "ContextDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ContextFailedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ContextFailedDetails", name: "ContextFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ContextOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ContextOptions", name: "ContextOptions", traits: {"smithy.api#tags" => ["feature:public"]})
    ContextStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ContextStartedDetails", name: "ContextStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ContextSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ContextSucceededDetails", name: "ContextSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    Cors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Cors", name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateAliasOutput", name: "CreateAliasOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateAliasRequest", name: "CreateAliasRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCapacityProviderRequest", name: "CreateCapacityProviderRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCapacityProviderResponse", name: "CreateCapacityProviderResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCodeSigningConfigRequest", name: "CreateCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateCodeSigningConfigResponse", name: "CreateCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateEventSourceMappingOutput", name: "CreateEventSourceMappingOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateEventSourceMappingRequest", name: "CreateEventSourceMappingRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateFunctionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionOutput", name: "CreateFunctionOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionRequest", name: "CreateFunctionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionUrlConfigRequest", name: "CreateFunctionUrlConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#CreateFunctionUrlConfigResponse", name: "CreateFunctionUrlConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[^ /\\.$\\x22]*$", "smithy.api#tags" => ["feature:public"]})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lambda#Date", name: "Date", traits: {"smithy.api#tags" => ["feature:public"]})
    DeadLetterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeadLetterConfig", name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteAliasRequest", name: "DeleteAliasRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCapacityProviderRequest", name: "DeleteCapacityProviderRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCapacityProviderResponse", name: "DeleteCapacityProviderResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCodeSigningConfigRequest", name: "DeleteCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteCodeSigningConfigResponse", name: "DeleteCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteEventSourceMappingOutput", name: "DeleteEventSourceMappingOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteEventSourceMappingRequest", name: "DeleteEventSourceMappingRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionCodeSigningConfigRequest", name: "DeleteFunctionCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionConcurrencyRequest", name: "DeleteFunctionConcurrencyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionEventInvokeConfigRequest", name: "DeleteFunctionEventInvokeConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionRequest", name: "DeleteFunctionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionResponse", name: "DeleteFunctionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteFunctionUrlConfigRequest", name: "DeleteFunctionUrlConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteLayerVersionRequest", name: "DeleteLayerVersionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteProvisionedConcurrencyConfigRequest", name: "DeleteProvisionedConcurrencyConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#tags" => ["feature:public"]})
    DestinationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DestinationArn", name: "DestinationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^$|kafka://([^.]([a-zA-Z0-9\\-_.]{0,248}))|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)$", "smithy.api#tags" => ["feature:public"]})
    DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DestinationConfig", name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    DirectS3Read = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#DirectS3Read", name: "DirectS3Read", traits: {"smithy.api#tags" => ["feature:public"]})
    DocumentDBEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DocumentDBEventSourceConfig", name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    DurableConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DurableConfig", name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    DurableExecutionAlreadyStartedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#DurableExecutionAlreadyStartedException", name: "DurableExecutionAlreadyStartedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    DurableExecutionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DurableExecutionArn", name: "DurableExecutionArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::DurableExecution", "resource" => "com.amazonaws.lambda#DurableExecution"}, "smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:([a-zA-Z0-9-]+):lambda:([a-zA-Z0-9-]+):(\\d{12}):function:([a-zA-Z0-9_-]+):(\\$LATEST(?:\\.PUBLISHED)?|[0-9]+)/durable-execution/([a-zA-Z0-9_-]+)/([a-zA-Z0-9_-]+)$", "smithy.api#tags" => ["feature:public"]})
    DurableExecutionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#DurableExecutionName", name: "DurableExecutionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    DurableExecutions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#DurableExecutions", name: "DurableExecutions", traits: {"smithy.api#tags" => ["feature:public"]})
    DurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#DurationSeconds", name: "DurationSeconds", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#tags" => ["feature:public"]})
    EC2AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2AccessDeniedException", name: "EC2AccessDeniedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    EC2ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2ThrottledException", name: "EC2ThrottledException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    EC2UnexpectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EC2UnexpectedException", name: "EC2UnexpectedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    EFSIOException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSIOException", name: "EFSIOException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410, "smithy.api#tags" => ["feature:public"]})
    EFSMountConnectivityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountConnectivityException", name: "EFSMountConnectivityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#tags" => ["feature:public"]})
    EFSMountFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountFailureException", name: "EFSMountFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403, "smithy.api#tags" => ["feature:public"]})
    EFSMountTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EFSMountTimeoutException", name: "EFSMountTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#tags" => ["feature:public"]})
    ENILimitReachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ENILimitReachedException", name: "ENILimitReachedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    ENINotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ENINotReadyException", name: "ENINotReadyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#Enabled", name: "Enabled", traits: {"smithy.api#tags" => ["feature:public"]})
    EndPointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EndPointType", name: "EndPointType", traits: {"smithy.api#tags" => ["feature:public"]})
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}$", "smithy.api#tags" => ["feature:public"]})
    EndpointLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EndpointLists", name: "EndpointLists", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#tags" => ["feature:public"]})
    Endpoints = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#Endpoints", name: "Endpoints", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#tags" => ["feature:public"]})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Environment", name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]})
    EnvironmentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EnvironmentError", name: "EnvironmentError", traits: {"smithy.api#tags" => ["feature:public"]})
    EnvironmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EnvironmentResponse", name: "EnvironmentResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    EnvironmentVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EnvironmentVariableName", name: "EnvironmentVariableName", traits: {"smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])+$", "smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EnvironmentVariableValue", name: "EnvironmentVariableValue", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    EnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#EnvironmentVariables", name: "EnvironmentVariables", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EphemeralStorage", name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]})
    EphemeralStorageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#EphemeralStorageSize", name: "EphemeralStorageSize", traits: {"smithy.api#range" => {"min" => 512, "max" => 32768}, "smithy.api#tags" => ["feature:public"]})
    ErrorData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ErrorData", name: "ErrorData", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    ErrorObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ErrorObject", name: "ErrorObject", traits: {"smithy.api#tags" => ["feature:public"]})
    ErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ErrorType", name: "ErrorType", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Event", name: "Event", traits: {"smithy.api#tags" => ["feature:public"]})
    EventError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventError", name: "EventError", traits: {"smithy.api#tags" => ["feature:public"]})
    EventId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#EventId", name: "EventId", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1}, "smithy.api#tags" => ["feature:public"]})
    EventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventInput", name: "EventInput", traits: {"smithy.api#tags" => ["feature:public"]})
    EventResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventResult", name: "EventResult", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EventSourceMappingArn", name: "EventSourceMappingArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::EventSourceMapping", "resource" => "com.amazonaws.lambda#EventSourceMapping"}, "smithy.api#length" => {"min" => 85, "max" => 120}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", "smithy.api#tags" => ["feature:public"]})
    EventSourceMappingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventSourceMappingConfiguration", name: "EventSourceMappingConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingLoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventSourceMappingLoggingConfig", name: "EventSourceMappingLoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetric", name: "EventSourceMappingMetric", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetricList", name: "EventSourceMappingMetricList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}, "smithy.api#tags" => ["feature:public"]})
    EventSourceMappingMetricsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#EventSourceMappingMetricsConfig", name: "EventSourceMappingMetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingSystemLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventSourceMappingSystemLogLevel", name: "EventSourceMappingSystemLogLevel", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#EventSourceMappingsList", name: "EventSourceMappingsList", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourcePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventSourcePosition", name: "EventSourcePosition", traits: {"smithy.api#tags" => ["feature:public"]})
    EventSourceToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#EventSourceToken", name: "EventSourceToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._\\-]+$", "smithy.api#tags" => ["feature:public"]})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#EventType", name: "EventType", traits: {"smithy.api#tags" => ["feature:public"]})
    Events = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Events", name: "Events", traits: {"smithy.api#tags" => ["feature:public"]})
    Execution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Execution", name: "Execution", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionDataIncluded = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#ExecutionDataIncluded", name: "ExecutionDataIncluded", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionDetails", name: "ExecutionDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionEnvironmentMemoryGiBPerVCpu = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lambda#ExecutionEnvironmentMemoryGiBPerVCpu", name: "ExecutionEnvironmentMemoryGiBPerVCpu", traits: {"smithy.api#range" => {"min" => 2, "max" => 8}, "smithy.api#tags" => ["feature:public"]})
    ExecutionFailedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionFailedDetails", name: "ExecutionFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionStartedDetails", name: "ExecutionStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ExecutionStatus", name: "ExecutionStatus", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#ExecutionStatusList", name: "ExecutionStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#tags" => ["feature:public"]})
    ExecutionStoppedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionStoppedDetails", name: "ExecutionStoppedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionSucceededDetails", name: "ExecutionSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionTimedOutDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ExecutionTimedOutDetails", name: "ExecutionTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ExecutionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ExecutionTimeout", name: "ExecutionTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 31622400}, "smithy.api#tags" => ["feature:public"]})
    ExecutionTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lambda#ExecutionTimestamp", name: "ExecutionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]})
    FileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FileSystemArn", name: "FileSystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:elasticfilesystem:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:access-point/fsap-[a-f0-9]{17}$|^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$", "smithy.api#tags" => ["feature:public"]})
    FileSystemConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FileSystemConfig", name: "FileSystemConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    FileSystemConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FileSystemConfigList", name: "FileSystemConfigList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Filter", name: "Filter", traits: {"smithy.api#tags" => ["feature:public"]})
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FilterCriteria", name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]})
    FilterCriteriaError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FilterCriteriaError", name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]})
    FilterCriteriaErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FilterCriteriaErrorCode", name: "FilterCriteriaErrorCode", traits: {"smithy.api#length" => {"min" => 10, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z]+Exception$", "smithy.api#tags" => ["feature:public"]})
    FilterCriteriaErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FilterCriteriaErrorMessage", name: "FilterCriteriaErrorMessage", traits: {"smithy.api#length" => {"min" => 10, "max" => 2048}, "smithy.api#pattern" => ".*", "smithy.api#tags" => ["feature:public"]})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FilterList", name: "FilterList", traits: {"smithy.api#tags" => ["feature:public"]})
    FullDocument = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FullDocument", name: "FullDocument", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionArn", name: "FunctionArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::Function", "resource" => "com.amazonaws.lambda#Function"}, "smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$", "smithy.api#tags" => ["feature:public"]})
    FunctionArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionArnList", name: "FunctionArnList", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionCode", name: "FunctionCode", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionCodeLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionCodeLocation", name: "FunctionCodeLocation", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionCodeLocationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionCodeLocationError", name: "FunctionCodeLocationError", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionConfiguration", name: "FunctionConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionEventInvokeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionEventInvokeConfig", name: "FunctionEventInvokeConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionEventInvokeConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionEventInvokeConfigList", name: "FunctionEventInvokeConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionList", name: "FunctionList", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionName", name: "FunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$", "smithy.api#tags" => ["feature:public"]})
    FunctionResponseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionResponseType", name: "FunctionResponseType", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionResponseTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionResponseTypeList", name: "FunctionResponseTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    FunctionScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionScalingConfig", name: "FunctionScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionScalingConfigExecutionEnvironments = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#FunctionScalingConfigExecutionEnvironments", name: "FunctionScalingConfigExecutionEnvironments", traits: {"smithy.api#range" => {"min" => 0, "max" => 15000}, "smithy.api#tags" => ["feature:public"]})
    FunctionUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionUrl", name: "FunctionUrl", traits: {"smithy.api#length" => {"min" => 40, "max" => 100}, "smithy.api#tags" => ["feature:public"]})
    FunctionUrlAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionUrlAuthType", name: "FunctionUrlAuthType", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionUrlConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionUrlConfig", name: "FunctionUrlConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionUrlConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionUrlConfigList", name: "FunctionUrlConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionUrlFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionUrlFunctionName", name: "FunctionUrlFunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]{1,64})(:((?!\\d+$)[0-9a-zA-Z-_]+))?$", "smithy.api#tags" => ["feature:public"]})
    FunctionUrlQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#FunctionUrlQualifier", name: "FunctionUrlQualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^((?!^\\d+$)^[0-9a-zA-Z-_]+$)$", "smithy.api#tags" => ["feature:public"]})
    FunctionVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionVersion", name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionVersionLatestPublished = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#FunctionVersionLatestPublished", name: "FunctionVersionLatestPublished", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionVersionsByCapacityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#FunctionVersionsByCapacityProviderList", name: "FunctionVersionsByCapacityProviderList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    FunctionVersionsByCapacityProviderListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionVersionsByCapacityProviderListItem", name: "FunctionVersionsByCapacityProviderListItem", traits: {"smithy.api#tags" => ["feature:public"]})
    FunctionVersionsPerCapacityProviderLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#FunctionVersionsPerCapacityProviderLimitExceededException", name: "FunctionVersionsPerCapacityProviderLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAccountSettingsRequest", name: "GetAccountSettingsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAccountSettingsResponse", name: "GetAccountSettingsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAliasOutput", name: "GetAliasOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetAliasRequest", name: "GetAliasRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCapacityProviderRequest", name: "GetCapacityProviderRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCapacityProviderResponse", name: "GetCapacityProviderResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCodeSigningConfigRequest", name: "GetCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetCodeSigningConfigResponse", name: "GetCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionHistoryRequest", name: "GetDurableExecutionHistoryRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionHistoryResponse", name: "GetDurableExecutionHistoryResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionRequest", name: "GetDurableExecutionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionResponse", name: "GetDurableExecutionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionStateRequest", name: "GetDurableExecutionStateRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetDurableExecutionStateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetDurableExecutionStateResponse", name: "GetDurableExecutionStateResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetEventSourceMappingOutput", name: "GetEventSourceMappingOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetEventSourceMappingRequest", name: "GetEventSourceMappingRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionCodeSigningConfigRequest", name: "GetFunctionCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionCodeSigningConfigResponse", name: "GetFunctionCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConcurrencyRequest", name: "GetFunctionConcurrencyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionConcurrencyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConcurrencyResponse", name: "GetFunctionConcurrencyResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConfigurationOutput", name: "GetFunctionConfigurationOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionConfigurationRequest", name: "GetFunctionConfigurationRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionEventInvokeConfigOutput", name: "GetFunctionEventInvokeConfigOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionEventInvokeConfigRequest", name: "GetFunctionEventInvokeConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionRecursionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRecursionConfigRequest", name: "GetFunctionRecursionConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionRecursionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRecursionConfigResponse", name: "GetFunctionRecursionConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionRequest", name: "GetFunctionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionResponse", name: "GetFunctionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionScalingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionScalingConfigRequest", name: "GetFunctionScalingConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionScalingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionScalingConfigResponse", name: "GetFunctionScalingConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionUrlConfigRequest", name: "GetFunctionUrlConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetFunctionUrlConfigResponse", name: "GetFunctionUrlConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionByArnOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionByArnOutput", name: "GetLayerVersionByArnOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionByArnRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionByArnRequest", name: "GetLayerVersionByArnRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionOutput", name: "GetLayerVersionOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionPolicyRequest", name: "GetLayerVersionPolicyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionPolicyResponse", name: "GetLayerVersionPolicyResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetLayerVersionRequest", name: "GetLayerVersionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetPolicyRequest", name: "GetPolicyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetPolicyResponse", name: "GetPolicyResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetProvisionedConcurrencyConfigRequest", name: "GetProvisionedConcurrencyConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetProvisionedConcurrencyConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetProvisionedConcurrencyConfigResponse", name: "GetProvisionedConcurrencyConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetResourcePolicyRequest", name: "GetResourcePolicyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetResourcePolicyResponse", name: "GetResourcePolicyResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetRuntimeManagementConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetRuntimeManagementConfigRequest", name: "GetRuntimeManagementConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetRuntimeManagementConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#GetRuntimeManagementConfigResponse", name: "GetRuntimeManagementConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    Handler = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Handler", name: "Handler", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^\\s]+$", "smithy.api#tags" => ["feature:public"]})
    Header = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Header", name: "Header", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#tags" => ["feature:public"]})
    HeadersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#HeadersList", name: "HeadersList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#tags" => ["feature:public"]})
    HttpStatus = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#HttpStatus", name: "HttpStatus", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]})
    ImageConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfig", name: "ImageConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    ImageConfigError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfigError", name: "ImageConfigError", traits: {"smithy.api#tags" => ["feature:public"]})
    ImageConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ImageConfigResponse", name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    IncludeExecutionData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#IncludeExecutionData", name: "IncludeExecutionData", traits: {"smithy.api#tags" => ["feature:public"]})
    InputPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#InputPayload", name: "InputPayload", traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}, "smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    InstanceRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InstanceRequirements", name: "InstanceRequirements", traits: {"smithy.api#tags" => ["feature:public"]})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#InstanceType", name: "InstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$", "smithy.api#tags" => ["feature:public"]})
    InstanceTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#InstanceTypeSet", name: "InstanceTypeSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}, "smithy.api#tags" => ["feature:public"]})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Integer", name: "Integer", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]})
    InvalidCodeSignatureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidCodeSignatureException", name: "InvalidCodeSignatureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    InvalidRequestContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidRequestContentException", name: "InvalidRequestContentException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    InvalidRuntimeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidRuntimeException", name: "InvalidRuntimeException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    InvalidSecurityGroupIDException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidSecurityGroupIDException", name: "InvalidSecurityGroupIDException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    InvalidSubnetIDException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidSubnetIDException", name: "InvalidSubnetIDException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    InvalidZipFileException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvalidZipFileException", name: "InvalidZipFileException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    InvocationCompletedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvocationCompletedDetails", name: "InvocationCompletedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    InvocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvocationRequest", name: "InvocationRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    InvocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvocationResponse", name: "InvocationResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    InvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#InvocationType", name: "InvocationType", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeAsyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeAsyncRequest", name: "InvokeAsyncRequest", traits: {"smithy.api#deprecated" => {}, "smithy.api#tags" => ["feature:public"]})
    InvokeAsyncResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeAsyncResponse", name: "InvokeAsyncResponse", traits: {"smithy.api#deprecated" => {}, "smithy.api#tags" => ["feature:public"]})
    InvokeMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#InvokeMode", name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeResponseStreamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeResponseStreamUpdate", name: "InvokeResponseStreamUpdate", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeWithResponseStreamCompleteEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamCompleteEvent", name: "InvokeWithResponseStreamCompleteEvent", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeWithResponseStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamRequest", name: "InvokeWithResponseStreamRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeWithResponseStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamResponse", name: "InvokeWithResponseStreamResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    InvokeWithResponseStreamResponseEvent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambda#InvokeWithResponseStreamResponseEvent", name: "InvokeWithResponseStreamResponseEvent", traits: {"smithy.api#streaming" => {}, "smithy.api#tags" => ["feature:public"]})
    InvokedViaFunctionUrl = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#InvokedViaFunctionUrl", name: "InvokedViaFunctionUrl", traits: {"smithy.api#tags" => ["feature:public"]})
    ItemCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ItemCount", name: "ItemCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}, "smithy.api#tags" => ["feature:public"]})
    KMSAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSAccessDeniedException", name: "KMSAccessDeniedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public", "feature:public"]})
    KMSDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSDisabledException", name: "KMSDisabledException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public", "feature:public"]})
    KMSInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSInvalidStateException", name: "KMSInvalidStateException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public", "feature:public"]})
    KMSKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#KMSKeyArn", name: "KMSKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$", "smithy.api#tags" => ["feature:public"]})
    KMSKeyArnNonEmpty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#KMSKeyArnNonEmpty", name: "KMSKeyArnNonEmpty", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*$", "smithy.api#tags" => ["feature:public"]})
    KMSNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KMSNotFoundException", name: "KMSNotFoundException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public", "feature:public"]})
    KafkaSchemaRegistryAccessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAccessConfig", name: "KafkaSchemaRegistryAccessConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaRegistryAccessConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAccessConfigList", name: "KafkaSchemaRegistryAccessConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaRegistryAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryAuthType", name: "KafkaSchemaRegistryAuthType", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaRegistryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaRegistryConfig", name: "KafkaSchemaRegistryConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaValidationAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationAttribute", name: "KafkaSchemaValidationAttribute", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaValidationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationConfig", name: "KafkaSchemaValidationConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    KafkaSchemaValidationConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#KafkaSchemaValidationConfigList", name: "KafkaSchemaValidationConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    LambdaManagedInstancesCapacityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LambdaManagedInstancesCapacityProviderConfig", name: "LambdaManagedInstancesCapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    LastUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LastUpdateStatus", name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]})
    LastUpdateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LastUpdateStatusReason", name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]})
    LastUpdateStatusReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LastUpdateStatusReasonCode", name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]})
    Layer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Layer", name: "Layer", traits: {"smithy.api#tags" => ["feature:public"]})
    LayerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerArn", name: "LayerArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::Layer", "resource" => "com.amazonaws.lambda#LayerResource"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:layer:[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    LayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayerList", name: "LayerList", traits: {"smithy.api#tags" => ["feature:public"]})
    LayerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerName", name: "LayerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:layer:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    LayerPermissionAllowedAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerPermissionAllowedAction", name: "LayerPermissionAllowedAction", traits: {"smithy.api#length" => {"min" => 0, "max" => 22}, "smithy.api#pattern" => "^lambda:GetLayerVersion$", "smithy.api#tags" => ["feature:public"]})
    LayerPermissionAllowedPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerPermissionAllowedPrincipal", name: "LayerPermissionAllowedPrincipal", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^\\d{12}|\\*|arn:(aws[a-zA-Z-]*):iam::\\d{12}:root$", "smithy.api#tags" => ["feature:public"]})
    LayerVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LayerVersionArn", name: "LayerVersionArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Lambda::LayerVersion", "resource" => "com.amazonaws.lambda#LayerVersion"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^((arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+)|(arn:[a-zA-Z0-9-]+:lambda:::awslayer:[a-zA-Z0-9-_]+))$", "smithy.api#tags" => ["feature:public"]})
    LayerVersionContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionContentInput", name: "LayerVersionContentInput", traits: {"smithy.api#tags" => ["feature:public"]})
    LayerVersionContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionContentOutput", name: "LayerVersionContentOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    LayerVersionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#LayerVersionNumber", name: "LayerVersionNumber", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]})
    LayerVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayerVersionsList", name: "LayerVersionsList", traits: {"smithy.api#tags" => ["feature:public"]})
    LayerVersionsListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayerVersionsListItem", name: "LayerVersionsListItem", traits: {"smithy.api#tags" => ["feature:public"]})
    LayersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayersList", name: "LayersList", traits: {"smithy.api#tags" => ["feature:public"]})
    LayersListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LayersListItem", name: "LayersListItem", traits: {"smithy.api#tags" => ["feature:public"]})
    LayersReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#LayersReferenceList", name: "LayersReferenceList", traits: {"smithy.api#tags" => ["feature:public"]})
    LicenseInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LicenseInfo", name: "LicenseInfo", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^.*$", "smithy.api#tags" => ["feature:public"]})
    ListAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListAliasesRequest", name: "ListAliasesRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListAliasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListAliasesResponse", name: "ListAliasesResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListCapacityProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCapacityProvidersRequest", name: "ListCapacityProvidersRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListCapacityProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCapacityProvidersResponse", name: "ListCapacityProvidersResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListCodeSigningConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCodeSigningConfigsRequest", name: "ListCodeSigningConfigsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListCodeSigningConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListCodeSigningConfigsResponse", name: "ListCodeSigningConfigsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListDurableExecutionsByFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListDurableExecutionsByFunctionRequest", name: "ListDurableExecutionsByFunctionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListDurableExecutionsByFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListDurableExecutionsByFunctionResponse", name: "ListDurableExecutionsByFunctionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListEventSourceMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListEventSourceMappingsRequest", name: "ListEventSourceMappingsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListEventSourceMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListEventSourceMappingsResponse", name: "ListEventSourceMappingsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionEventInvokeConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionEventInvokeConfigsRequest", name: "ListFunctionEventInvokeConfigsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionEventInvokeConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionEventInvokeConfigsResponse", name: "ListFunctionEventInvokeConfigsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionUrlConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionUrlConfigsRequest", name: "ListFunctionUrlConfigsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionUrlConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionUrlConfigsResponse", name: "ListFunctionUrlConfigsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionVersionsByCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionVersionsByCapacityProviderRequest", name: "ListFunctionVersionsByCapacityProviderRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionVersionsByCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionVersionsByCapacityProviderResponse", name: "ListFunctionVersionsByCapacityProviderResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionsByCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsByCodeSigningConfigRequest", name: "ListFunctionsByCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionsByCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsByCodeSigningConfigResponse", name: "ListFunctionsByCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsRequest", name: "ListFunctionsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListFunctionsResponse", name: "ListFunctionsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListLayerVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayerVersionsRequest", name: "ListLayerVersionsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListLayerVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayerVersionsResponse", name: "ListLayerVersionsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListLayersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayersRequest", name: "ListLayersRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListLayersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListLayersResponse", name: "ListLayersResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListProvisionedConcurrencyConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListProvisionedConcurrencyConfigsRequest", name: "ListProvisionedConcurrencyConfigsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListProvisionedConcurrencyConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListProvisionedConcurrencyConfigsResponse", name: "ListProvisionedConcurrencyConfigsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListTagsRequest", name: "ListTagsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListTagsResponse", name: "ListTagsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    ListVersionsByFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListVersionsByFunctionRequest", name: "ListVersionsByFunctionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListVersionsByFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ListVersionsByFunctionResponse", name: "ListVersionsByFunctionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    LocalMountPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LocalMountPath", name: "LocalMountPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 160}, "smithy.api#pattern" => "^/mnt/[a-zA-Z0-9-_.]+$", "smithy.api#tags" => ["feature:public"]})
    LogFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LogFormat", name: "LogFormat", traits: {"smithy.api#tags" => ["feature:public"]})
    LogGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#LogGroup", name: "LogGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$", "smithy.api#tags" => ["feature:public"]})
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#LogType", name: "LogType", traits: {"smithy.api#tags" => ["feature:public"]})
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#LoggingConfig", name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Long", name: "Long", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]})
    MasterRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#MasterRegion", name: "MasterRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^ALL|(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}$", "smithy.api#tags" => ["feature:public"]})
    MaxAge = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxAge", name: "MaxAge", traits: {"smithy.api#range" => {"min" => 0, "max" => 86400}, "smithy.api#tags" => ["feature:public"]})
    MaxFiftyListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxFiftyListItems", name: "MaxFiftyListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    MaxFunctionEventInvokeConfigListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxFunctionEventInvokeConfigListItems", name: "MaxFunctionEventInvokeConfigListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    MaxLayerListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxLayerListItems", name: "MaxLayerListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    MaxListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxListItems", name: "MaxListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#tags" => ["feature:public"]})
    MaxProvisionedConcurrencyConfigListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaxProvisionedConcurrencyConfigListItems", name: "MaxProvisionedConcurrencyConfigListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    MaximumBatchingWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumBatchingWindowInSeconds", name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}, "smithy.api#tags" => ["feature:public"]})
    MaximumConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumConcurrency", name: "MaximumConcurrency", traits: {"smithy.api#range" => {"min" => 2, "max" => 1000}, "smithy.api#tags" => ["feature:public"]})
    MaximumEventAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumEventAgeInSeconds", name: "MaximumEventAgeInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 21600}, "smithy.api#tags" => ["feature:public"]})
    MaximumNumberOfPollers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumNumberOfPollers", name: "MaximumNumberOfPollers", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#tags" => ["feature:public"]})
    MaximumRecordAgeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRecordAgeInSeconds", name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 604800}, "smithy.api#tags" => ["feature:public"]})
    MaximumRetryAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRetryAttempts", name: "MaximumRetryAttempts", traits: {"smithy.api#range" => {"min" => 0, "max" => 2}, "smithy.api#tags" => ["feature:public"]})
    MaximumRetryAttemptsEventSourceMapping = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MaximumRetryAttemptsEventSourceMapping", name: "MaximumRetryAttemptsEventSourceMapping", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}, "smithy.api#tags" => ["feature:public"]})
    MemorySize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MemorySize", name: "MemorySize", traits: {"smithy.api#range" => {"min" => 128, "max" => 32768}, "smithy.api#tags" => ["feature:public"]})
    Method = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Method", name: "Method", traits: {"smithy.api#length" => {"min" => 0, "max" => 6}, "smithy.api#pattern" => ".*", "smithy.api#tags" => ["feature:public"]})
    MetricTargetValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lambda#MetricTargetValue", name: "MetricTargetValue", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}, "smithy.api#tags" => ["feature:public"]})
    MinimumNumberOfPollers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#MinimumNumberOfPollers", name: "MinimumNumberOfPollers", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}, "smithy.api#tags" => ["feature:public"]})
    ModeNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ModeNotSupportedException", name: "ModeNotSupportedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    NameSpacedFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NameSpacedFunctionArn", name: "NameSpacedFunctionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST(\\.PUBLISHED)?|[a-zA-Z0-9-_]+))?$", "smithy.api#tags" => ["feature:public"]})
    NamespacedFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NamespacedFunctionName", name: "NamespacedFunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST(\\.PUBLISHED)?|[a-zA-Z0-9-_]+))?$", "smithy.api#tags" => ["feature:public"]})
    NamespacedStatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NamespacedStatementId", name: "NamespacedStatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_.]+)$", "smithy.api#tags" => ["feature:public"]})
    NoPublishedVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#NoPublishedVersionException", name: "NoPublishedVersionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#tags" => ["feature:public"]})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#NullableBoolean", name: "NullableBoolean", traits: {"smithy.api#tags" => ["feature:public"]})
    NumericLatestPublishedOrAliasQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#NumericLatestPublishedOrAliasQualifier", name: "NumericLatestPublishedOrAliasQualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\$(LATEST(\\.PUBLISHED)?)|[a-zA-Z0-9-_$]+$", "smithy.api#tags" => ["feature:public"]})
    OnFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#OnFailure", name: "OnFailure", traits: {"smithy.api#tags" => ["feature:public"]})
    OnSuccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#OnSuccess", name: "OnSuccess", traits: {"smithy.api#tags" => ["feature:public"]})
    Operation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#Operation", name: "Operation", traits: {"smithy.api#tags" => ["feature:public"]})
    OperationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#OperationAction", name: "OperationAction", traits: {"smithy.api#tags" => ["feature:public"]})
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OperationId", name: "OperationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    OperationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OperationName", name: "OperationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$", "smithy.api#tags" => ["feature:public"]})
    OperationPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OperationPayload", name: "OperationPayload", traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}, "smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#OperationStatus", name: "OperationStatus", traits: {"smithy.api#tags" => ["feature:public"]})
    OperationSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OperationSubType", name: "OperationSubType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#tags" => ["feature:public"]})
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#OperationType", name: "OperationType", traits: {"smithy.api#tags" => ["feature:public"]})
    OperationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#OperationUpdate", name: "OperationUpdate", traits: {"smithy.api#tags" => ["feature:public"]})
    OperationUpdates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#OperationUpdates", name: "OperationUpdates", traits: {"smithy.api#tags" => ["feature:public"]})
    Operations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Operations", name: "Operations", traits: {"smithy.api#tags" => ["feature:public"]})
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OrganizationId", name: "OrganizationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$", "smithy.api#tags" => ["feature:public"]})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Origin", name: "Origin", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => ".*", "smithy.api#tags" => ["feature:public"]})
    OutputPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#OutputPayload", name: "OutputPayload", traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}, "smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    PackageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#PackageType", name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]})
    ParallelizationFactor = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ParallelizationFactor", name: "ParallelizationFactor", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}, "smithy.api#tags" => ["feature:public"]})
    Pattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Pattern", name: "Pattern", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#tags" => ["feature:public"]})
    PerExecutionEnvironmentMaxConcurrency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#PerExecutionEnvironmentMaxConcurrency", name: "PerExecutionEnvironmentMaxConcurrency", traits: {"smithy.api#range" => {"min" => 1, "max" => 1600}, "smithy.api#tags" => ["feature:public"]})
    PolicyLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PolicyLengthExceededException", name: "PolicyLengthExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    PolicyResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#PolicyResourceArn", name: "PolicyResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:(runtime/|function:)[a-zA-Z0-9-_]+(:(\\$LATEST(\\.PUBLISHED)?|[a-zA-Z0-9-_])+)?$", "smithy.api#tags" => ["feature:public"]})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#tags" => ["feature:public"]})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412, "smithy.api#tags" => ["feature:public"]})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Principal", name: "Principal", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[^\\s]+$", "smithy.api#tags" => ["feature:public"]})
    PrincipalOrgID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#PrincipalOrgID", name: "PrincipalOrgID", traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$", "smithy.api#tags" => ["feature:public"]})
    PropagateTags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PropagateTags", name: "PropagateTags", traits: {"smithy.api#tags" => ["feature:public"]})
    PropagateTagsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#PropagateTagsMode", name: "PropagateTagsMode", traits: {"smithy.api#tags" => ["feature:public"]})
    ProvisionedConcurrencyConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigList", name: "ProvisionedConcurrencyConfigList", traits: {"smithy.api#tags" => ["feature:public"]})
    ProvisionedConcurrencyConfigListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigListItem", name: "ProvisionedConcurrencyConfigListItem", traits: {"smithy.api#tags" => ["feature:public"]})
    ProvisionedConcurrencyConfigNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyConfigNotFoundException", name: "ProvisionedConcurrencyConfigNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404, "smithy.api#tags" => ["feature:public"]})
    ProvisionedConcurrencyStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ProvisionedConcurrencyStatusEnum", name: "ProvisionedConcurrencyStatusEnum", traits: {"smithy.api#tags" => ["feature:public"]})
    ProvisionedPollerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ProvisionedPollerConfig", name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    ProvisionedPollerGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ProvisionedPollerGroupName", name: "ProvisionedPollerGroupName", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$", "smithy.api#tags" => ["feature:public"]})
    PublicPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublicPolicyException", name: "PublicPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    PublishLayerVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishLayerVersionRequest", name: "PublishLayerVersionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PublishLayerVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishLayerVersionResponse", name: "PublishLayerVersionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PublishVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishVersionOutput", name: "PublishVersionOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    PublishVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PublishVersionRequest", name: "PublishVersionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PublishedFunctionQualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#PublishedFunctionQualifier", name: "PublishedFunctionQualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(\\$LATEST\\.PUBLISHED|[0-9]+)$", "smithy.api#tags" => ["feature:public"]})
    PutFunctionCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionCodeSigningConfigRequest", name: "PutFunctionCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionCodeSigningConfigResponse", name: "PutFunctionCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionConcurrencyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionConcurrencyOutput", name: "PutFunctionConcurrencyOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionConcurrencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionConcurrencyRequest", name: "PutFunctionConcurrencyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionEventInvokeConfigOutput", name: "PutFunctionEventInvokeConfigOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionEventInvokeConfigRequest", name: "PutFunctionEventInvokeConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionRecursionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionRecursionConfigRequest", name: "PutFunctionRecursionConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionRecursionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionRecursionConfigResponse", name: "PutFunctionRecursionConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionScalingConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionScalingConfigRequest", name: "PutFunctionScalingConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutFunctionScalingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutFunctionScalingConfigResponse", name: "PutFunctionScalingConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PutProvisionedConcurrencyConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutProvisionedConcurrencyConfigRequest", name: "PutProvisionedConcurrencyConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutProvisionedConcurrencyConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutProvisionedConcurrencyConfigResponse", name: "PutProvisionedConcurrencyConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutResourcePolicyRequest", name: "PutResourcePolicyRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutResourcePolicyResponse", name: "PutResourcePolicyResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    PutRuntimeManagementConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutRuntimeManagementConfigRequest", name: "PutRuntimeManagementConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    PutRuntimeManagementConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#PutRuntimeManagementConfigResponse", name: "PutRuntimeManagementConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    Qualifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Qualifier", name: "Qualifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(|[a-zA-Z0-9$_-]+)$", "smithy.api#tags" => ["feature:public"]})
    Queue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Queue", name: "Queue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#tags" => ["feature:public"]})
    Queues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Queues", name: "Queues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    RecursiveInvocationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RecursiveInvocationException", name: "RecursiveInvocationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    RecursiveLoop = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#RecursiveLoop", name: "RecursiveLoop", traits: {"smithy.api#tags" => ["feature:public"]})
    RemoveLayerVersionPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RemoveLayerVersionPermissionRequest", name: "RemoveLayerVersionPermissionRequest", traits: {"aws.api#data" => "permissions", "smithy.api#tags" => ["feature:public"]})
    RemovePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RemovePermissionRequest", name: "RemovePermissionRequest", traits: {"aws.api#data" => "permissions", "smithy.api#tags" => ["feature:public"]})
    ReplayChildren = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#ReplayChildren", name: "ReplayChildren", traits: {"smithy.api#tags" => ["feature:public"]})
    RequestTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RequestTooLargeException", name: "RequestTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413, "smithy.api#tags" => ["feature:public"]})
    ReservedConcurrentExecutions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#ReservedConcurrentExecutions", name: "ReservedConcurrentExecutions", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#tags" => ["feature:public"]})
    ResolvedS3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResolvedS3Object", name: "ResolvedS3Object", traits: {"smithy.api#tags" => ["feature:public"]})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$", "smithy.api#tags" => ["feature:public"]})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceConflictException", name: "ResourceConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404, "smithy.api#tags" => ["feature:public"]})
    ResourceNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ResourceNotReadyException", name: "ResourceNotReadyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#tags" => ["feature:public"]})
    ResponseStreamingInvocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ResponseStreamingInvocationType", name: "ResponseStreamingInvocationType", traits: {"smithy.api#tags" => ["feature:public"]})
    RetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#RetentionPeriodInDays", name: "RetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 90}, "smithy.api#tags" => ["feature:public"]})
    RetryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RetryDetails", name: "RetryDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    ReverseOrder = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#ReverseOrder", name: "ReverseOrder", traits: {"smithy.api#tags" => ["feature:public"]})
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#RevisionId", name: "RevisionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "smithy.api#tags" => ["feature:public"]})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$", "smithy.api#tags" => ["feature:public"]})
    Runtime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#Runtime", name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]})
    RuntimeVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#RuntimeVersionArn", name: "RuntimeVersionArn", traits: {"smithy.api#length" => {"min" => 26, "max" => 2048}, "smithy.api#pattern" => "^((arn:(aws[a-zA-Z-]*):lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}::runtime:.+)|(arn:(aws[a-zA-Z-]*):lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:runtime/[A-Za-z0-9_.-]{1,128}/version/[A-Za-z0-9_.-]{1,128}))$", "smithy.api#tags" => ["feature:public"]})
    RuntimeVersionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RuntimeVersionConfig", name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    RuntimeVersionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#RuntimeVersionError", name: "RuntimeVersionError", traits: {"smithy.api#tags" => ["feature:public"]})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$", "smithy.api#tags" => ["feature:public"]})
    S3FilesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#S3FilesConfig", name: "S3FilesConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    S3FilesMountConnectivityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#S3FilesMountConnectivityException", name: "S3FilesMountConnectivityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#tags" => ["feature:public"]})
    S3FilesMountFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#S3FilesMountFailureException", name: "S3FilesMountFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403, "smithy.api#tags" => ["feature:public"]})
    S3FilesMountTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#S3FilesMountTimeoutException", name: "S3FilesMountTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#tags" => ["feature:public"]})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$", "smithy.api#tags" => ["feature:public"]})
    S3ObjectStorageMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#S3ObjectStorageMode", name: "S3ObjectStorageMode", traits: {"smithy.api#tags" => ["feature:public"]})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$", "smithy.api#tags" => ["feature:public"]})
    ScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ScalingConfig", name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    SchemaRegistryEventRecordFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SchemaRegistryEventRecordFormat", name: "SchemaRegistryEventRecordFormat", traits: {"smithy.api#tags" => ["feature:public"]})
    SchemaRegistryUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SchemaRegistryUri", name: "SchemaRegistryUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\/*:_+=.@-]*$", "smithy.api#tags" => ["feature:public"]})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*$", "smithy.api#tags" => ["feature:public"]})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}, "smithy.api#tags" => ["feature:public"]})
    SelfManagedEventSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SelfManagedEventSource", name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]})
    SelfManagedKafkaEventSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SelfManagedKafkaEventSourceConfig", name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackFailureRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackFailureRequest", name: "SendDurableExecutionCallbackFailureRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackFailureResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackFailureResponse", name: "SendDurableExecutionCallbackFailureResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackHeartbeatRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackHeartbeatRequest", name: "SendDurableExecutionCallbackHeartbeatRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackHeartbeatResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackHeartbeatResponse", name: "SendDurableExecutionCallbackHeartbeatResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackSuccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackSuccessRequest", name: "SendDurableExecutionCallbackSuccessRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    SendDurableExecutionCallbackSuccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SendDurableExecutionCallbackSuccessResponse", name: "SendDurableExecutionCallbackSuccessResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    SensitiveStringOnServerOnly = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SensitiveStringOnServerOnly", name: "SensitiveStringOnServerOnly", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#tags" => ["feature:public"]})
    SerializedRequestEntityTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SerializedRequestEntityTooLargeException", name: "SerializedRequestEntityTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413, "smithy.api#tags" => ["feature:public"]})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#tags" => ["feature:public"]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402, "smithy.api#tags" => ["feature:public"]})
    SigningProfileVersionArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SigningProfileVersionArns", name: "SigningProfileVersionArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#tags" => ["feature:public"]})
    SnapStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStart", name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]})
    SnapStartApplyOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SnapStartApplyOn", name: "SnapStartApplyOn", traits: {"smithy.api#tags" => ["feature:public"]})
    SnapStartException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartException", name: "SnapStartException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    SnapStartNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartNotReadyException", name: "SnapStartNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    SnapStartOptimizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SnapStartOptimizationStatus", name: "SnapStartOptimizationStatus", traits: {"smithy.api#tags" => ["feature:public"]})
    SnapStartRegenerationFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartRegenerationFailureException", name: "SnapStartRegenerationFailureException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    SnapStartResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartResponse", name: "SnapStartResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    SnapStartTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SnapStartTimeoutException", name: "SnapStartTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408, "smithy.api#tags" => ["feature:public"]})
    SourceAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SourceAccessConfiguration", name: "SourceAccessConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    SourceAccessConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SourceAccessConfigurations", name: "SourceAccessConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 23}, "smithy.api#tags" => ["feature:public"]})
    SourceAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SourceAccessType", name: "SourceAccessType", traits: {"smithy.api#tags" => ["feature:public"]})
    SourceOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SourceOwner", name: "SourceOwner", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$", "smithy.api#tags" => ["feature:public"]})
    StackTraceEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#StackTraceEntries", name: "StackTraceEntries", traits: {"smithy.api#tags" => ["feature:public"]})
    StackTraceEntry = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#StackTraceEntry", name: "StackTraceEntry", traits: {"smithy.api#sensitive" => {}, "smithy.api#tags" => ["feature:public"]})
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#State", name: "State", traits: {"smithy.api#tags" => ["feature:public"]})
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#StateReason", name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]})
    StateReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#StateReasonCode", name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]})
    StatementId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#StatementId", name: "StatementId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([a-zA-Z0-9-_]+)$", "smithy.api#tags" => ["feature:public"]})
    StepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StepDetails", name: "StepDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    StepFailedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StepFailedDetails", name: "StepFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    StepOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StepOptions", name: "StepOptions", traits: {"smithy.api#tags" => ["feature:public"]})
    StepStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StepStartedDetails", name: "StepStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    StepSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StepSucceededDetails", name: "StepSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    StopDurableExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StopDurableExecutionRequest", name: "StopDurableExecutionRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    StopDurableExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#StopDurableExecutionResponse", name: "StopDurableExecutionResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#String", name: "String", traits: {"smithy.api#tags" => ["feature:public"]})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}, "smithy.api#tags" => ["feature:public"]})
    SubnetIPAddressLimitReachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#SubnetIPAddressLimitReachedException", name: "SubnetIPAddressLimitReachedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502, "smithy.api#tags" => ["feature:public"]})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^subnet-[0-9a-z]*$", "smithy.api#tags" => ["feature:public"]})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#tags" => ["feature:public"]})
    SystemLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#SystemLogLevel", name: "SystemLogLevel", traits: {"smithy.api#tags" => ["feature:public"]})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#tags" => ["feature:public"]})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#TagKeyList", name: "TagKeyList", traits: {"smithy.api#tags" => ["feature:public"]})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#tags" => ["feature:public"]})
    TaggableResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TaggableResource", name: "TaggableResource", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:(function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?|code-signing-config:csc-[a-z0-9]{17}|event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}|(capacity-provider|network-connector):[a-zA-Z0-9-_]{1,64})$", "smithy.api#tags" => ["feature:public"]})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambda#Tags", name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]})
    TagsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TagsError", name: "TagsError", traits: {"smithy.api#tags" => ["feature:public"]})
    TagsErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagsErrorCode", name: "TagsErrorCode", traits: {"smithy.api#length" => {"min" => 10, "max" => 21}, "smithy.api#pattern" => "^[A-Za-z]+Exception$", "smithy.api#tags" => ["feature:public"]})
    TagsErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TagsErrorMessage", name: "TagsErrorMessage", traits: {"smithy.api#length" => {"min" => 84, "max" => 1000}, "smithy.api#pattern" => "^.*$", "smithy.api#tags" => ["feature:public"]})
    TargetTrackingScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TargetTrackingScalingPolicy", name: "TargetTrackingScalingPolicy", traits: {"smithy.api#tags" => ["feature:public"]})
    TenancyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TenancyConfig", name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    TenantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#TenantId", name: "TenantId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\._:\\/=+\\-@ ]+$", "smithy.api#tags" => ["feature:public", "feature:public"]})
    TenantIsolationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#TenantIsolationMode", name: "TenantIsolationMode", traits: {"smithy.api#tags" => ["feature:public"]})
    ThrottleReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#ThrottleReason", name: "ThrottleReason", traits: {"smithy.api#tags" => ["feature:public"]})
    Timeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#Timeout", name: "Timeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 5400}, "smithy.api#tags" => ["feature:public"]})
    Timestamp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Timestamp", name: "Timestamp", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^.*$", "smithy.api#tags" => ["feature:public"]})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#tags" => ["feature:public"]})
    Topic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Topic", name: "Topic", traits: {"smithy.api#length" => {"min" => 1, "max" => 249}, "smithy.api#pattern" => "^[^.]([a-zA-Z0-9\\-_.]+)$", "smithy.api#tags" => ["feature:public"]})
    Topics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambda#Topics", name: "Topics", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    TraceHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TraceHeader", name: "TraceHeader", traits: {"smithy.api#tags" => ["feature:public"]})
    TracingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TracingConfig", name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    TracingConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#TracingConfigResponse", name: "TracingConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    TracingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#TracingMode", name: "TracingMode", traits: {"smithy.api#tags" => ["feature:public"]})
    Truncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lambda#Truncated", name: "Truncated", traits: {"smithy.api#tags" => ["feature:public"]})
    TumblingWindowInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#TumblingWindowInSeconds", name: "TumblingWindowInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}, "smithy.api#tags" => ["feature:public"]})
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[ a-zA-Z0-9-\\/*:_+=.@-]*$", "smithy.api#tags" => ["feature:public"]})
    UUIDString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#UUIDString", name: "UUIDString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#tags" => ["feature:public"]})
    UnqualifiedFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#UnqualifiedFunctionName", name: "UnqualifiedFunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)$", "smithy.api#tags" => ["feature:public"]})
    UnreservedConcurrentExecutions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambda#UnreservedConcurrentExecutions", name: "UnreservedConcurrentExecutions", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#tags" => ["feature:public"]})
    UnsupportedMediaTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UnsupportedMediaTypeException", name: "UnsupportedMediaTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415, "smithy.api#tags" => ["feature:public"]})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateAliasOutput", name: "UpdateAliasOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateAliasRequest", name: "UpdateAliasRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCapacityProviderRequest", name: "UpdateCapacityProviderRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCapacityProviderResponse", name: "UpdateCapacityProviderResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateCodeSigningConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCodeSigningConfigRequest", name: "UpdateCodeSigningConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateCodeSigningConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateCodeSigningConfigResponse", name: "UpdateCodeSigningConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateEventSourceMappingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateEventSourceMappingOutput", name: "UpdateEventSourceMappingOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateEventSourceMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateEventSourceMappingRequest", name: "UpdateEventSourceMappingRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionCodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionCodeOutput", name: "UpdateFunctionCodeOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionCodeRequest", name: "UpdateFunctionCodeRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionConfigurationOutput", name: "UpdateFunctionConfigurationOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionConfigurationRequest", name: "UpdateFunctionConfigurationRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionEventInvokeConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionEventInvokeConfigOutput", name: "UpdateFunctionEventInvokeConfigOutput", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionEventInvokeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionEventInvokeConfigRequest", name: "UpdateFunctionEventInvokeConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionUrlConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionUrlConfigRequest", name: "UpdateFunctionUrlConfigRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateFunctionUrlConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#UpdateFunctionUrlConfigResponse", name: "UpdateFunctionUrlConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateRuntimeOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambda#UpdateRuntimeOn", name: "UpdateRuntimeOn", traits: {"smithy.api#tags" => ["feature:public"]})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(\\$LATEST|[0-9]+)$", "smithy.api#tags" => ["feature:public"]})
    VersionWithLatestPublished = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#VersionWithLatestPublished", name: "VersionWithLatestPublished", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(\\$LATEST(\\.PUBLISHED)?|[0-9]+)$", "smithy.api#tags" => ["feature:public"]})
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#VpcConfig", name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]})
    VpcConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#VpcConfigResponse", name: "VpcConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#VpcId", name: "VpcId", traits: {"smithy.api#tags" => ["feature:public"]})
    WaitCancelledDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#WaitCancelledDetails", name: "WaitCancelledDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    WaitDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#WaitDetails", name: "WaitDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    WaitOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#WaitOptions", name: "WaitOptions", traits: {"smithy.api#tags" => ["feature:public"]})
    WaitStartedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#WaitStartedDetails", name: "WaitStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    WaitSucceededDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambda#WaitSucceededDetails", name: "WaitSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]})
    Weight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lambda#Weight", name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0, "max" => 1.0}, "smithy.api#tags" => ["feature:public"]})
    WorkingDirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#WorkingDirectory", name: "WorkingDirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#tags" => ["feature:public"]})
    XAmznTraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambda#XAmznTraceId", name: "XAmznTraceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#tags" => ["feature:public"]})

    AccountLimit.add_member(:total_code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalCodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountLimit.add_member(:code_size_unzipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSizeUnzipped", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountLimit.add_member(:code_size_zipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSizeZipped", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountLimit.add_member(:concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ConcurrentExecutions", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountLimit.add_member(:unreserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: UnreservedConcurrentExecutions, name: "UnreservedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    AccountLimit.type = Types::AccountLimit
    AccountUsage.add_member(:total_code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalCodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountUsage.add_member(:function_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FunctionCount", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    AccountUsage.type = Types::AccountUsage
    AddLayerVersionPermissionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerPermissionAllowedAction, name: "Action", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerPermissionAllowedPrincipal, name: "Principal", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "OrganizationId", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId", "smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionRequest.type = Types::AddLayerVersionPermissionRequest
    AddLayerVersionPermissionResponse.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Statement", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddLayerVersionPermissionResponse.type = Types::AddLayerVersionPermissionResponse
    AddPermissionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:function_url_auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "FunctionUrlAuthType", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:invoked_via_function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokedViaFunctionUrl, name: "InvokedViaFunctionUrl", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceOwner, name: "SourceAccount", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:event_source_token, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceToken, name: "EventSourceToken", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.add_member(:principal_org_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrgID, name: "PrincipalOrgID", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionRequest.type = Types::AddPermissionRequest
    AddPermissionResponse.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Statement", traits: {"smithy.api#tags" => ["feature:public"]}))
    AddPermissionResponse.type = Types::AddPermissionResponse
    AdditionalVersionWeights.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalVersion, name: "key", traits: {"smithy.api#tags" => ["feature:public"]}))
    AdditionalVersionWeights.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "value", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasConfiguration.type = Types::AliasConfiguration
    AliasLimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasLimitExceededException.type = Types::AliasLimitExceededException
    AliasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasConfiguration, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasRoutingConfiguration.add_member(:additional_version_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalVersionWeights, name: "AdditionalVersionWeights", traits: {"smithy.api#tags" => ["feature:public"]}))
    AliasRoutingConfiguration.type = Types::AliasRoutingConfiguration
    AllowMethodsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    AllowOriginsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    AllowedPublishers.add_member(:signing_profile_version_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningProfileVersionArns, name: "SigningProfileVersionArns", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    AllowedPublishers.type = Types::AllowedPublishers
    AmazonManagedKafkaEventSourceConfig.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupId", traits: {"smithy.api#tags" => ["feature:public"]}))
    AmazonManagedKafkaEventSourceConfig.add_member(:schema_registry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryConfig, name: "SchemaRegistryConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    AmazonManagedKafkaEventSourceConfig.type = Types::AmazonManagedKafkaEventSourceConfig
    ApplicationLogLevel.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Trace", traits: {"smithy.api#enumValue" => "TRACE", "smithy.api#tags" => ["feature:public"]}))
    ApplicationLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debug", traits: {"smithy.api#enumValue" => "DEBUG", "smithy.api#tags" => ["feature:public"]}))
    ApplicationLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Info", traits: {"smithy.api#enumValue" => "INFO", "smithy.api#tags" => ["feature:public"]}))
    ApplicationLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "WARN", "smithy.api#tags" => ["feature:public"]}))
    ApplicationLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Error", traits: {"smithy.api#enumValue" => "ERROR", "smithy.api#tags" => ["feature:public"]}))
    ApplicationLogLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Fatal", traits: {"smithy.api#enumValue" => "FATAL", "smithy.api#tags" => ["feature:public"]}))
    Architecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "x86_64", traits: {"smithy.api#enumValue" => "x86_64", "smithy.api#tags" => ["feature:public"]}))
    Architecture.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "arm64", traits: {"smithy.api#enumValue" => "arm64", "smithy.api#tags" => ["feature:public"]}))
    ArchitecturesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackDetails.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackId, name: "CallbackId", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Result", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackDetails.type = Types::CallbackDetails
    CallbackFailedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CallbackFailedDetails.type = Types::CallbackFailedDetails
    CallbackOptions.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "TimeoutSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 99999999}, "smithy.api#tags" => ["feature:public"]}))
    CallbackOptions.add_member(:heartbeat_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "HeartbeatTimeoutSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 99999999}, "smithy.api#tags" => ["feature:public"]}))
    CallbackOptions.type = Types::CallbackOptions
    CallbackStartedDetails.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackId, name: "CallbackId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CallbackStartedDetails.add_member(:heartbeat_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "HeartbeatTimeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackStartedDetails.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackStartedDetails.type = Types::CallbackStartedDetails
    CallbackSucceededDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResult, name: "Result", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CallbackSucceededDetails.type = Types::CallbackSucceededDetails
    CallbackTimedOutDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CallbackTimedOutDetails.type = Types::CallbackTimedOutDetails
    CallbackTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CallbackTimeoutException.type = Types::CallbackTimeoutException
    CapacityProvider.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderArn, name: "CapacityProviderArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderState, name: "State", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderVpcConfig, name: "VpcConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:permissions_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderPermissionsConfig, name: "PermissionsConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirements, name: "InstanceRequirements", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:capacity_provider_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderScalingConfig, name: "CapacityProviderScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KmsKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "PropagateTags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.add_member(:telemetry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderTelemetryConfig, name: "TelemetryConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProvider.type = Types::CapacityProvider
    CapacityProviderConfig.add_member(:lambda_managed_instances_capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaManagedInstancesCapacityProviderConfig, name: "LambdaManagedInstancesCapacityProviderConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderConfig.type = Types::CapacityProviderConfig
    CapacityProviderLimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderLimitExceededException.type = Types::CapacityProviderLimitExceededException
    CapacityProviderLoggingConfig.add_member(:system_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemLogLevel, name: "SystemLogLevel", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderLoggingConfig.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroup, name: "LogGroup", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderLoggingConfig.type = Types::CapacityProviderLoggingConfig
    CapacityProviderPermissionsConfig.add_member(:capacity_provider_operator_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "CapacityProviderOperatorRoleArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderPermissionsConfig.type = Types::CapacityProviderPermissionsConfig
    CapacityProviderPredefinedMetricType.add_member(:lambda_capacity_provider_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaCapacityProviderAverageCPUUtilization", traits: {"smithy.api#enumValue" => "LambdaCapacityProviderAverageCPUUtilization", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingConfig.add_member(:max_v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderMaxVCpuCount, name: "MaxVCpuCount", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingConfig.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderScalingMode, name: "ScalingMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingConfig.add_member(:scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderScalingPoliciesList, name: "ScalingPolicies", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingConfig.type = Types::CapacityProviderScalingConfig
    CapacityProviderScalingMode.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "Auto", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Manual", traits: {"smithy.api#enumValue" => "Manual", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderScalingPoliciesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingPolicy, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderSecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting", "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderSubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderTelemetryConfig.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CapacityProviderTelemetryConfig.type = Types::CapacityProviderTelemetryConfig
    CapacityProviderVpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderSubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderVpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderSecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CapacityProviderVpcConfig.type = Types::CapacityProviderVpcConfig
    CapacityProvidersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Result", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeDetails.type = Types::ChainedInvokeDetails
    ChainedInvokeFailedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeFailedDetails.type = Types::ChainedInvokeFailedDetails
    ChainedInvokeOptions.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeOptions.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeOptions.add_member(:x_amzn_trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XAmznTraceId, name: "XAmznTraceId", traits: {"smithy.api#tags" => ["feature:dar-chained-invoke-trace"]}))
    ChainedInvokeOptions.type = Types::ChainedInvokeOptions
    ChainedInvokeStartedDetails.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStartedDetails.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStartedDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: EventInput, name: "Input", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStartedDetails.add_member(:executed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWithLatestPublished, name: "ExecutedVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStartedDetails.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStartedDetails.type = Types::ChainedInvokeStartedDetails
    ChainedInvokeStoppedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeStoppedDetails.type = Types::ChainedInvokeStoppedDetails
    ChainedInvokeSucceededDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResult, name: "Result", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeSucceededDetails.type = Types::ChainedInvokeSucceededDetails
    ChainedInvokeTimedOutDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ChainedInvokeTimedOutDetails.type = Types::ChainedInvokeTimedOutDetails
    CheckpointDurableExecutionRequest.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionRequest.add_member(:checkpoint_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointToken, name: "CheckpointToken", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionRequest.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationUpdates, name: "Updates", traits: {"smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionRequest.type = Types::CheckpointDurableExecutionRequest
    CheckpointDurableExecutionResponse.add_member(:checkpoint_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointToken, name: "CheckpointToken", traits: {"smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionResponse.add_member(:new_execution_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointUpdatedExecutionState, name: "NewExecutionState", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CheckpointDurableExecutionResponse.type = Types::CheckpointDurableExecutionResponse
    CheckpointUpdatedExecutionState.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: Operations, name: "Operations", traits: {"smithy.api#tags" => ["feature:public"]}))
    CheckpointUpdatedExecutionState.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    CheckpointUpdatedExecutionState.type = Types::CheckpointUpdatedExecutionState
    CodeArtifactUserDeletedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserDeletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserDeletedException.type = Types::CodeArtifactUserDeletedException
    CodeArtifactUserFailedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserFailedException.type = Types::CodeArtifactUserFailedException
    CodeArtifactUserPendingException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserPendingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeArtifactUserPendingException.type = Types::CodeArtifactUserPendingException
    CodeSigningConfig.add_member(:code_signing_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigId, name: "CodeSigningConfigId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfig.type = Types::CodeSigningConfig
    CodeSigningConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfigNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfigNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeSigningConfigNotFoundException.type = Types::CodeSigningConfigNotFoundException
    CodeSigningPolicies.add_member(:untrusted_artifact_on_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicy, name: "UntrustedArtifactOnDeployment", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeSigningPolicies.type = Types::CodeSigningPolicies
    CodeSigningPolicy.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "Warn", "smithy.api#tags" => ["feature:public"]}))
    CodeSigningPolicy.add_member(:enforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enforce", traits: {"smithy.api#enumValue" => "Enforce", "smithy.api#tags" => ["feature:public"]}))
    CodeStorageExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeStorageExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeStorageExceededException.type = Types::CodeStorageExceededException
    CodeVerificationFailedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeVerificationFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    CodeVerificationFailedException.type = Types::CodeVerificationFailedException
    CompatibleArchitectures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    CompatibleRuntimes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    Concurrency.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    Concurrency.type = Types::Concurrency
    ContextDetails.add_member(:replay_children, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayChildren, name: "ReplayChildren", traits: {"smithy.api#tags" => ["feature:public"]}))
    ContextDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Result", traits: {"smithy.api#tags" => ["feature:public"]}))
    ContextDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    ContextDetails.type = Types::ContextDetails
    ContextFailedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ContextFailedDetails.type = Types::ContextFailedDetails
    ContextOptions.add_member(:replay_children, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplayChildren, name: "ReplayChildren", traits: {"smithy.api#tags" => ["feature:public"]}))
    ContextOptions.type = Types::ContextOptions
    ContextStartedDetails.type = Types::ContextStartedDetails
    ContextSucceededDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResult, name: "Result", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ContextSucceededDetails.type = Types::ContextSucceededDetails
    Cors.add_member(:allow_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowCredentials, name: "AllowCredentials", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.add_member(:allow_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeadersList, name: "AllowHeaders", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.add_member(:allow_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowMethodsList, name: "AllowMethods", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.add_member(:allow_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowOriginsList, name: "AllowOrigins", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.add_member(:expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HeadersList, name: "ExposeHeaders", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.add_member(:max_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAge, name: "MaxAge", traits: {"smithy.api#tags" => ["feature:public"]}))
    Cors.type = Types::Cors
    CreateAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias", "smithy.api#tags" => ["feature:public"]}))
    CreateAliasRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWithLatestPublished, name: "FunctionVersion", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasRequest.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateAliasRequest.type = Types::CreateAliasRequest
    CreateCapacityProviderRequest.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderName, name: "CapacityProviderName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderVpcConfig, name: "VpcConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:permissions_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderPermissionsConfig, name: "PermissionsConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirements, name: "InstanceRequirements", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:capacity_provider_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderScalingConfig, name: "CapacityProviderScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArnNonEmpty, name: "KmsKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "PropagateTags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.add_member(:telemetry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderTelemetryConfig, name: "TelemetryConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderRequest.type = Types::CreateCapacityProviderRequest
    CreateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "CapacityProvider", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCapacityProviderResponse.type = Types::CreateCapacityProviderResponse
    CreateCodeSigningConfigRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCodeSigningConfigRequest.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCodeSigningConfigRequest.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCodeSigningConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateCodeSigningConfigRequest.type = Types::CreateCodeSigningConfigRequest
    CreateCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateCodeSigningConfigResponse.type = Types::CreateCodeSigningConfigResponse
    CreateEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingOutput.type = Types::CreateEventSourceMappingOutput
    CreateEventSourceMappingRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateEventSourceMappingRequest.type = Types::CreateEventSourceMappingRequest
    CreateFunctionOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionOutput.type = Types::CreateFunctionOutput
    CreateFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionCode, name: "Code", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Publish", traits: {"smithy.api#default" => false, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:publish_to, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersionLatestPublished, name: "PublishTo", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfig, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStart, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionRequest.type = Types::CreateFunctionRequest
    CreateFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigRequest.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigRequest.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigRequest.type = Types::CreateFunctionUrlConfigRequest
    CreateFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateFunctionUrlConfigResponse.type = Types::CreateFunctionUrlConfigResponse
    DeadLetterConfig.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "TargetArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeadLetterConfig.type = Types::DeadLetterConfig
    DeleteAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias", "smithy.api#tags" => ["feature:public"]}))
    DeleteAliasRequest.type = Types::DeleteAliasRequest
    DeleteCapacityProviderRequest.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderName, name: "CapacityProviderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteCapacityProviderRequest.type = Types::DeleteCapacityProviderRequest
    DeleteCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "CapacityProvider", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteCapacityProviderResponse.type = Types::DeleteCapacityProviderResponse
    DeleteCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteCodeSigningConfigRequest.type = Types::DeleteCodeSigningConfigRequest
    DeleteCodeSigningConfigResponse.type = Types::DeleteCodeSigningConfigResponse
    DeleteEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingOutput.type = Types::DeleteEventSourceMappingOutput
    DeleteEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteEventSourceMappingRequest.type = Types::DeleteEventSourceMappingRequest
    DeleteFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionCodeSigningConfigRequest.type = Types::DeleteFunctionCodeSigningConfigRequest
    DeleteFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionConcurrencyRequest.type = Types::DeleteFunctionConcurrencyRequest
    DeleteFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionEventInvokeConfigRequest.type = Types::DeleteFunctionEventInvokeConfigRequest
    DeleteFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionResponse.type = Types::DeleteFunctionResponse
    DeleteFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    DeleteFunctionUrlConfigRequest.type = Types::DeleteFunctionUrlConfigRequest
    DeleteLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteLayerVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteLayerVersionRequest.type = Types::DeleteLayerVersionRequest
    DeleteProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteProvisionedConcurrencyConfigRequest.type = Types::DeleteProvisionedConcurrencyConfigRequest
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId", "smithy.api#tags" => ["feature:public"]}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DestinationConfig.add_member(:on_success, ::Smithy::Schema::Shapes::MemberShape.new(target: OnSuccess, name: "OnSuccess", traits: {"smithy.api#tags" => ["feature:public"]}))
    DestinationConfig.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnFailure, name: "OnFailure", traits: {"smithy.api#tags" => ["feature:public"]}))
    DestinationConfig.type = Types::DestinationConfig
    DirectS3Read.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED", "smithy.api#tags" => ["feature:public"]}))
    DirectS3Read.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED", "smithy.api#tags" => ["feature:public"]}))
    DirectS3Read.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO", "smithy.api#tags" => ["feature:public"]}))
    DocumentDBEventSourceConfig.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, name: "DatabaseName", traits: {"smithy.api#tags" => ["feature:public"]}))
    DocumentDBEventSourceConfig.add_member(:collection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectionName, name: "CollectionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    DocumentDBEventSourceConfig.add_member(:full_document, ::Smithy::Schema::Shapes::MemberShape.new(target: FullDocument, name: "FullDocument", traits: {"smithy.api#tags" => ["feature:public"]}))
    DocumentDBEventSourceConfig.type = Types::DocumentDBEventSourceConfig
    DurableConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    DurableConfig.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionPeriodInDays", traits: {"smithy.api#tags" => ["feature:public"]}))
    DurableConfig.add_member(:execution_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimeout, name: "ExecutionTimeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    DurableConfig.type = Types::DurableConfig
    DurableExecutionAlreadyStartedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    DurableExecutionAlreadyStartedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    DurableExecutionAlreadyStartedException.type = Types::DurableExecutionAlreadyStartedException
    DurableExecutions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Execution, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2AccessDeniedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2AccessDeniedException.type = Types::EC2AccessDeniedException
    EC2ThrottledException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2ThrottledException.type = Types::EC2ThrottledException
    EC2UnexpectedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2UnexpectedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2UnexpectedException.add_member(:ec2_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    EC2UnexpectedException.type = Types::EC2UnexpectedException
    EFSIOException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSIOException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSIOException.type = Types::EFSIOException
    EFSMountConnectivityException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountConnectivityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountConnectivityException.type = Types::EFSMountConnectivityException
    EFSMountFailureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountFailureException.type = Types::EFSMountFailureException
    EFSMountTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EFSMountTimeoutException.type = Types::EFSMountTimeoutException
    ENILimitReachedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ENILimitReachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ENILimitReachedException.type = Types::ENILimitReachedException
    ENINotReadyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ENINotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ENINotReadyException.type = Types::ENINotReadyException
    EndPointType.add_member(:kafka_bootstrap_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KAFKA_BOOTSTRAP_SERVERS", traits: {"smithy.api#enumValue" => "KAFKA_BOOTSTRAP_SERVERS", "smithy.api#tags" => ["feature:public"]}))
    EndpointLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    Endpoints.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EndPointType, name: "key", traits: {"smithy.api#tags" => ["feature:public"]}))
    Endpoints.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointLists, name: "value", traits: {"smithy.api#tags" => ["feature:public"]}))
    Environment.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "Variables", traits: {"smithy.api#tags" => ["feature:public"]}))
    Environment.type = Types::Environment
    EnvironmentError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    EnvironmentError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    EnvironmentError.type = Types::EnvironmentError
    EnvironmentResponse.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "Variables", traits: {"smithy.api#tags" => ["feature:public"]}))
    EnvironmentResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    EnvironmentResponse.type = Types::EnvironmentResponse
    EnvironmentVariables.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableName, name: "key", traits: {"smithy.api#tags" => ["feature:public"]}))
    EnvironmentVariables.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableValue, name: "value", traits: {"smithy.api#tags" => ["feature:public"]}))
    EphemeralStorage.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorageSize, name: "Size", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    EphemeralStorage.type = Types::EphemeralStorage
    ErrorObject.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage", traits: {"smithy.api#tags" => ["feature:public"]}))
    ErrorObject.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorType, name: "ErrorType", traits: {"smithy.api#tags" => ["feature:public"]}))
    ErrorObject.add_member(:error_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorData, name: "ErrorData", traits: {"smithy.api#tags" => ["feature:public"]}))
    ErrorObject.add_member(:stack_trace, ::Smithy::Schema::Shapes::MemberShape.new(target: StackTraceEntries, name: "StackTrace", traits: {"smithy.api#tags" => ["feature:public"]}))
    ErrorObject.type = Types::ErrorObject
    Event.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "EventType", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSubType, name: "SubType", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "EventId", traits: {"smithy.api#default" => 1, "smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "EventTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "ParentId", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:execution_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStartedDetails, name: "ExecutionStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:execution_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSucceededDetails, name: "ExecutionSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:execution_failed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionFailedDetails, name: "ExecutionFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:execution_timed_out_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimedOutDetails, name: "ExecutionTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:execution_stopped_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStoppedDetails, name: "ExecutionStoppedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:context_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextStartedDetails, name: "ContextStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:context_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextSucceededDetails, name: "ContextSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:context_failed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextFailedDetails, name: "ContextFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:wait_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitStartedDetails, name: "WaitStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:wait_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitSucceededDetails, name: "WaitSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:wait_cancelled_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitCancelledDetails, name: "WaitCancelledDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:step_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStartedDetails, name: "StepStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:step_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StepSucceededDetails, name: "StepSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:step_failed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StepFailedDetails, name: "StepFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:chained_invoke_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeStartedDetails, name: "ChainedInvokeStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:chained_invoke_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeSucceededDetails, name: "ChainedInvokeSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:chained_invoke_failed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeFailedDetails, name: "ChainedInvokeFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:chained_invoke_timed_out_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeTimedOutDetails, name: "ChainedInvokeTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:chained_invoke_stopped_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeStoppedDetails, name: "ChainedInvokeStoppedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:callback_started_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackStartedDetails, name: "CallbackStartedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:callback_succeeded_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackSucceededDetails, name: "CallbackSucceededDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:callback_failed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackFailedDetails, name: "CallbackFailedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:callback_timed_out_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackTimedOutDetails, name: "CallbackTimedOutDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.add_member(:invocation_completed_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationCompletedDetails, name: "InvocationCompletedDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Event.type = Types::Event
    EventError.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Payload", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventError.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "Truncated", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventError.type = Types::EventError
    EventInput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPayload, name: "Payload", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventInput.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "Truncated", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventInput.type = Types::EventInput
    EventResult.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Payload", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventResult.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Truncated, name: "Truncated", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventResult.type = Types::EventResult
    EventSourceMappingConfiguration.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingConfiguration.type = Types::EventSourceMappingConfiguration
    EventSourceMappingLoggingConfig.add_member(:system_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingSystemLogLevel, name: "SystemLogLevel", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingLoggingConfig.type = Types::EventSourceMappingLoggingConfig
    EventSourceMappingMetric.add_member(:event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventCount", traits: {"smithy.api#enumValue" => "EventCount", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingMetric.add_member(:error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ErrorCount", traits: {"smithy.api#enumValue" => "ErrorCount", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingMetric.add_member(:kafka_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KafkaMetrics", traits: {"smithy.api#enumValue" => "KafkaMetrics", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingMetricList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetric, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingMetricsConfig.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricList, name: "Metrics", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingMetricsConfig.type = Types::EventSourceMappingMetricsConfig
    EventSourceMappingSystemLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debug", traits: {"smithy.api#enumValue" => "DEBUG", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingSystemLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Info", traits: {"smithy.api#enumValue" => "INFO", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingSystemLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "WARN", "smithy.api#tags" => ["feature:public"]}))
    EventSourceMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingConfiguration, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    EventSourcePosition.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON", "smithy.api#tags" => ["feature:public"]}))
    EventSourcePosition.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST", "smithy.api#tags" => ["feature:public"]}))
    EventSourcePosition.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:execution_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionStarted", traits: {"smithy.api#enumValue" => "ExecutionStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:execution_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionSucceeded", traits: {"smithy.api#enumValue" => "ExecutionSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:execution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionFailed", traits: {"smithy.api#enumValue" => "ExecutionFailed", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:execution_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionTimedOut", traits: {"smithy.api#enumValue" => "ExecutionTimedOut", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:execution_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecutionStopped", traits: {"smithy.api#enumValue" => "ExecutionStopped", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:context_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContextStarted", traits: {"smithy.api#enumValue" => "ContextStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:context_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContextSucceeded", traits: {"smithy.api#enumValue" => "ContextSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:context_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContextFailed", traits: {"smithy.api#enumValue" => "ContextFailed", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:wait_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitStarted", traits: {"smithy.api#enumValue" => "WaitStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:wait_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitSucceeded", traits: {"smithy.api#enumValue" => "WaitSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:wait_cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WaitCancelled", traits: {"smithy.api#enumValue" => "WaitCancelled", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:step_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepStarted", traits: {"smithy.api#enumValue" => "StepStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:step_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepSucceeded", traits: {"smithy.api#enumValue" => "StepSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:step_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepFailed", traits: {"smithy.api#enumValue" => "StepFailed", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:chained_invoke_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChainedInvokeStarted", traits: {"smithy.api#enumValue" => "ChainedInvokeStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:chained_invoke_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChainedInvokeSucceeded", traits: {"smithy.api#enumValue" => "ChainedInvokeSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:chained_invoke_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChainedInvokeFailed", traits: {"smithy.api#enumValue" => "ChainedInvokeFailed", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:chained_invoke_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChainedInvokeTimedOut", traits: {"smithy.api#enumValue" => "ChainedInvokeTimedOut", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:chained_invoke_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChainedInvokeStopped", traits: {"smithy.api#enumValue" => "ChainedInvokeStopped", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:callback_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallbackStarted", traits: {"smithy.api#enumValue" => "CallbackStarted", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:callback_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallbackSucceeded", traits: {"smithy.api#enumValue" => "CallbackSucceeded", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:callback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallbackFailed", traits: {"smithy.api#enumValue" => "CallbackFailed", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:callback_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallbackTimedOut", traits: {"smithy.api#enumValue" => "CallbackTimedOut", "smithy.api#tags" => ["feature:public"]}))
    EventType.add_member(:invocation_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvocationCompleted", traits: {"smithy.api#enumValue" => "InvocationCompleted", "smithy.api#tags" => ["feature:public"]}))
    Events.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:durable_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionName, name: "DurableExecutionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "Status", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "EndTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    Execution.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    Execution.type = Types::Execution
    ExecutionDetails.add_member(:input_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPayload, name: "InputPayload", traits: {"smithy.api#tags" => ["feature:public"]}))
    ExecutionDetails.type = Types::ExecutionDetails
    ExecutionFailedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ExecutionFailedDetails.type = Types::ExecutionFailedDetails
    ExecutionStartedDetails.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: EventInput, name: "Input", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ExecutionStartedDetails.add_member(:execution_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "ExecutionTimeout", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ExecutionStartedDetails.type = Types::ExecutionStartedDetails
    ExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING", "smithy.api#tags" => ["feature:public"]}))
    ExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED", "smithy.api#tags" => ["feature:public"]}))
    ExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED", "smithy.api#tags" => ["feature:public"]}))
    ExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT", "smithy.api#tags" => ["feature:public"]}))
    ExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED", "smithy.api#tags" => ["feature:public"]}))
    ExecutionStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ExecutionStoppedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ExecutionStoppedDetails.type = Types::ExecutionStoppedDetails
    ExecutionSucceededDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResult, name: "Result", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ExecutionSucceededDetails.type = Types::ExecutionSucceededDetails
    ExecutionTimedOutDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    ExecutionTimedOutDetails.type = Types::ExecutionTimedOutDetails
    FileSystemConfig.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FileSystemConfig.add_member(:local_mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalMountPath, name: "LocalMountPath", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FileSystemConfig.add_member(:s3_files_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesConfig, name: "S3FilesConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FileSystemConfig.type = Types::FileSystemConfig
    FileSystemConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    Filter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: Pattern, name: "Pattern", traits: {"smithy.api#tags" => ["feature:public"]}))
    Filter.type = Types::Filter
    FilterCriteria.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters", traits: {"smithy.api#tags" => ["feature:public"]}))
    FilterCriteria.type = Types::FilterCriteria
    FilterCriteriaError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaErrorCode, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FilterCriteriaError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaErrorMessage, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    FilterCriteriaError.type = Types::FilterCriteriaError
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FullDocument.add_member(:update_lookup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UpdateLookup", traits: {"smithy.api#enumValue" => "UpdateLookup", "smithy.api#tags" => ["feature:public"]}))
    FullDocument.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "Default", "smithy.api#tags" => ["feature:public"]}))
    FunctionArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:s3_object_storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectStorageMode, name: "S3ObjectStorageMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "SourceKMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCode.type = Types::FunctionCode
    FunctionCodeLocation.add_member(:repository_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RepositoryType", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringOnServerOnly, name: "Location", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:resolved_image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResolvedImageUri", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:resolved_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedS3Object, name: "ResolvedS3Object", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "SourceKMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionCodeLocationError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocation.type = Types::FunctionCodeLocation
    FunctionCodeLocationError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionCodeLocationError.type = Types::FunctionCodeLocationError
    FunctionConfiguration.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionConfiguration.type = Types::FunctionConfiguration
    FunctionEventInvokeConfig.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionEventInvokeConfig.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionEventInvokeConfig.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionEventInvokeConfig.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionEventInvokeConfig.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionEventInvokeConfig.type = Types::FunctionEventInvokeConfig
    FunctionEventInvokeConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEventInvokeConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionResponseType.add_member(:report_batch_item_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReportBatchItemFailures", traits: {"smithy.api#enumValue" => "ReportBatchItemFailures", "smithy.api#tags" => ["feature:public"]}))
    FunctionResponseTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseType, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionScalingConfig.add_member(:min_execution_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionScalingConfigExecutionEnvironments, name: "MinExecutionEnvironments", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionScalingConfig.add_member(:max_execution_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionScalingConfigExecutionEnvironments, name: "MaxExecutionEnvironments", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionScalingConfig.type = Types::FunctionScalingConfig
    FunctionUrlAuthType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE", "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlAuthType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM", "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionUrlConfig.type = Types::FunctionUrlConfig
    FunctionUrlConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionVersion.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL", "smithy.api#tags" => ["feature:public"]}))
    FunctionVersionLatestPublished.add_member(:latest_published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_PUBLISHED", traits: {"smithy.api#enumValue" => "LATEST_PUBLISHED", "smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsByCapacityProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersionsByCapacityProviderListItem, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsByCapacityProviderListItem.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsByCapacityProviderListItem.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsByCapacityProviderListItem.type = Types::FunctionVersionsByCapacityProviderListItem
    FunctionVersionsPerCapacityProviderLimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsPerCapacityProviderLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    FunctionVersionsPerCapacityProviderLimitExceededException.type = Types::FunctionVersionsPerCapacityProviderLimitExceededException
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLimit, name: "AccountLimit", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAccountSettingsResponse.add_member(:account_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountUsage, name: "AccountUsage", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetAliasOutput.type = Types::GetAliasOutput
    GetAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias", "smithy.api#tags" => ["feature:public"]}))
    GetAliasRequest.type = Types::GetAliasRequest
    GetCapacityProviderRequest.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderName, name: "CapacityProviderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetCapacityProviderRequest.type = Types::GetCapacityProviderRequest
    GetCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "CapacityProvider", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetCapacityProviderResponse.type = Types::GetCapacityProviderResponse
    GetCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetCodeSigningConfigRequest.type = Types::GetCodeSigningConfigRequest
    GetCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetCodeSigningConfigResponse.type = Types::GetCodeSigningConfigResponse
    GetDurableExecutionHistoryRequest.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryRequest.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionData, name: "IncludeExecutionData", traits: {"smithy.api#httpQuery" => "IncludeExecutionData", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "MaxItems", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryRequest.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "ReverseOrder", traits: {"smithy.api#httpQuery" => "ReverseOrder", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryRequest.type = Types::GetDurableExecutionHistoryRequest
    GetDurableExecutionHistoryResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: Events, name: "Events", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionHistoryResponse.type = Types::GetDurableExecutionHistoryResponse
    GetDurableExecutionRequest.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionRequest.add_member(:include_execution_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeExecutionData, name: "IncludeExecutionData", traits: {"smithy.api#default" => true, "smithy.api#httpQuery" => "IncludeExecutionData", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionRequest.type = Types::GetDurableExecutionRequest
    GetDurableExecutionResponse.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:durable_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionName, name: "DurableExecutionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:input_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InputPayload, name: "InputPayload", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputPayload, name: "Result", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "Status", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "EndTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWithLatestPublished, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:trace_header, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceHeader, name: "TraceHeader", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:execution_data_included, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDataIncluded, name: "ExecutionDataIncluded", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionResponse.type = Types::GetDurableExecutionResponse
    GetDurableExecutionStateRequest.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateRequest.add_member(:checkpoint_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckpointToken, name: "CheckpointToken", traits: {"smithy.api#httpQuery" => "CheckpointToken", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "MaxItems", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateRequest.type = Types::GetDurableExecutionStateRequest
    GetDurableExecutionStateResponse.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: Operations, name: "Operations", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetDurableExecutionStateResponse.type = Types::GetDurableExecutionStateResponse
    GetEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingOutput.type = Types::GetEventSourceMappingOutput
    GetEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetEventSourceMappingRequest.type = Types::GetEventSourceMappingRequest
    GetFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionCodeSigningConfigRequest.type = Types::GetFunctionCodeSigningConfigRequest
    GetFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionCodeSigningConfigResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionCodeSigningConfigResponse.type = Types::GetFunctionCodeSigningConfigResponse
    GetFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionConcurrencyRequest.type = Types::GetFunctionConcurrencyRequest
    GetFunctionConcurrencyResponse.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConcurrencyResponse.type = Types::GetFunctionConcurrencyResponse
    GetFunctionConfigurationOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationOutput.type = Types::GetFunctionConfigurationOutput
    GetFunctionConfigurationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetFunctionConfigurationRequest.type = Types::GetFunctionConfigurationRequest
    GetFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigOutput.type = Types::GetFunctionEventInvokeConfigOutput
    GetFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetFunctionEventInvokeConfigRequest.type = Types::GetFunctionEventInvokeConfigRequest
    GetFunctionRecursionConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionRecursionConfigRequest.type = Types::GetFunctionRecursionConfigRequest
    GetFunctionRecursionConfigResponse.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionRecursionConfigResponse.type = Types::GetFunctionRecursionConfigResponse
    GetFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionResponse.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionCodeLocation, name: "Code", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionResponse.add_member(:tags_error, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsError, name: "TagsError", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionResponse.add_member(:concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: Concurrency, name: "Concurrency", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetFunctionScalingConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionScalingConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedFunctionQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionScalingConfigRequest.type = Types::GetFunctionScalingConfigRequest
    GetFunctionScalingConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionScalingConfigResponse.add_member(:applied_function_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionScalingConfig, name: "AppliedFunctionScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionScalingConfigResponse.add_member(:requested_function_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionScalingConfig, name: "RequestedFunctionScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionScalingConfigResponse.type = Types::GetFunctionScalingConfigResponse
    GetFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigRequest.type = Types::GetFunctionUrlConfigRequest
    GetFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetFunctionUrlConfigResponse.type = Types::GetFunctionUrlConfigResponse
    GetLayerVersionByArnOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnOutput.type = Types::GetLayerVersionByArnOutput
    GetLayerVersionByArnRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "Arn", traits: {"smithy.api#httpQuery" => "Arn", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionByArnRequest.type = Types::GetLayerVersionByArnRequest
    GetLayerVersionOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionOutput.type = Types::GetLayerVersionOutput
    GetLayerVersionPolicyRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionPolicyRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionPolicyRequest.type = Types::GetLayerVersionPolicyRequest
    GetLayerVersionPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionPolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionPolicyResponse.type = Types::GetLayerVersionPolicyResponse
    GetLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetLayerVersionRequest.type = Types::GetLayerVersionRequest
    GetPolicyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetPolicyRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetPolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigRequest.type = Types::GetProvisionedConcurrencyConfigRequest
    GetProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetProvisionedConcurrencyConfigResponse.type = Types::GetProvisionedConcurrencyConfigResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetRuntimeManagementConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetRuntimeManagementConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    GetRuntimeManagementConfigRequest.type = Types::GetRuntimeManagementConfigRequest
    GetRuntimeManagementConfigResponse.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetRuntimeManagementConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetRuntimeManagementConfigResponse.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetRuntimeManagementConfigResponse.type = Types::GetRuntimeManagementConfigResponse
    HeadersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfig.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "EntryPoint", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfig.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Command", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfig.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkingDirectory, name: "WorkingDirectory", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfig.type = Types::ImageConfig
    ImageConfigError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfigError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfigError.type = Types::ImageConfigError
    ImageConfigResponse.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfigResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    ImageConfigResponse.type = Types::ImageConfigResponse
    InstanceRequirements.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    InstanceRequirements.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeSet, name: "AllowedInstanceTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    InstanceRequirements.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeSet, name: "ExcludedInstanceTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    InstanceRequirements.type = Types::InstanceRequirements
    InstanceTypeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidCodeSignatureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidCodeSignatureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidCodeSignatureException.type = Types::InvalidCodeSignatureException
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestContentException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidRequestContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidRequestContentException.type = Types::InvalidRequestContentException
    InvalidRuntimeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidRuntimeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidRuntimeException.type = Types::InvalidRuntimeException
    InvalidSecurityGroupIDException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidSecurityGroupIDException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidSecurityGroupIDException.type = Types::InvalidSecurityGroupIDException
    InvalidSubnetIDException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidSubnetIDException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidSubnetIDException.type = Types::InvalidSubnetIDException
    InvalidZipFileException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidZipFileException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidZipFileException.type = Types::InvalidZipFileException
    InvocationCompletedDetails.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationCompletedDetails.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "EndTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationCompletedDetails.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationCompletedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvocationCompletedDetails.type = Types::InvocationCompletedDetails
    InvocationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationType, name: "InvocationType", traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientContext", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:durable_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionName, name: "DurableExecutionName", traits: {"smithy.api#httpHeader" => "X-Amz-Durable-Execution-Name", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId", traits: {"smithy.api#httpHeader" => "X-Amz-Tenant-Id", "smithy.api#tags" => ["feature:public"]}))
    InvocationRequest[:http_payload] = :payload
    InvocationRequest[:http_payload_member] = InvocationRequest.member(:payload)
    InvocationRequest.type = Types::InvocationRequest
    InvocationResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionError", traits: {"smithy.api#httpHeader" => "X-Amz-Function-Error", "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse.add_member(:log_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogResult", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Result", "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse.add_member(:executed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ExecutedVersion", traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version", "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpHeader" => "X-Amz-Durable-Execution-Arn", "smithy.api#tags" => ["feature:public"]}))
    InvocationResponse[:http_payload] = :payload
    InvocationResponse[:http_payload_member] = InvocationResponse.member(:payload)
    InvocationResponse.type = Types::InvocationResponse
    InvocationType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Event", traits: {"smithy.api#enumValue" => "Event", "smithy.api#tags" => ["feature:public"]}))
    InvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestResponse", traits: {"smithy.api#enumValue" => "RequestResponse", "smithy.api#tags" => ["feature:public"]}))
    InvocationType.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DryRun", traits: {"smithy.api#enumValue" => "DryRun", "smithy.api#tags" => ["feature:public"]}))
    InvokeAsyncRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeAsyncRequest.add_member(:invoke_args, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobStream, name: "InvokeArgs", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeAsyncRequest[:http_payload] = :invoke_args
    InvokeAsyncRequest[:http_payload_member] = InvokeAsyncRequest.member(:invoke_args)
    InvokeAsyncRequest.type = Types::InvokeAsyncRequest
    InvokeAsyncResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpStatus, name: "Status", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeAsyncResponse.type = Types::InvokeAsyncResponse
    InvokeMode.add_member(:buffered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUFFERED", traits: {"smithy.api#enumValue" => "BUFFERED", "smithy.api#tags" => ["feature:public"]}))
    InvokeMode.add_member(:response_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE_STREAM", traits: {"smithy.api#enumValue" => "RESPONSE_STREAM", "smithy.api#tags" => ["feature:public"]}))
    InvokeResponseStreamUpdate.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#eventPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeResponseStreamUpdate.type = Types::InvokeResponseStreamUpdate
    InvokeWithResponseStreamCompleteEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamCompleteEvent.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamCompleteEvent.add_member(:log_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamCompleteEvent.type = Types::InvokeWithResponseStreamCompleteEvent
    InvokeWithResponseStreamRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType", traits: {"smithy.api#httpHeader" => "X-Amz-Log-Type", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:client_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientContext", traits: {"smithy.api#httpHeader" => "X-Amz-Client-Context", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId", traits: {"smithy.api#httpHeader" => "X-Amz-Tenant-Id", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest.add_member(:invocation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStreamingInvocationType, name: "InvocationType", traits: {"smithy.api#httpHeader" => "X-Amz-Invocation-Type", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamRequest[:http_payload] = :payload
    InvokeWithResponseStreamRequest[:http_payload_member] = InvokeWithResponseStreamRequest.member(:payload)
    InvokeWithResponseStreamRequest.type = Types::InvokeWithResponseStreamRequest
    InvokeWithResponseStreamResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponse.add_member(:executed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ExecutedVersion", traits: {"smithy.api#httpHeader" => "X-Amz-Executed-Version", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponse.add_member(:event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeWithResponseStreamResponseEvent, name: "EventStream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponse.add_member(:response_stream_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResponseStreamContentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponse[:http_payload] = :event_stream
    InvokeWithResponseStreamResponse[:http_payload_member] = InvokeWithResponseStreamResponse.member(:event_stream)
    InvokeWithResponseStreamResponse.type = Types::InvokeWithResponseStreamResponse
    InvokeWithResponseStreamResponseEvent.add_member(:payload_chunk, Types::InvokeWithResponseStreamResponseEvent::PayloadChunk, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeResponseStreamUpdate, name: "PayloadChunk", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponseEvent.add_member(:invoke_complete, Types::InvokeWithResponseStreamResponseEvent::InvokeComplete, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeWithResponseStreamCompleteEvent, name: "InvokeComplete", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvokeWithResponseStreamResponseEvent.add_member(:unknown, Types::InvokeWithResponseStreamResponseEvent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeWithResponseStreamResponseEvent.type = Types::InvokeWithResponseStreamResponseEvent
    KMSAccessDeniedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSAccessDeniedException.type = Types::KMSAccessDeniedException
    KMSDisabledException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSDisabledException.type = Types::KMSDisabledException
    KMSInvalidStateException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSInvalidStateException.type = Types::KMSInvalidStateException
    KMSNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public", "feature:public"]}))
    KMSNotFoundException.type = Types::KMSNotFoundException
    KafkaSchemaRegistryAccessConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAuthType, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAccessConfig.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "URI", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAccessConfig.type = Types::KafkaSchemaRegistryAccessConfig
    KafkaSchemaRegistryAccessConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAccessConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAuthType.add_member(:basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAuthType.add_member(:client_certificate_tls_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CERTIFICATE_TLS_AUTH", traits: {"smithy.api#enumValue" => "CLIENT_CERTIFICATE_TLS_AUTH", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAuthType.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_ROOT_CA_CERTIFICATE", traits: {"smithy.api#enumValue" => "SERVER_ROOT_CA_CERTIFICATE", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryAuthType.add_member(:oauthbearer_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_AUTH", traits: {"smithy.api#enumValue" => "OAUTHBEARER_AUTH", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryConfig.add_member(:schema_registry_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryUri, name: "SchemaRegistryURI", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryConfig.add_member(:event_record_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaRegistryEventRecordFormat, name: "EventRecordFormat", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryConfig.add_member(:access_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryAccessConfigList, name: "AccessConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryConfig.add_member(:schema_validation_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationConfigList, name: "SchemaValidationConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaRegistryConfig.type = Types::KafkaSchemaRegistryConfig
    KafkaSchemaValidationAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY", traits: {"smithy.api#enumValue" => "KEY", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaValidationAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE", "smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaValidationConfig.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationAttribute, name: "Attribute", traits: {"smithy.api#tags" => ["feature:public"]}))
    KafkaSchemaValidationConfig.type = Types::KafkaSchemaValidationConfig
    KafkaSchemaValidationConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaValidationConfig, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    LambdaManagedInstancesCapacityProviderConfig.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderArn, name: "CapacityProviderArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    LambdaManagedInstancesCapacityProviderConfig.add_member(:per_execution_environment_max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerExecutionEnvironmentMaxConcurrency, name: "PerExecutionEnvironmentMaxConcurrency", traits: {"smithy.api#tags" => ["feature:public"]}))
    LambdaManagedInstancesCapacityProviderConfig.add_member(:execution_environment_memory_gi_b_per_v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionEnvironmentMemoryGiBPerVCpu, name: "ExecutionEnvironmentMemoryGiBPerVCpu", traits: {"smithy.api#tags" => ["feature:public"]}))
    LambdaManagedInstancesCapacityProviderConfig.type = Types::LambdaManagedInstancesCapacityProviderConfig
    LastUpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:eni_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EniLimitExceeded", traits: {"smithy.api#enumValue" => "EniLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidConfiguration", traits: {"smithy.api#enumValue" => "InvalidConfiguration", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:image_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageDeleted", traits: {"smithy.api#enumValue" => "ImageDeleted", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:image_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageAccessDenied", traits: {"smithy.api#enumValue" => "ImageAccessDenied", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImage", traits: {"smithy.api#enumValue" => "InvalidImage", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:kms_key_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyAccessDenied", traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyNotFound", traits: {"smithy.api#enumValue" => "KMSKeyNotFound", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_state_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidStateKMSKey", traits: {"smithy.api#enumValue" => "InvalidStateKMSKey", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:disabled_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisabledKMSKey", traits: {"smithy.api#enumValue" => "DisabledKMSKey", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:efsio_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSIOError", traits: {"smithy.api#enumValue" => "EFSIOError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_connectivity_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountConnectivityError", traits: {"smithy.api#enumValue" => "EFSMountConnectivityError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountFailure", traits: {"smithy.api#enumValue" => "EFSMountFailure", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:efs_mount_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountTimeout", traits: {"smithy.api#enumValue" => "EFSMountTimeout", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRuntime", traits: {"smithy.api#enumValue" => "InvalidRuntime", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:invalid_zip_file_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidZipFileException", traits: {"smithy.api#enumValue" => "InvalidZipFileException", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionError", traits: {"smithy.api#enumValue" => "FunctionError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:service_quota_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceQuotaExceededException", traits: {"smithy.api#enumValue" => "ServiceQuotaExceededException", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:vcpu_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VcpuLimitExceeded", traits: {"smithy.api#enumValue" => "VcpuLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:capacity_provider_scaling_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CapacityProviderScalingLimitExceeded", traits: {"smithy.api#enumValue" => "CapacityProviderScalingLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:insufficient_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientCapacity", traits: {"smithy.api#enumValue" => "InsufficientCapacity", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:ec2_request_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2RequestLimitExceeded", traits: {"smithy.api#enumValue" => "EC2RequestLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_init_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInitTimeout", traits: {"smithy.api#enumValue" => "FunctionError.InitTimeout", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_runtime_init_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorRuntimeInitError", traits: {"smithy.api#enumValue" => "FunctionError.RuntimeInitError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_extension_init_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorExtensionInitError", traits: {"smithy.api#enumValue" => "FunctionError.ExtensionInitError", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_invalid_entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInvalidEntryPoint", traits: {"smithy.api#enumValue" => "FunctionError.InvalidEntryPoint", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_invalid_working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInvalidWorkingDirectory", traits: {"smithy.api#enumValue" => "FunctionError.InvalidWorkingDirectory", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_permission_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorPermissionDenied", traits: {"smithy.api#enumValue" => "FunctionError.PermissionDenied", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_too_many_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorTooManyExtensions", traits: {"smithy.api#enumValue" => "FunctionError.TooManyExtensions", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:function_error_init_resource_exhausted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInitResourceExhausted", traits: {"smithy.api#enumValue" => "FunctionError.InitResourceExhausted", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:disallowed_by_vpc_encryption_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisallowedByVpcEncryptionControl", traits: {"smithy.api#enumValue" => "DisallowedByVpcEncryptionControl", "smithy.api#tags" => ["feature:public"]}))
    LastUpdateStatusReasonCode.add_member(:dependency_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DependencyError", traits: {"smithy.api#enumValue" => "DependencyError", "smithy.api#tags" => ["feature:public"]}))
    Layer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "Arn", traits: {"smithy.api#tags" => ["feature:public"]}))
    Layer.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    Layer.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    Layer.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    Layer.type = Types::Layer
    LayerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.add_member(:s3_object_storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectStorageMode, name: "S3ObjectStorageMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentInput.type = Types::LayerVersionContentInput
    LayerVersionContentOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringOnServerOnly, name: "Location", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.add_member(:resolved_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedS3Object, name: "ResolvedS3Object", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionContentOutput.type = Types::LayerVersionContentOutput
    LayerVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsListItem, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayerVersionsListItem.type = Types::LayerVersionsListItem
    LayersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersListItem, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayersListItem.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayersListItem.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayersListItem.add_member(:latest_matching_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsListItem, name: "LatestMatchingVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    LayersListItem.type = Types::LayersListItem
    LayersReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Layer, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListAliasesRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListAliasesRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWithLatestPublished, name: "FunctionVersion", traits: {"smithy.api#httpQuery" => "FunctionVersion", "smithy.api#tags" => ["feature:public"]}))
    ListAliasesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListAliasesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListAliasesRequest.type = Types::ListAliasesRequest
    ListAliasesResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListAliasesResponse.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasList, name: "Aliases", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListAliasesResponse.type = Types::ListAliasesResponse
    ListCapacityProvidersRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderState, name: "State", traits: {"smithy.api#httpQuery" => "State", "smithy.api#tags" => ["feature:public"]}))
    ListCapacityProvidersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListCapacityProvidersRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFiftyListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListCapacityProvidersRequest.type = Types::ListCapacityProvidersRequest
    ListCapacityProvidersResponse.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvidersList, name: "CapacityProviders", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListCapacityProvidersResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListCapacityProvidersResponse.type = Types::ListCapacityProvidersResponse
    ListCodeSigningConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListCodeSigningConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListCodeSigningConfigsRequest.type = Types::ListCodeSigningConfigsRequest
    ListCodeSigningConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListCodeSigningConfigsResponse.add_member(:code_signing_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigList, name: "CodeSigningConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListCodeSigningConfigsResponse.type = Types::ListCodeSigningConfigsResponse
    ListDurableExecutionsByFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:durable_execution_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionName, name: "DurableExecutionName", traits: {"smithy.api#httpQuery" => "DurableExecutionName", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatusList, name: "Statuses", traits: {"smithy.api#httpQuery" => "Statuses", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:started_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartedAfter", traits: {"smithy.api#httpQuery" => "StartedAfter", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:started_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartedBefore", traits: {"smithy.api#httpQuery" => "StartedBefore", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ReverseOrder, name: "ReverseOrder", traits: {"smithy.api#httpQuery" => "ReverseOrder", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "MaxItems", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionRequest.type = Types::ListDurableExecutionsByFunctionRequest
    ListDurableExecutionsByFunctionResponse.add_member(:durable_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutions, name: "DurableExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListDurableExecutionsByFunctionResponse.type = Types::ListDurableExecutionsByFunctionResponse
    ListEventSourceMappingsRequest.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#httpQuery" => "EventSourceArn", "smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpQuery" => "FunctionName", "smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsRequest.type = Types::ListEventSourceMappingsRequest
    ListEventSourceMappingsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsResponse.add_member(:event_source_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingsList, name: "EventSourceMappings", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListEventSourceMappingsResponse.type = Types::ListEventSourceMappingsResponse
    ListFunctionEventInvokeConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionEventInvokeConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionEventInvokeConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFunctionEventInvokeConfigListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionEventInvokeConfigsRequest.type = Types::ListFunctionEventInvokeConfigsRequest
    ListFunctionEventInvokeConfigsResponse.add_member(:function_event_invoke_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEventInvokeConfigList, name: "FunctionEventInvokeConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionEventInvokeConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionEventInvokeConfigsResponse.type = Types::ListFunctionEventInvokeConfigsResponse
    ListFunctionUrlConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionUrlConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionUrlConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionUrlConfigsRequest.type = Types::ListFunctionUrlConfigsRequest
    ListFunctionUrlConfigsResponse.add_member(:function_url_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlConfigList, name: "FunctionUrlConfigs", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionUrlConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionUrlConfigsResponse.type = Types::ListFunctionUrlConfigsResponse
    ListFunctionVersionsByCapacityProviderRequest.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderName, name: "CapacityProviderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxFiftyListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderRequest.type = Types::ListFunctionVersionsByCapacityProviderRequest
    ListFunctionVersionsByCapacityProviderResponse.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderArn, name: "CapacityProviderArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderResponse.add_member(:function_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersionsByCapacityProviderList, name: "FunctionVersions", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionVersionsByCapacityProviderResponse.type = Types::ListFunctionVersionsByCapacityProviderResponse
    ListFunctionsByCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsByCodeSigningConfigRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsByCodeSigningConfigRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsByCodeSigningConfigRequest.type = Types::ListFunctionsByCodeSigningConfigRequest
    ListFunctionsByCodeSigningConfigResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionsByCodeSigningConfigResponse.add_member(:function_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArnList, name: "FunctionArns", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionsByCodeSigningConfigResponse.type = Types::ListFunctionsByCodeSigningConfigResponse
    ListFunctionsRequest.add_member(:master_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterRegion, name: "MasterRegion", traits: {"smithy.api#httpQuery" => "MasterRegion", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersion, name: "FunctionVersion", traits: {"smithy.api#httpQuery" => "FunctionVersion", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionsResponse.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionList, name: "Functions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListLayerVersionsRequest.add_member(:compatible_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "CompatibleArchitecture", traits: {"smithy.api#httpQuery" => "CompatibleArchitecture", "smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsRequest.add_member(:compatible_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "CompatibleRuntime", traits: {"smithy.api#httpQuery" => "CompatibleRuntime", "smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLayerListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsRequest.type = Types::ListLayerVersionsRequest
    ListLayerVersionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsResponse.add_member(:layer_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionsList, name: "LayerVersions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListLayerVersionsResponse.type = Types::ListLayerVersionsResponse
    ListLayersRequest.add_member(:compatible_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "CompatibleArchitecture", traits: {"smithy.api#httpQuery" => "CompatibleArchitecture", "smithy.api#tags" => ["feature:public"]}))
    ListLayersRequest.add_member(:compatible_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "CompatibleRuntime", traits: {"smithy.api#httpQuery" => "CompatibleRuntime", "smithy.api#tags" => ["feature:public"]}))
    ListLayersRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListLayersRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLayerListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListLayersRequest.type = Types::ListLayersRequest
    ListLayersResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListLayersResponse.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListLayersResponse.type = Types::ListLayersResponse
    ListProvisionedConcurrencyConfigsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListProvisionedConcurrencyConfigsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListProvisionedConcurrencyConfigsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxProvisionedConcurrencyConfigListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListProvisionedConcurrencyConfigsRequest.type = Types::ListProvisionedConcurrencyConfigsRequest
    ListProvisionedConcurrencyConfigsResponse.add_member(:provisioned_concurrency_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyConfigList, name: "ProvisionedConcurrencyConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListProvisionedConcurrencyConfigsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListProvisionedConcurrencyConfigsResponse.type = Types::ListProvisionedConcurrencyConfigsResponse
    ListTagsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListTagsResponse.type = Types::ListTagsResponse
    ListVersionsByFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListVersionsByFunctionRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListVersionsByFunctionRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListVersionsByFunctionRequest.type = Types::ListVersionsByFunctionRequest
    ListVersionsByFunctionResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListVersionsByFunctionResponse.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionList, name: "Versions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListVersionsByFunctionResponse.type = Types::ListVersionsByFunctionResponse
    LogFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Json", traits: {"smithy.api#enumValue" => "JSON", "smithy.api#tags" => ["feature:public"]}))
    LogFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Text", traits: {"smithy.api#enumValue" => "Text", "smithy.api#tags" => ["feature:public"]}))
    LogType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None", "smithy.api#tags" => ["feature:public"]}))
    LogType.add_member(:tail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tail", traits: {"smithy.api#enumValue" => "Tail", "smithy.api#tags" => ["feature:public"]}))
    LoggingConfig.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormat, name: "LogFormat", traits: {"smithy.api#tags" => ["feature:public"]}))
    LoggingConfig.add_member(:application_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogLevel, name: "ApplicationLogLevel", traits: {"smithy.api#tags" => ["feature:public"]}))
    LoggingConfig.add_member(:system_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemLogLevel, name: "SystemLogLevel", traits: {"smithy.api#tags" => ["feature:public"]}))
    LoggingConfig.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroup, name: "LogGroup", traits: {"smithy.api#tags" => ["feature:public"]}))
    LoggingConfig.type = Types::LoggingConfig
    ModeNotSupportedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ModeNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ModeNotSupportedException.type = Types::ModeNotSupportedException
    NoPublishedVersionException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    NoPublishedVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    NoPublishedVersionException.type = Types::NoPublishedVersionException
    OnFailure.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Destination", traits: {"smithy.api#tags" => ["feature:public"]}))
    OnFailure.type = Types::OnFailure
    OnSuccess.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationArn, name: "Destination", traits: {"smithy.api#tags" => ["feature:public"]}))
    OnSuccess.type = Types::OnSuccess
    Operation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "ParentId", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "Type", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSubType, name: "SubType", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "EndTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, name: "ExecutionDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:context_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDetails, name: "ContextDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:step_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StepDetails, name: "StepDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:wait_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitDetails, name: "WaitDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:callback_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackDetails, name: "CallbackDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.add_member(:chained_invoke_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeDetails, name: "ChainedInvokeDetails", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operation.type = Types::Operation
    OperationAction.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START", traits: {"smithy.api#enumValue" => "START", "smithy.api#tags" => ["feature:public"]}))
    OperationAction.add_member(:succeed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEED", traits: {"smithy.api#enumValue" => "SUCCEED", "smithy.api#tags" => ["feature:public"]}))
    OperationAction.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL", "smithy.api#tags" => ["feature:public"]}))
    OperationAction.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY", "smithy.api#tags" => ["feature:public"]}))
    OperationAction.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCEL", traits: {"smithy.api#enumValue" => "CANCEL", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT", "smithy.api#tags" => ["feature:public"]}))
    OperationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION", traits: {"smithy.api#enumValue" => "EXECUTION", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTEXT", traits: {"smithy.api#enumValue" => "CONTEXT", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEP", traits: {"smithy.api#enumValue" => "STEP", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAIT", traits: {"smithy.api#enumValue" => "WAIT", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:callback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALLBACK", traits: {"smithy.api#enumValue" => "CALLBACK", "smithy.api#tags" => ["feature:public"]}))
    OperationType.add_member(:chained_invoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAINED_INVOKE", traits: {"smithy.api#enumValue" => "CHAINED_INVOKE", "smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "ParentId", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "Type", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSubType, name: "SubType", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationAction, name: "Action", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Payload", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:context_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextOptions, name: "ContextOptions", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:step_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StepOptions, name: "StepOptions", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:wait_options, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitOptions, name: "WaitOptions", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:callback_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackOptions, name: "CallbackOptions", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.add_member(:chained_invoke_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ChainedInvokeOptions, name: "ChainedInvokeOptions", traits: {"smithy.api#tags" => ["feature:public"]}))
    OperationUpdate.type = Types::OperationUpdate
    OperationUpdates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationUpdate, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    Operations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    PackageType.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zip", traits: {"smithy.api#enumValue" => "Zip", "smithy.api#tags" => ["feature:public"]}))
    PackageType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Image", traits: {"smithy.api#enumValue" => "Image", "smithy.api#tags" => ["feature:public"]}))
    PolicyLengthExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    PolicyLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    PolicyLengthExceededException.type = Types::PolicyLengthExceededException
    PreconditionFailedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    PreconditionFailedException.type = Types::PreconditionFailedException
    PropagateTags.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTagsMode, name: "Mode", traits: {"smithy.api#tags" => ["feature:public"]}))
    PropagateTags.add_member(:explicit_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "ExplicitTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#tags" => ["feature:public"]}))
    PropagateTags.type = Types::PropagateTags
    PropagateTagsMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None", "smithy.api#tags" => ["feature:public"]}))
    PropagateTagsMode.add_member(:explicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Explicit", traits: {"smithy.api#enumValue" => "Explicit", "smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyConfigListItem, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigListItem.type = Types::ProvisionedConcurrencyConfigListItem
    ProvisionedConcurrencyConfigNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyConfigNotFoundException.type = Types::ProvisionedConcurrencyConfigNotFoundException
    ProvisionedConcurrencyStatusEnum.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS", "smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyStatusEnum.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY", "smithy.api#tags" => ["feature:public"]}))
    ProvisionedConcurrencyStatusEnum.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED", "smithy.api#tags" => ["feature:public"]}))
    ProvisionedPollerConfig.add_member(:minimum_pollers, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNumberOfPollers, name: "MinimumPollers", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedPollerConfig.add_member(:maximum_pollers, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumNumberOfPollers, name: "MaximumPollers", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedPollerConfig.add_member(:poller_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerGroupName, name: "PollerGroupName", traits: {"smithy.api#tags" => ["feature:public"]}))
    ProvisionedPollerConfig.type = Types::ProvisionedPollerConfig
    PublicPolicyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublicPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublicPolicyException.type = Types::PublicPolicyException
    PublishLayerVersionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentInput, name: "Content", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionRequest.type = Types::PublishLayerVersionRequest
    PublishLayerVersionResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionContentOutput, name: "Content", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:layer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerArn, name: "LayerArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:layer_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionArn, name: "LayerVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedDate", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "Version", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:compatible_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleArchitectures, name: "CompatibleArchitectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:compatible_runtimes, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleRuntimes, name: "CompatibleRuntimes", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.add_member(:license_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "LicenseInfo", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishLayerVersionResponse.type = Types::PublishLayerVersionResponse
    PublishVersionOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionOutput.type = Types::PublishVersionOutput
    PublishVersionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PublishVersionRequest.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionRequest.add_member(:publish_to, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersionLatestPublished, name: "PublishTo", traits: {"smithy.api#tags" => ["feature:public"]}))
    PublishVersionRequest.type = Types::PublishVersionRequest
    PutFunctionCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionCodeSigningConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionCodeSigningConfigRequest.type = Types::PutFunctionCodeSigningConfigRequest
    PutFunctionCodeSigningConfigResponse.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionCodeSigningConfigResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionCodeSigningConfigResponse.type = Types::PutFunctionCodeSigningConfigResponse
    PutFunctionConcurrencyOutput.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionConcurrencyOutput.type = Types::PutFunctionConcurrencyOutput
    PutFunctionConcurrencyRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionConcurrencyRequest.add_member(:reserved_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedConcurrentExecutions, name: "ReservedConcurrentExecutions", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionConcurrencyRequest.type = Types::PutFunctionConcurrencyRequest
    PutFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigOutput.type = Types::PutFunctionEventInvokeConfigOutput
    PutFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionEventInvokeConfigRequest.type = Types::PutFunctionEventInvokeConfigRequest
    PutFunctionRecursionConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionRecursionConfigRequest.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionRecursionConfigRequest.type = Types::PutFunctionRecursionConfigRequest
    PutFunctionRecursionConfigResponse.add_member(:recursive_loop, ::Smithy::Schema::Shapes::MemberShape.new(target: RecursiveLoop, name: "RecursiveLoop", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionRecursionConfigResponse.type = Types::PutFunctionRecursionConfigResponse
    PutFunctionScalingConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnqualifiedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionScalingConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedFunctionQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutFunctionScalingConfigRequest.add_member(:function_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionScalingConfig, name: "FunctionScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionScalingConfigRequest.type = Types::PutFunctionScalingConfigRequest
    PutFunctionScalingConfigResponse.add_member(:function_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "FunctionState", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutFunctionScalingConfigResponse.type = Types::PutFunctionScalingConfigResponse
    PutProvisionedConcurrencyConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigRequest.add_member(:provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ProvisionedConcurrentExecutions", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigRequest.type = Types::PutProvisionedConcurrencyConfigRequest
    PutProvisionedConcurrencyConfigResponse.add_member(:requested_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "RequestedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.add_member(:allocated_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AllocatedProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.add_member(:available_provisioned_concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "AvailableProvisionedConcurrentExecutions", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedConcurrencyStatusEnum, name: "Status", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutProvisionedConcurrencyConfigResponse.type = Types::PutProvisionedConcurrencyConfigResponse
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    PutRuntimeManagementConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigRequest.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigRequest.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigRequest.type = Types::PutRuntimeManagementConfigRequest
    PutRuntimeManagementConfigResponse.add_member(:update_runtime_on, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRuntimeOn, name: "UpdateRuntimeOn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigResponse.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    PutRuntimeManagementConfigResponse.type = Types::PutRuntimeManagementConfigResponse
    Queues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Queue, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    RecursiveInvocationException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    RecursiveInvocationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    RecursiveInvocationException.type = Types::RecursiveInvocationException
    RecursiveLoop.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Allow", traits: {"smithy.api#enumValue" => "Allow", "smithy.api#tags" => ["feature:public"]}))
    RecursiveLoop.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Terminate", traits: {"smithy.api#enumValue" => "Terminate", "smithy.api#tags" => ["feature:public"]}))
    RemoveLayerVersionPermissionRequest.add_member(:layer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerName, name: "LayerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    RemoveLayerVersionPermissionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerVersionNumber, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    RemoveLayerVersionPermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementId, name: "StatementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    RemoveLayerVersionPermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId", "smithy.api#tags" => ["feature:public"]}))
    RemoveLayerVersionPermissionRequest.type = Types::RemoveLayerVersionPermissionRequest
    RemovePermissionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    RemovePermissionRequest.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedStatementId, name: "StatementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    RemovePermissionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    RemovePermissionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "RevisionId", "smithy.api#tags" => ["feature:public"]}))
    RemovePermissionRequest.type = Types::RemovePermissionRequest
    RequestTooLargeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    RequestTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    RequestTooLargeException.type = Types::RequestTooLargeException
    ResolvedS3Object.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResolvedS3Object.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResolvedS3Object.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResolvedS3Object.type = Types::ResolvedS3Object
    ResourceConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceInUseException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotReadyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotReadyException.type = Types::ResourceNotReadyException
    ResponseStreamingInvocationType.add_member(:request_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestResponse", traits: {"smithy.api#enumValue" => "RequestResponse", "smithy.api#tags" => ["feature:public"]}))
    ResponseStreamingInvocationType.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DryRun", traits: {"smithy.api#enumValue" => "DryRun", "smithy.api#tags" => ["feature:public"]}))
    RetryDetails.add_member(:current_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptCount, name: "CurrentAttempt", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    RetryDetails.add_member(:next_attempt_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "NextAttemptDelaySeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    RetryDetails.type = Types::RetryDetails
    Runtime.add_member(:nodejs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs", traits: {"smithy.api#enumValue" => "nodejs", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs43, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs43", traits: {"smithy.api#enumValue" => "nodejs4.3", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs610, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs610", traits: {"smithy.api#enumValue" => "nodejs6.10", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs810, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs810", traits: {"smithy.api#enumValue" => "nodejs8.10", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs10x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs10x", traits: {"smithy.api#enumValue" => "nodejs10.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs12x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs12x", traits: {"smithy.api#enumValue" => "nodejs12.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs14x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs14x", traits: {"smithy.api#enumValue" => "nodejs14.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs16x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs16x", traits: {"smithy.api#enumValue" => "nodejs16.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs18x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs18x", traits: {"smithy.api#enumValue" => "nodejs18.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs20x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs20x", traits: {"smithy.api#enumValue" => "nodejs20.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs22x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs22x", traits: {"smithy.api#enumValue" => "nodejs22.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs24x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs24x", traits: {"smithy.api#enumValue" => "nodejs24.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java8", traits: {"smithy.api#enumValue" => "java8", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java8al2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java8al2", traits: {"smithy.api#enumValue" => "java8.al2", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java11", traits: {"smithy.api#enumValue" => "java11", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java17, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java17", traits: {"smithy.api#enumValue" => "java17", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java21, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java21", traits: {"smithy.api#enumValue" => "java21", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java25", traits: {"smithy.api#enumValue" => "java25", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python27, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python27", traits: {"smithy.api#enumValue" => "python2.7", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python36, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python36", traits: {"smithy.api#enumValue" => "python3.6", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python37, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python37", traits: {"smithy.api#enumValue" => "python3.7", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python38, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python38", traits: {"smithy.api#enumValue" => "python3.8", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python39, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python39", traits: {"smithy.api#enumValue" => "python3.9", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python310, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python310", traits: {"smithy.api#enumValue" => "python3.10", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python311, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python311", traits: {"smithy.api#enumValue" => "python3.11", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python312, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python312", traits: {"smithy.api#enumValue" => "python3.12", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python313, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python313", traits: {"smithy.api#enumValue" => "python3.13", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python314, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python314", traits: {"smithy.api#enumValue" => "python3.14", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnetcore10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore10", traits: {"smithy.api#enumValue" => "dotnetcore1.0", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnetcore20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore20", traits: {"smithy.api#enumValue" => "dotnetcore2.0", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnetcore21, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore21", traits: {"smithy.api#enumValue" => "dotnetcore2.1", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnetcore31, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnetcore31", traits: {"smithy.api#enumValue" => "dotnetcore3.1", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnet6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnet6", traits: {"smithy.api#enumValue" => "dotnet6", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnet8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnet8", traits: {"smithy.api#enumValue" => "dotnet8", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:dotnet10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dotnet10", traits: {"smithy.api#enumValue" => "dotnet10", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs43edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs43edge", traits: {"smithy.api#enumValue" => "nodejs4.3-edge", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:go1x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "go1x", traits: {"smithy.api#enumValue" => "go1.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby25, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby25", traits: {"smithy.api#enumValue" => "ruby2.5", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby27, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby27", traits: {"smithy.api#enumValue" => "ruby2.7", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby32", traits: {"smithy.api#enumValue" => "ruby3.2", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby33, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby33", traits: {"smithy.api#enumValue" => "ruby3.3", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby34, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby34", traits: {"smithy.api#enumValue" => "ruby3.4", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:ruby40, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ruby40", traits: {"smithy.api#enumValue" => "ruby4.0", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:provided, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "provided", traits: {"smithy.api#enumValue" => "provided", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:providedal2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "providedal2", traits: {"smithy.api#enumValue" => "provided.al2", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:providedal2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "providedal2023", traits: {"smithy.api#enumValue" => "provided.al2023", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:nodejs26x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "nodejs26x", traits: {"smithy.api#enumValue" => "nodejs26.x", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:python315, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "python315", traits: {"smithy.api#enumValue" => "python3.15", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java8al2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java8al2023", traits: {"smithy.api#enumValue" => "java8.al2023", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java11al2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java11al2023", traits: {"smithy.api#enumValue" => "java11.al2023", "smithy.api#tags" => ["feature:public"]}))
    Runtime.add_member(:java17al2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "java17al2023", traits: {"smithy.api#enumValue" => "java17.al2023", "smithy.api#tags" => ["feature:public"]}))
    RuntimeVersionConfig.add_member(:runtime_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionArn, name: "RuntimeVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    RuntimeVersionConfig.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    RuntimeVersionConfig.type = Types::RuntimeVersionConfig
    RuntimeVersionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    RuntimeVersionError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    RuntimeVersionError.type = Types::RuntimeVersionError
    S3FilesConfig.add_member(:direct_s3_read, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectS3Read, name: "DirectS3Read", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesConfig.type = Types::S3FilesConfig
    S3FilesMountConnectivityException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountConnectivityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountConnectivityException.type = Types::S3FilesMountConnectivityException
    S3FilesMountFailureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountFailureException.type = Types::S3FilesMountFailureException
    S3FilesMountTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    S3FilesMountTimeoutException.type = Types::S3FilesMountTimeoutException
    S3ObjectStorageMode.add_member(:copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Copy", traits: {"smithy.api#enumValue" => "COPY", "smithy.api#tags" => ["feature:public"]}))
    S3ObjectStorageMode.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reference", traits: {"smithy.api#enumValue" => "REFERENCE", "smithy.api#tags" => ["feature:public"]}))
    ScalingConfig.add_member(:maximum_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumConcurrency, name: "MaximumConcurrency", traits: {"smithy.api#tags" => ["feature:public"]}))
    ScalingConfig.type = Types::ScalingConfig
    SchemaRegistryEventRecordFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON", "smithy.api#tags" => ["feature:public"]}))
    SchemaRegistryEventRecordFormat.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "SOURCE", "smithy.api#tags" => ["feature:public"]}))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    SelfManagedEventSource.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints", traits: {"smithy.api#tags" => ["feature:public"]}))
    SelfManagedEventSource.type = Types::SelfManagedEventSource
    SelfManagedKafkaEventSourceConfig.add_member(:consumer_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "ConsumerGroupId", traits: {"smithy.api#tags" => ["feature:public"]}))
    SelfManagedKafkaEventSourceConfig.add_member(:schema_registry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaSchemaRegistryConfig, name: "SchemaRegistryConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    SelfManagedKafkaEventSourceConfig.type = Types::SelfManagedKafkaEventSourceConfig
    SendDurableExecutionCallbackFailureRequest.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackId, name: "CallbackId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    SendDurableExecutionCallbackFailureRequest.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    SendDurableExecutionCallbackFailureRequest[:http_payload] = :error
    SendDurableExecutionCallbackFailureRequest[:http_payload_member] = SendDurableExecutionCallbackFailureRequest.member(:error)
    SendDurableExecutionCallbackFailureRequest.type = Types::SendDurableExecutionCallbackFailureRequest
    SendDurableExecutionCallbackFailureResponse.type = Types::SendDurableExecutionCallbackFailureResponse
    SendDurableExecutionCallbackHeartbeatRequest.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackId, name: "CallbackId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    SendDurableExecutionCallbackHeartbeatRequest.type = Types::SendDurableExecutionCallbackHeartbeatRequest
    SendDurableExecutionCallbackHeartbeatResponse.type = Types::SendDurableExecutionCallbackHeartbeatResponse
    SendDurableExecutionCallbackSuccessRequest.add_member(:callback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CallbackId, name: "CallbackId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    SendDurableExecutionCallbackSuccessRequest.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryOperationPayload, name: "Result", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    SendDurableExecutionCallbackSuccessRequest[:http_payload] = :result
    SendDurableExecutionCallbackSuccessRequest[:http_payload_member] = SendDurableExecutionCallbackSuccessRequest.member(:result)
    SendDurableExecutionCallbackSuccessRequest.type = Types::SendDurableExecutionCallbackSuccessRequest
    SendDurableExecutionCallbackSuccessResponse.type = Types::SendDurableExecutionCallbackSuccessResponse
    SerializedRequestEntityTooLargeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SerializedRequestEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SerializedRequestEntityTooLargeException.type = Types::SerializedRequestEntityTooLargeException
    ServiceException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SigningProfileVersionArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStart.add_member(:apply_on, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartApplyOn, name: "ApplyOn", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStart.type = Types::SnapStart
    SnapStartApplyOn.add_member(:published_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PublishedVersions", traits: {"smithy.api#enumValue" => "PublishedVersions", "smithy.api#tags" => ["feature:public"]}))
    SnapStartApplyOn.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "None", "smithy.api#tags" => ["feature:public"]}))
    SnapStartException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartException.type = Types::SnapStartException
    SnapStartNotReadyException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartNotReadyException.type = Types::SnapStartNotReadyException
    SnapStartOptimizationStatus.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "On", traits: {"smithy.api#enumValue" => "On", "smithy.api#tags" => ["feature:public"]}))
    SnapStartOptimizationStatus.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Off", traits: {"smithy.api#enumValue" => "Off", "smithy.api#tags" => ["feature:public"]}))
    SnapStartRegenerationFailureException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartRegenerationFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartRegenerationFailureException.type = Types::SnapStartRegenerationFailureException
    SnapStartResponse.add_member(:apply_on, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartApplyOn, name: "ApplyOn", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartResponse.add_member(:optimization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartOptimizationStatus, name: "OptimizationStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartResponse.type = Types::SnapStartResponse
    SnapStartTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SnapStartTimeoutException.type = Types::SnapStartTimeoutException
    SourceAccessConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessType, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SourceAccessConfiguration.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "URI", traits: {"smithy.api#tags" => ["feature:public"]}))
    SourceAccessConfiguration.type = Types::SourceAccessConfiguration
    SourceAccessConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfiguration, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:vpc_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_SUBNET", traits: {"smithy.api#enumValue" => "VPC_SUBNET", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:vpc_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_SECURITY_GROUP", traits: {"smithy.api#enumValue" => "VPC_SECURITY_GROUP", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:sasl_scram_512_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SASL_SCRAM_512_AUTH", traits: {"smithy.api#enumValue" => "SASL_SCRAM_512_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:sasl_scram_256_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SASL_SCRAM_256_AUTH", traits: {"smithy.api#enumValue" => "SASL_SCRAM_256_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:virtual_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUAL_HOST", traits: {"smithy.api#enumValue" => "VIRTUAL_HOST", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:client_certificate_tls_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CERTIFICATE_TLS_AUTH", traits: {"smithy.api#enumValue" => "CLIENT_CERTIFICATE_TLS_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:server_root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_ROOT_CA_CERTIFICATE", traits: {"smithy.api#enumValue" => "SERVER_ROOT_CA_CERTIFICATE", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:oauthbearer_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_AUTH", traits: {"smithy.api#enumValue" => "OAUTHBEARER_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:oauthbearer_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_SCOPE", traits: {"smithy.api#enumValue" => "OAUTHBEARER_SCOPE", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:oauthbearer_audience, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_AUDIENCE", traits: {"smithy.api#enumValue" => "OAUTHBEARER_AUDIENCE", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:oauthbearer_logical_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_LOGICAL_CLUSTER", traits: {"smithy.api#enumValue" => "OAUTHBEARER_LOGICAL_CLUSTER", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:oauthbearer_identity_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTHBEARER_IDENTITY_POOL", traits: {"smithy.api#enumValue" => "OAUTHBEARER_IDENTITY_POOL", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_AUTH", traits: {"smithy.api#enumValue" => "IAM_AUTH", "smithy.api#tags" => ["feature:public"]}))
    SourceAccessType.add_member(:iam_oauthbearer_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_OAUTHBEARER_AUTH", traits: {"smithy.api#enumValue" => "IAM_OAUTHBEARER_AUTH", "smithy.api#tags" => ["feature:public"]}))
    StackTraceEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackTraceEntry, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    State.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deactivating", traits: {"smithy.api#enumValue" => "Deactivating", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:deactivated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deactivated", traits: {"smithy.api#enumValue" => "Deactivated", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:active_non_invocable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActiveNonInvocable", traits: {"smithy.api#enumValue" => "ActiveNonInvocable", "smithy.api#tags" => ["feature:public"]}))
    State.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "Deleting", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Idle", traits: {"smithy.api#enumValue" => "Idle", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "Creating", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Restoring", traits: {"smithy.api#enumValue" => "Restoring", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:eni_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EniLimitExceeded", traits: {"smithy.api#enumValue" => "EniLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidConfiguration", traits: {"smithy.api#enumValue" => "InvalidConfiguration", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:image_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageDeleted", traits: {"smithy.api#enumValue" => "ImageDeleted", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:image_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageAccessDenied", traits: {"smithy.api#enumValue" => "ImageAccessDenied", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidImage", traits: {"smithy.api#enumValue" => "InvalidImage", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:kms_key_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyAccessDenied", traits: {"smithy.api#enumValue" => "KMSKeyAccessDenied", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSKeyNotFound", traits: {"smithy.api#enumValue" => "KMSKeyNotFound", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_state_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidStateKMSKey", traits: {"smithy.api#enumValue" => "InvalidStateKMSKey", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:disabled_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisabledKMSKey", traits: {"smithy.api#enumValue" => "DisabledKMSKey", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:efsio_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSIOError", traits: {"smithy.api#enumValue" => "EFSIOError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:efs_mount_connectivity_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountConnectivityError", traits: {"smithy.api#enumValue" => "EFSMountConnectivityError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:efs_mount_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountFailure", traits: {"smithy.api#enumValue" => "EFSMountFailure", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:efs_mount_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSMountTimeout", traits: {"smithy.api#enumValue" => "EFSMountTimeout", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRuntime", traits: {"smithy.api#enumValue" => "InvalidRuntime", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:invalid_zip_file_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidZipFileException", traits: {"smithy.api#enumValue" => "InvalidZipFileException", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionError", traits: {"smithy.api#enumValue" => "FunctionError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:service_quota_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceQuotaExceededException", traits: {"smithy.api#enumValue" => "ServiceQuotaExceededException", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:vcpu_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VcpuLimitExceeded", traits: {"smithy.api#enumValue" => "VcpuLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:capacity_provider_scaling_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CapacityProviderScalingLimitExceeded", traits: {"smithy.api#enumValue" => "CapacityProviderScalingLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:insufficient_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientCapacity", traits: {"smithy.api#enumValue" => "InsufficientCapacity", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:ec2_request_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2RequestLimitExceeded", traits: {"smithy.api#enumValue" => "EC2RequestLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_init_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInitTimeout", traits: {"smithy.api#enumValue" => "FunctionError.InitTimeout", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_runtime_init_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorRuntimeInitError", traits: {"smithy.api#enumValue" => "FunctionError.RuntimeInitError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_extension_init_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorExtensionInitError", traits: {"smithy.api#enumValue" => "FunctionError.ExtensionInitError", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_invalid_entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInvalidEntryPoint", traits: {"smithy.api#enumValue" => "FunctionError.InvalidEntryPoint", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_invalid_working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInvalidWorkingDirectory", traits: {"smithy.api#enumValue" => "FunctionError.InvalidWorkingDirectory", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_permission_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorPermissionDenied", traits: {"smithy.api#enumValue" => "FunctionError.PermissionDenied", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_too_many_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorTooManyExtensions", traits: {"smithy.api#enumValue" => "FunctionError.TooManyExtensions", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:function_error_init_resource_exhausted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionErrorInitResourceExhausted", traits: {"smithy.api#enumValue" => "FunctionError.InitResourceExhausted", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:disallowed_by_vpc_encryption_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisallowedByVpcEncryptionControl", traits: {"smithy.api#enumValue" => "DisallowedByVpcEncryptionControl", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:draining_durable_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DrainingDurableExecutions", traits: {"smithy.api#enumValue" => "DrainingDurableExecutions", "smithy.api#tags" => ["feature:public"]}))
    StateReasonCode.add_member(:dependency_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DependencyError", traits: {"smithy.api#enumValue" => "DependencyError", "smithy.api#tags" => ["feature:public"]}))
    StepDetails.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptCount, name: "Attempt", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    StepDetails.add_member(:next_attempt_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "NextAttemptTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    StepDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationPayload, name: "Result", traits: {"smithy.api#tags" => ["feature:public"]}))
    StepDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    StepDetails.type = Types::StepDetails
    StepFailedDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StepFailedDetails.add_member(:retry_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryDetails, name: "RetryDetails", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StepFailedDetails.type = Types::StepFailedDetails
    StepOptions.add_member(:next_attempt_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "NextAttemptDelaySeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 31622400}, "smithy.api#tags" => ["feature:public"]}))
    StepOptions.type = Types::StepOptions
    StepStartedDetails.type = Types::StepStartedDetails
    StepSucceededDetails.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResult, name: "Result", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StepSucceededDetails.add_member(:retry_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryDetails, name: "RetryDetails", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StepSucceededDetails.type = Types::StepSucceededDetails
    StopDurableExecutionRequest.add_member(:durable_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableExecutionArn, name: "DurableExecutionArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StopDurableExecutionRequest.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorObject, name: "Error", traits: {"smithy.api#httpPayload" => {}, "smithy.api#tags" => ["feature:public"]}))
    StopDurableExecutionRequest[:http_payload] = :error
    StopDurableExecutionRequest[:http_payload_member] = StopDurableExecutionRequest.member(:error)
    StopDurableExecutionRequest.type = Types::StopDurableExecutionRequest
    StopDurableExecutionResponse.add_member(:stop_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "StopTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    StopDurableExecutionResponse.type = Types::StopDurableExecutionResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    SubnetIPAddressLimitReachedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    SubnetIPAddressLimitReachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    SubnetIPAddressLimitReachedException.type = Types::SubnetIPAddressLimitReachedException
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    SystemLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Debug", traits: {"smithy.api#enumValue" => "DEBUG", "smithy.api#tags" => ["feature:public"]}))
    SystemLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Info", traits: {"smithy.api#enumValue" => "INFO", "smithy.api#tags" => ["feature:public"]}))
    SystemLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Warn", traits: {"smithy.api#enumValue" => "WARN", "smithy.api#tags" => ["feature:public"]}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member", traits: {"smithy.api#tags" => ["feature:public"], "smithy.api#xmlName" => "Key"}))
    TagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#tags" => ["feature:public"]}))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#tags" => ["feature:public"]}))
    TagsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TagsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsErrorMessage, name: "Message", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TagsError.type = Types::TagsError
    TargetTrackingScalingPolicy.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderPredefinedMetricType, name: "PredefinedMetricType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TargetTrackingScalingPolicy.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricTargetValue, name: "TargetValue", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TargetTrackingScalingPolicy.type = Types::TargetTrackingScalingPolicy
    TenancyConfig.add_member(:tenant_isolation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantIsolationMode, name: "TenantIsolationMode", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    TenancyConfig.type = Types::TenancyConfig
    TenantIsolationMode.add_member(:per_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_TENANT", traits: {"smithy.api#enumValue" => "PER_TENANT", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentInvocationLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "FunctionInvocationRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:reserved_function_concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionConcurrentInvocationLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:reserved_function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionInvocationRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:caller_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallerRateLimitExceeded", traits: {"smithy.api#enumValue" => "CallerRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:concurrent_snapshot_create_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentSnapshotCreateLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentSnapshotCreateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After", "smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleReason, name: "Reason", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Topics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    TraceHeader.add_member(:x_amzn_trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: XAmznTraceId, name: "XAmznTraceId", traits: {"smithy.api#tags" => ["feature:public"]}))
    TraceHeader.type = Types::TraceHeader
    TracingConfig.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingMode, name: "Mode", traits: {"smithy.api#tags" => ["feature:public"]}))
    TracingConfig.type = Types::TracingConfig
    TracingConfigResponse.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingMode, name: "Mode", traits: {"smithy.api#tags" => ["feature:public"]}))
    TracingConfigResponse.type = Types::TracingConfigResponse
    TracingMode.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active", "smithy.api#tags" => ["feature:public"]}))
    TracingMode.add_member(:pass_through, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PassThrough", traits: {"smithy.api#enumValue" => "PassThrough", "smithy.api#tags" => ["feature:public"]}))
    UnsupportedMediaTypeException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    UnsupportedMediaTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    UnsupportedMediaTypeException.type = Types::UnsupportedMediaTypeException
    UntagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAliasOutput.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "AliasArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    UpdateAliasRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Alias", "smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionWithLatestPublished, name: "FunctionVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.add_member(:routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasRoutingConfiguration, name: "RoutingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateAliasRequest.type = Types::UpdateAliasRequest
    UpdateCapacityProviderRequest.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderName, name: "CapacityProviderName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateCapacityProviderRequest.add_member(:capacity_provider_scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderScalingConfig, name: "CapacityProviderScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCapacityProviderRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "PropagateTags", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCapacityProviderRequest.add_member(:telemetry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderTelemetryConfig, name: "TelemetryConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCapacityProviderRequest.type = Types::UpdateCapacityProviderRequest
    UpdateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "CapacityProvider", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateCapacityProviderResponse.type = Types::UpdateCapacityProviderResponse
    UpdateCodeSigningConfigRequest.add_member(:code_signing_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfigArn, name: "CodeSigningConfigArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateCodeSigningConfigRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCodeSigningConfigRequest.add_member(:allowed_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedPublishers, name: "AllowedPublishers", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCodeSigningConfigRequest.add_member(:code_signing_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningPolicies, name: "CodeSigningPolicies", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateCodeSigningConfigRequest.type = Types::UpdateCodeSigningConfigRequest
    UpdateCodeSigningConfigResponse.add_member(:code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeSigningConfig, name: "CodeSigningConfig", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateCodeSigningConfigResponse.type = Types::UpdateCodeSigningConfigResponse
    UpdateEventSourceMappingOutput.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourcePosition, name: "StartingPosition", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:starting_position_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartingPositionTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:event_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "EventSourceArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:filter_criteria_error, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaError, name: "FilterCriteriaError", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:last_processing_result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastProcessingResult", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:state_transition_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateTransitionReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: Queues, name: "Queues", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:self_managed_event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedEventSource, name: "SelfManagedEventSource", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:event_source_mapping_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingArn, name: "EventSourceMappingArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingOutput.type = Types::UpdateEventSourceMappingOutput
    UpdateEventSourceMappingRequest.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: UUIDString, name: "UUID", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSize, name: "BatchSize", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:metrics_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingMetricsConfig, name: "MetricsConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSourceMappingLoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "ScalingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:maximum_batching_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumBatchingWindowInSeconds, name: "MaximumBatchingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:parallelization_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelizationFactor, name: "ParallelizationFactor", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:maximum_record_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRecordAgeInSeconds, name: "MaximumRecordAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:bisect_batch_on_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: BisectBatchOnFunctionError, name: "BisectBatchOnFunctionError", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttemptsEventSourceMapping, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:tumbling_window_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: TumblingWindowInSeconds, name: "TumblingWindowInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:source_access_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccessConfigurations, name: "SourceAccessConfigurations", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:function_response_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionResponseTypeList, name: "FunctionResponseTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:amazon_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonManagedKafkaEventSourceConfig, name: "AmazonManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:self_managed_kafka_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedKafkaEventSourceConfig, name: "SelfManagedKafkaEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:document_db_event_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentDBEventSourceConfig, name: "DocumentDBEventSourceConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.add_member(:provisioned_poller_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedPollerConfig, name: "ProvisionedPollerConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateEventSourceMappingRequest.type = Types::UpdateEventSourceMappingRequest
    UpdateFunctionCodeOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeOutput.type = Types::UpdateFunctionCodeOutput
    UpdateFunctionCodeRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ZipFile", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:s3_object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "S3ObjectVersion", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:s3_object_storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectStorageMode, name: "S3ObjectStorageMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageUri", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Publish", traits: {"smithy.api#default" => false, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:publish_to, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersionLatestPublished, name: "PublishTo", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DryRun", traits: {"smithy.api#default" => false, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.add_member(:source_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "SourceKMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionCodeRequest.type = Types::UpdateFunctionCodeRequest
    UpdateFunctionConfigurationOutput.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NameSpacedFunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:code_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CodeSize", traits: {"smithy.api#default" => 0, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:code_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CodeSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentResponse, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfigResponse, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:master_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "MasterArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayersReferenceList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:signing_profile_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningProfileVersionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:signing_job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SigningJobArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:package_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageType, name: "PackageType", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:image_config_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigResponse, name: "ImageConfigResponse", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchitecturesList, name: "Architectures", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStartResponse, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:runtime_version_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeVersionConfig, name: "RuntimeVersionConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:tenancy_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyConfig, name: "TenancyConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:config_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigSha256", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationOutput.type = Types::UpdateFunctionConfigurationOutput
    UpdateFunctionConfigurationRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "Role", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:handler, ::Smithy::Schema::Shapes::MemberShape.new(target: Handler, name: "Handler", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Timeout, name: "Timeout", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "MemorySize", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "Environment", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Runtime, name: "Runtime", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:dead_letter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterConfig, name: "DeadLetterConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyArn, name: "KMSKeyArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:tracing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingConfig, name: "TracingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:layers, ::Smithy::Schema::Shapes::MemberShape.new(target: LayerList, name: "Layers", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:file_system_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemConfigList, name: "FileSystemConfigs", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfig, name: "ImageConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "EphemeralStorage", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:snap_start, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapStart, name: "SnapStart", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "LoggingConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:capacity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderConfig, name: "CapacityProviderConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.add_member(:durable_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DurableConfig, name: "DurableConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionConfigurationRequest.type = Types::UpdateFunctionConfigurationRequest
    UpdateFunctionEventInvokeConfigOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigOutput.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigOutput.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigOutput.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigOutput.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigOutput.type = Types::UpdateFunctionEventInvokeConfigOutput
    UpdateFunctionEventInvokeConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacedFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericLatestPublishedOrAliasQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_retry_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumRetryAttempts, name: "MaximumRetryAttempts", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:maximum_event_age_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumEventAgeInSeconds, name: "MaximumEventAgeInSeconds", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationConfig, name: "DestinationConfig", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionEventInvokeConfigRequest.type = Types::UpdateFunctionEventInvokeConfigRequest
    UpdateFunctionUrlConfigRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlFunctionName, name: "FunctionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlQualifier, name: "Qualifier", traits: {"smithy.api#httpQuery" => "Qualifier", "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigRequest.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigRequest.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigRequest.type = Types::UpdateFunctionUrlConfigRequest
    UpdateFunctionUrlConfigResponse.add_member(:function_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrl, name: "FunctionUrl", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "FunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionUrlAuthType, name: "AuthType", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:cors, ::Smithy::Schema::Shapes::MemberShape.new(target: Cors, name: "Cors", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.add_member(:invoke_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeMode, name: "InvokeMode", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateFunctionUrlConfigResponse.type = Types::UpdateFunctionUrlConfigResponse
    UpdateRuntimeOn.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Auto", traits: {"smithy.api#enumValue" => "Auto", "smithy.api#tags" => ["feature:public"]}))
    UpdateRuntimeOn.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Manual", traits: {"smithy.api#enumValue" => "Manual", "smithy.api#tags" => ["feature:public"]}))
    UpdateRuntimeOn.add_member(:function_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionUpdate", traits: {"smithy.api#enumValue" => "FunctionUpdate", "smithy.api#tags" => ["feature:public"]}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfig.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Ipv6AllowedForDualStack", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfig.type = Types::VpcConfig
    VpcConfigResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfigResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfigResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfigResponse.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Ipv6AllowedForDualStack", traits: {"smithy.api#tags" => ["feature:public"]}))
    VpcConfigResponse.type = Types::VpcConfigResponse
    WaitCancelledDetails.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: EventError, name: "Error", traits: {"smithy.api#tags" => ["feature:public"]}))
    WaitCancelledDetails.type = Types::WaitCancelledDetails
    WaitDetails.add_member(:scheduled_end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "ScheduledEndTimestamp", traits: {"smithy.api#tags" => ["feature:public"]}))
    WaitDetails.type = Types::WaitDetails
    WaitOptions.add_member(:wait_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "WaitSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 31622400}, "smithy.api#tags" => ["feature:public"]}))
    WaitOptions.type = Types::WaitOptions
    WaitStartedDetails.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "Duration", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    WaitStartedDetails.add_member(:scheduled_end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTimestamp, name: "ScheduledEndTimestamp", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    WaitStartedDetails.type = Types::WaitStartedDetails
    WaitSucceededDetails.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "Duration", traits: {"smithy.api#tags" => ["feature:public"]}))
    WaitSucceededDetails.type = Types::WaitSucceededDetails

    AWSGirApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lambda#AWSGirApiService"
      service.name = "AWSGirApiService"
      service.version = "2015-03-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda", "arnNamespace" => "lambda", "cloudFormationName" => "Lambda", "cloudTrailEventSource" => "lambda.amazonaws.com", "endpointPrefix" => "lambda"}, "aws.api#tagEnabled" => {"disableDefaultOperations" => true}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.iam#defineConditionKeys" => {"lambda:VpcIds" => {"type" => "String", "documentation" => "Filters access by the ID of the VPC configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:SubnetIds" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ID of subnets configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:Layer" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ARN of a version of an AWS Lambda layer", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:EventSourceToken" => {"type" => "String", "documentation" => "Filters access by the ID from a non-AWS event source configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:FunctionUrlAuthType" => {"type" => "String", "documentation" => "Filters access by authorization type specified in request. Available during CreateFunctionUrlConfig, UpdateFunctionUrlConfig, DeleteFunctionUrlConfig, GetFunctionUrlConfig, ListFunctionUrlConfig, AddPermission and RemovePermission operations", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag", "required" => false}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag", "required" => false}, "lambda:CodeSigningConfigArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an AWS Lambda code signing config", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:FunctionArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys", "required" => false}, "lambda:SourceFunctionArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of the AWS Lambda function from which the request originated", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:SecurityGroupIds" => {"type" => "ArrayOfString", "documentation" => "Filters access by the ID of security groups configured for the AWS Lambda function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}, "lambda:Principal" => {"type" => "String", "documentation" => "Filters access by restricting the AWS service or account that can invoke a function", "relativeDocumentation" => "lambda-api-permissions-ref.html", "required" => false}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#suppress" => ["ServiceTagging"], "smithy.api#tags" => ["feature:public"], "smithy.api#title" => "AWS Lambda", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add permissions to the resource-based policy of a version of an AWS Lambda layer", "relativeDocumentation" => "API_AddLayerVersionPermission.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:add_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#AddPermission"
        operation.name = "AddPermission"
        operation.input = AddPermissionRequest
        operation.output = AddPermissionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << PublicPolicyException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType", "lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to give an AWS service or another account permission to use an AWS Lambda function", "relativeDocumentation" => "API_AddPermission.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:checkpoint_durable_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CheckpointDurableExecution"
        operation.name = "CheckpointDurableExecution"
        operation.input = CheckpointDurableExecutionRequest
        operation.output = CheckpointDurableExecutionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to save the progress of an AWS Lambda durable execution", "relativeDocumentation" => "API_CheckpointDurableExecution.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-12-01/durable-executions/{DurableExecutionArn}/checkpoint", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasRequest
        operation.output = CreateAliasOutput
        operation.errors << AliasLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an alias for a Lambda function version", "relativeDocumentation" => "API_CreateAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 201}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:create_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateCapacityProvider"
        operation.name = "CreateCapacityProvider"
        operation.input = CreateCapacityProviderRequest
        operation.output = CreateCapacityProviderResponse
        operation.errors << CapacityProviderLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "lambda:SubnetIds", "lambda:SecurityGroupIds"], "aws.iam#iamAction" => {"createsResources" => ["capacityProvider"], "documentation" => "Grants permission to create an AWS Lambda capacity provider", "relativeDocumentation" => "API_CreateCapacityProvider.html", "requiredActions" => ["iam:PassRole", "iam:CreateServiceLinkedRole", "kms:DescribeKey"], "resources" => {"required" => {"capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-11-30/capacity-providers", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:create_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateCodeSigningConfig"
        operation.name = "CreateCodeSigningConfig"
        operation.input = CreateCodeSigningConfigRequest
        operation.output = CreateCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"createsResources" => ["code signing config"], "documentation" => "Grants permission to create an AWS Lambda code signing config", "relativeDocumentation" => "API_CreateCodeSigningConfig.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2020-04-22/code-signing-configs", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "lambda:FunctionArn", "aws:TagKeys"], "aws.iam#iamAction" => {"createsResources" => ["eventSourceMapping"], "documentation" => "Grants permission to create a mapping between an event source and an AWS Lambda function", "relativeDocumentation" => "API_CreateEventSourceMapping.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/event-source-mappings", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:create_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#CreateFunction"
        operation.name = "CreateFunction"
        operation.input = CreateFunctionRequest
        operation.output = CreateFunctionOutput
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << CodeStorageExceededException
        operation.errors << CodeVerificationFailedException
        operation.errors << FunctionVersionsPerCapacityProviderLimitExceededException
        operation.errors << InvalidCodeSignatureException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:VpcIds", "lambda:SubnetIds", "lambda:CodeSigningConfigArn", "lambda:Layer", "aws:RequestTag/${TagKey}", "aws:TagKeys", "lambda:SecurityGroupIds"], "aws.iam#iamAction" => {"createsResources" => ["function"], "documentation" => "Grants permission to create an AWS Lambda function", "relativeDocumentation" => "API_CreateFunction.html", "requiredActions" => ["iam:PassRole", "lambda:PassCapacityProvider"], "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions", "code" => 201}, "smithy.api#idempotent" => {}, "smithy.api#suppress" => ["TaggableResource"], "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a function url configuration for a Lambda function", "relativeDocumentation" => "API_CreateFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = DeleteAliasRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda function alias", "relativeDocumentation" => "API_DeleteAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteCapacityProvider"
        operation.name = "DeleteCapacityProvider"
        operation.input = DeleteCapacityProviderRequest
        operation.output = DeleteCapacityProviderResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda capacity provider", "relativeDocumentation" => "API_DeleteCapacityProvider.html", "resources" => {"required" => {"capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-11-30/capacity-providers/{CapacityProviderName}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda code signing config", "relativeDocumentation" => "API_DeleteCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda event source mapping", "relativeDocumentation" => "API_DeleteEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = DeleteFunctionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to detach a code signing config from an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a concurrent execution limit from an AWS Lambda function", "relativeDocumentation" => "API_DeleteFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the configuration for asynchronous invocation for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_DeleteFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_function_url_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteFunctionUrlConfig"
        operation.name = "DeleteFunctionUrlConfig"
        operation.input = DeleteFunctionUrlConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete function url configuration for a Lambda function", "relativeDocumentation" => "API_DeleteFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_layer_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteLayerVersion"
        operation.name = "DeleteLayerVersion"
        operation.input = DeleteLayerVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a version of an AWS Lambda layer", "relativeDocumentation" => "API_DeleteLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the provisioned concurrency configuration for an AWS Lambda function", "relativeDocumentation" => "API_DeleteProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to detach a policy from an AWS Lambda resource", "relativeDocumentation" => "API_DeleteResourcePolicy.html", "requiredActions" => ["lambda:RemovePermission"], "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2026-07-09/resource-policy/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsRequest
        operation.output = GetAccountSettingsResponse
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an account's limits and usage in an AWS Region", "relativeDocumentation" => "API_GetAccountSettings.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2016-08-19/account-settings", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda function alias", "relativeDocumentation" => "API_GetAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetCapacityProvider"
        operation.name = "GetCapacityProvider"
        operation.input = GetCapacityProviderRequest
        operation.output = GetCapacityProviderResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda capacity provider", "relativeDocumentation" => "API_GetCapacityProvider.html", "resources" => {"required" => {"capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-11-30/capacity-providers/{CapacityProviderName}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetCodeSigningConfig"
        operation.name = "GetCodeSigningConfig"
        operation.input = GetCodeSigningConfigRequest
        operation.output = GetCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda code signing config", "relativeDocumentation" => "API_GetCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_durable_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetDurableExecution"
        operation.name = "GetDurableExecution"
        operation.input = GetDurableExecutionRequest
        operation.output = GetDurableExecutionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details of an AWS Lambda durable execution", "relativeDocumentation" => "API_GetDurableExecution.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-12-01/durable-executions/{DurableExecutionArn}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_durable_execution_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetDurableExecutionHistory"
        operation.name = "GetDurableExecutionHistory"
        operation.input = GetDurableExecutionHistoryRequest
        operation.output = GetDurableExecutionHistoryResponse
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view execution history of an AWS Lambda durable execution", "relativeDocumentation" => "API_GetDurableExecutionHistory.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-12-01/durable-executions/{DurableExecutionArn}/history", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::GetDurableExecutionHistory.new
      end)
      service.add_operation(:get_durable_execution_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetDurableExecutionState"
        operation.name = "GetDurableExecutionState"
        operation.input = GetDurableExecutionStateRequest
        operation.output = GetDurableExecutionStateResponse
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view current state of an AWS Lambda durable execution", "relativeDocumentation" => "API_GetDurableExecutionState.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-12-01/durable-executions/{DurableExecutionArn}/state", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::GetDurableExecutionState.new
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda event source mapping", "relativeDocumentation" => "API_GetEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an AWS Lambda function", "relativeDocumentation" => "API_GetFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_function_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionCodeSigningConfig"
        operation.name = "GetFunctionCodeSigningConfig"
        operation.input = GetFunctionCodeSigningConfigRequest
        operation.output = GetFunctionCodeSigningConfigResponse
        operation.errors << CodeSigningConfigNotFoundException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the code signing config arn attached to an AWS Lambda function", "relativeDocumentation" => "API_GetFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about the reserved concurrency configuration for a function", "relativeDocumentation" => "API_GetFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/concurrency", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about the version-specific settings of an AWS Lambda function or version", "relativeDocumentation" => "API_GetFunctionConfiguration.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the configuration for asynchronous invocation for a function, version, or alias", "relativeDocumentation" => "API_GetFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the recursion configuration of an AWS Lambda function", "relativeDocumentation" => "API_GetFunctionRecursionConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_function_scaling_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetFunctionScalingConfig"
        operation.name = "GetFunctionScalingConfig"
        operation.input = GetFunctionScalingConfigRequest
        operation.output = GetFunctionScalingConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the scaling configuration of an AWS Lambda function running on a capacity provider", "relativeDocumentation" => "API_GetFunctionScalingConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-11-30/functions/{FunctionName}/function-scaling-config", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to read function url configuration for a Lambda function", "relativeDocumentation" => "API_GetFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about a version of an AWS Lambda layer. Note this action also supports GetLayerVersionByArn API", "relativeDocumentation" => "API_GetLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetLayerVersion", "documentation" => "Grants permission to view details about a version of an AWS Lambda layer. Note this action also supports GetLayerVersionByArn API", "relativeDocumentation" => "API_GetLayerVersion.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers?find=LayerVersion", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the resource-based policy for a version of an AWS Lambda layer", "relativeDocumentation" => "API_GetLayerVersionPolicy.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the resource-based policy for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_GetPolicy.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/policy", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the provisioned concurrency configuration for an AWS Lambda function's alias or version", "relativeDocumentation" => "API_GetProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view a policy for an AWS Lambda resource", "relativeDocumentation" => "API_GetResourcePolicy.html", "requiredActions" => ["lambda:GetPolicy"], "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2026-07-09/resource-policy/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the runtime management configuration of an AWS Lambda function", "relativeDocumentation" => "API_GetRuntimeManagementConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:invoke, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#Invoke"
        operation.name = "Invoke"
        operation.input = InvocationRequest
        operation.output = InvocationResponse
        operation.errors << CodeArtifactUserDeletedException
        operation.errors << CodeArtifactUserFailedException
        operation.errors << CodeArtifactUserPendingException
        operation.errors << DurableExecutionAlreadyStartedException
        operation.errors << EC2AccessDeniedException
        operation.errors << EC2ThrottledException
        operation.errors << EC2UnexpectedException
        operation.errors << EFSIOException
        operation.errors << EFSMountConnectivityException
        operation.errors << EFSMountFailureException
        operation.errors << EFSMountTimeoutException
        operation.errors << ENILimitReachedException
        operation.errors << ENINotReadyException
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
        operation.errors << ModeNotSupportedException
        operation.errors << NoPublishedVersionException
        operation.errors << RecursiveInvocationException
        operation.errors << RequestTooLargeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceNotReadyException
        operation.errors << S3FilesMountConnectivityException
        operation.errors << S3FilesMountFailureException
        operation.errors << S3FilesMountTimeoutException
        operation.errors << SerializedRequestEntityTooLargeException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SnapStartException
        operation.errors << SnapStartNotReadyException
        operation.errors << SnapStartRegenerationFailureException
        operation.errors << SnapStartTimeoutException
        operation.errors << SubnetIPAddressLimitReachedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedMediaTypeException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:EventSourceToken"], "aws.iam#iamAction" => {"name" => "InvokeFunction", "documentation" => "Grants permission to invoke an AWS Lambda function", "relativeDocumentation" => "API_Invoke.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/invocations", "code" => 200}, "smithy.api#tags" => ["feature:public"], "smithy.test#smokeTests" => [{"id" => "ErrorInvalidFunctionName", "params" => {"FunctionName" => "bogus-function"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.lambda#ResourceNotFoundException"}}, "vendorParams" => {}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
      end)
      service.add_operation(:invoke_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeAsync"
        operation.name = "InvokeAsync"
        operation.input = InvokeAsyncRequest
        operation.output = InvokeAsyncResponse
        operation.errors << EC2AccessDeniedException
        operation.errors << EC2ThrottledException
        operation.errors << EC2UnexpectedException
        operation.errors << EFSIOException
        operation.errors << EFSMountConnectivityException
        operation.errors << EFSMountFailureException
        operation.errors << EFSMountTimeoutException
        operation.errors << ENILimitReachedException
        operation.errors << InvalidRequestContentException
        operation.errors << InvalidRuntimeException
        operation.errors << InvalidSecurityGroupIDException
        operation.errors << InvalidSubnetIDException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ModeNotSupportedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << S3FilesMountConnectivityException
        operation.errors << S3FilesMountFailureException
        operation.errors << S3FilesMountTimeoutException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SnapStartException
        operation.errors << SnapStartNotReadyException
        operation.errors << SnapStartRegenerationFailureException
        operation.errors << SnapStartTimeoutException
        operation.errors << SubnetIPAddressLimitReachedException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to invoke a function asynchronously (Deprecated)", "relativeDocumentation" => "API_InvokeAsync.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#deprecated" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/2014-11-13/functions/{FunctionName}/invoke-async", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:invoke_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#InvokeWithResponseStream"
        operation.name = "InvokeWithResponseStream"
        operation.input = InvokeWithResponseStreamRequest
        operation.output = InvokeWithResponseStreamResponse
        operation.errors << CodeArtifactUserDeletedException
        operation.errors << CodeArtifactUserFailedException
        operation.errors << CodeArtifactUserPendingException
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
        operation.errors << NoPublishedVersionException
        operation.errors << RecursiveInvocationException
        operation.errors << RequestTooLargeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceNotReadyException
        operation.errors << S3FilesMountConnectivityException
        operation.errors << S3FilesMountFailureException
        operation.errors << S3FilesMountTimeoutException
        operation.errors << SerializedRequestEntityTooLargeException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SnapStartException
        operation.errors << SnapStartNotReadyException
        operation.errors << SnapStartRegenerationFailureException
        operation.errors << SnapStartTimeoutException
        operation.errors << SubnetIPAddressLimitReachedException
        operation.errors << TooManyRequestsException
        operation.errors << UnsupportedMediaTypeException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:EventSourceToken"], "aws.iam#iamAction" => {"name" => "InvokeFunction", "documentation" => "Grants permission to invoke an AWS Lambda function", "relativeDocumentation" => "API_Invoke.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2021-11-15/functions/{FunctionName}/response-streaming-invocations", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of aliases for an AWS Lambda function", "relativeDocumentation" => "API_ListAliases.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/aliases", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_capacity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListCapacityProviders"
        operation.name = "ListCapacityProviders"
        operation.input = ListCapacityProvidersRequest
        operation.output = ListCapacityProvidersResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda capacity providers", "relativeDocumentation" => "API_ListCapacityProviders.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-11-30/capacity-providers", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListCapacityProviders.new
      end)
      service.add_operation(:list_code_signing_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListCodeSigningConfigs"
        operation.name = "ListCodeSigningConfigs"
        operation.input = ListCodeSigningConfigsRequest
        operation.output = ListCodeSigningConfigsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda code signing configs", "relativeDocumentation" => "API_ListCodeSigningConfigs.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListCodeSigningConfigs.new
      end)
      service.add_operation(:list_durable_executions_by_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListDurableExecutionsByFunction"
        operation.name = "ListDurableExecutionsByFunction"
        operation.input = ListDurableExecutionsByFunctionRequest
        operation.output = ListDurableExecutionsByFunctionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda durable executions of an AWS Lambda function", "relativeDocumentation" => "API_ListDurableExecutionsByFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-12-01/functions/{FunctionName}/durable-executions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListDurableExecutionsByFunction.new
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda event source mappings", "relativeDocumentation" => "API_ListEventSourceMappings.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/event-source-mappings", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of configurations for asynchronous invocation for a function", "relativeDocumentation" => "API_ListFunctionEventInvokeConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config/list", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to read function url configurations for a function", "relativeDocumentation" => "API_ListFunctionUrlConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2021-10-31/functions/{FunctionName}/urls", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListFunctionUrlConfigs.new
      end)
      service.add_operation(:list_function_versions_by_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctionVersionsByCapacityProvider"
        operation.name = "ListFunctionVersionsByCapacityProvider"
        operation.input = ListFunctionVersionsByCapacityProviderRequest
        operation.output = ListFunctionVersionsByCapacityProviderResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda function versions by the capacity provider assigned", "relativeDocumentation" => "API_ListFunctionVersionsByCapacityProvider.html", "resources" => {"required" => {"capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-11-30/capacity-providers/{CapacityProviderName}/function-versions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListFunctionVersionsByCapacityProvider.new
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda functions, with the version-specific configuration of each function", "relativeDocumentation" => "API_ListFunctions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"], "smithy.test#smokeTests" => [{"id" => "ListFunctionsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParams" => {}, "vendorParamsShape" => "aws.test#AwsVendorParams"}]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda functions by the code signing config assigned", "relativeDocumentation" => "API_ListFunctionsByCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions of an AWS Lambda layer", "relativeDocumentation" => "API_ListLayerVersions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda layers, with details about the latest version of each layer", "relativeDocumentation" => "API_ListLayers.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2018-10-31/layers", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of provisioned concurrency configurations for an AWS Lambda function", "relativeDocumentation" => "API_ListProvisionedConcurrencyConfigs.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of tags for an AWS Lambda function, event source mapping, capacity provider, or code signing configuration resource", "relativeDocumentation" => "API_ListTags.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}, "capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2017-03-31/tags/{Resource}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions for an AWS Lambda function", "relativeDocumentation" => "API_ListVersionsByFunction.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"createsResources" => ["layerVersion"], "documentation" => "Grants permission to create an AWS Lambda layer", "relativeDocumentation" => "API_PublishLayerVersion.html", "resources" => {"required" => {"layer" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2018-10-31/layers/{LayerName}/versions", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:publish_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PublishVersion"
        operation.name = "PublishVersion"
        operation.input = PublishVersionRequest
        operation.output = PublishVersionOutput
        operation.errors << CodeStorageExceededException
        operation.errors << FunctionVersionsPerCapacityProviderLimitExceededException
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Lambda function version", "relativeDocumentation" => "API_PublishVersion.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-03-31/functions/{FunctionName}/versions", "code" => 201}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:CodeSigningConfigArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to attach a code signing config to an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionCodeSigningConfig.html", "resources" => {"required" => {"function" => {}, "code signing config" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2020-06-30/functions/{FunctionName}/code-signing-config", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure reserved concurrency for an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionConcurrency.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2017-10-31/functions/{FunctionName}/concurrency", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure options for asynchronous invocation on an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_PutFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the recursion configuration of an AWS Lambda function", "relativeDocumentation" => "API_PutFunctionRecursionConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2024-08-31/functions/{FunctionName}/recursion-config", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:put_function_scaling_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutFunctionScalingConfig"
        operation.name = "PutFunctionScalingConfig"
        operation.input = PutFunctionScalingConfigRequest
        operation.output = PutFunctionScalingConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the scaling configuration of an AWS Lambda function running on a capacity provider", "relativeDocumentation" => "API_PutFunctionScalingConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-11-30/functions/{FunctionName}/function-scaling-config", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure provisioned concurrency for an AWS Lambda function's alias or version", "relativeDocumentation" => "API_PutProvisionedConcurrencyConfig.html", "resources" => {"optional" => {"function version" => {}, "function alias" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2019-09-30/functions/{FunctionName}/provisioned-concurrency", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << InvalidParameterValueException
        operation.errors << PolicyLengthExceededException
        operation.errors << PreconditionFailedException
        operation.errors << PublicPolicyException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to attach a policy to an AWS Lambda resource", "relativeDocumentation" => "API_PutResourcePolicy.html", "requiredActions" => ["lambda:AddPermission", "lambda:RemovePermission"], "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2026-07-09/resource-policy/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the runtime management configuration of an AWS Lambda function", "relativeDocumentation" => "API_PutRuntimeManagementConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2021-07-20/functions/{FunctionName}/runtime-management-config", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a statement from the permissions policy for a version of an AWS Lambda layer", "relativeDocumentation" => "API_RemoveLayerVersionPermission.html", "resources" => {"required" => {"layerVersion" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << PreconditionFailedException
        operation.errors << PublicPolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionUrlAuthType", "lambda:Principal"], "aws.iam#iamAction" => {"documentation" => "Grants permission to revoke function-use permission from an AWS service or another account", "relativeDocumentation" => "API_RemovePermission.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:send_durable_execution_callback_failure, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#SendDurableExecutionCallbackFailure"
        operation.name = "SendDurableExecutionCallbackFailure"
        operation.input = SendDurableExecutionCallbackFailureRequest
        operation.output = SendDurableExecutionCallbackFailureResponse
        operation.errors << CallbackTimeoutException
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send a failure response for a callback operation in an AWS Lambda durable execution", "relativeDocumentation" => "API_SendDurableExecutionCallbackFailure.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-12-01/durable-execution-callbacks/{CallbackId}/fail"}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:send_durable_execution_callback_heartbeat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#SendDurableExecutionCallbackHeartbeat"
        operation.name = "SendDurableExecutionCallbackHeartbeat"
        operation.input = SendDurableExecutionCallbackHeartbeatRequest
        operation.output = SendDurableExecutionCallbackHeartbeatResponse
        operation.errors << CallbackTimeoutException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send a heartbeat for a callback operation in an AWS Lambda durable execution", "relativeDocumentation" => "API_SendDurableExecutionCallbackHeartbeat.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-12-01/durable-execution-callbacks/{CallbackId}/heartbeat"}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:send_durable_execution_callback_success, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#SendDurableExecutionCallbackSuccess"
        operation.name = "SendDurableExecutionCallbackSuccess"
        operation.input = SendDurableExecutionCallbackSuccessRequest
        operation.output = SendDurableExecutionCallbackSuccessResponse
        operation.errors << CallbackTimeoutException
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send a successful response for a callback operation in an AWS Lambda durable execution", "relativeDocumentation" => "API_SendDurableExecutionCallbackSuccess.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-12-01/durable-execution-callbacks/{CallbackId}/succeed"}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:stop_durable_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#StopDurableExecution"
        operation.name = "StopDurableExecution"
        operation.input = StopDurableExecutionRequest
        operation.output = StopDurableExecutionResponse
        operation.errors << InvalidParameterValueException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to stop an AWS Lambda durable execution", "relativeDocumentation" => "API_StopDurableExecution.html", "resources" => {"required" => {"durable execution" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-12-01/durable-executions/{DurableExecutionArn}/stop", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to an AWS Lambda function, event source mapping, capacity provider, or code signing configuration resource", "relativeDocumentation" => "API_TagResources.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}, "capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from an AWS Lambda function, event source mapping, capacity provider, or code signing configuration resource", "relativeDocumentation" => "API_UntagResource.html", "resources" => {"optional" => {"eventSourceMapping" => {}, "function" => {}, "code signing config" => {}, "capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the configuration of an AWS Lambda function's alias", "relativeDocumentation" => "API_UpdateAlias.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/aliases/{Name}", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:update_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateCapacityProvider"
        operation.name = "UpdateCapacityProvider"
        operation.input = UpdateCapacityProviderRequest
        operation.output = UpdateCapacityProviderResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Lambda capacity provider", "relativeDocumentation" => "API_UpdateCapacityProvider.html", "resources" => {"required" => {"capacityProvider" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-11-30/capacity-providers/{CapacityProviderName}", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:update_code_signing_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambda#UpdateCodeSigningConfig"
        operation.name = "UpdateCodeSigningConfig"
        operation.input = UpdateCodeSigningConfigRequest
        operation.output = UpdateCodeSigningConfigResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Lambda code signing config", "relativeDocumentation" => "API_UpdateCodeSigningConfig.html", "resources" => {"required" => {"code signing config" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update the configuration of an AWS Lambda event source mapping", "relativeDocumentation" => "API_UpdateEventSourceMapping.html", "resources" => {"required" => {"eventSourceMapping" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/event-source-mappings/{UUID}", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the code of an AWS Lambda function", "relativeDocumentation" => "API_UpdateFunctionCode.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/code", "code" => 200}, "smithy.api#suppress" => ["DefaultValueInUpdate"], "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:VpcIds", "lambda:SubnetIds", "lambda:SecurityGroupIds", "lambda:Layer"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the version-specific settings of an AWS Lambda function", "relativeDocumentation" => "API_UpdateFunctionConfiguration.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2015-03-31/functions/{FunctionName}/configuration", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the configuration for asynchronous invocation for an AWS Lambda function, version, or alias", "relativeDocumentation" => "API_UpdateFunctionEventInvokeConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2019-09-25/functions/{FunctionName}/event-invoke-config", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:FunctionArn", "lambda:FunctionUrlAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update a function url configuration for a Lambda function", "relativeDocumentation" => "API_UpdateFunctionUrlConfig.html", "resources" => {"required" => {"function" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2021-10-31/functions/{FunctionName}/url", "code" => 200}, "smithy.api#tags" => ["feature:public"]}
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
