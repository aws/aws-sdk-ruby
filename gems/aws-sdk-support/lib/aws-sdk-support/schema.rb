# frozen_string_literal: true

# This is generated code!

module Aws::Support
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddAttachmentsToSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AddAttachmentsToSetRequest", name: "AddAttachmentsToSetRequest")
    AddAttachmentsToSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AddAttachmentsToSetResponse", name: "AddAttachmentsToSetResponse")
    AddCommunicationToCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AddCommunicationToCaseRequest", name: "AddCommunicationToCaseRequest")
    AddCommunicationToCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AddCommunicationToCaseResponse", name: "AddCommunicationToCaseResponse")
    AfterTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#AfterTime", name: "AfterTime")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#Attachment", name: "Attachment")
    AttachmentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentDetails", name: "AttachmentDetails")
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#AttachmentId", name: "AttachmentId")
    AttachmentIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentIdNotFound", name: "AttachmentIdNotFound", traits: {"smithy.api#error" => "client"})
    AttachmentLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentLimitExceeded", name: "AttachmentLimitExceeded", traits: {"smithy.api#error" => "client"})
    AttachmentSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#AttachmentSet", name: "AttachmentSet")
    AttachmentSetExpired = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentSetExpired", name: "AttachmentSetExpired", traits: {"smithy.api#error" => "client"})
    AttachmentSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#AttachmentSetId", name: "AttachmentSetId")
    AttachmentSetIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentSetIdNotFound", name: "AttachmentSetIdNotFound", traits: {"smithy.api#error" => "client"})
    AttachmentSetSizeLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#AttachmentSetSizeLimitExceeded", name: "AttachmentSetSizeLimitExceeded", traits: {"smithy.api#error" => "client"})
    Attachments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#Attachments", name: "Attachments")
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#AvailabilityErrorMessage", name: "AvailabilityErrorMessage")
    BeforeTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#BeforeTime", name: "BeforeTime")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.support#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CaseCreationLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CaseCreationLimitExceeded", name: "CaseCreationLimitExceeded", traits: {"smithy.api#error" => "client"})
    CaseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CaseDetails", name: "CaseDetails")
    CaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CaseId", name: "CaseId")
    CaseIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CaseIdList", name: "CaseIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CaseIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CaseIdNotFound", name: "CaseIdNotFound", traits: {"smithy.api#error" => "client"})
    CaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CaseList", name: "CaseList")
    CaseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CaseStatus", name: "CaseStatus")
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#Category", name: "Category")
    CategoryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CategoryCode", name: "CategoryCode")
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CategoryList", name: "CategoryList")
    CategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CategoryName", name: "CategoryName")
    CcEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CcEmailAddress", name: "CcEmailAddress")
    CcEmailAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CcEmailAddressList", name: "CcEmailAddressList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Code", name: "Code")
    Communication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#Communication", name: "Communication")
    CommunicationBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CommunicationBody", name: "CommunicationBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    CommunicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CommunicationList", name: "CommunicationList")
    CommunicationTypeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CommunicationTypeOptions", name: "CommunicationTypeOptions")
    CommunicationTypeOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CommunicationTypeOptionsList", name: "CommunicationTypeOptionsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CompleteAttachmentUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CompleteAttachmentUploadRequest", name: "CompleteAttachmentUploadRequest")
    CompleteAttachmentUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CompleteAttachmentUploadResponse", name: "CompleteAttachmentUploadResponse")
    CompletedUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CompletedUpload", name: "CompletedUpload")
    CompletedUploadList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#CompletedUploadList", name: "CompletedUploadList")
    CoralAvailabilityThrottledResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CoralAvailabilityThrottledResource", name: "CoralAvailabilityThrottledResource")
    CoralAvailabilityThrottlingReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#CoralAvailabilityThrottlingReason", name: "CoralAvailabilityThrottlingReason")
    CreateCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CreateCaseRequest", name: "CreateCaseRequest")
    CreateCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#CreateCaseResponse", name: "CreateCaseResponse")
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.support#Data", name: "Data")
    DateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DateInterval", name: "DateInterval")
    DatesWithoutSupportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#DatesWithoutSupportList", name: "DatesWithoutSupportList")
    DescribeAttachmentLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeAttachmentLimitExceeded", name: "DescribeAttachmentLimitExceeded", traits: {"smithy.api#error" => "client"})
    DescribeAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeAttachmentRequest", name: "DescribeAttachmentRequest")
    DescribeAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeAttachmentResponse", name: "DescribeAttachmentResponse")
    DescribeAttachmentUploadStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeAttachmentUploadStatusRequest", name: "DescribeAttachmentUploadStatusRequest")
    DescribeAttachmentUploadStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeAttachmentUploadStatusResponse", name: "DescribeAttachmentUploadStatusResponse")
    DescribeCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCasesRequest", name: "DescribeCasesRequest")
    DescribeCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCasesResponse", name: "DescribeCasesResponse")
    DescribeCommunicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCommunicationsRequest", name: "DescribeCommunicationsRequest")
    DescribeCommunicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCommunicationsResponse", name: "DescribeCommunicationsResponse")
    DescribeCreateCaseOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCreateCaseOptionsRequest", name: "DescribeCreateCaseOptionsRequest")
    DescribeCreateCaseOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeCreateCaseOptionsResponse", name: "DescribeCreateCaseOptionsResponse")
    DescribeServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeServicesRequest", name: "DescribeServicesRequest")
    DescribeServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeServicesResponse", name: "DescribeServicesResponse")
    DescribeSeverityLevelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeSeverityLevelsRequest", name: "DescribeSeverityLevelsRequest")
    DescribeSeverityLevelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeSeverityLevelsResponse", name: "DescribeSeverityLevelsResponse")
    DescribeSupportedLanguagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeSupportedLanguagesRequest", name: "DescribeSupportedLanguagesRequest")
    DescribeSupportedLanguagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeSupportedLanguagesResponse", name: "DescribeSupportedLanguagesResponse")
    DescribeTrustedAdvisorCheckRefreshStatusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesRequest", name: "DescribeTrustedAdvisorCheckRefreshStatusesRequest")
    DescribeTrustedAdvisorCheckRefreshStatusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesResponse", name: "DescribeTrustedAdvisorCheckRefreshStatusesResponse")
    DescribeTrustedAdvisorCheckResultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckResultRequest", name: "DescribeTrustedAdvisorCheckResultRequest")
    DescribeTrustedAdvisorCheckResultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckResultResponse", name: "DescribeTrustedAdvisorCheckResultResponse")
    DescribeTrustedAdvisorCheckSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesRequest", name: "DescribeTrustedAdvisorCheckSummariesRequest")
    DescribeTrustedAdvisorCheckSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesResponse", name: "DescribeTrustedAdvisorCheckSummariesResponse")
    DescribeTrustedAdvisorChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorChecksRequest", name: "DescribeTrustedAdvisorChecksRequest")
    DescribeTrustedAdvisorChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DescribeTrustedAdvisorChecksResponse", name: "DescribeTrustedAdvisorChecksResponse")
    Display = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Display", name: "Display")
    DisplayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#DisplayId", name: "DisplayId")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.support#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DownloadUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DownloadUrl", name: "DownloadUrl")
    DryRunOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#DryRunOperationException", name: "DryRunOperationException", traits: {"smithy.api#error" => "client"})
    ETag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ETag", name: "ETag", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    EndIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#EndIndex", name: "EndIndex", traits: {"smithy.api#range" => {"min" => 2}})
    EndTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#EndTime", name: "EndTime")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ErrorMessage", name: "ErrorMessage")
    ExpiryTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ExpiryTime", name: "ExpiryTime")
    FieldIntegerValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#FieldIntegerValue", name: "FieldIntegerValue")
    FileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#FileName", name: "FileName")
    FileSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#FileSize", name: "FileSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 157286400}})
    GetAttachmentDownloadLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#GetAttachmentDownloadLinkRequest", name: "GetAttachmentDownloadLinkRequest")
    GetAttachmentDownloadLinkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#GetAttachmentDownloadLinkResponse", name: "GetAttachmentDownloadLinkResponse")
    GetAttachmentUploadLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#GetAttachmentUploadLinksRequest", name: "GetAttachmentUploadLinksRequest")
    GetAttachmentUploadLinksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#GetAttachmentUploadLinksResponse", name: "GetAttachmentUploadLinksResponse")
    HttpsUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#HttpsUrl", name: "HttpsUrl", traits: {"smithy.api#length" => {"min" => 8}, "smithy.api#pattern" => "^https://[a-zA-Z0-9][a-zA-Z0-9.-]*[a-zA-Z0-9]\\.[a-zA-Z]{2,}(/.*)?$"})
    IncludeCommunications = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.support#IncludeCommunications", name: "IncludeCommunications")
    IncludeResolvedCases = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.support#IncludeResolvedCases", name: "IncludeResolvedCases", traits: {"smithy.api#default" => false})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    IssueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#IssueType", name: "IssueType")
    Language = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Language", name: "Language")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#NextToken", name: "NextToken")
    NullableBooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.support#NullableBooleanType", name: "NullableBooleanType")
    PartSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#PartSizeBytes", name: "PartSizeBytes", traits: {"smithy.api#range" => {"min" => 1, "max" => 104857600}})
    RecentCaseCommunications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#RecentCaseCommunications", name: "RecentCaseCommunications")
    RefreshTrustedAdvisorCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#RefreshTrustedAdvisorCheckRequest", name: "RefreshTrustedAdvisorCheckRequest")
    RefreshTrustedAdvisorCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#RefreshTrustedAdvisorCheckResponse", name: "RefreshTrustedAdvisorCheckResponse")
    ResolveCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#ResolveCaseRequest", name: "ResolveCaseRequest")
    ResolveCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#ResolveCaseResponse", name: "ResolveCaseResponse")
    Result = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.support#Result", name: "Result", traits: {"smithy.api#default" => false})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#Service", name: "Service")
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ServiceCode", name: "ServiceCode")
    ServiceCode2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ServiceCode2", name: "ServiceCode2", traits: {"smithy.api#pattern" => "^[0-9a-z\\-_]+$"})
    ServiceCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#ServiceCodeList", name: "ServiceCodeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#ServiceList", name: "ServiceList")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ServiceName", name: "ServiceName")
    SeverityCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#SeverityCode", name: "SeverityCode")
    SeverityLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#SeverityLevel", name: "SeverityLevel")
    SeverityLevelCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#SeverityLevelCode", name: "SeverityLevelCode")
    SeverityLevelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#SeverityLevelName", name: "SeverityLevelName")
    SeverityLevelsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#SeverityLevelsList", name: "SeverityLevelsList")
    StartIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.support#StartIndex", name: "StartIndex", traits: {"smithy.api#range" => {"min" => 1}})
    StartTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#StartTime", name: "StartTime")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Status", name: "Status")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#StringList", name: "StringList", traits: {"smithy.api#sparse" => {}})
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Subject", name: "Subject")
    SubmittedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#SubmittedBy", name: "SubmittedBy")
    SupportedHour = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#SupportedHour", name: "SupportedHour")
    SupportedHoursList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#SupportedHoursList", name: "SupportedHoursList")
    SupportedLanguage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#SupportedLanguage", name: "SupportedLanguage")
    SupportedLanguagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#SupportedLanguagesList", name: "SupportedLanguagesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThrottlingReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#ThrottlingReason", name: "ThrottlingReason")
    ThrottlingReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#ThrottlingReasonList", name: "ThrottlingReasonList")
    TimeCreated = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#TimeCreated", name: "TimeCreated")
    TrustedAdvisorCategorySpecificSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCategorySpecificSummary", name: "TrustedAdvisorCategorySpecificSummary")
    TrustedAdvisorCheckDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckDescription", name: "TrustedAdvisorCheckDescription")
    TrustedAdvisorCheckList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckList", name: "TrustedAdvisorCheckList")
    TrustedAdvisorCheckRefreshStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckRefreshStatus", name: "TrustedAdvisorCheckRefreshStatus")
    TrustedAdvisorCheckRefreshStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckRefreshStatusList", name: "TrustedAdvisorCheckRefreshStatusList")
    TrustedAdvisorCheckResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckResult", name: "TrustedAdvisorCheckResult")
    TrustedAdvisorCheckSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckSummary", name: "TrustedAdvisorCheckSummary")
    TrustedAdvisorCheckSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#TrustedAdvisorCheckSummaryList", name: "TrustedAdvisorCheckSummaryList")
    TrustedAdvisorCostOptimizingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorCostOptimizingSummary", name: "TrustedAdvisorCostOptimizingSummary")
    TrustedAdvisorResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorResourceDetail", name: "TrustedAdvisorResourceDetail")
    TrustedAdvisorResourceDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#TrustedAdvisorResourceDetailList", name: "TrustedAdvisorResourceDetailList")
    TrustedAdvisorResourcesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#TrustedAdvisorResourcesSummary", name: "TrustedAdvisorResourcesSummary")
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#Type", name: "Type")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#UploadId", name: "UploadId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    UploadIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#UploadIdNotFound", name: "UploadIdNotFound", traits: {"smithy.api#error" => "client"})
    UploadIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#UploadIds", name: "UploadIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UploadProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#UploadProgress", name: "UploadProgress")
    UploadRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#UploadRange", name: "UploadRange")
    UploadStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.support#UploadStatus", name: "UploadStatus")
    UploadUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.support#UploadUrl", name: "UploadUrl")
    UploadUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.support#UploadUrlList", name: "UploadUrlList")
    ValidatedCategoryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedCategoryCode", name: "ValidatedCategoryCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedCommunicationBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedCommunicationBody", name: "ValidatedCommunicationBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    ValidatedDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedDateTime", name: "ValidatedDateTime", traits: {"smithy.api#length" => {"min" => 8, "max" => 30}})
    ValidatedIssueTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedIssueTypeString", name: "ValidatedIssueTypeString", traits: {"smithy.api#length" => {"min" => 9, "max" => 22}})
    ValidatedLanguageAvailability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedLanguageAvailability", name: "ValidatedLanguageAvailability", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.support#ValidatedServiceCode", name: "ValidatedServiceCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})

    AddAttachmentsToSetRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSetId, name: "attachmentSetId"))
    AddAttachmentsToSetRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments", traits: {"smithy.api#required" => {}}))
    AddAttachmentsToSetRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    AddAttachmentsToSetRequest.type = Types::AddAttachmentsToSetRequest
    AddAttachmentsToSetResponse.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSetId, name: "attachmentSetId"))
    AddAttachmentsToSetResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryTime, name: "expiryTime"))
    AddAttachmentsToSetResponse.type = Types::AddAttachmentsToSetResponse
    AddCommunicationToCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId"))
    AddCommunicationToCaseRequest.add_member(:communication_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationBody, name: "communicationBody", traits: {"smithy.api#required" => {}}))
    AddCommunicationToCaseRequest.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: CcEmailAddressList, name: "ccEmailAddresses"))
    AddCommunicationToCaseRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSetId, name: "attachmentSetId"))
    AddCommunicationToCaseRequest.add_member(:upload_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadIds, name: "uploadIds"))
    AddCommunicationToCaseRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    AddCommunicationToCaseRequest.type = Types::AddCommunicationToCaseRequest
    AddCommunicationToCaseResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "result", traits: {"smithy.api#default" => false}))
    AddCommunicationToCaseResponse.type = Types::AddCommunicationToCaseResponse
    Attachment.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileName, name: "fileName"))
    Attachment.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "data"))
    Attachment.type = Types::Attachment
    AttachmentDetails.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "attachmentId"))
    AttachmentDetails.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileName, name: "fileName"))
    AttachmentDetails.type = Types::AttachmentDetails
    AttachmentIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AttachmentIdNotFound.type = Types::AttachmentIdNotFound
    AttachmentLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AttachmentLimitExceeded.type = Types::AttachmentLimitExceeded
    AttachmentSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentDetails, name: "member"))
    AttachmentSetExpired.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AttachmentSetExpired.type = Types::AttachmentSetExpired
    AttachmentSetIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AttachmentSetIdNotFound.type = Types::AttachmentSetIdNotFound
    AttachmentSetSizeLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AttachmentSetSizeLimitExceeded.type = Types::AttachmentSetSizeLimitExceeded
    Attachments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "member"))
    CaseCreationLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    CaseCreationLimitExceeded.type = Types::CaseCreationLimitExceeded
    CaseDetails.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId"))
    CaseDetails.add_member(:display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayId, name: "displayId"))
    CaseDetails.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "subject"))
    CaseDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    CaseDetails.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "serviceCode"))
    CaseDetails.add_member(:category_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryCode, name: "categoryCode"))
    CaseDetails.add_member(:severity_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCode, name: "severityCode"))
    CaseDetails.add_member(:submitted_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SubmittedBy, name: "submittedBy"))
    CaseDetails.add_member(:time_created, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeCreated, name: "timeCreated"))
    CaseDetails.add_member(:recent_communications, ::Smithy::Schema::Shapes::MemberShape.new(target: RecentCaseCommunications, name: "recentCommunications"))
    CaseDetails.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: CcEmailAddressList, name: "ccEmailAddresses"))
    CaseDetails.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    CaseDetails.type = Types::CaseDetails
    CaseIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "member"))
    CaseIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    CaseIdNotFound.type = Types::CaseIdNotFound
    CaseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseDetails, name: "member"))
    Category.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryCode, name: "code"))
    Category.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryName, name: "name"))
    Category.type = Types::Category
    CategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    CcEmailAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CcEmailAddress, name: "member"))
    Communication.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId"))
    Communication.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedCommunicationBody, name: "body"))
    Communication.add_member(:submitted_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SubmittedBy, name: "submittedBy"))
    Communication.add_member(:time_created, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeCreated, name: "timeCreated"))
    Communication.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSet, name: "attachments"))
    Communication.add_member(:attachment_set, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSet, name: "attachmentSet"))
    Communication.type = Types::Communication
    CommunicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Communication, name: "member"))
    CommunicationTypeOptions.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type"))
    CommunicationTypeOptions.add_member(:supported_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedHoursList, name: "supportedHours"))
    CommunicationTypeOptions.add_member(:dates_without_support, ::Smithy::Schema::Shapes::MemberShape.new(target: DatesWithoutSupportList, name: "datesWithoutSupport"))
    CommunicationTypeOptions.type = Types::CommunicationTypeOptions
    CommunicationTypeOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationTypeOptions, name: "member"))
    CompleteAttachmentUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:completed_uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedUploadList, name: "completedUploads", traits: {"smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    CompleteAttachmentUploadRequest.type = Types::CompleteAttachmentUploadRequest
    CompleteAttachmentUploadResponse.add_member(:upload_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadStatus, name: "uploadStatus", traits: {"smithy.api#required" => {}}))
    CompleteAttachmentUploadResponse.type = Types::CompleteAttachmentUploadResponse
    CompletedUpload.add_member(:part_index, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIntegerValue, name: "partIndex", traits: {"smithy.api#required" => {}}))
    CompletedUpload.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "eTag", traits: {"smithy.api#required" => {}}))
    CompletedUpload.type = Types::CompletedUpload
    CompletedUploadList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedUpload, name: "member"))
    CreateCaseRequest.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "subject", traits: {"smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode2, name: "serviceCode"))
    CreateCaseRequest.add_member(:severity_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCode, name: "severityCode"))
    CreateCaseRequest.add_member(:category_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryCode, name: "categoryCode"))
    CreateCaseRequest.add_member(:communication_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationBody, name: "communicationBody", traits: {"smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: CcEmailAddressList, name: "ccEmailAddresses"))
    CreateCaseRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    CreateCaseRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueType, name: "issueType"))
    CreateCaseRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSetId, name: "attachmentSetId"))
    CreateCaseRequest.add_member(:upload_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadIds, name: "uploadIds"))
    CreateCaseRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    CreateCaseRequest.type = Types::CreateCaseRequest
    CreateCaseResponse.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId"))
    CreateCaseResponse.type = Types::CreateCaseResponse
    DateInterval.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedDateTime, name: "startDateTime"))
    DateInterval.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedDateTime, name: "endDateTime"))
    DateInterval.type = Types::DateInterval
    DatesWithoutSupportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DateInterval, name: "member"))
    DescribeAttachmentLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DescribeAttachmentLimitExceeded.type = Types::DescribeAttachmentLimitExceeded
    DescribeAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "attachmentId", traits: {"smithy.api#required" => {}}))
    DescribeAttachmentRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeAttachmentRequest.type = Types::DescribeAttachmentRequest
    DescribeAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "attachment"))
    DescribeAttachmentResponse.type = Types::DescribeAttachmentResponse
    DescribeAttachmentUploadStatusRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    DescribeAttachmentUploadStatusRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeAttachmentUploadStatusRequest.type = Types::DescribeAttachmentUploadStatusRequest
    DescribeAttachmentUploadStatusResponse.add_member(:upload_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadStatus, name: "uploadStatus", traits: {"smithy.api#required" => {}}))
    DescribeAttachmentUploadStatusResponse.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileName, name: "fileName", traits: {"smithy.api#required" => {}}))
    DescribeAttachmentUploadStatusResponse.add_member(:upload_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadProgress, name: "uploadProgress"))
    DescribeAttachmentUploadStatusResponse.type = Types::DescribeAttachmentUploadStatusResponse
    DescribeCasesRequest.add_member(:case_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseIdList, name: "caseIdList"))
    DescribeCasesRequest.add_member(:display_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayId, name: "displayId"))
    DescribeCasesRequest.add_member(:after_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AfterTime, name: "afterTime"))
    DescribeCasesRequest.add_member(:before_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BeforeTime, name: "beforeTime"))
    DescribeCasesRequest.add_member(:include_resolved_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeResolvedCases, name: "includeResolvedCases", traits: {"smithy.api#default" => false}))
    DescribeCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeCasesRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    DescribeCasesRequest.add_member(:include_communications, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeCommunications, name: "includeCommunications"))
    DescribeCasesRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeCasesRequest.type = Types::DescribeCasesRequest
    DescribeCasesResponse.add_member(:cases, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseList, name: "cases"))
    DescribeCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeCasesResponse.type = Types::DescribeCasesResponse
    DescribeCommunicationsRequest.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId", traits: {"smithy.api#required" => {}}))
    DescribeCommunicationsRequest.add_member(:before_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BeforeTime, name: "beforeTime"))
    DescribeCommunicationsRequest.add_member(:after_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AfterTime, name: "afterTime"))
    DescribeCommunicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeCommunicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeCommunicationsRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeCommunicationsRequest.type = Types::DescribeCommunicationsRequest
    DescribeCommunicationsResponse.add_member(:communications, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationList, name: "communications"))
    DescribeCommunicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeCommunicationsResponse.type = Types::DescribeCommunicationsResponse
    DescribeCreateCaseOptionsRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueType, name: "issueType", traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode2, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language", traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:category_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryCode, name: "categoryCode", traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeCreateCaseOptionsRequest.type = Types::DescribeCreateCaseOptionsRequest
    DescribeCreateCaseOptionsResponse.add_member(:language_availability, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedLanguageAvailability, name: "languageAvailability"))
    DescribeCreateCaseOptionsResponse.add_member(:communication_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationTypeOptionsList, name: "communicationTypes"))
    DescribeCreateCaseOptionsResponse.type = Types::DescribeCreateCaseOptionsResponse
    DescribeServicesRequest.add_member(:service_code_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCodeList, name: "serviceCodeList"))
    DescribeServicesRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    DescribeServicesRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "services"))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    DescribeSeverityLevelsRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    DescribeSeverityLevelsRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeSeverityLevelsRequest.type = Types::DescribeSeverityLevelsRequest
    DescribeSeverityLevelsResponse.add_member(:severity_levels, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityLevelsList, name: "severityLevels"))
    DescribeSeverityLevelsResponse.type = Types::DescribeSeverityLevelsResponse
    DescribeSupportedLanguagesRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedIssueTypeString, name: "issueType", traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedServiceCode, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:category_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedCategoryCode, name: "categoryCode", traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    DescribeSupportedLanguagesRequest.type = Types::DescribeSupportedLanguagesRequest
    DescribeSupportedLanguagesResponse.add_member(:supported_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedLanguagesList, name: "supportedLanguages"))
    DescribeSupportedLanguagesResponse.type = Types::DescribeSupportedLanguagesResponse
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.add_member(:check_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "checkIds", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesRequest
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckRefreshStatusList, name: "statuses", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse
    DescribeTrustedAdvisorCheckResultRequest.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checkId", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckResultRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "language"))
    DescribeTrustedAdvisorCheckResultRequest.type = Types::DescribeTrustedAdvisorCheckResultRequest
    DescribeTrustedAdvisorCheckResultResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckResult, name: "result"))
    DescribeTrustedAdvisorCheckResultResponse.type = Types::DescribeTrustedAdvisorCheckResultResponse
    DescribeTrustedAdvisorCheckSummariesRequest.add_member(:check_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "checkIds", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesRequest.type = Types::DescribeTrustedAdvisorCheckSummariesRequest
    DescribeTrustedAdvisorCheckSummariesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckSummaryList, name: "summaries", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesResponse.type = Types::DescribeTrustedAdvisorCheckSummariesResponse
    DescribeTrustedAdvisorChecksRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "language", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksRequest.type = Types::DescribeTrustedAdvisorChecksRequest
    DescribeTrustedAdvisorChecksResponse.add_member(:checks, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckList, name: "checks", traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksResponse.type = Types::DescribeTrustedAdvisorChecksResponse
    DownloadUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsUrl, name: "url", traits: {"smithy.api#required" => {}}))
    DownloadUrl.add_member(:expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedDateTime, name: "expiryDate", traits: {"smithy.api#required" => {}}))
    DownloadUrl.type = Types::DownloadUrl
    DryRunOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DryRunOperationException.type = Types::DryRunOperationException
    GetAttachmentDownloadLinkRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentId, name: "attachmentId", traits: {"smithy.api#required" => {}}))
    GetAttachmentDownloadLinkRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    GetAttachmentDownloadLinkRequest.type = Types::GetAttachmentDownloadLinkRequest
    GetAttachmentDownloadLinkResponse.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileName, name: "fileName", traits: {"smithy.api#required" => {}}))
    GetAttachmentDownloadLinkResponse.add_member(:download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DownloadUrl, name: "downloadUrl", traits: {"smithy.api#required" => {}}))
    GetAttachmentDownloadLinkResponse.type = Types::GetAttachmentDownloadLinkResponse
    GetAttachmentUploadLinksRequest.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FileName, name: "fileName", traits: {"smithy.api#required" => {}}))
    GetAttachmentUploadLinksRequest.add_member(:file_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSize, name: "fileSizeBytes"))
    GetAttachmentUploadLinksRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId"))
    GetAttachmentUploadLinksRequest.add_member(:upload_range, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadRange, name: "uploadRange"))
    GetAttachmentUploadLinksRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    GetAttachmentUploadLinksRequest.type = Types::GetAttachmentUploadLinksRequest
    GetAttachmentUploadLinksResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "uploadId", traits: {"smithy.api#required" => {}}))
    GetAttachmentUploadLinksResponse.add_member(:part_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartSizeBytes, name: "partSizeBytes", traits: {"smithy.api#required" => {}}))
    GetAttachmentUploadLinksResponse.add_member(:total_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "totalParts", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetAttachmentUploadLinksResponse.add_member(:next_index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "nextIndex", traits: {"smithy.api#default" => 0}))
    GetAttachmentUploadLinksResponse.add_member(:upload_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadUrlList, name: "uploadUrls", traits: {"smithy.api#required" => {}}))
    GetAttachmentUploadLinksResponse.type = Types::GetAttachmentUploadLinksResponse
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerError.type = Types::InternalServerError
    RecentCaseCommunications.add_member(:communications, ::Smithy::Schema::Shapes::MemberShape.new(target: CommunicationList, name: "communications"))
    RecentCaseCommunications.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    RecentCaseCommunications.type = Types::RecentCaseCommunications
    RefreshTrustedAdvisorCheckRequest.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checkId", traits: {"smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckRequest.type = Types::RefreshTrustedAdvisorCheckRequest
    RefreshTrustedAdvisorCheckResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckRefreshStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckResponse.type = Types::RefreshTrustedAdvisorCheckResponse
    ResolveCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "caseId"))
    ResolveCaseRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBooleanType, name: "dryRun"))
    ResolveCaseRequest.type = Types::ResolveCaseRequest
    ResolveCaseResponse.add_member(:initial_case_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseStatus, name: "initialCaseStatus"))
    ResolveCaseResponse.add_member(:final_case_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseStatus, name: "finalCaseStatus"))
    ResolveCaseResponse.type = Types::ResolveCaseResponse
    Service.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "code"))
    Service.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    Service.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories"))
    Service.type = Types::Service
    ServiceCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode2, name: "member"))
    ServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member"))
    SeverityLevel.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityLevelCode, name: "code"))
    SeverityLevel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityLevelName, name: "name"))
    SeverityLevel.type = Types::SeverityLevel
    SeverityLevelsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityLevel, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SupportedHour.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, name: "startTime"))
    SupportedHour.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, name: "endTime"))
    SupportedHour.type = Types::SupportedHour
    SupportedHoursList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedHour, name: "member"))
    SupportedLanguage.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    SupportedLanguage.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    SupportedLanguage.add_member(:display, ::Smithy::Schema::Shapes::MemberShape.new(target: Display, name: "display"))
    SupportedLanguage.type = Types::SupportedLanguage
    SupportedLanguagesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedLanguage, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityErrorMessage, name: "message"))
    ThrottlingException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "throttlingReasons"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingReason.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottlingReason, name: "reason"))
    ThrottlingReason.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottledResource, name: "resource"))
    ThrottlingReason.type = Types::ThrottlingReason
    ThrottlingReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReason, name: "member"))
    TrustedAdvisorCategorySpecificSummary.add_member(:cost_optimizing, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCostOptimizingSummary, name: "costOptimizing"))
    TrustedAdvisorCategorySpecificSummary.type = Types::TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorCheckDescription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "category", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "metadata", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.type = Types::TrustedAdvisorCheckDescription
    TrustedAdvisorCheckList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckDescription, name: "member"))
    TrustedAdvisorCheckRefreshStatus.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checkId", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:millis_until_next_refreshable, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "millisUntilNextRefreshable", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.type = Types::TrustedAdvisorCheckRefreshStatus
    TrustedAdvisorCheckRefreshStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckRefreshStatus, name: "member"))
    TrustedAdvisorCheckResult.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checkId", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "timestamp", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:resources_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorResourcesSummary, name: "resourcesSummary", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCategorySpecificSummary, name: "categorySpecificSummary", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:flagged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorResourceDetailList, name: "flaggedResources", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.type = Types::TrustedAdvisorCheckResult
    TrustedAdvisorCheckSummary.add_member(:check_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checkId", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "timestamp", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:has_flagged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasFlaggedResources", traits: {"smithy.api#default" => false}))
    TrustedAdvisorCheckSummary.add_member(:resources_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorResourcesSummary, name: "resourcesSummary", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCategorySpecificSummary, name: "categorySpecificSummary", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.type = Types::TrustedAdvisorCheckSummary
    TrustedAdvisorCheckSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorCheckSummary, name: "member"))
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "estimatedMonthlySavings", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_percent_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "estimatedPercentMonthlySavings", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.type = Types::TrustedAdvisorCostOptimizingSummary
    TrustedAdvisorResourceDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "region"))
    TrustedAdvisorResourceDetail.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:is_suppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isSuppressed", traits: {"smithy.api#default" => false}))
    TrustedAdvisorResourceDetail.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "metadata", traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.type = Types::TrustedAdvisorResourceDetail
    TrustedAdvisorResourceDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedAdvisorResourceDetail, name: "member"))
    TrustedAdvisorResourcesSummary.add_member(:resources_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "resourcesProcessed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_flagged, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "resourcesFlagged", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_ignored, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "resourcesIgnored", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_suppressed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "resourcesSuppressed", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.type = Types::TrustedAdvisorResourcesSummary
    UploadIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UploadIdNotFound.type = Types::UploadIdNotFound
    UploadIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, name: "member"))
    UploadProgress.add_member(:total_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIntegerValue, name: "totalParts"))
    UploadProgress.add_member(:completed_parts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldIntegerValue, name: "completedPartsCount"))
    UploadProgress.type = Types::UploadProgress
    UploadRange.add_member(:start_index, ::Smithy::Schema::Shapes::MemberShape.new(target: StartIndex, name: "startIndex", traits: {"smithy.api#required" => {}}))
    UploadRange.add_member(:end_index, ::Smithy::Schema::Shapes::MemberShape.new(target: EndIndex, name: "endIndex"))
    UploadRange.type = Types::UploadRange
    UploadStatus.add_member(:attachment_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_READY", traits: {"smithy.api#enumValue" => "attachment-ready"}))
    UploadStatus.add_member(:attachment_not_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT_NOT_READY", traits: {"smithy.api#enumValue" => "attachment-not-ready"}))
    UploadStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    UploadUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsUrl, name: "url", traits: {"smithy.api#required" => {}}))
    UploadUrl.add_member(:part_index, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "partIndex", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UploadUrl.add_member(:expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatedDateTime, name: "expiryDate", traits: {"smithy.api#required" => {}}))
    UploadUrl.type = Types::UploadUrl
    UploadUrlList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadUrl, name: "member"))

    AWSSupport20130415 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.support#AWSSupport_20130415"
      service.name = "AWSSupport20130415"
      service.version = "2013-04-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Support", "arnNamespace" => "support", "cloudFormationName" => "Support", "cloudTrailEventSource" => "support.amazonaws.com", "endpointPrefix" => "support"}, "aws.auth#sigv4" => {"name" => "support"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Support", "smithy.api#xmlNamespace" => {"uri" => "http://support.amazonaws.com/doc/2013-04-15/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-b"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support.us-east-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support.cn-north-1.amazonaws.com.cn", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "cn-north-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support.us-gov-west-1.amazonaws.com", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-gov-west-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support.us-iso-east-1.c2s.ic.gov", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-iso-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support.us-isob-east-1.sc2s.sgov.gov", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-isob-east-1"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://support-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://support-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://support.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://support.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 19, "nodes" => "/////wAAAAH/////AAAAAAAAABIAAAADAAAAAQAAAAQF9eEQAAAAAgAAAAUF9eEQAAAAAwAAAA0AAAAGAAAABAAAAAwAAAAHAAAABQX14QQAAAAIAAAABwX14QUAAAAJAAAACAX14QYAAAAKAAAACgX14QcAAAALAAAACwX14QgF9eEPAAAABgX14Q0F9eEOAAAABAAAABAAAAAOAAAACAX14QYAAAAPAAAACQX14QsF9eEMAAAABgAAABEF9eEKAAAACQX14QkF9eEKAAAAAwX14QEAAAATAAAABAX14QIF9eED"}}
      service.add_operation(:add_attachments_to_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddAttachmentsToSet"
        operation.name = "AddAttachmentsToSet"
        operation.input = AddAttachmentsToSetRequest
        operation.output = AddAttachmentsToSetResponse
        operation.errors << AttachmentLimitExceeded
        operation.errors << AttachmentSetExpired
        operation.errors << AttachmentSetIdNotFound
        operation.errors << AttachmentSetSizeLimitExceeded
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:add_communication_to_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddCommunicationToCase"
        operation.name = "AddCommunicationToCase"
        operation.input = AddCommunicationToCaseRequest
        operation.output = AddCommunicationToCaseResponse
        operation.errors << AttachmentSetExpired
        operation.errors << AttachmentSetIdNotFound
        operation.errors << CaseIdNotFound
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:complete_attachment_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#CompleteAttachmentUpload"
        operation.name = "CompleteAttachmentUpload"
        operation.input = CompleteAttachmentUploadRequest
        operation.output = CompleteAttachmentUploadResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.errors << UploadIdNotFound
        operation.traits = {}
      end)
      service.add_operation(:create_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#CreateCase"
        operation.name = "CreateCase"
        operation.input = CreateCaseRequest
        operation.output = CreateCaseResponse
        operation.errors << AttachmentSetExpired
        operation.errors << AttachmentSetIdNotFound
        operation.errors << CaseCreationLimitExceeded
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeAttachment"
        operation.name = "DescribeAttachment"
        operation.input = DescribeAttachmentRequest
        operation.output = DescribeAttachmentResponse
        operation.errors << AttachmentIdNotFound
        operation.errors << DescribeAttachmentLimitExceeded
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_attachment_upload_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeAttachmentUploadStatus"
        operation.name = "DescribeAttachmentUploadStatus"
        operation.input = DescribeAttachmentUploadStatusRequest
        operation.output = DescribeAttachmentUploadStatusResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.errors << UploadIdNotFound
        operation.traits = {}
      end)
      service.add_operation(:describe_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCases"
        operation.name = "DescribeCases"
        operation.input = DescribeCasesRequest
        operation.output = DescribeCasesResponse
        operation.errors << CaseIdNotFound
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCases.new
      end)
      service.add_operation(:describe_communications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCommunications"
        operation.name = "DescribeCommunications"
        operation.input = DescribeCommunicationsRequest
        operation.output = DescribeCommunicationsResponse
        operation.errors << CaseIdNotFound
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCommunications.new
      end)
      service.add_operation(:describe_create_case_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCreateCaseOptions"
        operation.name = "DescribeCreateCaseOptions"
        operation.input = DescribeCreateCaseOptionsRequest
        operation.output = DescribeCreateCaseOptionsResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = DescribeServicesRequest
        operation.output = DescribeServicesResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_severity_levels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSeverityLevels"
        operation.name = "DescribeSeverityLevels"
        operation.input = DescribeSeverityLevelsRequest
        operation.output = DescribeSeverityLevelsResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:describe_supported_languages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSupportedLanguages"
        operation.name = "DescribeSupportedLanguages"
        operation.input = DescribeSupportedLanguagesRequest
        operation.output = DescribeSupportedLanguagesResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_refresh_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.name = "DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.input = DescribeTrustedAdvisorCheckRefreshStatusesRequest
        operation.output = DescribeTrustedAdvisorCheckRefreshStatusesResponse
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckResult"
        operation.name = "DescribeTrustedAdvisorCheckResult"
        operation.input = DescribeTrustedAdvisorCheckResultRequest
        operation.output = DescribeTrustedAdvisorCheckResultResponse
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckSummaries"
        operation.name = "DescribeTrustedAdvisorCheckSummaries"
        operation.input = DescribeTrustedAdvisorCheckSummariesRequest
        operation.output = DescribeTrustedAdvisorCheckSummariesResponse
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorChecks"
        operation.name = "DescribeTrustedAdvisorChecks"
        operation.input = DescribeTrustedAdvisorChecksRequest
        operation.output = DescribeTrustedAdvisorChecksResponse
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_attachment_download_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#GetAttachmentDownloadLink"
        operation.name = "GetAttachmentDownloadLink"
        operation.input = GetAttachmentDownloadLinkRequest
        operation.output = GetAttachmentDownloadLinkResponse
        operation.errors << AttachmentIdNotFound
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_attachment_upload_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#GetAttachmentUploadLinks"
        operation.name = "GetAttachmentUploadLinks"
        operation.input = GetAttachmentUploadLinksRequest
        operation.output = GetAttachmentUploadLinksResponse
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.errors << UploadIdNotFound
        operation.traits = {}
      end)
      service.add_operation(:refresh_trusted_advisor_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#RefreshTrustedAdvisorCheck"
        operation.name = "RefreshTrustedAdvisorCheck"
        operation.input = RefreshTrustedAdvisorCheckRequest
        operation.output = RefreshTrustedAdvisorCheckResponse
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:resolve_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#ResolveCase"
        operation.name = "ResolveCase"
        operation.input = ResolveCaseRequest
        operation.output = ResolveCaseResponse
        operation.errors << CaseIdNotFound
        operation.errors << DryRunOperationException
        operation.errors << InternalServerError
        operation.traits = {}
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
