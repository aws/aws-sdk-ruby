# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppFabric
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApiKeyCredential = Shapes::StructureShape.new(name: 'ApiKeyCredential')
    AppAuthorization = Shapes::StructureShape.new(name: 'AppAuthorization')
    AppAuthorizationStatus = Shapes::StringShape.new(name: 'AppAuthorizationStatus')
    AppAuthorizationSummary = Shapes::StructureShape.new(name: 'AppAuthorizationSummary')
    AppAuthorizationSummaryList = Shapes::ListShape.new(name: 'AppAuthorizationSummaryList')
    AppBundle = Shapes::StructureShape.new(name: 'AppBundle')
    AppBundleSummary = Shapes::StructureShape.new(name: 'AppBundleSummary')
    AppBundleSummaryList = Shapes::ListShape.new(name: 'AppBundleSummaryList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuditLogDestinationConfiguration = Shapes::StructureShape.new(name: 'AuditLogDestinationConfiguration')
    AuditLogProcessingConfiguration = Shapes::StructureShape.new(name: 'AuditLogProcessingConfiguration')
    AuthRequest = Shapes::StructureShape.new(name: 'AuthRequest')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    BatchGetUserAccessTasksRequest = Shapes::StructureShape.new(name: 'BatchGetUserAccessTasksRequest')
    BatchGetUserAccessTasksResponse = Shapes::StructureShape.new(name: 'BatchGetUserAccessTasksResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectAppAuthorizationRequest = Shapes::StructureShape.new(name: 'ConnectAppAuthorizationRequest')
    ConnectAppAuthorizationResponse = Shapes::StructureShape.new(name: 'ConnectAppAuthorizationResponse')
    CreateAppAuthorizationRequest = Shapes::StructureShape.new(name: 'CreateAppAuthorizationRequest')
    CreateAppAuthorizationResponse = Shapes::StructureShape.new(name: 'CreateAppAuthorizationResponse')
    CreateAppBundleRequest = Shapes::StructureShape.new(name: 'CreateAppBundleRequest')
    CreateAppBundleResponse = Shapes::StructureShape.new(name: 'CreateAppBundleResponse')
    CreateIngestionDestinationRequest = Shapes::StructureShape.new(name: 'CreateIngestionDestinationRequest')
    CreateIngestionDestinationResponse = Shapes::StructureShape.new(name: 'CreateIngestionDestinationResponse')
    CreateIngestionRequest = Shapes::StructureShape.new(name: 'CreateIngestionRequest')
    CreateIngestionResponse = Shapes::StructureShape.new(name: 'CreateIngestionResponse')
    Credential = Shapes::UnionShape.new(name: 'Credential')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteAppAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteAppAuthorizationRequest')
    DeleteAppAuthorizationResponse = Shapes::StructureShape.new(name: 'DeleteAppAuthorizationResponse')
    DeleteAppBundleRequest = Shapes::StructureShape.new(name: 'DeleteAppBundleRequest')
    DeleteAppBundleResponse = Shapes::StructureShape.new(name: 'DeleteAppBundleResponse')
    DeleteIngestionDestinationRequest = Shapes::StructureShape.new(name: 'DeleteIngestionDestinationRequest')
    DeleteIngestionDestinationResponse = Shapes::StructureShape.new(name: 'DeleteIngestionDestinationResponse')
    DeleteIngestionRequest = Shapes::StructureShape.new(name: 'DeleteIngestionRequest')
    DeleteIngestionResponse = Shapes::StructureShape.new(name: 'DeleteIngestionResponse')
    Destination = Shapes::UnionShape.new(name: 'Destination')
    DestinationConfiguration = Shapes::UnionShape.new(name: 'DestinationConfiguration')
    Email = Shapes::StringShape.new(name: 'Email')
    FirehoseStream = Shapes::StructureShape.new(name: 'FirehoseStream')
    Format = Shapes::StringShape.new(name: 'Format')
    GetAppAuthorizationRequest = Shapes::StructureShape.new(name: 'GetAppAuthorizationRequest')
    GetAppAuthorizationResponse = Shapes::StructureShape.new(name: 'GetAppAuthorizationResponse')
    GetAppBundleRequest = Shapes::StructureShape.new(name: 'GetAppBundleRequest')
    GetAppBundleResponse = Shapes::StructureShape.new(name: 'GetAppBundleResponse')
    GetIngestionDestinationRequest = Shapes::StructureShape.new(name: 'GetIngestionDestinationRequest')
    GetIngestionDestinationResponse = Shapes::StructureShape.new(name: 'GetIngestionDestinationResponse')
    GetIngestionRequest = Shapes::StructureShape.new(name: 'GetIngestionRequest')
    GetIngestionResponse = Shapes::StructureShape.new(name: 'GetIngestionResponse')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Ingestion = Shapes::StructureShape.new(name: 'Ingestion')
    IngestionDestination = Shapes::StructureShape.new(name: 'IngestionDestination')
    IngestionDestinationList = Shapes::ListShape.new(name: 'IngestionDestinationList')
    IngestionDestinationStatus = Shapes::StringShape.new(name: 'IngestionDestinationStatus')
    IngestionDestinationSummary = Shapes::StructureShape.new(name: 'IngestionDestinationSummary')
    IngestionList = Shapes::ListShape.new(name: 'IngestionList')
    IngestionState = Shapes::StringShape.new(name: 'IngestionState')
    IngestionSummary = Shapes::StructureShape.new(name: 'IngestionSummary')
    IngestionType = Shapes::StringShape.new(name: 'IngestionType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAppAuthorizationsRequest = Shapes::StructureShape.new(name: 'ListAppAuthorizationsRequest')
    ListAppAuthorizationsResponse = Shapes::StructureShape.new(name: 'ListAppAuthorizationsResponse')
    ListAppBundlesRequest = Shapes::StructureShape.new(name: 'ListAppBundlesRequest')
    ListAppBundlesResponse = Shapes::StructureShape.new(name: 'ListAppBundlesResponse')
    ListIngestionDestinationsRequest = Shapes::StructureShape.new(name: 'ListIngestionDestinationsRequest')
    ListIngestionDestinationsResponse = Shapes::StructureShape.new(name: 'ListIngestionDestinationsResponse')
    ListIngestionsRequest = Shapes::StructureShape.new(name: 'ListIngestionsRequest')
    ListIngestionsResponse = Shapes::StructureShape.new(name: 'ListIngestionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Oauth2Credential = Shapes::StructureShape.new(name: 'Oauth2Credential')
    Persona = Shapes::StringShape.new(name: 'Persona')
    ProcessingConfiguration = Shapes::UnionShape.new(name: 'ProcessingConfiguration')
    RedirectUri = Shapes::StringShape.new(name: 'RedirectUri')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultStatus = Shapes::StringShape.new(name: 'ResultStatus')
    S3Bucket = Shapes::StructureShape.new(name: 'S3Bucket')
    Schema = Shapes::StringShape.new(name: 'Schema')
    SensitiveString2048 = Shapes::StringShape.new(name: 'SensitiveString2048')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartIngestionRequest = Shapes::StructureShape.new(name: 'StartIngestionRequest')
    StartIngestionResponse = Shapes::StructureShape.new(name: 'StartIngestionResponse')
    StartUserAccessTasksRequest = Shapes::StructureShape.new(name: 'StartUserAccessTasksRequest')
    StartUserAccessTasksResponse = Shapes::StructureShape.new(name: 'StartUserAccessTasksResponse')
    StopIngestionRequest = Shapes::StructureShape.new(name: 'StopIngestionRequest')
    StopIngestionResponse = Shapes::StructureShape.new(name: 'StopIngestionResponse')
    String = Shapes::StringShape.new(name: 'String')
    String120 = Shapes::StringShape.new(name: 'String120')
    String2048 = Shapes::StringShape.new(name: 'String2048')
    String255 = Shapes::StringShape.new(name: 'String255')
    String63 = Shapes::StringShape.new(name: 'String63')
    String64 = Shapes::StringShape.new(name: 'String64')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskError = Shapes::StructureShape.new(name: 'TaskError')
    TaskIdList = Shapes::ListShape.new(name: 'TaskIdList')
    Tenant = Shapes::StructureShape.new(name: 'Tenant')
    TenantIdentifier = Shapes::StringShape.new(name: 'TenantIdentifier')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAppAuthorizationRequest = Shapes::StructureShape.new(name: 'UpdateAppAuthorizationRequest')
    UpdateAppAuthorizationResponse = Shapes::StructureShape.new(name: 'UpdateAppAuthorizationResponse')
    UpdateIngestionDestinationRequest = Shapes::StructureShape.new(name: 'UpdateIngestionDestinationRequest')
    UpdateIngestionDestinationResponse = Shapes::StructureShape.new(name: 'UpdateIngestionDestinationResponse')
    UserAccessResultItem = Shapes::StructureShape.new(name: 'UserAccessResultItem')
    UserAccessResultsList = Shapes::ListShape.new(name: 'UserAccessResultsList')
    UserAccessTaskItem = Shapes::StructureShape.new(name: 'UserAccessTaskItem')
    UserAccessTasksList = Shapes::ListShape.new(name: 'UserAccessTasksList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApiKeyCredential.add_member(:api_key, Shapes::ShapeRef.new(shape: SensitiveString2048, required: true, location_name: "apiKey"))
    ApiKeyCredential.struct_class = Types::ApiKeyCredential

    AppAuthorization.add_member(:app_authorization_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appAuthorizationArn"))
    AppAuthorization.add_member(:app_bundle_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appBundleArn"))
    AppAuthorization.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    AppAuthorization.add_member(:tenant, Shapes::ShapeRef.new(shape: Tenant, required: true, location_name: "tenant"))
    AppAuthorization.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    AppAuthorization.add_member(:status, Shapes::ShapeRef.new(shape: AppAuthorizationStatus, required: true, location_name: "status"))
    AppAuthorization.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    AppAuthorization.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    AppAuthorization.add_member(:persona, Shapes::ShapeRef.new(shape: Persona, location_name: "persona"))
    AppAuthorization.add_member(:auth_url, Shapes::ShapeRef.new(shape: String, location_name: "authUrl"))
    AppAuthorization.struct_class = Types::AppAuthorization

    AppAuthorizationSummary.add_member(:app_authorization_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appAuthorizationArn"))
    AppAuthorizationSummary.add_member(:app_bundle_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appBundleArn"))
    AppAuthorizationSummary.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    AppAuthorizationSummary.add_member(:tenant, Shapes::ShapeRef.new(shape: Tenant, required: true, location_name: "tenant"))
    AppAuthorizationSummary.add_member(:status, Shapes::ShapeRef.new(shape: AppAuthorizationStatus, required: true, location_name: "status"))
    AppAuthorizationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    AppAuthorizationSummary.struct_class = Types::AppAuthorizationSummary

    AppAuthorizationSummaryList.member = Shapes::ShapeRef.new(shape: AppAuthorizationSummary)

    AppBundle.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AppBundle.add_member(:customer_managed_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "customerManagedKeyArn"))
    AppBundle.struct_class = Types::AppBundle

    AppBundleSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AppBundleSummary.struct_class = Types::AppBundleSummary

    AppBundleSummaryList.member = Shapes::ShapeRef.new(shape: AppBundleSummary)

    AuditLogDestinationConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    AuditLogDestinationConfiguration.struct_class = Types::AuditLogDestinationConfiguration

    AuditLogProcessingConfiguration.add_member(:schema, Shapes::ShapeRef.new(shape: Schema, required: true, location_name: "schema"))
    AuditLogProcessingConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    AuditLogProcessingConfiguration.struct_class = Types::AuditLogProcessingConfiguration

    AuthRequest.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: RedirectUri, required: true, location_name: "redirectUri"))
    AuthRequest.add_member(:code, Shapes::ShapeRef.new(shape: SensitiveString2048, required: true, location_name: "code"))
    AuthRequest.struct_class = Types::AuthRequest

    BatchGetUserAccessTasksRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "appBundleIdentifier"))
    BatchGetUserAccessTasksRequest.add_member(:task_id_list, Shapes::ShapeRef.new(shape: TaskIdList, required: true, location_name: "taskIdList"))
    BatchGetUserAccessTasksRequest.struct_class = Types::BatchGetUserAccessTasksRequest

    BatchGetUserAccessTasksResponse.add_member(:user_access_results_list, Shapes::ShapeRef.new(shape: UserAccessResultsList, location_name: "userAccessResultsList"))
    BatchGetUserAccessTasksResponse.struct_class = Types::BatchGetUserAccessTasksResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConnectAppAuthorizationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    ConnectAppAuthorizationRequest.add_member(:app_authorization_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appAuthorizationIdentifier"))
    ConnectAppAuthorizationRequest.add_member(:auth_request, Shapes::ShapeRef.new(shape: AuthRequest, location_name: "authRequest"))
    ConnectAppAuthorizationRequest.struct_class = Types::ConnectAppAuthorizationRequest

    ConnectAppAuthorizationResponse.add_member(:app_authorization_summary, Shapes::ShapeRef.new(shape: AppAuthorizationSummary, required: true, location_name: "appAuthorizationSummary"))
    ConnectAppAuthorizationResponse.struct_class = Types::ConnectAppAuthorizationResponse

    CreateAppAuthorizationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    CreateAppAuthorizationRequest.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    CreateAppAuthorizationRequest.add_member(:credential, Shapes::ShapeRef.new(shape: Credential, required: true, location_name: "credential"))
    CreateAppAuthorizationRequest.add_member(:tenant, Shapes::ShapeRef.new(shape: Tenant, required: true, location_name: "tenant"))
    CreateAppAuthorizationRequest.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, required: true, location_name: "authType"))
    CreateAppAuthorizationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAppAuthorizationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAppAuthorizationRequest.struct_class = Types::CreateAppAuthorizationRequest

    CreateAppAuthorizationResponse.add_member(:app_authorization, Shapes::ShapeRef.new(shape: AppAuthorization, required: true, location_name: "appAuthorization"))
    CreateAppAuthorizationResponse.struct_class = Types::CreateAppAuthorizationResponse

    CreateAppBundleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAppBundleRequest.add_member(:customer_managed_key_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "customerManagedKeyIdentifier"))
    CreateAppBundleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAppBundleRequest.struct_class = Types::CreateAppBundleRequest

    CreateAppBundleResponse.add_member(:app_bundle, Shapes::ShapeRef.new(shape: AppBundle, required: true, location_name: "appBundle"))
    CreateAppBundleResponse.struct_class = Types::CreateAppBundleResponse

    CreateIngestionDestinationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    CreateIngestionDestinationRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    CreateIngestionDestinationRequest.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, required: true, location_name: "processingConfiguration"))
    CreateIngestionDestinationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    CreateIngestionDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateIngestionDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIngestionDestinationRequest.struct_class = Types::CreateIngestionDestinationRequest

    CreateIngestionDestinationResponse.add_member(:ingestion_destination, Shapes::ShapeRef.new(shape: IngestionDestination, required: true, location_name: "ingestionDestination"))
    CreateIngestionDestinationResponse.struct_class = Types::CreateIngestionDestinationResponse

    CreateIngestionRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    CreateIngestionRequest.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    CreateIngestionRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdentifier, required: true, location_name: "tenantId"))
    CreateIngestionRequest.add_member(:ingestion_type, Shapes::ShapeRef.new(shape: IngestionType, required: true, location_name: "ingestionType"))
    CreateIngestionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UUID, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateIngestionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateIngestionRequest.struct_class = Types::CreateIngestionRequest

    CreateIngestionResponse.add_member(:ingestion, Shapes::ShapeRef.new(shape: Ingestion, required: true, location_name: "ingestion"))
    CreateIngestionResponse.struct_class = Types::CreateIngestionResponse

    Credential.add_member(:oauth2_credential, Shapes::ShapeRef.new(shape: Oauth2Credential, location_name: "oauth2Credential"))
    Credential.add_member(:api_key_credential, Shapes::ShapeRef.new(shape: ApiKeyCredential, location_name: "apiKeyCredential"))
    Credential.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Credential.add_member_subclass(:oauth2_credential, Types::Credential::Oauth2Credential)
    Credential.add_member_subclass(:api_key_credential, Types::Credential::ApiKeyCredential)
    Credential.add_member_subclass(:unknown, Types::Credential::Unknown)
    Credential.struct_class = Types::Credential

    DeleteAppAuthorizationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    DeleteAppAuthorizationRequest.add_member(:app_authorization_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appAuthorizationIdentifier"))
    DeleteAppAuthorizationRequest.struct_class = Types::DeleteAppAuthorizationRequest

    DeleteAppAuthorizationResponse.struct_class = Types::DeleteAppAuthorizationResponse

    DeleteAppBundleRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    DeleteAppBundleRequest.struct_class = Types::DeleteAppBundleRequest

    DeleteAppBundleResponse.struct_class = Types::DeleteAppBundleResponse

    DeleteIngestionDestinationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    DeleteIngestionDestinationRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    DeleteIngestionDestinationRequest.add_member(:ingestion_destination_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionDestinationIdentifier"))
    DeleteIngestionDestinationRequest.struct_class = Types::DeleteIngestionDestinationRequest

    DeleteIngestionDestinationResponse.struct_class = Types::DeleteIngestionDestinationResponse

    DeleteIngestionRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    DeleteIngestionRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    DeleteIngestionRequest.struct_class = Types::DeleteIngestionRequest

    DeleteIngestionResponse.struct_class = Types::DeleteIngestionResponse

    Destination.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    Destination.add_member(:firehose_stream, Shapes::ShapeRef.new(shape: FirehoseStream, location_name: "firehoseStream"))
    Destination.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Destination.add_member_subclass(:s3_bucket, Types::Destination::S3Bucket)
    Destination.add_member_subclass(:firehose_stream, Types::Destination::FirehoseStream)
    Destination.add_member_subclass(:unknown, Types::Destination::Unknown)
    Destination.struct_class = Types::Destination

    DestinationConfiguration.add_member(:audit_log, Shapes::ShapeRef.new(shape: AuditLogDestinationConfiguration, location_name: "auditLog"))
    DestinationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationConfiguration.add_member_subclass(:audit_log, Types::DestinationConfiguration::AuditLog)
    DestinationConfiguration.add_member_subclass(:unknown, Types::DestinationConfiguration::Unknown)
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    FirehoseStream.add_member(:stream_name, Shapes::ShapeRef.new(shape: String64, required: true, location_name: "streamName"))
    FirehoseStream.struct_class = Types::FirehoseStream

    GetAppAuthorizationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    GetAppAuthorizationRequest.add_member(:app_authorization_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appAuthorizationIdentifier"))
    GetAppAuthorizationRequest.struct_class = Types::GetAppAuthorizationRequest

    GetAppAuthorizationResponse.add_member(:app_authorization, Shapes::ShapeRef.new(shape: AppAuthorization, required: true, location_name: "appAuthorization"))
    GetAppAuthorizationResponse.struct_class = Types::GetAppAuthorizationResponse

    GetAppBundleRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    GetAppBundleRequest.struct_class = Types::GetAppBundleRequest

    GetAppBundleResponse.add_member(:app_bundle, Shapes::ShapeRef.new(shape: AppBundle, required: true, location_name: "appBundle"))
    GetAppBundleResponse.struct_class = Types::GetAppBundleResponse

    GetIngestionDestinationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    GetIngestionDestinationRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    GetIngestionDestinationRequest.add_member(:ingestion_destination_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionDestinationIdentifier"))
    GetIngestionDestinationRequest.struct_class = Types::GetIngestionDestinationRequest

    GetIngestionDestinationResponse.add_member(:ingestion_destination, Shapes::ShapeRef.new(shape: IngestionDestination, required: true, location_name: "ingestionDestination"))
    GetIngestionDestinationResponse.struct_class = Types::GetIngestionDestinationResponse

    GetIngestionRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    GetIngestionRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    GetIngestionRequest.struct_class = Types::GetIngestionRequest

    GetIngestionResponse.add_member(:ingestion, Shapes::ShapeRef.new(shape: Ingestion, required: true, location_name: "ingestion"))
    GetIngestionResponse.struct_class = Types::GetIngestionResponse

    Ingestion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    Ingestion.add_member(:app_bundle_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appBundleArn"))
    Ingestion.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    Ingestion.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdentifier, required: true, location_name: "tenantId"))
    Ingestion.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    Ingestion.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    Ingestion.add_member(:state, Shapes::ShapeRef.new(shape: IngestionState, required: true, location_name: "state"))
    Ingestion.add_member(:ingestion_type, Shapes::ShapeRef.new(shape: IngestionType, required: true, location_name: "ingestionType"))
    Ingestion.struct_class = Types::Ingestion

    IngestionDestination.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    IngestionDestination.add_member(:ingestion_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ingestionArn"))
    IngestionDestination.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, required: true, location_name: "processingConfiguration"))
    IngestionDestination.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    IngestionDestination.add_member(:status, Shapes::ShapeRef.new(shape: IngestionDestinationStatus, location_name: "status"))
    IngestionDestination.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    IngestionDestination.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdAt"))
    IngestionDestination.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "updatedAt"))
    IngestionDestination.struct_class = Types::IngestionDestination

    IngestionDestinationList.member = Shapes::ShapeRef.new(shape: IngestionDestinationSummary)

    IngestionDestinationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    IngestionDestinationSummary.struct_class = Types::IngestionDestinationSummary

    IngestionList.member = Shapes::ShapeRef.new(shape: IngestionSummary)

    IngestionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    IngestionSummary.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    IngestionSummary.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdentifier, required: true, location_name: "tenantId"))
    IngestionSummary.add_member(:state, Shapes::ShapeRef.new(shape: IngestionState, required: true, location_name: "state"))
    IngestionSummary.struct_class = Types::IngestionSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAppAuthorizationsRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    ListAppAuthorizationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAppAuthorizationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String2048, location: "querystring", location_name: "nextToken"))
    ListAppAuthorizationsRequest.struct_class = Types::ListAppAuthorizationsRequest

    ListAppAuthorizationsResponse.add_member(:app_authorization_summary_list, Shapes::ShapeRef.new(shape: AppAuthorizationSummaryList, required: true, location_name: "appAuthorizationSummaryList"))
    ListAppAuthorizationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken"))
    ListAppAuthorizationsResponse.struct_class = Types::ListAppAuthorizationsResponse

    ListAppBundlesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAppBundlesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String2048, location: "querystring", location_name: "nextToken"))
    ListAppBundlesRequest.struct_class = Types::ListAppBundlesRequest

    ListAppBundlesResponse.add_member(:app_bundle_summary_list, Shapes::ShapeRef.new(shape: AppBundleSummaryList, required: true, location_name: "appBundleSummaryList"))
    ListAppBundlesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String2048, location_name: "nextToken"))
    ListAppBundlesResponse.struct_class = Types::ListAppBundlesResponse

    ListIngestionDestinationsRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    ListIngestionDestinationsRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    ListIngestionDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIngestionDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListIngestionDestinationsRequest.struct_class = Types::ListIngestionDestinationsRequest

    ListIngestionDestinationsResponse.add_member(:ingestion_destinations, Shapes::ShapeRef.new(shape: IngestionDestinationList, required: true, location_name: "ingestionDestinations"))
    ListIngestionDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIngestionDestinationsResponse.struct_class = Types::ListIngestionDestinationsResponse

    ListIngestionsRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    ListIngestionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIngestionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListIngestionsRequest.struct_class = Types::ListIngestionsRequest

    ListIngestionsResponse.add_member(:ingestions, Shapes::ShapeRef.new(shape: IngestionList, required: true, location_name: "ingestions"))
    ListIngestionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIngestionsResponse.struct_class = Types::ListIngestionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Oauth2Credential.add_member(:client_id, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "clientId"))
    Oauth2Credential.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString2048, required: true, location_name: "clientSecret"))
    Oauth2Credential.struct_class = Types::Oauth2Credential

    ProcessingConfiguration.add_member(:audit_log, Shapes::ShapeRef.new(shape: AuditLogProcessingConfiguration, location_name: "auditLog"))
    ProcessingConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProcessingConfiguration.add_member_subclass(:audit_log, Types::ProcessingConfiguration::AuditLog)
    ProcessingConfiguration.add_member_subclass(:unknown, Types::ProcessingConfiguration::Unknown)
    ProcessingConfiguration.struct_class = Types::ProcessingConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Bucket.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String63, required: true, location_name: "bucketName"))
    S3Bucket.add_member(:prefix, Shapes::ShapeRef.new(shape: String120, location_name: "prefix"))
    S3Bucket.struct_class = Types::S3Bucket

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartIngestionRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    StartIngestionRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    StartIngestionRequest.struct_class = Types::StartIngestionRequest

    StartIngestionResponse.struct_class = Types::StartIngestionResponse

    StartUserAccessTasksRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "appBundleIdentifier"))
    StartUserAccessTasksRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    StartUserAccessTasksRequest.struct_class = Types::StartUserAccessTasksRequest

    StartUserAccessTasksResponse.add_member(:user_access_tasks_list, Shapes::ShapeRef.new(shape: UserAccessTasksList, location_name: "userAccessTasksList"))
    StartUserAccessTasksResponse.struct_class = Types::StartUserAccessTasksResponse

    StopIngestionRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    StopIngestionRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    StopIngestionRequest.struct_class = Types::StopIngestionRequest

    StopIngestionResponse.struct_class = Types::StopIngestionResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaskError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    TaskError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    TaskError.struct_class = Types::TaskError

    TaskIdList.member = Shapes::ShapeRef.new(shape: UUID)

    Tenant.add_member(:tenant_identifier, Shapes::ShapeRef.new(shape: TenantIdentifier, required: true, location_name: "tenantIdentifier"))
    Tenant.add_member(:tenant_display_name, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "tenantDisplayName"))
    Tenant.struct_class = Types::Tenant

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAppAuthorizationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    UpdateAppAuthorizationRequest.add_member(:app_authorization_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appAuthorizationIdentifier"))
    UpdateAppAuthorizationRequest.add_member(:credential, Shapes::ShapeRef.new(shape: Credential, location_name: "credential"))
    UpdateAppAuthorizationRequest.add_member(:tenant, Shapes::ShapeRef.new(shape: Tenant, location_name: "tenant"))
    UpdateAppAuthorizationRequest.struct_class = Types::UpdateAppAuthorizationRequest

    UpdateAppAuthorizationResponse.add_member(:app_authorization, Shapes::ShapeRef.new(shape: AppAuthorization, required: true, location_name: "appAuthorization"))
    UpdateAppAuthorizationResponse.struct_class = Types::UpdateAppAuthorizationResponse

    UpdateIngestionDestinationRequest.add_member(:app_bundle_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "appBundleIdentifier"))
    UpdateIngestionDestinationRequest.add_member(:ingestion_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionIdentifier"))
    UpdateIngestionDestinationRequest.add_member(:ingestion_destination_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ingestionDestinationIdentifier"))
    UpdateIngestionDestinationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    UpdateIngestionDestinationRequest.struct_class = Types::UpdateIngestionDestinationRequest

    UpdateIngestionDestinationResponse.add_member(:ingestion_destination, Shapes::ShapeRef.new(shape: IngestionDestination, required: true, location_name: "ingestionDestination"))
    UpdateIngestionDestinationResponse.struct_class = Types::UpdateIngestionDestinationResponse

    UserAccessResultItem.add_member(:app, Shapes::ShapeRef.new(shape: String255, location_name: "app"))
    UserAccessResultItem.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdentifier, location_name: "tenantId"))
    UserAccessResultItem.add_member(:tenant_display_name, Shapes::ShapeRef.new(shape: String2048, location_name: "tenantDisplayName"))
    UserAccessResultItem.add_member(:task_id, Shapes::ShapeRef.new(shape: UUID, location_name: "taskId"))
    UserAccessResultItem.add_member(:result_status, Shapes::ShapeRef.new(shape: ResultStatus, location_name: "resultStatus"))
    UserAccessResultItem.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UserAccessResultItem.add_member(:user_id, Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userId"))
    UserAccessResultItem.add_member(:user_full_name, Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userFullName"))
    UserAccessResultItem.add_member(:user_first_name, Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userFirstName"))
    UserAccessResultItem.add_member(:user_last_name, Shapes::ShapeRef.new(shape: SensitiveString2048, location_name: "userLastName"))
    UserAccessResultItem.add_member(:user_status, Shapes::ShapeRef.new(shape: String, location_name: "userStatus"))
    UserAccessResultItem.add_member(:task_error, Shapes::ShapeRef.new(shape: TaskError, location_name: "taskError"))
    UserAccessResultItem.struct_class = Types::UserAccessResultItem

    UserAccessResultsList.member = Shapes::ShapeRef.new(shape: UserAccessResultItem)

    UserAccessTaskItem.add_member(:app, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "app"))
    UserAccessTaskItem.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdentifier, required: true, location_name: "tenantId"))
    UserAccessTaskItem.add_member(:task_id, Shapes::ShapeRef.new(shape: UUID, location_name: "taskId"))
    UserAccessTaskItem.add_member(:error, Shapes::ShapeRef.new(shape: TaskError, location_name: "error"))
    UserAccessTaskItem.struct_class = Types::UserAccessTaskItem

    UserAccessTasksList.member = Shapes::ShapeRef.new(shape: UserAccessTaskItem)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-05-19"

      api.metadata = {
        "apiVersion" => "2023-05-19",
        "endpointPrefix" => "appfabric",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AppFabric",
        "serviceId" => "AppFabric",
        "signatureVersion" => "v4",
        "signingName" => "appfabric",
        "uid" => "appfabric-2023-05-19",
      }

      api.add_operation(:batch_get_user_access_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetUserAccessTasks"
        o.http_method = "POST"
        o.http_request_uri = "/useraccess/batchget"
        o.input = Shapes::ShapeRef.new(shape: BatchGetUserAccessTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetUserAccessTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:connect_app_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConnectAppAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect"
        o.input = Shapes::ShapeRef.new(shape: ConnectAppAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ConnectAppAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_app_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations"
        o.input = Shapes::ShapeRef.new(shape: CreateAppAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_app_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppBundle"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles"
        o.input = Shapes::ShapeRef.new(shape: CreateAppBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIngestion"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions"
        o.input = Shapes::ShapeRef.new(shape: CreateIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_ingestion_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIngestionDestination"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"
        o.input = Shapes::ShapeRef.new(shape: CreateIngestionDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIngestionDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppAuthorization"
        o.http_method = "DELETE"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppBundle"
        o.http_method = "DELETE"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIngestion"
        o.http_method = "DELETE"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_ingestion_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIngestionDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIngestionDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIngestionDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_app_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppAuthorization"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAppAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_app_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppBundle"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetAppBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIngestion"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_ingestion_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIngestionDestination"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetIngestionDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIngestionDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_app_authorizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppAuthorizations"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations"
        o.input = Shapes::ShapeRef.new(shape: ListAppAuthorizationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppAuthorizationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppBundles"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles"
        o.input = Shapes::ShapeRef.new(shape: ListAppBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppBundlesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ingestion_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngestionDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations"
        o.input = Shapes::ShapeRef.new(shape: ListIngestionDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngestionDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ingestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngestions"
        o.http_method = "GET"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions"
        o.input = Shapes::ShapeRef.new(shape: ListIngestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngestionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartIngestion"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start"
        o.input = Shapes::ShapeRef.new(shape: StartIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_user_access_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartUserAccessTasks"
        o.http_method = "POST"
        o.http_request_uri = "/useraccess/start"
        o.input = Shapes::ShapeRef.new(shape: StartUserAccessTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: StartUserAccessTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopIngestion"
        o.http_method = "POST"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_app_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppAuthorization"
        o.http_method = "PATCH"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_ingestion_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIngestionDestination"
        o.http_method = "PATCH"
        o.http_request_uri = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIngestionDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIngestionDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
