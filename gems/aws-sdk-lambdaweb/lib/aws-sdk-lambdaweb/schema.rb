# frozen_string_literal: true

# This is generated code!

module Aws::LambdaWeb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountQuotas = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#AccountQuotas", name: "AccountQuotas")
    AccountUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#AccountUsage", name: "AccountUsage")
    ApplicationLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#ApplicationLogLevel", name: "ApplicationLogLevel")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#AuthType", name: "AuthType")
    AutoDeploymentMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#AutoDeploymentMode", name: "AutoDeploymentMode")
    BuildConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#BuildConfig", name: "BuildConfig")
    CodeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CodeConfig", name: "CodeConfig")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWebFunctionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionEndpointRequest", name: "CreateWebFunctionEndpointRequest")
    CreateWebFunctionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionEndpointResponse", name: "CreateWebFunctionEndpointResponse")
    CreateWebFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionRequest", name: "CreateWebFunctionRequest")
    CreateWebFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionResponse", name: "CreateWebFunctionResponse")
    CreateWebFunctionRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionRevisionRequest", name: "CreateWebFunctionRevisionRequest")
    CreateWebFunctionRevisionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#CreateWebFunctionRevisionResponse", name: "CreateWebFunctionRevisionResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lambdaweb#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteWebFunctionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#DeleteWebFunctionEndpointRequest", name: "DeleteWebFunctionEndpointRequest")
    DeleteWebFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#DeleteWebFunctionRequest", name: "DeleteWebFunctionRequest")
    DeleteWebFunctionRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#DeleteWebFunctionRevisionRequest", name: "DeleteWebFunctionRevisionRequest")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 4, "max" => 256}, "smithy.api#pattern" => "^([a-z0-9-]+\\.)+[a-z]+$"})
    EndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#EndpointArn", name: "EndpointArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    EndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#EndpointConfig", name: "EndpointConfig")
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#EndpointName", name: "EndpointName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EndpointState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#EndpointState", name: "EndpointState")
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#EndpointType", name: "EndpointType")
    EndpointUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#EndpointUpdateStatus", name: "EndpointUpdateStatus")
    EnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdaweb#EnvironmentVariables", name: "EnvironmentVariables", traits: {"smithy.api#sensitive" => {}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#FunctionArn", name: "FunctionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    FunctionEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#FunctionEndpointSummary", name: "FunctionEndpointSummary")
    FunctionEndpointSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#FunctionEndpointSummaryList", name: "FunctionEndpointSummaryList", traits: {"smithy.api#uniqueItems" => {}})
    FunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#FunctionName", name: "FunctionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    FunctionRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#FunctionRevisionSummary", name: "FunctionRevisionSummary")
    FunctionRevisionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#FunctionRevisionSummaryList", name: "FunctionRevisionSummaryList", traits: {"smithy.api#uniqueItems" => {}})
    FunctionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#FunctionState", name: "FunctionState")
    FunctionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#FunctionSummary", name: "FunctionSummary")
    FunctionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#FunctionSummaryList", name: "FunctionSummaryList", traits: {"smithy.api#uniqueItems" => {}})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GetWebAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebAccountSettingsRequest", name: "GetWebAccountSettingsRequest")
    GetWebAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebAccountSettingsResponse", name: "GetWebAccountSettingsResponse")
    GetWebFunctionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionEndpointRequest", name: "GetWebFunctionEndpointRequest")
    GetWebFunctionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionEndpointResponse", name: "GetWebFunctionEndpointResponse")
    GetWebFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionRequest", name: "GetWebFunctionRequest")
    GetWebFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionResponse", name: "GetWebFunctionResponse")
    GetWebFunctionRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionRevisionRequest", name: "GetWebFunctionRevisionRequest")
    GetWebFunctionRevisionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#GetWebFunctionRevisionResponse", name: "GetWebFunctionRevisionResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-z-]*):kms:[a-z0-9-]+:[0-9]{12}:key/[a-z0-9-]+$"})
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListTagsResponse", name: "ListTagsResponse")
    ListWebFunctionEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionEndpointsRequest", name: "ListWebFunctionEndpointsRequest")
    ListWebFunctionEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionEndpointsResponse", name: "ListWebFunctionEndpointsResponse")
    ListWebFunctionRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionRevisionsRequest", name: "ListWebFunctionRevisionsRequest")
    ListWebFunctionRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionRevisionsResponse", name: "ListWebFunctionRevisionsResponse")
    ListWebFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionsRequest", name: "ListWebFunctionsRequest")
    ListWebFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ListWebFunctionsResponse", name: "ListWebFunctionsResponse")
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#LoggingConfig", name: "LoggingConfig")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambdaweb#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 50}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^[a-f0-9-]{36}$"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#pattern" => "^[0-9a-f-]{36}$"})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^([a-z]{2,}-){2,}[0-9]$"})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#RegionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    RegionalEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#RegionalEndpoint", name: "RegionalEndpoint")
    RegionalEndpoints = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdaweb#RegionalEndpoints", name: "RegionalEndpoints")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:[^:]+:lambda:[^:]+:\\d{12}:web-function/[^/]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    RevisionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#RevisionArn", name: "RevisionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RevisionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#RevisionConfig", name: "RevisionConfig")
    RevisionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#RevisionError", name: "RevisionError")
    RevisionErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#RevisionErrors", name: "RevisionErrors", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#RevisionId", name: "RevisionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RevisionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#RevisionState", name: "RevisionState")
    RevisionWeight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#RevisionWeight", name: "RevisionWeight")
    RevisionWeightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#RevisionWeightList", name: "RevisionWeightList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-z-]*):iam::[0-9]{12}:role/[a-zA-Z0-9+=,.@_/-]+$"})
    RuntimeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#RuntimeConfig", name: "RuntimeConfig")
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#S3Object", name: "S3Object")
    ScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ScalingConfig", name: "ScalingConfig")
    ServiceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ServiceConfig", name: "ServiceConfig")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SystemLogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdaweb#SystemLogLevel", name: "SystemLogLevel")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdaweb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\.:/=+\\-@]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdaweb#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#uniqueItems" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#TagResourceRequest", name: "TagResourceRequest")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdaweb#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TelemetryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#TelemetryConfig", name: "TelemetryConfig")
    ThrottleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ThrottleConfig", name: "ThrottleConfig")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateWebFunctionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#UpdateWebFunctionEndpointRequest", name: "UpdateWebFunctionEndpointRequest")
    UpdateWebFunctionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#UpdateWebFunctionEndpointResponse", name: "UpdateWebFunctionEndpointResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdaweb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountQuotas.add_member(:max_total_arm_v_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTotalArmVCpus", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    AccountQuotas.add_member(:max_total_rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTotalRateLimit", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    AccountQuotas.add_member(:max_revisions_per_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxRevisionsPerFunction", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    AccountQuotas.add_member(:max_endpoints_per_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxEndpointsPerFunction", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    AccountQuotas.type = Types::AccountQuotas
    AccountUsage.add_member(:function_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "functionCount", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    AccountUsage.type = Types::AccountUsage
    ApplicationLogLevel.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACE", traits: {"smithy.api#enumValue" => "TRACE"}))
    ApplicationLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    ApplicationLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    ApplicationLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    ApplicationLogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ApplicationLogLevel.add_member(:fatal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FATAL", traits: {"smithy.api#enumValue" => "FATAL"}))
    AuthType.add_member(:application_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_MANAGED", traits: {"smithy.api#enumValue" => "ApplicationManaged"}))
    AuthType.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_AUTH", traits: {"smithy.api#enumValue" => "IamAuth"}))
    AutoDeploymentMode.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST_REVISION", traits: {"smithy.api#enumValue" => "LatestRevision"}))
    AutoDeploymentMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    BuildConfig.add_member(:code_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeConfig, name: "codeConfig", traits: {"smithy.api#required" => {}}))
    BuildConfig.add_member(:runtime_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfig, name: "runtimeConfig", traits: {"smithy.api#required" => {}}))
    BuildConfig.type = Types::BuildConfig
    CodeConfig.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object", traits: {"smithy.api#required" => {}}))
    CodeConfig.type = Types::CodeConfig
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateWebFunctionEndpointRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebFunctionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateWebFunctionEndpointRequest.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointRequest.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode"))
    CreateWebFunctionEndpointRequest.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights"))
    CreateWebFunctionEndpointRequest.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    CreateWebFunctionEndpointRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    CreateWebFunctionEndpointRequest.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    CreateWebFunctionEndpointRequest.type = Types::CreateWebFunctionEndpointRequest
    CreateWebFunctionEndpointResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "endpointArn", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateWebFunctionEndpointResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    CreateWebFunctionEndpointResponse.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    CreateWebFunctionEndpointResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointUpdateStatus, name: "updateStatus"))
    CreateWebFunctionEndpointResponse.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updateStatusReason"))
    CreateWebFunctionEndpointResponse.add_member(:regional_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalEndpoints, name: "regionalEndpoints", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionEndpointResponse.type = Types::CreateWebFunctionEndpointResponse
    CreateWebFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRequest.add_member(:revision_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionConfig, name: "revisionConfig", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionRequest.add_member(:endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointConfig, name: "endpointConfig", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionRequest.type = Types::CreateWebFunctionRequest
    CreateWebFunctionResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionState, name: "state", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRevisionSummary, name: "revision", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEndpointSummary, name: "endpoint", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateWebFunctionResponse.type = Types::CreateWebFunctionResponse
    CreateWebFunctionRevisionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebFunctionRevisionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateWebFunctionRevisionRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateWebFunctionRevisionRequest.add_member(:build_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildConfig, name: "buildConfig", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionRequest.add_member(:service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfig, name: "serviceConfig", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionRequest.type = Types::CreateWebFunctionRevisionRequest
    CreateWebFunctionRevisionResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionArn, name: "revisionArn", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateWebFunctionRevisionResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateWebFunctionRevisionResponse.add_member(:build_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildConfig, name: "buildConfig", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfig, name: "serviceConfig", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionState, name: "state", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionErrors, name: "errors"))
    CreateWebFunctionRevisionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateWebFunctionRevisionResponse.type = Types::CreateWebFunctionRevisionResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "revisionId", traits: {"smithy.api#httpQuery" => "RevisionId"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteWebFunctionEndpointRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebFunctionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebFunctionEndpointRequest.type = Types::DeleteWebFunctionEndpointRequest
    DeleteWebFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebFunctionRequest.type = Types::DeleteWebFunctionRequest
    DeleteWebFunctionRevisionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebFunctionRevisionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebFunctionRevisionRequest.type = Types::DeleteWebFunctionRevisionRequest
    EndpointConfig.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    EndpointConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    EndpointConfig.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    EndpointConfig.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    EndpointConfig.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode"))
    EndpointConfig.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    EndpointConfig.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    EndpointConfig.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    EndpointConfig.type = Types::EndpointConfig
    EndpointState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    EndpointState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    EndpointState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    EndpointState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    EndpointType.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOME_REGION", traits: {"smithy.api#enumValue" => "HomeRegion"}))
    EndpointType.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_REGION", traits: {"smithy.api#enumValue" => "MultiRegion"}))
    EndpointType.add_member(:per_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_REGION", traits: {"smithy.api#enumValue" => "PerRegion"}))
    EndpointUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    EndpointUpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    EndpointUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    EnvironmentVariables.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])*$"}))
    EnvironmentVariables.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1}}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$", "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    FunctionEndpointSummary.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "endpointArn", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    FunctionEndpointSummary.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    FunctionEndpointSummary.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    FunctionEndpointSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointUpdateStatus, name: "updateStatus"))
    FunctionEndpointSummary.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updateStatusReason"))
    FunctionEndpointSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FunctionEndpointSummary.type = Types::FunctionEndpointSummary
    FunctionEndpointSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEndpointSummary, name: "member"))
    FunctionRevisionSummary.add_member(:revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionArn, name: "revisionArn", traits: {"smithy.api#required" => {}}))
    FunctionRevisionSummary.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    FunctionRevisionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    FunctionRevisionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionState, name: "state", traits: {"smithy.api#required" => {}}))
    FunctionRevisionSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    FunctionRevisionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FunctionRevisionSummary.type = Types::FunctionRevisionSummary
    FunctionRevisionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRevisionSummary, name: "member"))
    FunctionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    FunctionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    FunctionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    FunctionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    FunctionSummary.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionState, name: "state", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FunctionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FunctionSummary.type = Types::FunctionSummary
    FunctionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummary, name: "member"))
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy", traits: {"smithy.api#jsonName" => "Policy", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "revisionId", traits: {"smithy.api#jsonName" => "RevisionId", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetWebAccountSettingsRequest.type = Types::GetWebAccountSettingsRequest
    GetWebAccountSettingsResponse.add_member(:account_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountQuotas, name: "accountQuotas", traits: {"smithy.api#required" => {}}))
    GetWebAccountSettingsResponse.add_member(:account_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountUsage, name: "accountUsage", traits: {"smithy.api#required" => {}}))
    GetWebAccountSettingsResponse.type = Types::GetWebAccountSettingsResponse
    GetWebFunctionEndpointRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebFunctionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebFunctionEndpointRequest.type = Types::GetWebFunctionEndpointRequest
    GetWebFunctionEndpointResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "endpointArn", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetWebFunctionEndpointResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    GetWebFunctionEndpointResponse.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    GetWebFunctionEndpointResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointUpdateStatus, name: "updateStatus"))
    GetWebFunctionEndpointResponse.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updateStatusReason"))
    GetWebFunctionEndpointResponse.add_member(:regional_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalEndpoints, name: "regionalEndpoints", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetWebFunctionEndpointResponse.type = Types::GetWebFunctionEndpointResponse
    GetWebFunctionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebFunctionRequest.type = Types::GetWebFunctionRequest
    GetWebFunctionResponse.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionState, name: "state", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetWebFunctionResponse.type = Types::GetWebFunctionResponse
    GetWebFunctionRevisionRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebFunctionRevisionRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebFunctionRevisionRequest.type = Types::GetWebFunctionRevisionRequest
    GetWebFunctionRevisionResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionArn, name: "revisionArn", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetWebFunctionRevisionResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    GetWebFunctionRevisionResponse.add_member(:build_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildConfig, name: "buildConfig", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfig, name: "serviceConfig", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionState, name: "state", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionErrors, name: "errors"))
    GetWebFunctionRevisionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetWebFunctionRevisionResponse.type = Types::GetWebFunctionRevisionResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListTagsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#jsonName" => "Tags"}))
    ListTagsResponse.type = Types::ListTagsResponse
    ListWebFunctionEndpointsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebFunctionEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListWebFunctionEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 50}))
    ListWebFunctionEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionEndpointsRequest.type = Types::ListWebFunctionEndpointsRequest
    ListWebFunctionEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionEndpointSummaryList, name: "endpoints", traits: {"smithy.api#required" => {}}))
    ListWebFunctionEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionEndpointsResponse.type = Types::ListWebFunctionEndpointsResponse
    ListWebFunctionRevisionsRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebFunctionRevisionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListWebFunctionRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 50}))
    ListWebFunctionRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionRevisionsRequest.type = Types::ListWebFunctionRevisionsRequest
    ListWebFunctionRevisionsResponse.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRevisionSummaryList, name: "revisions", traits: {"smithy.api#required" => {}}))
    ListWebFunctionRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionRevisionsResponse.type = Types::ListWebFunctionRevisionsResponse
    ListWebFunctionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListWebFunctionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 50}))
    ListWebFunctionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionsRequest.type = Types::ListWebFunctionsRequest
    ListWebFunctionsResponse.add_member(:functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionSummaryList, name: "functions", traits: {"smithy.api#required" => {}}))
    ListWebFunctionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListWebFunctionsResponse.type = Types::ListWebFunctionsResponse
    LoggingConfig.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-_/#]+$"}))
    LoggingConfig.add_member(:application_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogLevel, name: "applicationLogLevel"))
    LoggingConfig.add_member(:system_log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemLogLevel, name: "systemLogLevel"))
    LoggingConfig.type = Types::LoggingConfig
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy", traits: {"smithy.api#jsonName" => "Policy", "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "revisionId", traits: {"smithy.api#jsonName" => "RevisionId"}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy", traits: {"smithy.api#jsonName" => "Policy", "smithy.api#required" => {}}))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "revisionId", traits: {"smithy.api#jsonName" => "RevisionId", "smithy.api#required" => {}}))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    RegionalEndpoint.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    RegionalEndpoint.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    RegionalEndpoint.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights", traits: {"smithy.api#required" => {}}))
    RegionalEndpoint.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    RegionalEndpoint.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    RegionalEndpoint.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state", traits: {"smithy.api#required" => {}}))
    RegionalEndpoint.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    RegionalEndpoint.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointUpdateStatus, name: "updateStatus"))
    RegionalEndpoint.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updateStatusReason"))
    RegionalEndpoint.type = Types::RegionalEndpoint
    RegionalEndpoints.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "key"))
    RegionalEndpoints.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalEndpoint, name: "value"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevisionConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RevisionConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    RevisionConfig.add_member(:build_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildConfig, name: "buildConfig", traits: {"smithy.api#required" => {}}))
    RevisionConfig.add_member(:service_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfig, name: "serviceConfig", traits: {"smithy.api#required" => {}}))
    RevisionConfig.type = Types::RevisionConfig
    RevisionError.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "attribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    RevisionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    RevisionError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    RevisionError.type = Types::RevisionError
    RevisionErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionError, name: "member"))
    RevisionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    RevisionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    RevisionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    RevisionWeight.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    RevisionWeight.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "weight", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RevisionWeight.type = Types::RevisionWeight
    RevisionWeightList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeight, name: "member"))
    RuntimeConfig.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "runtime", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-z][a-z0-9]*(\\.[a-z0-9]+)*$", "smithy.api#required" => {}}))
    RuntimeConfig.type = Types::RuntimeConfig
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^([a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9])$", "smithy.api#required" => {}}))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    S3Object.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    S3Object.type = Types::S3Object
    ScalingConfig.add_member(:max_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxEnvironments", traits: {"smithy.api#range" => {"min" => 2, "max" => 10000}}))
    ScalingConfig.type = Types::ScalingConfig
    ServiceConfig.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    ServiceConfig.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeoutSeconds", traits: {"smithy.api#default" => 30, "smithy.api#range" => {"min" => 3, "max" => 900}}))
    ServiceConfig.add_member(:egress_network_connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "egressNetworkConnectorArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-z-]*):lambda:[a-z0-9-]+:[0-9]{12}:network-connector:[a-zA-Z0-9_-]+:[0-9]+$"}))
    ServiceConfig.add_member(:max_concurrency_per_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxConcurrencyPerEnvironment", traits: {"smithy.api#default" => 64, "smithy.api#range" => {"min" => 1, "max" => 128}}))
    ServiceConfig.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environmentVariables"))
    ServiceConfig.add_member(:telemetry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryConfig, name: "telemetryConfig"))
    ServiceConfig.type = Types::ServiceConfig
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SystemLogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "DEBUG"}))
    SystemLogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    SystemLogLevel.add_member(:warn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARN", traits: {"smithy.api#enumValue" => "WARN"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#jsonName" => "Tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _\\.:/=+\\-@]*$"}))
    TelemetryConfig.add_member(:logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfig, name: "loggingConfig"))
    TelemetryConfig.type = Types::TelemetryConfig
    ThrottleConfig.add_member(:rate_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rateLimit", traits: {"smithy.api#range" => {"min" => 0}}))
    ThrottleConfig.type = Types::ThrottleConfig
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateWebFunctionEndpointRequest.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionName, name: "functionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebFunctionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebFunctionEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateWebFunctionEndpointRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    UpdateWebFunctionEndpointRequest.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode"))
    UpdateWebFunctionEndpointRequest.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights"))
    UpdateWebFunctionEndpointRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    UpdateWebFunctionEndpointRequest.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    UpdateWebFunctionEndpointRequest.type = Types::UpdateWebFunctionEndpointRequest
    UpdateWebFunctionEndpointResponse.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointArn, name: "endpointArn", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "endpointName", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateWebFunctionEndpointResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:auto_deployment_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDeploymentMode, name: "autoDeploymentMode", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:revision_weights, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionWeightList, name: "revisionWeights", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfig, name: "scalingConfig"))
    UpdateWebFunctionEndpointResponse.add_member(:throttle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleConfig, name: "throttleConfig"))
    UpdateWebFunctionEndpointResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointState, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointUpdateStatus, name: "updateStatus"))
    UpdateWebFunctionEndpointResponse.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updateStatusReason"))
    UpdateWebFunctionEndpointResponse.add_member(:regional_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalEndpoints, name: "regionalEndpoints", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateWebFunctionEndpointResponse.type = Types::UpdateWebFunctionEndpointResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    LambdaWeb = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lambdaweb#LambdaWeb"
      service.name = "LambdaWeb"
      service.version = "2025-03-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda Web", "arnNamespace" => "lambda", "endpointPrefix" => "lambda"}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource. Enables attribute-based access control (ABAC) for all web function resources including sub-resources (revisions, endpoints) which inherit tags from the parent function", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "lambda:Request/WebFunctionAuthType" => {"type" => "String", "documentation" => "Filters access by the auth type specified in the request. Available during CreateWebFunction, CreateWebFunctionEndpoint, and UpdateWebFunctionEndpoint operations"}, "lambda:Resource/WebFunctionAuthType" => {"type" => "String", "documentation" => "Filters access by the auth type configured on the web function endpoint resource. Available during InvokeWebFunctionEndpoint, UpdateWebFunctionEndpoint, DeleteWebFunctionEndpoint, and GetWebFunctionEndpoint operations"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Lambda Web", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_web_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#CreateWebFunction"
        operation.name = "CreateWebFunction"
        operation.input = CreateWebFunctionRequest
        operation.output = CreateWebFunctionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "lambda:Request/WebFunctionAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a Lambda web function", "requiredActions" => ["iam:PassRole", "lambda:PassNetworkConnector"], "resources" => {"required" => {"webFunction" => {}}}, "createsResources" => ["webFunction"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-03-07/web-functions", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_function_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#CreateWebFunctionEndpoint"
        operation.name = "CreateWebFunctionEndpoint"
        operation.input = CreateWebFunctionEndpointRequest
        operation.output = CreateWebFunctionEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Request/WebFunctionAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an endpoint for a Lambda web function", "resources" => {"required" => {"webFunction" => {}}}, "createsResources" => ["webFunctionEndpoint"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-03-07/web-functions/{functionName}/endpoints", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_function_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#CreateWebFunctionRevision"
        operation.name = "CreateWebFunctionRevision"
        operation.input = CreateWebFunctionRevisionRequest
        operation.output = CreateWebFunctionRevisionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a revision for a Lambda web function", "requiredActions" => ["iam:PassRole", "lambda:PassNetworkConnector"], "resources" => {"required" => {"webFunction" => {}}}, "createsResources" => ["webFunctionRevision"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-03-07/web-functions/{functionName}/revisions", "code" => 202}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-03-07/resource-policy/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#DeleteWebFunction"
        operation.name = "DeleteWebFunction"
        operation.input = DeleteWebFunctionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Lambda web function", "resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-03-07/web-functions/{functionName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_function_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#DeleteWebFunctionEndpoint"
        operation.name = "DeleteWebFunctionEndpoint"
        operation.input = DeleteWebFunctionEndpointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Resource/WebFunctionAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an endpoint for a Lambda web function", "resources" => {"required" => {"webFunctionEndpoint" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_function_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#DeleteWebFunctionRevision"
        operation.name = "DeleteWebFunctionRevision"
        operation.input = DeleteWebFunctionRevisionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a revision for a Lambda web function", "resources" => {"required" => {"webFunctionRevision" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-03-07/web-functions/{functionName}/revisions/{revisionId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/resource-policy/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#GetWebAccountSettings"
        operation.name = "GetWebAccountSettings"
        operation.input = GetWebAccountSettingsRequest
        operation.output = GetWebAccountSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view the account settings"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/web-account-settings"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#GetWebFunction"
        operation.name = "GetWebFunction"
        operation.input = GetWebFunctionRequest
        operation.output = GetWebFunctionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about a Lambda web function", "resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/web-functions/{functionName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_function_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#GetWebFunctionEndpoint"
        operation.name = "GetWebFunctionEndpoint"
        operation.input = GetWebFunctionEndpointRequest
        operation.output = GetWebFunctionEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Resource/WebFunctionAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to view details about an endpoint for a Lambda web function", "resources" => {"required" => {"webFunctionEndpoint" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_function_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#GetWebFunctionRevision"
        operation.name = "GetWebFunctionRevision"
        operation.input = GetWebFunctionRevisionRequest
        operation.output = GetWebFunctionRevisionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view details about a revision for a Lambda web function", "resources" => {"required" => {"webFunctionRevision" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/web-functions/{functionName}/revisions/{revisionId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"optional" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-03-07/tags/{resource}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_web_function_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#ListWebFunctionEndpoints"
        operation.name = "ListWebFunctionEndpoints"
        operation.input = ListWebFunctionEndpointsRequest
        operation.output = ListWebFunctionEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of endpoints for a Lambda web function", "resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-03-07/web-functions/{functionName}/list-endpoints"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebFunctionEndpoints.new
      end)
      service.add_operation(:list_web_function_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#ListWebFunctionRevisions"
        operation.name = "ListWebFunctionRevisions"
        operation.input = ListWebFunctionRevisionsRequest
        operation.output = ListWebFunctionRevisionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of revisions for a Lambda web function", "resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-03-07/web-functions/{functionName}/list-revisions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebFunctionRevisions.new
      end)
      service.add_operation(:list_web_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#ListWebFunctions"
        operation.name = "ListWebFunctions"
        operation.input = ListWebFunctionsRequest
        operation.output = ListWebFunctionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of Lambda web functions"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-03-07/web-functions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebFunctions.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"required" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-03-07/resource-policy/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"optional" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-03-07/tags/{resource}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"resources" => {"optional" => {"webFunction" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-03-07/tags/{resource}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_web_function_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdaweb#UpdateWebFunctionEndpoint"
        operation.name = "UpdateWebFunctionEndpoint"
        operation.input = UpdateWebFunctionEndpointRequest
        operation.output = UpdateWebFunctionEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["lambda:Request/WebFunctionAuthType", "lambda:Resource/WebFunctionAuthType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update an endpoint for a Lambda web function", "resources" => {"required" => {"webFunctionEndpoint" => {}}}}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2025-03-07/web-functions/{functionName}/endpoints/{endpointName}", "code" => 202}, "smithy.api#idempotent" => {}}
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
