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
    Citation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#Citation", name: "Citation")
    CitationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#CitationList", name: "CitationList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateComplianceInquiryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#CreateComplianceInquiryRequest", name: "CreateComplianceInquiryRequest")
    CreateComplianceInquiryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#CreateComplianceInquiryResponse", name: "CreateComplianceInquiryResponse")
    CustomerAgreementIdAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#CustomerAgreementIdAttribute", name: "CustomerAgreementIdAttribute", traits: {"smithy.api#pattern" => "^customer-agreement-[a-zA-Z0-9]{16}$"})
    CustomerAgreementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#CustomerAgreementList", name: "CustomerAgreementList")
    CustomerAgreementState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#CustomerAgreementState", name: "CustomerAgreementState")
    CustomerAgreementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#CustomerAgreementSummary", name: "CustomerAgreementSummary")
    ExportComplianceInquiryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ExportComplianceInquiryRequest", name: "ExportComplianceInquiryRequest")
    ExportComplianceInquiryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ExportComplianceInquiryResponse", name: "ExportComplianceInquiryResponse")
    FeedbackCommentAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#FeedbackCommentAttribute", name: "FeedbackCommentAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s.,;:!?'\\-()/@#&+=]+$", "smithy.api#sensitive" => {}})
    FeedbackRating = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#FeedbackRating", name: "FeedbackRating")
    FeedbackReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#FeedbackReasonCode", name: "FeedbackReasonCode")
    FeedbackReasonCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#FeedbackReasonCodeList", name: "FeedbackReasonCodeList")
    FileSectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#FileSectionList", name: "FileSectionList")
    GetAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetAccountSettingsRequest", name: "GetAccountSettingsRequest")
    GetAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetAccountSettingsResponse", name: "GetAccountSettingsResponse")
    GetComplianceInquiryMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetComplianceInquiryMetadataRequest", name: "GetComplianceInquiryMetadataRequest")
    GetComplianceInquiryMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetComplianceInquiryMetadataResponse", name: "GetComplianceInquiryMetadataResponse")
    GetReportMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportMetadataRequest", name: "GetReportMetadataRequest")
    GetReportMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportMetadataResponse", name: "GetReportMetadataResponse")
    GetReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportRequest", name: "GetReportRequest")
    GetReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetReportResponse", name: "GetReportResponse")
    GetTermForReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetTermForReportRequest", name: "GetTermForReportRequest")
    GetTermForReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#GetTermForReportResponse", name: "GetTermForReportResponse")
    IdempotentClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#IdempotentClientToken", name: "IdempotentClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    InputSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#InputSource", name: "InputSource")
    InquiriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#InquiriesList", name: "InquiriesList")
    InquiryContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.artifact#InquiryContent", name: "InquiryContent", traits: {"smithy.api#sensitive" => {}})
    InquiryDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#InquiryDetail", name: "InquiryDetail")
    InquiryFileContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#InquiryFileContent", name: "InquiryFileContent")
    InquiryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#InquiryId", name: "InquiryId", traits: {"smithy.api#pattern" => "^compliance-inquiry-[a-zA-Z0-9]{16}$"})
    InquiryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#InquiryName", name: "InquiryName", traits: {"smithy.api#sensitive" => {}})
    InquiryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#InquiryStatus", name: "InquiryStatus")
    InquiryStatusMessage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#InquiryStatusMessage", name: "InquiryStatusMessage")
    InquirySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#InquirySummary", name: "InquirySummary")
    InquirySupportMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#InquirySupportMode", name: "InquirySupportMode")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListComplianceInquiriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListComplianceInquiriesRequest", name: "ListComplianceInquiriesRequest")
    ListComplianceInquiriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListComplianceInquiriesResponse", name: "ListComplianceInquiriesResponse")
    ListComplianceInquiryQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListComplianceInquiryQueriesRequest", name: "ListComplianceInquiryQueriesRequest")
    ListComplianceInquiryQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListComplianceInquiryQueriesResponse", name: "ListComplianceInquiryQueriesResponse")
    ListCustomerAgreementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListCustomerAgreementsRequest", name: "ListCustomerAgreementsRequest")
    ListCustomerAgreementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListCustomerAgreementsResponse", name: "ListCustomerAgreementsResponse")
    ListReportVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportVersionsRequest", name: "ListReportVersionsRequest")
    ListReportVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportVersionsResponse", name: "ListReportVersionsResponse")
    ListReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportsRequest", name: "ListReportsRequest")
    ListReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListReportsResponse", name: "ListReportsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LongStringAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#LongStringAttribute", name: "LongStringAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^<>]*$"})
    MaxResultsAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.artifact#MaxResultsAttribute", name: "MaxResultsAttribute", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    NextTokenAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#NextTokenAttribute", name: "NextTokenAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotificationSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#NotificationSubscriptionStatus", name: "NotificationSubscriptionStatus")
    PresignedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#PresignedUrl", name: "PresignedUrl", traits: {"smithy.api#sensitive" => {}})
    PublishedState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#PublishedState", name: "PublishedState")
    PutAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutAccountSettingsRequest", name: "PutAccountSettingsRequest")
    PutAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutAccountSettingsResponse", name: "PutAccountSettingsResponse")
    PutComplianceInquiryFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutComplianceInquiryFeedbackRequest", name: "PutComplianceInquiryFeedbackRequest")
    PutComplianceInquiryFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#PutComplianceInquiryFeedbackResponse", name: "PutComplianceInquiryFeedbackResponse")
    QueriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#QueriesList", name: "QueriesList")
    QueryIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#QueryIdentifiersList", name: "QueryIdentifiersList")
    QueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#QueryStatus", name: "QueryStatus")
    QueryStatusMessage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#QueryStatusMessage", name: "QueryStatusMessage")
    QuerySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#QuerySummary", name: "QuerySummary")
    ReportDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ReportDetail", name: "ReportDetail")
    ReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#ReportId", name: "ReportId", traits: {"smithy.api#pattern" => "^report-[a-zA-Z0-9]{16}$"})
    ReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ReportSummary", name: "ReportSummary")
    ReportsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#ReportsList", name: "ReportsList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ResponseVersion", name: "ResponseVersion")
    ResponseVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#ResponseVersionList", name: "ResponseVersionList")
    ReviewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.artifact#ReviewType", name: "ReviewType")
    SequenceNumberAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.artifact#SequenceNumberAttribute", name: "SequenceNumberAttribute", traits: {"smithy.api#range" => {"min" => 1}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShortStringAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#ShortStringAttribute", name: "ShortStringAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\s]*$"})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#StatusMessage", name: "StatusMessage")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.:/=+\\-@]*$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.artifact#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.artifact#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s_.:/=+\\-@]*$"})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.artifact#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimestampAttribute = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.artifact#TimestampAttribute", name: "TimestampAttribute", traits: {"smithy.api#timestampFormat" => "date-time"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.artifact#UntagResourceResponse", name: "UntagResourceResponse")
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
    AgreementTerms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "member"))
    AgreementType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AgreementType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    AgreementType.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED", traits: {"smithy.api#enumValue" => "MODIFIED"}))
    Citation.add_member(:source_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "sourceLabel"))
    Citation.add_member(:source_content, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "sourceContent"))
    Citation.add_member(:source_link, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "sourceLink"))
    Citation.type = Types::Citation
    CitationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateComplianceInquiryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateComplianceInquiryRequest.add_member(:inquiry_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryContent, name: "inquiryContent", traits: {"smithy.api#required" => {}}))
    CreateComplianceInquiryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotentClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComplianceInquiryRequest.add_member(:support_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InquirySupportMode, name: "supportMode"))
    CreateComplianceInquiryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateComplianceInquiryRequest.type = Types::CreateComplianceInquiryRequest
    CreateComplianceInquiryResponse.add_member(:compliance_inquiry_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InquirySummary, name: "complianceInquirySummary"))
    CreateComplianceInquiryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateComplianceInquiryResponse.type = Types::CreateComplianceInquiryResponse
    CustomerAgreementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementSummary, name: "member"))
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
    ExportComplianceInquiryRequest.add_member(:compliance_inquiry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "complianceInquiryId", traits: {"smithy.api#required" => {}}))
    ExportComplianceInquiryRequest.add_member(:query_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifiersList, name: "queryIdentifiers"))
    ExportComplianceInquiryRequest.add_member(:include_citations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeCitations"))
    ExportComplianceInquiryRequest.type = Types::ExportComplianceInquiryRequest
    ExportComplianceInquiryResponse.add_member(:document_presigned_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PresignedUrl, name: "documentPresignedUrl"))
    ExportComplianceInquiryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ExportComplianceInquiryResponse.type = Types::ExportComplianceInquiryResponse
    FeedbackRating.add_member(:thumbs_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THUMBS_UP", traits: {"smithy.api#enumValue" => "THUMBS_UP"}))
    FeedbackRating.add_member(:thumbs_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THUMBS_DOWN", traits: {"smithy.api#enumValue" => "THUMBS_DOWN"}))
    FeedbackReasonCode.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    FeedbackReasonCode.add_member(:partial_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_RESPONSE", traits: {"smithy.api#enumValue" => "PARTIAL_RESPONSE"}))
    FeedbackReasonCode.add_member(:irrelevant_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IRRELEVANT_RESPONSE", traits: {"smithy.api#enumValue" => "IRRELEVANT_RESPONSE"}))
    FeedbackReasonCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackReasonCode, name: "member"))
    FileSectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortStringAttribute, name: "member"))
    GetAccountSettingsRequest.type = Types::GetAccountSettingsRequest
    GetAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "accountSettings"))
    GetAccountSettingsResponse.type = Types::GetAccountSettingsResponse
    GetComplianceInquiryMetadataRequest.add_member(:compliance_inquiry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "complianceInquiryId", traits: {"smithy.api#httpQuery" => "complianceInquiryId", "smithy.api#required" => {}}))
    GetComplianceInquiryMetadataRequest.type = Types::GetComplianceInquiryMetadataRequest
    GetComplianceInquiryMetadataResponse.add_member(:compliance_inquiry_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryDetail, name: "complianceInquiryDetail"))
    GetComplianceInquiryMetadataResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetComplianceInquiryMetadataResponse.type = Types::GetComplianceInquiryMetadataResponse
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
    InputSource.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    InputSource.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE", traits: {"smithy.api#enumValue" => "FILE"}))
    InquiriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InquirySummary, name: "member"))
    InquiryContent.add_member(:query, Types::InquiryContent::Query, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "query"))
    InquiryContent.add_member(:file_content, Types::InquiryContent::FileContent, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryFileContent, name: "fileContent"))
    InquiryContent.add_member(:unknown, Types::InquiryContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InquiryContent.type = Types::InquiryContent
    InquiryDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "id", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryStatusMessage, name: "statusMessage", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSource, name: "inputSource", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "createdAt", traits: {"smithy.api#required" => {}}))
    InquiryDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "updatedAt"))
    InquiryDetail.add_member(:support_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InquirySupportMode, name: "supportMode"))
    InquiryDetail.type = Types::InquiryDetail
    InquiryFileContent.add_member(:file_sections, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSectionList, name: "fileSections", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}}))
    InquiryFileContent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "content", traits: {"smithy.api#required" => {}}))
    InquiryFileContent.type = Types::InquiryFileContent
    InquiryStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    InquiryStatus.add_member(:human_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HUMAN_REVIEW", traits: {"smithy.api#enumValue" => "HUMAN_REVIEW"}))
    InquiryStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    InquiryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    InquiryStatusMessage.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Compliance inquiry processing is complete."}))
    InquiryStatusMessage.add_member(:malware_detected_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALWARE_DETECTED_ERROR", traits: {"smithy.api#enumValue" => "Malware was detected on the file. Provide a new file and try again."}))
    InquiryStatusMessage.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "Compliance inquiry processing is in-progress."}))
    InquiryStatusMessage.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "An internal error occurred while processing the inquiry. Try again at a later time."}))
    InquiryStatusMessage.add_member(:human_review_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HUMAN_REVIEW_IN_PROGRESS", traits: {"smithy.api#enumValue" => "Human review is in progress."}))
    InquiryStatusMessage.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "Compliance inquiry processing is complete. One or more queries encountered errors during processing."}))
    InquirySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "id", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryStatusMessage, name: "statusMessage", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSource, name: "inputSource", traits: {"smithy.api#required" => {}}))
    InquirySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "createdAt", traits: {"smithy.api#required" => {}}))
    InquirySummary.type = Types::InquirySummary
    InquirySupportMode.add_member(:ai_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_ONLY", traits: {"smithy.api#enumValue" => "AI_ONLY"}))
    InquirySupportMode.add_member(:full_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_SUPPORT", traits: {"smithy.api#enumValue" => "FULL_SUPPORT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListComplianceInquiriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComplianceInquiriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComplianceInquiriesRequest.type = Types::ListComplianceInquiriesRequest
    ListComplianceInquiriesResponse.add_member(:compliance_inquiries, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiriesList, name: "complianceInquiries"))
    ListComplianceInquiriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListComplianceInquiriesResponse.type = Types::ListComplianceInquiriesResponse
    ListComplianceInquiryQueriesRequest.add_member(:compliance_inquiry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "complianceInquiryId", traits: {"smithy.api#httpQuery" => "complianceInquiryId", "smithy.api#required" => {}}))
    ListComplianceInquiryQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListComplianceInquiryQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComplianceInquiryQueriesRequest.type = Types::ListComplianceInquiryQueriesRequest
    ListComplianceInquiryQueriesResponse.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: QueriesList, name: "queries"))
    ListComplianceInquiryQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListComplianceInquiryQueriesResponse.type = Types::ListComplianceInquiryQueriesResponse
    ListCustomerAgreementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomerAgreementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomerAgreementsRequest.type = Types::ListCustomerAgreementsRequest
    ListCustomerAgreementsResponse.add_member(:customer_agreements, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgreementList, name: "customerAgreements", traits: {"smithy.api#required" => {}}))
    ListCustomerAgreementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListCustomerAgreementsResponse.type = Types::ListCustomerAgreementsResponse
    ListReportVersionsRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "reportId", traits: {"smithy.api#httpQuery" => "reportId", "smithy.api#required" => {}}))
    ListReportVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReportVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReportVersionsRequest.type = Types::ListReportVersionsRequest
    ListReportVersionsResponse.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportsList, name: "reports", traits: {"smithy.api#required" => {}}))
    ListReportVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListReportVersionsResponse.type = Types::ListReportVersionsResponse
    ListReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsAttribute, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReportsRequest.type = Types::ListReportsRequest
    ListReportsResponse.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportsList, name: "reports"))
    ListReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenAttribute, name: "nextToken"))
    ListReportsResponse.type = Types::ListReportsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotificationSubscriptionStatus.add_member(:subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIBED", traits: {"smithy.api#enumValue" => "SUBSCRIBED"}))
    NotificationSubscriptionStatus.add_member(:not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "NOT_SUBSCRIBED"}))
    PublishedState.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    PublishedState.add_member(:unpublished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNPUBLISHED", traits: {"smithy.api#enumValue" => "UNPUBLISHED"}))
    PutAccountSettingsRequest.add_member(:notification_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSubscriptionStatus, name: "notificationSubscriptionStatus"))
    PutAccountSettingsRequest.type = Types::PutAccountSettingsRequest
    PutAccountSettingsResponse.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, name: "accountSettings"))
    PutAccountSettingsResponse.type = Types::PutAccountSettingsResponse
    PutComplianceInquiryFeedbackRequest.add_member(:compliance_inquiry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InquiryId, name: "complianceInquiryId", traits: {"smithy.api#required" => {}}))
    PutComplianceInquiryFeedbackRequest.add_member(:query_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryIdentifier"))
    PutComplianceInquiryFeedbackRequest.add_member(:rating, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackRating, name: "rating", traits: {"smithy.api#required" => {}}))
    PutComplianceInquiryFeedbackRequest.add_member(:response_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "responseRevisionId"))
    PutComplianceInquiryFeedbackRequest.add_member(:reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackReasonCodeList, name: "reasonCodes"))
    PutComplianceInquiryFeedbackRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackCommentAttribute, name: "comment"))
    PutComplianceInquiryFeedbackRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotentClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutComplianceInquiryFeedbackRequest.type = Types::PutComplianceInquiryFeedbackRequest
    PutComplianceInquiryFeedbackResponse.add_member(:submitted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "submittedAt", traits: {"smithy.api#required" => {}}))
    PutComplianceInquiryFeedbackResponse.type = Types::PutComplianceInquiryFeedbackResponse
    QueriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySummary, name: "member"))
    QueryIdentifiersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member"))
    QueryStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    QueryStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    QueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    QueryStatusMessage.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Query processing is complete."}))
    QueryStatusMessage.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "Query processing is in-progress."}))
    QueryStatusMessage.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "An internal error occurred while processing the query. Try again at a later time."}))
    QueryStatusMessage.add_member(:pending_human_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_HUMAN_REVIEW", traits: {"smithy.api#enumValue" => "Query is pending human review."}))
    QueryStatusMessage.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTRICTED", traits: {"smithy.api#enumValue" => "Query contains restricted or unsupported content."}))
    QuerySummary.add_member(:query_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryIdentifier", traits: {"smithy.api#required" => {}}))
    QuerySummary.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "query", traits: {"smithy.api#required" => {}}))
    QuerySummary.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "response"))
    QuerySummary.add_member(:review_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewType, name: "reviewType"))
    QuerySummary.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationList, name: "citations"))
    QuerySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QuerySummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatusMessage, name: "statusMessage", traits: {"smithy.api#required" => {}}))
    QuerySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "createdAt", traits: {"smithy.api#required" => {}}))
    QuerySummary.add_member(:updated_response_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseVersionList, name: "updatedResponseVersions"))
    QuerySummary.type = Types::QuerySummary
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
    ReportsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportSummary, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseVersion.add_member(:response_text, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "responseText", traits: {"smithy.api#required" => {}}))
    ResponseVersion.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampAttribute, name: "timestamp", traits: {"smithy.api#required" => {}}))
    ResponseVersion.type = Types::ResponseVersion
    ResponseVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseVersion, name: "member"))
    ReviewType.add_member(:human, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HUMAN", traits: {"smithy.api#enumValue" => "HUMAN"}))
    ReviewType.add_member(:ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongStringAttribute, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
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
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))

    Artifact = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.artifact#Artifact"
      service.name = "Artifact"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Artifact", "arnNamespace" => "artifact", "cloudTrailEventSource" => "artifact.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "artifact"}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Artifact", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://artifact-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://artifact-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://artifact.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://artifact.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_compliance_inquiry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#CreateComplianceInquiry"
        operation.name = "CreateComplianceInquiry"
        operation.input = CreateComplianceInquiryRequest
        operation.output = CreateComplianceInquiryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/v1/compliance-inquiry/create"}}
      end)
      service.add_operation(:export_compliance_inquiry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ExportComplianceInquiry"
        operation.name = "ExportComplianceInquiry"
        operation.input = ExportComplianceInquiryRequest
        operation.output = ExportComplianceInquiryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/v1/compliance-inquiry/export"}}
      end)
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
      service.add_operation(:get_compliance_inquiry_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#GetComplianceInquiryMetadata"
        operation.name = "GetComplianceInquiryMetadata"
        operation.input = GetComplianceInquiryMetadataRequest
        operation.output = GetComplianceInquiryMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/compliance-inquiry/getMetadata"}, "smithy.api#readonly" => {}}
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
      service.add_operation(:list_compliance_inquiries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListComplianceInquiries"
        operation.name = "ListComplianceInquiries"
        operation.input = ListComplianceInquiriesRequest
        operation.output = ListComplianceInquiriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/compliance-inquiry/list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComplianceInquiries.new
      end)
      service.add_operation(:list_compliance_inquiry_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListComplianceInquiryQueries"
        operation.name = "ListComplianceInquiryQueries"
        operation.input = ListComplianceInquiryQueriesRequest
        operation.output = ListComplianceInquiryQueriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/compliance-inquiry/listQueries"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComplianceInquiryQueries.new
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
      service.add_operation(:list_report_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListReportVersions"
        operation.name = "ListReportVersions"
        operation.input = ListReportVersionsRequest
        operation.output = ListReportVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/v1/report/listVersions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReportVersions.new
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
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
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
      service.add_operation(:put_compliance_inquiry_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#PutComplianceInquiryFeedback"
        operation.name = "PutComplianceInquiryFeedback"
        operation.input = PutComplianceInquiryFeedbackRequest
        operation.output = PutComplianceInquiryFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/v1/compliance-inquiry/putFeedback"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.artifact#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
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
