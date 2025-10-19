# frozen_string_literal: true

# This is generated code!

module Aws::AppFabric
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApiKeyCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ApiKeyCredential", name: "ApiKeyCredential")
    AppAuthorization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AppAuthorization", name: "AppAuthorization")
    AppAuthorizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#AppAuthorizationStatus", name: "AppAuthorizationStatus")
    AppAuthorizationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AppAuthorizationSummary", name: "AppAuthorizationSummary")
    AppAuthorizationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#AppAuthorizationSummaryList", name: "AppAuthorizationSummaryList")
    AppBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AppBundle", name: "AppBundle")
    AppBundleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AppBundleSummary", name: "AppBundleSummary")
    AppBundleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#AppBundleSummaryList", name: "AppBundleSummaryList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$"})
    AuditLogDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AuditLogDestinationConfiguration", name: "AuditLogDestinationConfiguration")
    AuditLogProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AuditLogProcessingConfiguration", name: "AuditLogProcessingConfiguration")
    AuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#AuthRequest", name: "AuthRequest")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#AuthType", name: "AuthType")
    BatchGetUserAccessTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#BatchGetUserAccessTasksRequest", name: "BatchGetUserAccessTasksRequest")
    BatchGetUserAccessTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#BatchGetUserAccessTasksResponse", name: "BatchGetUserAccessTasksResponse")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectAppAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ConnectAppAuthorizationRequest", name: "ConnectAppAuthorizationRequest")
    ConnectAppAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ConnectAppAuthorizationResponse", name: "ConnectAppAuthorizationResponse")
    CreateAppAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateAppAuthorizationRequest", name: "CreateAppAuthorizationRequest")
    CreateAppAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateAppAuthorizationResponse", name: "CreateAppAuthorizationResponse")
    CreateAppBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateAppBundleRequest", name: "CreateAppBundleRequest")
    CreateAppBundleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateAppBundleResponse", name: "CreateAppBundleResponse")
    CreateIngestionDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateIngestionDestinationRequest", name: "CreateIngestionDestinationRequest")
    CreateIngestionDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateIngestionDestinationResponse", name: "CreateIngestionDestinationResponse")
    CreateIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateIngestionRequest", name: "CreateIngestionRequest")
    CreateIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#CreateIngestionResponse", name: "CreateIngestionResponse")
    Credential = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appfabric#Credential", name: "Credential")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appfabric#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteAppAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteAppAuthorizationRequest", name: "DeleteAppAuthorizationRequest")
    DeleteAppAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteAppAuthorizationResponse", name: "DeleteAppAuthorizationResponse")
    DeleteAppBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteAppBundleRequest", name: "DeleteAppBundleRequest")
    DeleteAppBundleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteAppBundleResponse", name: "DeleteAppBundleResponse")
    DeleteIngestionDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteIngestionDestinationRequest", name: "DeleteIngestionDestinationRequest")
    DeleteIngestionDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteIngestionDestinationResponse", name: "DeleteIngestionDestinationResponse")
    DeleteIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteIngestionRequest", name: "DeleteIngestionRequest")
    DeleteIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#DeleteIngestionResponse", name: "DeleteIngestionResponse")
    Destination = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appfabric#Destination", name: "Destination")
    DestinationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appfabric#DestinationConfiguration", name: "DestinationConfiguration")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#Email", name: "Email", traits: {"smithy.api#length" => {"max" => 320}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", "smithy.api#sensitive" => {}})
    FirehoseStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#FirehoseStream", name: "FirehoseStream")
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#Format", name: "Format")
    GetAppAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetAppAuthorizationRequest", name: "GetAppAuthorizationRequest")
    GetAppAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetAppAuthorizationResponse", name: "GetAppAuthorizationResponse")
    GetAppBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetAppBundleRequest", name: "GetAppBundleRequest")
    GetAppBundleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetAppBundleResponse", name: "GetAppBundleResponse")
    GetIngestionDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetIngestionDestinationRequest", name: "GetIngestionDestinationRequest")
    GetIngestionDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetIngestionDestinationResponse", name: "GetIngestionDestinationResponse")
    GetIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetIngestionRequest", name: "GetIngestionRequest")
    GetIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#GetIngestionResponse", name: "GetIngestionResponse")
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$|^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Ingestion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#Ingestion", name: "Ingestion")
    IngestionDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#IngestionDestination", name: "IngestionDestination")
    IngestionDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#IngestionDestinationList", name: "IngestionDestinationList")
    IngestionDestinationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#IngestionDestinationStatus", name: "IngestionDestinationStatus")
    IngestionDestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#IngestionDestinationSummary", name: "IngestionDestinationSummary")
    IngestionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#IngestionList", name: "IngestionList")
    IngestionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#IngestionState", name: "IngestionState")
    IngestionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#IngestionSummary", name: "IngestionSummary")
    IngestionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#IngestionType", name: "IngestionType")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appfabric#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListAppAuthorizationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListAppAuthorizationsRequest", name: "ListAppAuthorizationsRequest")
    ListAppAuthorizationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListAppAuthorizationsResponse", name: "ListAppAuthorizationsResponse")
    ListAppBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListAppBundlesRequest", name: "ListAppBundlesRequest")
    ListAppBundlesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListAppBundlesResponse", name: "ListAppBundlesResponse")
    ListIngestionDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListIngestionDestinationsRequest", name: "ListIngestionDestinationsRequest")
    ListIngestionDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListIngestionDestinationsResponse", name: "ListIngestionDestinationsResponse")
    ListIngestionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListIngestionsRequest", name: "ListIngestionsRequest")
    ListIngestionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListIngestionsResponse", name: "ListIngestionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appfabric#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Oauth2Credential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#Oauth2Credential", name: "Oauth2Credential")
    Persona = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#Persona", name: "Persona")
    ProcessingConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appfabric#ProcessingConfiguration", name: "ProcessingConfiguration")
    RedirectUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#RedirectUri", name: "RedirectUri", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^https://[-a-zA-Z0-9-._~:/?\#@!$&'()*+,;=]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#ResultStatus", name: "ResultStatus")
    S3Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#S3Bucket", name: "S3Bucket")
    Schema = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#Schema", name: "Schema")
    SensitiveString2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#SensitiveString2048", name: "SensitiveString2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StartIngestionRequest", name: "StartIngestionRequest")
    StartIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StartIngestionResponse", name: "StartIngestionResponse")
    StartUserAccessTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StartUserAccessTasksRequest", name: "StartUserAccessTasksRequest")
    StartUserAccessTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StartUserAccessTasksResponse", name: "StartUserAccessTasksResponse")
    StopIngestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StopIngestionRequest", name: "StopIngestionRequest")
    StopIngestionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#StopIngestionResponse", name: "StopIngestionResponse")
    String120 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#String120", name: "String120", traits: {"smithy.api#length" => {"min" => 1, "max" => 120}})
    String2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#String2048", name: "String2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    String255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#String255", name: "String255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    String63 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#String63", name: "String63", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#String64", name: "String64", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#TaskError", name: "TaskError")
    TaskIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#TaskIdList", name: "TaskIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Tenant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#Tenant", name: "Tenant")
    TenantIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#TenantIdentifier", name: "TenantIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appfabric#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAppAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UpdateAppAuthorizationRequest", name: "UpdateAppAuthorizationRequest")
    UpdateAppAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UpdateAppAuthorizationResponse", name: "UpdateAppAuthorizationResponse")
    UpdateIngestionDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UpdateIngestionDestinationRequest", name: "UpdateIngestionDestinationRequest")
    UpdateIngestionDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UpdateIngestionDestinationResponse", name: "UpdateIngestionDestinationResponse")
    UserAccessResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UserAccessResultItem", name: "UserAccessResultItem")
    UserAccessResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#UserAccessResultsList", name: "UserAccessResultsList")
    UserAccessTaskItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#UserAccessTaskItem", name: "UserAccessTaskItem")
    UserAccessTasksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#UserAccessTasksList", name: "UserAccessTasksList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appfabric#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appfabric#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appfabric#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ApiKeyCredential.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "apiKey", traits: {"smithy.api#required" => {}}))
    ApiKeyCredential.type = Types::ApiKeyCredential
    AppAuthorization.add_member(:app_authorization_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "appAuthorizationArn", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:app_bundle_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "appBundleArn", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tenant, location_name: "tenant", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: "authType", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorizationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AppAuthorization.add_member(:persona, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Persona, location_name: "persona"))
    AppAuthorization.add_member(:auth_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "authUrl"))
    AppAuthorization.type = Types::AppAuthorization
    AppAuthorizationStatus.add_member(:pending_connect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_CONNECT", traits: {"smithy.api#enumValue" => "PendingConnect"}))
    AppAuthorizationStatus.add_member(:connected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTED", traits: {"smithy.api#enumValue" => "Connected"}))
    AppAuthorizationStatus.add_member(:connection_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTION_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "ConnectionValidationFailed"}))
    AppAuthorizationStatus.add_member(:token_auto_rotation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOKEN_AUTO_ROTATION_FAILED", traits: {"smithy.api#enumValue" => "TokenAutoRotationFailed"}))
    AppAuthorizationSummary.add_member(:app_authorization_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "appAuthorizationArn", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.add_member(:app_bundle_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "appBundleArn", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.add_member(:tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tenant, location_name: "tenant", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorizationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AppAuthorizationSummary.type = Types::AppAuthorizationSummary
    AppAuthorizationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorizationSummary)
    AppBundle.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    AppBundle.add_member(:customer_managed_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "customerManagedKeyArn"))
    AppBundle.type = Types::AppBundle
    AppBundleSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    AppBundleSummary.type = Types::AppBundleSummary
    AppBundleSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppBundleSummary)
    AuditLogDestinationConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    AuditLogDestinationConfiguration.type = Types::AuditLogDestinationConfiguration
    AuditLogProcessingConfiguration.add_member(:schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: "schema", traits: {"smithy.api#required" => {}}))
    AuditLogProcessingConfiguration.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: "format", traits: {"smithy.api#required" => {}}))
    AuditLogProcessingConfiguration.type = Types::AuditLogProcessingConfiguration
    AuthRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectUri, location_name: "redirectUri", traits: {"smithy.api#required" => {}}))
    AuthRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "code", traits: {"smithy.api#required" => {}}))
    AuthRequest.type = Types::AuthRequest
    AuthType.add_member(:oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OAUTH2", traits: {"smithy.api#enumValue" => "oauth2"}))
    AuthType.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "API_KEY", traits: {"smithy.api#enumValue" => "apiKey"}))
    BatchGetUserAccessTasksRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#required" => {}}))
    BatchGetUserAccessTasksRequest.add_member(:task_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskIdList, location_name: "taskIdList", traits: {"smithy.api#required" => {}}))
    BatchGetUserAccessTasksRequest.type = Types::BatchGetUserAccessTasksRequest
    BatchGetUserAccessTasksResponse.add_member(:user_access_results_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessResultsList, location_name: "userAccessResultsList"))
    BatchGetUserAccessTasksResponse.type = Types::BatchGetUserAccessTasksResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectAppAuthorizationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConnectAppAuthorizationRequest.add_member(:app_authorization_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appAuthorizationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConnectAppAuthorizationRequest.add_member(:auth_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthRequest, location_name: "authRequest"))
    ConnectAppAuthorizationRequest.type = Types::ConnectAppAuthorizationRequest
    ConnectAppAuthorizationResponse.add_member(:app_authorization_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorizationSummary, location_name: "appAuthorizationSummary", traits: {"smithy.api#required" => {}}))
    ConnectAppAuthorizationResponse.type = Types::ConnectAppAuthorizationResponse
    CreateAppAuthorizationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAppAuthorizationRequest.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    CreateAppAuthorizationRequest.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Credential, location_name: "credential", traits: {"smithy.api#required" => {}}))
    CreateAppAuthorizationRequest.add_member(:tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tenant, location_name: "tenant", traits: {"smithy.api#required" => {}}))
    CreateAppAuthorizationRequest.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: "authType", traits: {"smithy.api#required" => {}}))
    CreateAppAuthorizationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAppAuthorizationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAppAuthorizationRequest.type = Types::CreateAppAuthorizationRequest
    CreateAppAuthorizationResponse.add_member(:app_authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorization, location_name: "appAuthorization", traits: {"smithy.api#required" => {}}))
    CreateAppAuthorizationResponse.type = Types::CreateAppAuthorizationResponse
    CreateAppBundleRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAppBundleRequest.add_member(:customer_managed_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "customerManagedKeyIdentifier"))
    CreateAppBundleRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAppBundleRequest.type = Types::CreateAppBundleRequest
    CreateAppBundleResponse.add_member(:app_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppBundle, location_name: "appBundle", traits: {"smithy.api#required" => {}}))
    CreateAppBundleResponse.type = Types::CreateAppBundleResponse
    CreateIngestionDestinationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIngestionDestinationRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIngestionDestinationRequest.add_member(:processing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "processingConfiguration", traits: {"smithy.api#required" => {}}))
    CreateIngestionDestinationRequest.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    CreateIngestionDestinationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIngestionDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIngestionDestinationRequest.type = Types::CreateIngestionDestinationRequest
    CreateIngestionDestinationResponse.add_member(:ingestion_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestination, location_name: "ingestionDestination", traits: {"smithy.api#required" => {}}))
    CreateIngestionDestinationResponse.type = Types::CreateIngestionDestinationResponse
    CreateIngestionRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIngestionRequest.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    CreateIngestionRequest.add_member(:tenant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId", traits: {"smithy.api#required" => {}}))
    CreateIngestionRequest.add_member(:ingestion_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionType, location_name: "ingestionType", traits: {"smithy.api#required" => {}}))
    CreateIngestionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIngestionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIngestionRequest.type = Types::CreateIngestionRequest
    CreateIngestionResponse.add_member(:ingestion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ingestion, location_name: "ingestion", traits: {"smithy.api#required" => {}}))
    CreateIngestionResponse.type = Types::CreateIngestionResponse
    Credential.add_member(:oauth2_credential, Types::Credential::Oauth2Credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Credential, location_name: "oauth2Credential"))
    Credential.add_member(:api_key_credential, Types::Credential::ApiKeyCredential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredential, location_name: "apiKeyCredential"))
    Credential.add_member(:unknown, Types::Credential::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Credential.type = Types::Credential
    DeleteAppAuthorizationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppAuthorizationRequest.add_member(:app_authorization_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appAuthorizationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppAuthorizationRequest.type = Types::DeleteAppAuthorizationRequest
    DeleteAppAuthorizationResponse.type = Types::DeleteAppAuthorizationResponse
    DeleteAppBundleRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppBundleRequest.type = Types::DeleteAppBundleRequest
    DeleteAppBundleResponse.type = Types::DeleteAppBundleResponse
    DeleteIngestionDestinationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIngestionDestinationRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIngestionDestinationRequest.add_member(:ingestion_destination_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionDestinationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIngestionDestinationRequest.type = Types::DeleteIngestionDestinationRequest
    DeleteIngestionDestinationResponse.type = Types::DeleteIngestionDestinationResponse
    DeleteIngestionRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIngestionRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIngestionRequest.type = Types::DeleteIngestionRequest
    DeleteIngestionResponse.type = Types::DeleteIngestionResponse
    Destination.add_member(:s3_bucket, Types::Destination::S3Bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    Destination.add_member(:firehose_stream, Types::Destination::FirehoseStream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirehoseStream, location_name: "firehoseStream"))
    Destination.add_member(:unknown, Types::Destination::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Destination.type = Types::Destination
    DestinationConfiguration.add_member(:audit_log, Types::DestinationConfiguration::AuditLog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditLogDestinationConfiguration, location_name: "auditLog"))
    DestinationConfiguration.add_member(:unknown, Types::DestinationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DestinationConfiguration.type = Types::DestinationConfiguration
    FirehoseStream.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: "streamName", traits: {"smithy.api#required" => {}}))
    FirehoseStream.type = Types::FirehoseStream
    Format.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    Format.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARQUET", traits: {"smithy.api#enumValue" => "parquet"}))
    GetAppAuthorizationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppAuthorizationRequest.add_member(:app_authorization_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appAuthorizationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppAuthorizationRequest.type = Types::GetAppAuthorizationRequest
    GetAppAuthorizationResponse.add_member(:app_authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorization, location_name: "appAuthorization", traits: {"smithy.api#required" => {}}))
    GetAppAuthorizationResponse.type = Types::GetAppAuthorizationResponse
    GetAppBundleRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppBundleRequest.type = Types::GetAppBundleRequest
    GetAppBundleResponse.add_member(:app_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppBundle, location_name: "appBundle", traits: {"smithy.api#required" => {}}))
    GetAppBundleResponse.type = Types::GetAppBundleResponse
    GetIngestionDestinationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionDestinationRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionDestinationRequest.add_member(:ingestion_destination_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionDestinationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionDestinationRequest.type = Types::GetIngestionDestinationRequest
    GetIngestionDestinationResponse.add_member(:ingestion_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestination, location_name: "ingestionDestination", traits: {"smithy.api#required" => {}}))
    GetIngestionDestinationResponse.type = Types::GetIngestionDestinationResponse
    GetIngestionRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIngestionRequest.type = Types::GetIngestionRequest
    GetIngestionResponse.add_member(:ingestion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ingestion, location_name: "ingestion", traits: {"smithy.api#required" => {}}))
    GetIngestionResponse.type = Types::GetIngestionResponse
    Ingestion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:app_bundle_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "appBundleArn", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:tenant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionState, location_name: "state", traits: {"smithy.api#required" => {}}))
    Ingestion.add_member(:ingestion_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionType, location_name: "ingestionType", traits: {"smithy.api#required" => {}}))
    Ingestion.type = Types::Ingestion
    IngestionDestination.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    IngestionDestination.add_member(:ingestion_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "ingestionArn", traits: {"smithy.api#required" => {}}))
    IngestionDestination.add_member(:processing_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "processingConfiguration", traits: {"smithy.api#required" => {}}))
    IngestionDestination.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    IngestionDestination.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestinationStatus, location_name: "status"))
    IngestionDestination.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    IngestionDestination.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    IngestionDestination.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    IngestionDestination.type = Types::IngestionDestination
    IngestionDestinationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestinationSummary)
    IngestionDestinationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    IngestionDestinationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    IngestionDestinationSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    IngestionDestinationSummary.type = Types::IngestionDestinationSummary
    IngestionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionSummary)
    IngestionState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    IngestionState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    IngestionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    IngestionSummary.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    IngestionSummary.add_member(:tenant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId", traits: {"smithy.api#required" => {}}))
    IngestionSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionState, location_name: "state", traits: {"smithy.api#required" => {}}))
    IngestionSummary.type = Types::IngestionSummary
    IngestionType.add_member(:audit_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUDIT_LOG", traits: {"smithy.api#enumValue" => "auditLog"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListAppAuthorizationsRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAppAuthorizationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppAuthorizationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppAuthorizationsRequest.type = Types::ListAppAuthorizationsRequest
    ListAppAuthorizationsResponse.add_member(:app_authorization_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorizationSummaryList, location_name: "appAuthorizationSummaryList", traits: {"smithy.api#required" => {}}))
    ListAppAuthorizationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken"))
    ListAppAuthorizationsResponse.type = Types::ListAppAuthorizationsResponse
    ListAppBundlesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppBundlesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppBundlesRequest.type = Types::ListAppBundlesRequest
    ListAppBundlesResponse.add_member(:app_bundle_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppBundleSummaryList, location_name: "appBundleSummaryList", traits: {"smithy.api#required" => {}}))
    ListAppBundlesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken"))
    ListAppBundlesResponse.type = Types::ListAppBundlesResponse
    ListIngestionDestinationsRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIngestionDestinationsRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIngestionDestinationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIngestionDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIngestionDestinationsRequest.type = Types::ListIngestionDestinationsRequest
    ListIngestionDestinationsResponse.add_member(:ingestion_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestinationList, location_name: "ingestionDestinations", traits: {"smithy.api#required" => {}}))
    ListIngestionDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListIngestionDestinationsResponse.type = Types::ListIngestionDestinationsResponse
    ListIngestionsRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIngestionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIngestionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIngestionsRequest.type = Types::ListIngestionsRequest
    ListIngestionsResponse.add_member(:ingestions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionList, location_name: "ingestions", traits: {"smithy.api#required" => {}}))
    ListIngestionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListIngestionsResponse.type = Types::ListIngestionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Oauth2Credential.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "clientId", traits: {"smithy.api#required" => {}}))
    Oauth2Credential.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "clientSecret", traits: {"smithy.api#required" => {}}))
    Oauth2Credential.type = Types::Oauth2Credential
    Persona.add_member(:admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADMIN", traits: {"smithy.api#enumValue" => "admin"}))
    Persona.add_member(:enduser, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENDUSER", traits: {"smithy.api#enumValue" => "endUser"}))
    ProcessingConfiguration.add_member(:audit_log, Types::ProcessingConfiguration::AuditLog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditLogProcessingConfiguration, location_name: "auditLog"))
    ProcessingConfiguration.add_member(:unknown, Types::ProcessingConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProcessingConfiguration.type = Types::ProcessingConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResultStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResultStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ResultStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResultStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    S3Bucket.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String63, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3Bucket.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String120, location_name: "prefix"))
    S3Bucket.type = Types::S3Bucket
    Schema.add_member(:ocsf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OCSF", traits: {"smithy.api#enumValue" => "ocsf"}))
    Schema.add_member(:raw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RAW", traits: {"smithy.api#enumValue" => "raw"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartIngestionRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartIngestionRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartIngestionRequest.type = Types::StartIngestionRequest
    StartIngestionResponse.type = Types::StartIngestionResponse
    StartUserAccessTasksRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#required" => {}}))
    StartUserAccessTasksRequest.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: "email", traits: {"smithy.api#required" => {}}))
    StartUserAccessTasksRequest.type = Types::StartUserAccessTasksRequest
    StartUserAccessTasksResponse.add_member(:user_access_tasks_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessTasksList, location_name: "userAccessTasksList"))
    StartUserAccessTasksResponse.type = Types::StartUserAccessTasksResponse
    StopIngestionRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopIngestionRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopIngestionRequest.type = Types::StopIngestionRequest
    StopIngestionResponse.type = Types::StopIngestionResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorCode"))
    TaskError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    TaskError.type = Types::TaskError
    TaskIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    Tenant.add_member(:tenant_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantIdentifier", traits: {"smithy.api#required" => {}}))
    Tenant.add_member(:tenant_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "tenantDisplayName", traits: {"smithy.api#required" => {}}))
    Tenant.type = Types::Tenant
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAppAuthorizationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppAuthorizationRequest.add_member(:app_authorization_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appAuthorizationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppAuthorizationRequest.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Credential, location_name: "credential"))
    UpdateAppAuthorizationRequest.add_member(:tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tenant, location_name: "tenant"))
    UpdateAppAuthorizationRequest.type = Types::UpdateAppAuthorizationRequest
    UpdateAppAuthorizationResponse.add_member(:app_authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAuthorization, location_name: "appAuthorization", traits: {"smithy.api#required" => {}}))
    UpdateAppAuthorizationResponse.type = Types::UpdateAppAuthorizationResponse
    UpdateIngestionDestinationRequest.add_member(:app_bundle_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "appBundleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIngestionDestinationRequest.add_member(:ingestion_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIngestionDestinationRequest.add_member(:ingestion_destination_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "ingestionDestinationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIngestionDestinationRequest.add_member(:destination_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateIngestionDestinationRequest.type = Types::UpdateIngestionDestinationRequest
    UpdateIngestionDestinationResponse.add_member(:ingestion_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IngestionDestination, location_name: "ingestionDestination", traits: {"smithy.api#required" => {}}))
    UpdateIngestionDestinationResponse.type = Types::UpdateIngestionDestinationResponse
    UserAccessResultItem.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app"))
    UserAccessResultItem.add_member(:tenant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId"))
    UserAccessResultItem.add_member(:tenant_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: "tenantDisplayName"))
    UserAccessResultItem.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "taskId"))
    UserAccessResultItem.add_member(:result_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultStatus, location_name: "resultStatus"))
    UserAccessResultItem.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UserAccessResultItem.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userId"))
    UserAccessResultItem.add_member(:user_full_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userFullName"))
    UserAccessResultItem.add_member(:user_first_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userFirstName"))
    UserAccessResultItem.add_member(:user_last_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userLastName"))
    UserAccessResultItem.add_member(:user_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "userStatus"))
    UserAccessResultItem.add_member(:task_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskError, location_name: "taskError"))
    UserAccessResultItem.type = Types::UserAccessResultItem
    UserAccessResultsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessResultItem)
    UserAccessTaskItem.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: "app", traits: {"smithy.api#required" => {}}))
    UserAccessTaskItem.add_member(:tenant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId", traits: {"smithy.api#required" => {}}))
    UserAccessTaskItem.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "taskId"))
    UserAccessTaskItem.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskError, location_name: "error"))
    UserAccessTaskItem.type = Types::UserAccessTaskItem
    UserAccessTasksList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAccessTaskItem)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    FabricFrontEndService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appfabric#FabricFrontEndService"
      service.name = "FabricFrontEndService"
      service.version = "2023-05-19"
      service.traits = {"aws.api#service" => {"sdkId" => "AppFabric", "arnNamespace" => "appfabric"}, "aws.auth#sigv4" => {"name" => "appfabric"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AppFabric"}
      service.add_operation(:batch_get_user_access_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#BatchGetUserAccessTasks"
        operation.name = "BatchGetUserAccessTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetUserAccessTasksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetUserAccessTasksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/useraccess/batchget"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:connect_app_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ConnectAppAuthorization"
        operation.name = "ConnectAppAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAppAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectAppAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect"}}
      end)
      service.add_operation(:create_app_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#CreateAppAuthorization"
        operation.name = "CreateAppAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_app_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#CreateAppBundle"
        operation.name = "CreateAppBundle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBundleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBundleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/appbundles"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#CreateIngestion"
        operation.name = "CreateIngestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/ingestions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_ingestion_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#CreateIngestionDestination"
        operation.name = "CreateIngestionDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestionDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIngestionDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_app_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#DeleteAppAuthorization"
        operation.name = "DeleteAppAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_app_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#DeleteAppBundle"
        operation.name = "DeleteAppBundle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBundleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBundleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/appbundles/{appBundleIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#DeleteIngestion"
        operation.name = "DeleteIngestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ingestion_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#DeleteIngestionDestination"
        operation.name = "DeleteIngestionDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestionDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIngestionDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_app_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#GetAppAuthorization"
        operation.name = "GetAppAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_app_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#GetAppBundle"
        operation.name = "GetAppBundle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppBundleRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppBundleResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#GetIngestion"
        operation.name = "GetIngestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_ingestion_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#GetIngestionDestination"
        operation.name = "GetIngestionDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIngestionDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_app_authorizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ListAppAuthorizations"
        operation.name = "ListAppAuthorizations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppAuthorizationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppAuthorizationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppAuthorizations.new
      end)
      service.add_operation(:list_app_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ListAppBundles"
        operation.name = "ListAppBundles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppBundlesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppBundlesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppBundles.new
      end)
      service.add_operation(:list_ingestion_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ListIngestionDestinations"
        operation.name = "ListIngestionDestinations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionDestinationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionDestinationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngestionDestinations.new
      end)
      service.add_operation(:list_ingestions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ListIngestions"
        operation.name = "ListIngestions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIngestionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/appbundles/{appBundleIdentifier}/ingestions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIngestions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#StartIngestion"
        operation.name = "StartIngestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartIngestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartIngestionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start"}}
      end)
      service.add_operation(:start_user_access_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#StartUserAccessTasks"
        operation.name = "StartUserAccessTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartUserAccessTasksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartUserAccessTasksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/useraccess/start"}}
      end)
      service.add_operation(:stop_ingestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#StopIngestion"
        operation.name = "StopIngestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopIngestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopIngestionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_app_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#UpdateAppAuthorization"
        operation.name = "UpdateAppAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppAuthorizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppAuthorizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"}}
      end)
      service.add_operation(:update_ingestion_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appfabric#UpdateIngestionDestination"
        operation.name = "UpdateIngestionDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngestionDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIngestionDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"}}
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
