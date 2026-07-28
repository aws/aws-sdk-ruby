# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Artifact
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptanceType = Shapes::StringShape.new(name: 'AcceptanceType')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    AgreementTerms = Shapes::ListShape.new(name: 'AgreementTerms')
    AgreementType = Shapes::StringShape.new(name: 'AgreementType')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Citation = Shapes::StructureShape.new(name: 'Citation')
    CitationList = Shapes::ListShape.new(name: 'CitationList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateComplianceInquiryRequest = Shapes::StructureShape.new(name: 'CreateComplianceInquiryRequest')
    CreateComplianceInquiryResponse = Shapes::StructureShape.new(name: 'CreateComplianceInquiryResponse')
    CustomerAgreementIdAttribute = Shapes::StringShape.new(name: 'CustomerAgreementIdAttribute')
    CustomerAgreementList = Shapes::ListShape.new(name: 'CustomerAgreementList')
    CustomerAgreementState = Shapes::StringShape.new(name: 'CustomerAgreementState')
    CustomerAgreementSummary = Shapes::StructureShape.new(name: 'CustomerAgreementSummary')
    ExportComplianceInquiryRequest = Shapes::StructureShape.new(name: 'ExportComplianceInquiryRequest')
    ExportComplianceInquiryResponse = Shapes::StructureShape.new(name: 'ExportComplianceInquiryResponse')
    FeedbackCommentAttribute = Shapes::StringShape.new(name: 'FeedbackCommentAttribute')
    FeedbackRating = Shapes::StringShape.new(name: 'FeedbackRating')
    FeedbackReasonCode = Shapes::StringShape.new(name: 'FeedbackReasonCode')
    FeedbackReasonCodeList = Shapes::ListShape.new(name: 'FeedbackReasonCodeList')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetComplianceInquiryMetadataRequest = Shapes::StructureShape.new(name: 'GetComplianceInquiryMetadataRequest')
    GetComplianceInquiryMetadataResponse = Shapes::StructureShape.new(name: 'GetComplianceInquiryMetadataResponse')
    GetReportMetadataRequest = Shapes::StructureShape.new(name: 'GetReportMetadataRequest')
    GetReportMetadataResponse = Shapes::StructureShape.new(name: 'GetReportMetadataResponse')
    GetReportRequest = Shapes::StructureShape.new(name: 'GetReportRequest')
    GetReportResponse = Shapes::StructureShape.new(name: 'GetReportResponse')
    GetReportResponseDocumentPresignedUrlString = Shapes::StringShape.new(name: 'GetReportResponseDocumentPresignedUrlString')
    GetTermForReportRequest = Shapes::StructureShape.new(name: 'GetTermForReportRequest')
    GetTermForReportResponse = Shapes::StructureShape.new(name: 'GetTermForReportResponse')
    GetTermForReportResponseDocumentPresignedUrlString = Shapes::StringShape.new(name: 'GetTermForReportResponseDocumentPresignedUrlString')
    IdempotentClientToken = Shapes::StringShape.new(name: 'IdempotentClientToken')
    InputSource = Shapes::StringShape.new(name: 'InputSource')
    InquiriesList = Shapes::ListShape.new(name: 'InquiriesList')
    InquiryContent = Shapes::UnionShape.new(name: 'InquiryContent')
    InquiryDetail = Shapes::StructureShape.new(name: 'InquiryDetail')
    InquiryFileContent = Shapes::StructureShape.new(name: 'InquiryFileContent')
    InquiryFileContentFileSectionsList = Shapes::ListShape.new(name: 'InquiryFileContentFileSectionsList')
    InquiryId = Shapes::StringShape.new(name: 'InquiryId')
    InquiryName = Shapes::StringShape.new(name: 'InquiryName')
    InquiryStatus = Shapes::StringShape.new(name: 'InquiryStatus')
    InquiryStatusMessage = Shapes::StringShape.new(name: 'InquiryStatusMessage')
    InquirySummary = Shapes::StructureShape.new(name: 'InquirySummary')
    InquirySupportMode = Shapes::StringShape.new(name: 'InquirySupportMode')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListComplianceInquiriesRequest = Shapes::StructureShape.new(name: 'ListComplianceInquiriesRequest')
    ListComplianceInquiriesResponse = Shapes::StructureShape.new(name: 'ListComplianceInquiriesResponse')
    ListComplianceInquiryQueriesRequest = Shapes::StructureShape.new(name: 'ListComplianceInquiryQueriesRequest')
    ListComplianceInquiryQueriesResponse = Shapes::StructureShape.new(name: 'ListComplianceInquiryQueriesResponse')
    ListCustomerAgreementsRequest = Shapes::StructureShape.new(name: 'ListCustomerAgreementsRequest')
    ListCustomerAgreementsResponse = Shapes::StructureShape.new(name: 'ListCustomerAgreementsResponse')
    ListReportVersionsRequest = Shapes::StructureShape.new(name: 'ListReportVersionsRequest')
    ListReportVersionsResponse = Shapes::StructureShape.new(name: 'ListReportVersionsResponse')
    ListReportsRequest = Shapes::StructureShape.new(name: 'ListReportsRequest')
    ListReportsResponse = Shapes::StructureShape.new(name: 'ListReportsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LongStringAttribute = Shapes::StringShape.new(name: 'LongStringAttribute')
    MaxResultsAttribute = Shapes::IntegerShape.new(name: 'MaxResultsAttribute')
    NextTokenAttribute = Shapes::StringShape.new(name: 'NextTokenAttribute')
    NotificationSubscriptionStatus = Shapes::StringShape.new(name: 'NotificationSubscriptionStatus')
    PresignedUrl = Shapes::StringShape.new(name: 'PresignedUrl')
    PublishedState = Shapes::StringShape.new(name: 'PublishedState')
    PutAccountSettingsRequest = Shapes::StructureShape.new(name: 'PutAccountSettingsRequest')
    PutAccountSettingsResponse = Shapes::StructureShape.new(name: 'PutAccountSettingsResponse')
    PutComplianceInquiryFeedbackRequest = Shapes::StructureShape.new(name: 'PutComplianceInquiryFeedbackRequest')
    PutComplianceInquiryFeedbackResponse = Shapes::StructureShape.new(name: 'PutComplianceInquiryFeedbackResponse')
    QueriesList = Shapes::ListShape.new(name: 'QueriesList')
    QueryIdentifiersList = Shapes::ListShape.new(name: 'QueryIdentifiersList')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    QueryStatusMessage = Shapes::StringShape.new(name: 'QueryStatusMessage')
    QuerySummary = Shapes::StructureShape.new(name: 'QuerySummary')
    ReportDetail = Shapes::StructureShape.new(name: 'ReportDetail')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportSummary = Shapes::StructureShape.new(name: 'ReportSummary')
    ReportsList = Shapes::ListShape.new(name: 'ReportsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseVersion = Shapes::StructureShape.new(name: 'ResponseVersion')
    ResponseVersionList = Shapes::ListShape.new(name: 'ResponseVersionList')
    ReviewType = Shapes::StringShape.new(name: 'ReviewType')
    SequenceNumberAttribute = Shapes::IntegerShape.new(name: 'SequenceNumberAttribute')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShortStringAttribute = Shapes::StringShape.new(name: 'ShortStringAttribute')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampAttribute = Shapes::TimestampShape.new(name: 'TimestampAttribute', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UploadState = Shapes::StringShape.new(name: 'UploadState')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VersionAttribute = Shapes::IntegerShape.new(name: 'VersionAttribute')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSettings.add_member(:notification_subscription_status, Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    AccountSettings.struct_class = Types::AccountSettings

    AgreementTerms.member = Shapes::ShapeRef.new(shape: LongStringAttribute)

    Citation.add_member(:source_label, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "sourceLabel"))
    Citation.add_member(:source_content, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "sourceContent"))
    Citation.add_member(:source_link, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "sourceLink"))
    Citation.struct_class = Types::Citation

    CitationList.member = Shapes::ShapeRef.new(shape: Citation)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateComplianceInquiryRequest.add_member(:name, Shapes::ShapeRef.new(shape: InquiryName, required: true, location_name: "name"))
    CreateComplianceInquiryRequest.add_member(:inquiry_content, Shapes::ShapeRef.new(shape: InquiryContent, required: true, location_name: "inquiryContent"))
    CreateComplianceInquiryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotentClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateComplianceInquiryRequest.add_member(:support_mode, Shapes::ShapeRef.new(shape: InquirySupportMode, location_name: "supportMode"))
    CreateComplianceInquiryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateComplianceInquiryRequest.struct_class = Types::CreateComplianceInquiryRequest

    CreateComplianceInquiryResponse.add_member(:compliance_inquiry_summary, Shapes::ShapeRef.new(shape: InquirySummary, location_name: "complianceInquirySummary"))
    CreateComplianceInquiryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateComplianceInquiryResponse.struct_class = Types::CreateComplianceInquiryResponse

    CustomerAgreementList.member = Shapes::ShapeRef.new(shape: CustomerAgreementSummary)

    CustomerAgreementSummary.add_member(:name, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "name"))
    CustomerAgreementSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    CustomerAgreementSummary.add_member(:id, Shapes::ShapeRef.new(shape: CustomerAgreementIdAttribute, location_name: "id"))
    CustomerAgreementSummary.add_member(:agreement_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "agreementArn"))
    CustomerAgreementSummary.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "awsAccountId"))
    CustomerAgreementSummary.add_member(:organization_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "organizationArn"))
    CustomerAgreementSummary.add_member(:effective_start, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "effectiveStart"))
    CustomerAgreementSummary.add_member(:effective_end, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "effectiveEnd"))
    CustomerAgreementSummary.add_member(:state, Shapes::ShapeRef.new(shape: CustomerAgreementState, location_name: "state"))
    CustomerAgreementSummary.add_member(:description, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    CustomerAgreementSummary.add_member(:acceptance_terms, Shapes::ShapeRef.new(shape: AgreementTerms, location_name: "acceptanceTerms"))
    CustomerAgreementSummary.add_member(:terminate_terms, Shapes::ShapeRef.new(shape: AgreementTerms, location_name: "terminateTerms"))
    CustomerAgreementSummary.add_member(:type, Shapes::ShapeRef.new(shape: AgreementType, location_name: "type"))
    CustomerAgreementSummary.struct_class = Types::CustomerAgreementSummary

    ExportComplianceInquiryRequest.add_member(:compliance_inquiry_id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location_name: "complianceInquiryId"))
    ExportComplianceInquiryRequest.add_member(:query_identifiers, Shapes::ShapeRef.new(shape: QueryIdentifiersList, location_name: "queryIdentifiers"))
    ExportComplianceInquiryRequest.add_member(:include_citations, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeCitations"))
    ExportComplianceInquiryRequest.struct_class = Types::ExportComplianceInquiryRequest

    ExportComplianceInquiryResponse.add_member(:document_presigned_url, Shapes::ShapeRef.new(shape: PresignedUrl, location_name: "documentPresignedUrl"))
    ExportComplianceInquiryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ExportComplianceInquiryResponse.struct_class = Types::ExportComplianceInquiryResponse

    FeedbackReasonCodeList.member = Shapes::ShapeRef.new(shape: FeedbackReasonCode)

    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetComplianceInquiryMetadataRequest.add_member(:compliance_inquiry_id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location: "querystring", location_name: "complianceInquiryId"))
    GetComplianceInquiryMetadataRequest.struct_class = Types::GetComplianceInquiryMetadataRequest

    GetComplianceInquiryMetadataResponse.add_member(:compliance_inquiry_detail, Shapes::ShapeRef.new(shape: InquiryDetail, location_name: "complianceInquiryDetail"))
    GetComplianceInquiryMetadataResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetComplianceInquiryMetadataResponse.struct_class = Types::GetComplianceInquiryMetadataResponse

    GetReportMetadataRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetReportMetadataRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetReportMetadataRequest.struct_class = Types::GetReportMetadataRequest

    GetReportMetadataResponse.add_member(:report_details, Shapes::ShapeRef.new(shape: ReportDetail, location_name: "reportDetails"))
    GetReportMetadataResponse.struct_class = Types::GetReportMetadataResponse

    GetReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetReportRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetReportRequest.add_member(:term_token, Shapes::ShapeRef.new(shape: ShortStringAttribute, required: true, location: "querystring", location_name: "termToken"))
    GetReportRequest.struct_class = Types::GetReportRequest

    GetReportResponse.add_member(:document_presigned_url, Shapes::ShapeRef.new(shape: GetReportResponseDocumentPresignedUrlString, location_name: "documentPresignedUrl"))
    GetReportResponse.struct_class = Types::GetReportResponse

    GetTermForReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    GetTermForReportRequest.add_member(:report_version, Shapes::ShapeRef.new(shape: VersionAttribute, location: "querystring", location_name: "reportVersion"))
    GetTermForReportRequest.struct_class = Types::GetTermForReportRequest

    GetTermForReportResponse.add_member(:document_presigned_url, Shapes::ShapeRef.new(shape: GetTermForReportResponseDocumentPresignedUrlString, location_name: "documentPresignedUrl"))
    GetTermForReportResponse.add_member(:term_token, Shapes::ShapeRef.new(shape: String, location_name: "termToken"))
    GetTermForReportResponse.struct_class = Types::GetTermForReportResponse

    InquiriesList.member = Shapes::ShapeRef.new(shape: InquirySummary)

    InquiryContent.add_member(:query, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "query"))
    InquiryContent.add_member(:file_content, Shapes::ShapeRef.new(shape: InquiryFileContent, location_name: "fileContent"))
    InquiryContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InquiryContent.add_member_subclass(:query, Types::InquiryContent::Query)
    InquiryContent.add_member_subclass(:file_content, Types::InquiryContent::FileContent)
    InquiryContent.add_member_subclass(:unknown, Types::InquiryContent::Unknown)
    InquiryContent.struct_class = Types::InquiryContent

    InquiryDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    InquiryDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    InquiryDetail.add_member(:id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location_name: "id"))
    InquiryDetail.add_member(:status, Shapes::ShapeRef.new(shape: InquiryStatus, required: true, location_name: "status"))
    InquiryDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: InquiryStatusMessage, required: true, location_name: "statusMessage"))
    InquiryDetail.add_member(:input_source, Shapes::ShapeRef.new(shape: InputSource, required: true, location_name: "inputSource"))
    InquiryDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampAttribute, required: true, location_name: "createdAt"))
    InquiryDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "updatedAt"))
    InquiryDetail.add_member(:support_mode, Shapes::ShapeRef.new(shape: InquirySupportMode, location_name: "supportMode"))
    InquiryDetail.struct_class = Types::InquiryDetail

    InquiryFileContent.add_member(:file_sections, Shapes::ShapeRef.new(shape: InquiryFileContentFileSectionsList, location_name: "fileSections"))
    InquiryFileContent.add_member(:content, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "content"))
    InquiryFileContent.struct_class = Types::InquiryFileContent

    InquiryFileContentFileSectionsList.member = Shapes::ShapeRef.new(shape: ShortStringAttribute)

    InquirySummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    InquirySummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    InquirySummary.add_member(:id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location_name: "id"))
    InquirySummary.add_member(:status, Shapes::ShapeRef.new(shape: InquiryStatus, required: true, location_name: "status"))
    InquirySummary.add_member(:status_message, Shapes::ShapeRef.new(shape: InquiryStatusMessage, required: true, location_name: "statusMessage"))
    InquirySummary.add_member(:input_source, Shapes::ShapeRef.new(shape: InputSource, required: true, location_name: "inputSource"))
    InquirySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampAttribute, required: true, location_name: "createdAt"))
    InquirySummary.struct_class = Types::InquirySummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListComplianceInquiriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListComplianceInquiriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListComplianceInquiriesRequest.struct_class = Types::ListComplianceInquiriesRequest

    ListComplianceInquiriesResponse.add_member(:compliance_inquiries, Shapes::ShapeRef.new(shape: InquiriesList, location_name: "complianceInquiries"))
    ListComplianceInquiriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListComplianceInquiriesResponse.struct_class = Types::ListComplianceInquiriesResponse

    ListComplianceInquiryQueriesRequest.add_member(:compliance_inquiry_id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location: "querystring", location_name: "complianceInquiryId"))
    ListComplianceInquiryQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListComplianceInquiryQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListComplianceInquiryQueriesRequest.struct_class = Types::ListComplianceInquiryQueriesRequest

    ListComplianceInquiryQueriesResponse.add_member(:queries, Shapes::ShapeRef.new(shape: QueriesList, location_name: "queries"))
    ListComplianceInquiryQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListComplianceInquiryQueriesResponse.struct_class = Types::ListComplianceInquiryQueriesResponse

    ListCustomerAgreementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListCustomerAgreementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListCustomerAgreementsRequest.struct_class = Types::ListCustomerAgreementsRequest

    ListCustomerAgreementsResponse.add_member(:customer_agreements, Shapes::ShapeRef.new(shape: CustomerAgreementList, required: true, location_name: "customerAgreements"))
    ListCustomerAgreementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListCustomerAgreementsResponse.struct_class = Types::ListCustomerAgreementsResponse

    ListReportVersionsRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "querystring", location_name: "reportId"))
    ListReportVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListReportVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListReportVersionsRequest.struct_class = Types::ListReportVersionsRequest

    ListReportVersionsResponse.add_member(:reports, Shapes::ShapeRef.new(shape: ReportsList, required: true, location_name: "reports"))
    ListReportVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListReportVersionsResponse.struct_class = Types::ListReportVersionsResponse

    ListReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsAttribute, location: "querystring", location_name: "maxResults"))
    ListReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location: "querystring", location_name: "nextToken"))
    ListReportsRequest.struct_class = Types::ListReportsRequest

    ListReportsResponse.add_member(:reports, Shapes::ShapeRef.new(shape: ReportsList, location_name: "reports"))
    ListReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenAttribute, location_name: "nextToken"))
    ListReportsResponse.struct_class = Types::ListReportsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PutAccountSettingsRequest.add_member(:notification_subscription_status, Shapes::ShapeRef.new(shape: NotificationSubscriptionStatus, location_name: "notificationSubscriptionStatus"))
    PutAccountSettingsRequest.struct_class = Types::PutAccountSettingsRequest

    PutAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
    PutAccountSettingsResponse.struct_class = Types::PutAccountSettingsResponse

    PutComplianceInquiryFeedbackRequest.add_member(:compliance_inquiry_id, Shapes::ShapeRef.new(shape: InquiryId, required: true, location_name: "complianceInquiryId"))
    PutComplianceInquiryFeedbackRequest.add_member(:query_identifier, Shapes::ShapeRef.new(shape: Integer, location_name: "queryIdentifier"))
    PutComplianceInquiryFeedbackRequest.add_member(:rating, Shapes::ShapeRef.new(shape: FeedbackRating, required: true, location_name: "rating"))
    PutComplianceInquiryFeedbackRequest.add_member(:response_revision_id, Shapes::ShapeRef.new(shape: Integer, location_name: "responseRevisionId"))
    PutComplianceInquiryFeedbackRequest.add_member(:reason_codes, Shapes::ShapeRef.new(shape: FeedbackReasonCodeList, location_name: "reasonCodes"))
    PutComplianceInquiryFeedbackRequest.add_member(:comment, Shapes::ShapeRef.new(shape: FeedbackCommentAttribute, location_name: "comment"))
    PutComplianceInquiryFeedbackRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotentClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutComplianceInquiryFeedbackRequest.struct_class = Types::PutComplianceInquiryFeedbackRequest

    PutComplianceInquiryFeedbackResponse.add_member(:submitted_at, Shapes::ShapeRef.new(shape: TimestampAttribute, required: true, location_name: "submittedAt"))
    PutComplianceInquiryFeedbackResponse.struct_class = Types::PutComplianceInquiryFeedbackResponse

    QueriesList.member = Shapes::ShapeRef.new(shape: QuerySummary)

    QueryIdentifiersList.member = Shapes::ShapeRef.new(shape: Integer)

    QuerySummary.add_member(:query_identifier, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "queryIdentifier"))
    QuerySummary.add_member(:query, Shapes::ShapeRef.new(shape: LongStringAttribute, required: true, location_name: "query"))
    QuerySummary.add_member(:response, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "response"))
    QuerySummary.add_member(:review_type, Shapes::ShapeRef.new(shape: ReviewType, location_name: "reviewType"))
    QuerySummary.add_member(:citations, Shapes::ShapeRef.new(shape: CitationList, location_name: "citations"))
    QuerySummary.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    QuerySummary.add_member(:status_message, Shapes::ShapeRef.new(shape: QueryStatusMessage, required: true, location_name: "statusMessage"))
    QuerySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampAttribute, required: true, location_name: "createdAt"))
    QuerySummary.add_member(:updated_response_versions, Shapes::ShapeRef.new(shape: ResponseVersionList, location_name: "updatedResponseVersions"))
    QuerySummary.struct_class = Types::QuerySummary

    ReportDetail.add_member(:id, Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportDetail.add_member(:name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportDetail.add_member(:description, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportDetail.add_member(:period_start, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportDetail.add_member(:period_end, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "createdAt"))
    ReportDetail.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "lastModifiedAt"))
    ReportDetail.add_member(:deleted_at, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "deletedAt"))
    ReportDetail.add_member(:state, Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportDetail.add_member(:arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportDetail.add_member(:series, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportDetail.add_member(:category, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportDetail.add_member(:company_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportDetail.add_member(:product_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportDetail.add_member(:term_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "termArn"))
    ReportDetail.add_member(:version, Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportDetail.add_member(:acceptance_type, Shapes::ShapeRef.new(shape: AcceptanceType, location_name: "acceptanceType"))
    ReportDetail.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumberAttribute, location_name: "sequenceNumber"))
    ReportDetail.add_member(:upload_state, Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportDetail.struct_class = Types::ReportDetail

    ReportSummary.add_member(:id, Shapes::ShapeRef.new(shape: ReportId, location_name: "id"))
    ReportSummary.add_member(:name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "name"))
    ReportSummary.add_member(:state, Shapes::ShapeRef.new(shape: PublishedState, location_name: "state"))
    ReportSummary.add_member(:arn, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "arn"))
    ReportSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionAttribute, location_name: "version"))
    ReportSummary.add_member(:upload_state, Shapes::ShapeRef.new(shape: UploadState, location_name: "uploadState"))
    ReportSummary.add_member(:description, Shapes::ShapeRef.new(shape: LongStringAttribute, location_name: "description"))
    ReportSummary.add_member(:period_start, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodStart"))
    ReportSummary.add_member(:period_end, Shapes::ShapeRef.new(shape: TimestampAttribute, location_name: "periodEnd"))
    ReportSummary.add_member(:series, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "series"))
    ReportSummary.add_member(:category, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "category"))
    ReportSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "companyName"))
    ReportSummary.add_member(:product_name, Shapes::ShapeRef.new(shape: ShortStringAttribute, location_name: "productName"))
    ReportSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ReportSummary.add_member(:acceptance_type, Shapes::ShapeRef.new(shape: AcceptanceType, location_name: "acceptanceType"))
    ReportSummary.struct_class = Types::ReportSummary

    ReportsList.member = Shapes::ShapeRef.new(shape: ReportSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseVersion.add_member(:response_text, Shapes::ShapeRef.new(shape: LongStringAttribute, required: true, location_name: "responseText"))
    ResponseVersion.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimestampAttribute, required: true, location_name: "timestamp"))
    ResponseVersion.struct_class = Types::ResponseVersion

    ResponseVersionList.member = Shapes::ShapeRef.new(shape: ResponseVersion)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: LongStringAttribute, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

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

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "artifact",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Artifact",
        "serviceId" => "Artifact",
        "signatureVersion" => "v4",
        "signingName" => "artifact",
        "uid" => "artifact-2018-05-10",
      }

      api.add_operation(:create_compliance_inquiry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComplianceInquiry"
        o.http_method = "POST"
        o.http_request_uri = "/v1/compliance-inquiry/create"
        o.input = Shapes::ShapeRef.new(shape: CreateComplianceInquiryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComplianceInquiryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:export_compliance_inquiry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportComplianceInquiry"
        o.http_method = "POST"
        o.http_request_uri = "/v1/compliance-inquiry/export"
        o.input = Shapes::ShapeRef.new(shape: ExportComplianceInquiryRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportComplianceInquiryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/v1/account-settings/get"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_compliance_inquiry_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceInquiryMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/v1/compliance-inquiry/getMetadata"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceInquiryMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceInquiryMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReport"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/get"
        o.input = Shapes::ShapeRef.new(shape: GetReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_report_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReportMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/getMetadata"
        o.input = Shapes::ShapeRef.new(shape: GetReportMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReportMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_term_for_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTermForReport"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/getTermForReport"
        o.input = Shapes::ShapeRef.new(shape: GetTermForReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTermForReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_compliance_inquiries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceInquiries"
        o.http_method = "GET"
        o.http_request_uri = "/v1/compliance-inquiry/list"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceInquiriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceInquiriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compliance_inquiry_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceInquiryQueries"
        o.http_method = "GET"
        o.http_request_uri = "/v1/compliance-inquiry/listQueries"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceInquiryQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceInquiryQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_customer_agreements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomerAgreements"
        o.http_method = "GET"
        o.http_request_uri = "/v1/customer-agreement/list"
        o.input = Shapes::ShapeRef.new(shape: ListCustomerAgreementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomerAgreementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_report_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReportVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/listVersions"
        o.input = Shapes::ShapeRef.new(shape: ListReportVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReportVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReports"
        o.http_method = "GET"
        o.http_request_uri = "/v1/report/list"
        o.input = Shapes::ShapeRef.new(shape: ListReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/account-settings/put"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_compliance_inquiry_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutComplianceInquiryFeedback"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/compliance-inquiry/putFeedback"
        o.input = Shapes::ShapeRef.new(shape: PutComplianceInquiryFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutComplianceInquiryFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
