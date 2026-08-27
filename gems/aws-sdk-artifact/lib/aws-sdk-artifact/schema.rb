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

    AcceptanceType.add_member(:passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSTHROUGH", traits: {"smithy.api#enumValue" => "PASSTHROUGH"}))
    AcceptanceType.add_member(:explicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPLICIT", traits: {"smithy.api#enumValue" => "EXPLICIT"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountSettings.add_member(:notification_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSubscriptionStatus, name: "notificationSubscriptionStatus"))
    AccountSettings.type = Types::AccountSettings
    AgreementTerms.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "member")
    AgreementType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AgreementType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    AgreementType.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED", traits: {"smithy.api#enumValue" => "MODIFIED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CustomerAgreementList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementSummary, name: "member")
    CustomerAgreementState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomerAgreementState.add_member(:customer_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_TERMINATED", traits: {"smithy.api#enumValue" => "CUSTOMER_TERMINATED"}))
    CustomerAgreementState.add_member(:aws_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TERMINATED", traits: {"smithy.api#enumValue" => "AWS_TERMINATED"}))
    CustomerAgreementSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "name"))
    CustomerAgreementSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "arn"))
    CustomerAgreementSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementIdAttribute, name: "id"))
    CustomerAgreementSummary.add_member(:agreement_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "agreementArn"))
    CustomerAgreementSummary.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "awsAccountId"))
    CustomerAgreementSummary.add_member(:organization_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "organizationArn"))
    CustomerAgreementSummary.add_member(:effective_start, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "effectiveStart"))
    CustomerAgreementSummary.add_member(:effective_end, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "effectiveEnd"))
    CustomerAgreementSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementState, name: "state"))
    CustomerAgreementSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "description"))
    CustomerAgreementSummary.add_member(:acceptance_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementTerms, name: "acceptanceTerms"))
    CustomerAgreementSummary.add_member(:terminate_terms, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementTerms, name: "terminateTerms"))
    CustomerAgreementSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgreementType, name: "type"))
    CustomerAgreementSummary.type = Types::CustomerAgreementSummary
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "accountSettings"))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetReportMetadataRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetReportMetadataRequest.add_member(:report_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionAttribute, name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetReportMetadataRequest.type = Types::GetReportMetadataRequest
    GetReportMetadataResponse.add_member(:report_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDetail, name: "reportDetails"))
    GetReportMetadataResponse.type = Types::GetReportMetadataResponse
    GetReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetReportRequest.add_member(:report_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionAttribute, name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetReportRequest.add_member(:term_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "termToken", traits: {"smithy.api#httpQuery" => "termToken", "smithy.api#required" => {}}))
    GetReportRequest.type = Types::GetReportRequest
    GetReportResponse.add_member(:document_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "documentPresignedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}}))
    GetReportResponse.type = Types::GetReportResponse
    GetTermForReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    GetTermForReportRequest.add_member(:report_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionAttribute, name: "reportVersion", traits: {"smithy.api#httpQuery" => "reportVersion"}))
    GetTermForReportRequest.type = Types::GetTermForReportRequest
    GetTermForReportResponse.add_member(:document_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "documentPresignedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}}))
    GetTermForReportResponse.add_member(:term_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "termToken"))
    GetTermForReportResponse.type = Types::GetTermForReportResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListCustomerAgreementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomerAgreementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomerAgreementsRequest.type = Types::ListCustomerAgreementsRequest
    ListCustomerAgreementsResponse.add_member(:customer_agreements, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementList, name: "customerAgreements", traits: {"smithy.api#required" => {}}))
    ListCustomerAgreementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListCustomerAgreementsResponse.type = Types::ListCustomerAgreementsResponse
    ListReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReportsRequest.type = Types::ListReportsRequest
    ListReportsResponse.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportsList, name: "reports"))
    ListReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListReportsResponse.type = Types::ListReportsResponse
    NotificationSubscriptionStatus.add_member(:subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIBED", traits: {"smithy.api#enumValue" => "SUBSCRIBED"}))
    NotificationSubscriptionStatus.add_member(:not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "NOT_SUBSCRIBED"}))
    PublishedState.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    PublishedState.add_member(:unpublished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNPUBLISHED", traits: {"smithy.api#enumValue" => "UNPUBLISHED"}))
    PutAccountSettingsRequest.add_member(:notification_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSubscriptionStatus, name: "notificationSubscriptionStatus"))
    PutAccountSettingsRequest.type = Types::PutAccountSettingsRequest
    PutAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "accountSettings"))
    PutAccountSettingsResponse.type = Types::PutAccountSettingsResponse
    ReportDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "id"))
    ReportDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "name"))
    ReportDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "description"))
    ReportDetail.add_member(:period_start, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "periodStart"))
    ReportDetail.add_member(:period_end, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "periodEnd"))
    ReportDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "createdAt"))
    ReportDetail.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "lastModifiedAt"))
    ReportDetail.add_member(:deleted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "deletedAt"))
    ReportDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedState, name: "state"))
    ReportDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "arn"))
    ReportDetail.add_member(:series, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "series"))
    ReportDetail.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "category"))
    ReportDetail.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "companyName"))
    ReportDetail.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "productName"))
    ReportDetail.add_member(:term_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "termArn"))
    ReportDetail.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionAttribute, name: "version"))
    ReportDetail.add_member(:acceptance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptanceType, name: "acceptanceType"))
    ReportDetail.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumberAttribute, name: "sequenceNumber"))
    ReportDetail.add_member(:upload_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadState, name: "uploadState"))
    ReportDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ReportDetail.type = Types::ReportDetail
    ReportSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "id"))
    ReportSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "name"))
    ReportSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishedState, name: "state"))
    ReportSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "arn"))
    ReportSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionAttribute, name: "version"))
    ReportSummary.add_member(:upload_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadState, name: "uploadState"))
    ReportSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "description"))
    ReportSummary.add_member(:period_start, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "periodStart"))
    ReportSummary.add_member(:period_end, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "periodEnd"))
    ReportSummary.add_member(:series, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "series"))
    ReportSummary.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "category"))
    ReportSummary.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "companyName"))
    ReportSummary.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "productName"))
    ReportSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ReportSummary.add_member(:acceptance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptanceType, name: "acceptanceType"))
    ReportSummary.type = Types::ReportSummary
    ReportsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReportSummary, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UploadState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    UploadState.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    UploadState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    UploadState.add_member(:fault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAULT", traits: {"smithy.api#enumValue" => "FAULT"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")

    Artifact = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.artifact#Artifact"
      service.name = "Artifact"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Artifact", "arnNamespace" => "artifact", "cloudTrailEventSource" => "artifact.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "artifact"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Artifact"}
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = GetAccountSettingsRequest
        operation.output = GetAccountSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/account-settings/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetReport"
        operation.name = "GetReport"
        operation.input = GetReportRequest
        operation.output = GetReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/get"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_report_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetReportMetadata"
        operation.name = "GetReportMetadata"
        operation.input = GetReportMetadataRequest
        operation.output = GetReportMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/getMetadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_term_for_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetTermForReport"
        operation.name = "GetTermForReport"
        operation.input = GetTermForReportRequest
        operation.output = GetTermForReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/getTermForReport"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_customer_agreements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListCustomerAgreements"
        operation.name = "ListCustomerAgreements"
        operation.input = ListCustomerAgreementsRequest
        operation.output = ListCustomerAgreementsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/customer-agreement/list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomerAgreements.new
      end)
      service.add_operation(:list_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListReports"
        operation.name = "ListReports"
        operation.input = ListReportsRequest
        operation.output = ListReportsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReports.new
      end)
      service.add_operation(:put_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#PutAccountSettings"
        operation.name = "PutAccountSettings"
        operation.input = PutAccountSettingsRequest
        operation.output = PutAccountSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
