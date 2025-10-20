# frozen_string_literal: true

# This is generated code!

module Aws::Artifact
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#AcceptanceType", name: "AcceptanceType")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#AccountSettings", name: "AccountSettings")
    AgreementTerms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#AgreementTerms", name: "AgreementTerms", traits: {"smithy.api#length" => {"max" => 10}})
    AgreementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#AgreementType", name: "AgreementType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CustomerAgreementIdAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#CustomerAgreementIdAttribute", name: "CustomerAgreementIdAttribute", traits: {"smithy.api#pattern" => "^customer-agreement-[a-zA-Z0-9]{16}$"})
    CustomerAgreementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#CustomerAgreementList", name: "CustomerAgreementList")
    CustomerAgreementState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#CustomerAgreementState", name: "CustomerAgreementState")
    CustomerAgreementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#CustomerAgreementSummary", name: "CustomerAgreementSummary")
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetAccountSettingsRequest", name: "GetAccountSettingsRequest")
    GetAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetAccountSettingsResponse", name: "GetAccountSettingsResponse")
    GetReportMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportMetadataRequest", name: "GetReportMetadataRequest")
    GetReportMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportMetadataResponse", name: "GetReportMetadataResponse")
    GetReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportRequest", name: "GetReportRequest")
    GetReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportResponse", name: "GetReportResponse")
    GetTermForReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetTermForReportRequest", name: "GetTermForReportRequest")
    GetTermForReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetTermForReportResponse", name: "GetTermForReportResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListCustomerAgreementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListCustomerAgreementsRequest", name: "ListCustomerAgreementsRequest")
    ListCustomerAgreementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListCustomerAgreementsResponse", name: "ListCustomerAgreementsResponse")
    ListReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportsRequest", name: "ListReportsRequest")
    ListReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportsResponse", name: "ListReportsResponse")
    LongStringAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#LongStringAttribute", name: "LongStringAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[^<>]*$"})
    MaxResultsAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.artifact#MaxResultsAttribute", name: "MaxResultsAttribute", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    NextTokenAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#NextTokenAttribute", name: "NextTokenAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotificationSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#NotificationSubscriptionStatus", name: "NotificationSubscriptionStatus")
    PublishedState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#PublishedState", name: "PublishedState")
    PutAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutAccountSettingsRequest", name: "PutAccountSettingsRequest")
    PutAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutAccountSettingsResponse", name: "PutAccountSettingsResponse")
    ReportDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ReportDetail", name: "ReportDetail")
    ReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#ReportId", name: "ReportId", traits: {"smithy.api#pattern" => "^report-[a-zA-Z0-9]{16}$"})
    ReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ReportSummary", name: "ReportSummary")
    ReportsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#ReportsList", name: "ReportsList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SequenceNumberAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.artifact#SequenceNumberAttribute", name: "SequenceNumberAttribute", traits: {"smithy.api#range" => {"min" => 1}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShortStringAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#ShortStringAttribute", name: "ShortStringAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\s]*$"})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#StatusMessage", name: "StatusMessage")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimestampAttribute = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.artifact#TimestampAttribute", name: "TimestampAttribute", traits: {"smithy.api#timestampFormat" => "date-time"})
    UploadState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#UploadState", name: "UploadState")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "invalidToken", "name" => "INVALID_TOKEN"}, {"value" => "other", "name" => "OTHER"}]})
    VersionAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.artifact#VersionAttribute", name: "VersionAttribute", traits: {"smithy.api#range" => {"min" => 1}})

    AcceptanceType.add_member(:passthrough, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "PASSTHROUGH"}))
    AcceptanceType.add_member(:explicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPLICIT", traits: {"smithy.api#enumValue" => "EXPLICIT"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettings.add_member(:notification_subscription_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    AccountSettings.type = Types::AccountSettings
    AgreementTerms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute)
    AgreementType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AgreementType.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    AgreementType.add_member(:modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODIFIED", traits: {"smithy.api#enumValue" => "MODIFIED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CustomerAgreementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgreementSummary)
    CustomerAgreementState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomerAgreementState.add_member(:customer_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_TERMINATED", traits: {"smithy.api#enumValue" => "CUSTOMER_TERMINATED"}))
    CustomerAgreementState.add_member(:aws_terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_TERMINATED", traits: {"smithy.api#enumValue" => "AWS_TERMINATED"}))
    CustomerAgreementSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "name"))
    CustomerAgreementSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    CustomerAgreementSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgreementIdAttribute, location_name: "id"))
    CustomerAgreementSummary.add_member(:agreement_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "agreementArn"))
    CustomerAgreementSummary.add_member(:aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "awsAccountId"))
    CustomerAgreementSummary.add_member(:organization_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "organizationArn"))
    CustomerAgreementSummary.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "effectiveStart"))
    CustomerAgreementSummary.add_member(:effective_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "effectiveEnd"))
    CustomerAgreementSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgreementState, location_name: "state"))
    CustomerAgreementSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    CustomerAgreementSummary.add_member(:acceptance_terms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementTerms, location_name: "acceptanceTerms"))
    CustomerAgreementSummary.add_member(:terminate_terms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementTerms, location_name: "terminateTerms"))
    CustomerAgreementSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementType, location_name: "type"))
    CustomerAgreementSummary.type = Types::CustomerAgreementSummary
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetReportMetadataRequest.add_member(:report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetReportMetadataRequest.add_member(:report_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetReportMetadataRequest.type = Types::GetReportMetadataRequest
    GetReportMetadataResponse.add_member(:report_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDetail, location_name: "reportDetails"))
    GetReportMetadataResponse.type = Types::GetReportMetadataResponse
    GetReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetReportRequest.add_member(:report_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetReportRequest.add_member(:term_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "termToken", traits: {"smithy.api#httpQuery" => "termToken", "smithy.api#required" => {}}))
    GetReportRequest.type = Types::GetReportRequest
    GetReportResponse.add_member(:document_presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "documentPresignedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}}))
    GetReportResponse.type = Types::GetReportResponse
    GetTermForReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetTermForReportRequest.add_member(:report_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetTermForReportRequest.type = Types::GetTermForReportRequest
    GetTermForReportResponse.add_member(:document_presigned_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "documentPresignedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}}))
    GetTermForReportResponse.add_member(:term_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "termToken"))
    GetTermForReportResponse.type = Types::GetTermForReportResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListCustomerAgreementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsAttribute, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomerAgreementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomerAgreementsRequest.type = Types::ListCustomerAgreementsRequest
    ListCustomerAgreementsResponse.add_member(:customer_agreements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgreementList, location_name: "customerAgreements", traits: {"smithy.api#required" => {}}))
    ListCustomerAgreementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListCustomerAgreementsResponse.type = Types::ListCustomerAgreementsResponse
    ListReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsAttribute, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReportsRequest.type = Types::ListReportsRequest
    ListReportsResponse.add_member(:reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportsList, location_name: "reports"))
    ListReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListReportsResponse.type = Types::ListReportsResponse
    NotificationSubscriptionStatus.add_member(:subscribed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBSCRIBED", traits: {"smithy.api#enumValue" => "SUBSCRIBED"}))
    NotificationSubscriptionStatus.add_member(:not_subscribed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "NOT_SUBSCRIBED"}))
    PublishedState.add_member(:published, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    PublishedState.add_member(:unpublished, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNPUBLISHED", traits: {"smithy.api#enumValue" => "UNPUBLISHED"}))
    PutAccountSettingsRequest.add_member(:notification_subscription_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    PutAccountSettingsRequest.type = Types::PutAccountSettingsRequest
    PutAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    PutAccountSettingsResponse.type = Types::PutAccountSettingsResponse
    ReportDetail.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportDetail.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportDetail.add_member(:period_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportDetail.add_member(:period_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportDetail.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "createdAt"))
    ReportDetail.add_member(:last_modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "lastModifiedAt"))
    ReportDetail.add_member(:deleted_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "deletedAt"))
    ReportDetail.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportDetail.add_member(:series, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportDetail.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportDetail.add_member(:company_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportDetail.add_member(:product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportDetail.add_member(:term_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "termArn"))
    ReportDetail.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportDetail.add_member(:acceptance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptanceType, location_name: "acceptanceType"))
    ReportDetail.add_member(:sequence_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumberAttribute, location_name: "sequenceNumber"))
    ReportDetail.add_member(:upload_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportDetail.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportDetail.type = Types::ReportDetail
    ReportSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportSummary.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportSummary.add_member(:upload_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportSummary.add_member(:period_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportSummary.add_member(:period_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportSummary.add_member(:series, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportSummary.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportSummary.add_member(:company_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportSummary.add_member(:product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportSummary.add_member(:acceptance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptanceType, location_name: "acceptanceType"))
    ReportSummary.type = Types::ReportSummary
    ReportsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportSummary)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UploadState.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    UploadState.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    UploadState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    UploadState.add_member(:fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAULT", traits: {"smithy.api#enumValue" => "FAULT"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Artifact = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.artifact#Artifact"
      service.name = "Artifact"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Artifact", "arnNamespace" => "artifact", "cloudTrailEventSource" => "artifact.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "artifact"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Artifact"}
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/account-settings/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetReport"
        operation.name = "GetReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_report_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetReportMetadata"
        operation.name = "GetReportMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/getMetadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_term_for_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetTermForReport"
        operation.name = "GetTermForReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTermForReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTermForReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/getTermForReport"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_customer_agreements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListCustomerAgreements"
        operation.name = "ListCustomerAgreements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomerAgreementsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomerAgreementsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/customer-agreement/list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomerAgreements.new
      end)
      service.add_operation(:list_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListReports"
        operation.name = "ListReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReports.new
      end)
      service.add_operation(:put_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#PutAccountSettings"
        operation.name = "PutAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/v1/account-settings/put"}, "smithy.api#idempotent" => {}}
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
