# frozen_string_literal: true

# This is generated code!

module Aws::Support
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddAttachmentsToSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddAttachmentsToSetRequest', name: 'AddAttachmentsToSetRequest')
    AddAttachmentsToSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddAttachmentsToSetResponse', name: 'AddAttachmentsToSetResponse')
    AddCommunicationToCaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddCommunicationToCaseRequest', name: 'AddCommunicationToCaseRequest')
    AddCommunicationToCaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddCommunicationToCaseResponse', name: 'AddCommunicationToCaseResponse')
    AfterTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AfterTime', name: 'AfterTime')
    Attachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Attachment', name: 'Attachment')
    AttachmentDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentDetails', name: 'AttachmentDetails')
    AttachmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AttachmentId', name: 'AttachmentId')
    AttachmentIdNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentIdNotFound', name: 'AttachmentIdNotFound', traits: {"smithy.api#error" => "client"})
    AttachmentLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentLimitExceeded', name: 'AttachmentLimitExceeded', traits: {"smithy.api#error" => "client"})
    AttachmentSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#AttachmentSet', name: 'AttachmentSet')
    AttachmentSetExpired = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetExpired', name: 'AttachmentSetExpired', traits: {"smithy.api#error" => "client"})
    AttachmentSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AttachmentSetId', name: 'AttachmentSetId')
    AttachmentSetIdNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetIdNotFound', name: 'AttachmentSetIdNotFound', traits: {"smithy.api#error" => "client"})
    AttachmentSetSizeLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetSizeLimitExceeded', name: 'AttachmentSetSizeLimitExceeded', traits: {"smithy.api#error" => "client"})
    Attachments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#Attachments', name: 'Attachments')
    AvailabilityErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AvailabilityErrorMessage', name: 'AvailabilityErrorMessage')
    BeforeTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#BeforeTime', name: 'BeforeTime')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CaseCreationLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseCreationLimitExceeded', name: 'CaseCreationLimitExceeded', traits: {"smithy.api#error" => "client"})
    CaseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseDetails', name: 'CaseDetails')
    CaseId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CaseId', name: 'CaseId')
    CaseIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CaseIdList', name: 'CaseIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CaseIdNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseIdNotFound', name: 'CaseIdNotFound', traits: {"smithy.api#error" => "client"})
    CaseList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CaseList', name: 'CaseList')
    CaseStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CaseStatus', name: 'CaseStatus')
    Category = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Category', name: 'Category')
    CategoryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CategoryCode', name: 'CategoryCode')
    CategoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CategoryList', name: 'CategoryList')
    CategoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CategoryName', name: 'CategoryName')
    CcEmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CcEmailAddress', name: 'CcEmailAddress')
    CcEmailAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CcEmailAddressList', name: 'CcEmailAddressList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Code = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Code', name: 'Code')
    Communication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Communication', name: 'Communication')
    CommunicationBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CommunicationBody', name: 'CommunicationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    CommunicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CommunicationList', name: 'CommunicationList')
    CommunicationTypeOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CommunicationTypeOptions', name: 'CommunicationTypeOptions')
    CommunicationTypeOptionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CommunicationTypeOptionsList', name: 'CommunicationTypeOptionsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CreateCaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CreateCaseRequest', name: 'CreateCaseRequest')
    CreateCaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CreateCaseResponse', name: 'CreateCaseResponse')
    Data = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.support#Data', name: 'Data')
    DateInterval = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DateInterval', name: 'DateInterval')
    DatesWithoutSupportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#DatesWithoutSupportList', name: 'DatesWithoutSupportList')
    DescribeAttachmentLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentLimitExceeded', name: 'DescribeAttachmentLimitExceeded', traits: {"smithy.api#error" => "client"})
    DescribeAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentRequest', name: 'DescribeAttachmentRequest')
    DescribeAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentResponse', name: 'DescribeAttachmentResponse')
    DescribeCasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCasesRequest', name: 'DescribeCasesRequest')
    DescribeCasesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCasesResponse', name: 'DescribeCasesResponse')
    DescribeCommunicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCommunicationsRequest', name: 'DescribeCommunicationsRequest')
    DescribeCommunicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCommunicationsResponse', name: 'DescribeCommunicationsResponse')
    DescribeCreateCaseOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCreateCaseOptionsRequest', name: 'DescribeCreateCaseOptionsRequest')
    DescribeCreateCaseOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCreateCaseOptionsResponse', name: 'DescribeCreateCaseOptionsResponse')
    DescribeServicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeServicesRequest', name: 'DescribeServicesRequest')
    DescribeServicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeServicesResponse', name: 'DescribeServicesResponse')
    DescribeSeverityLevelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSeverityLevelsRequest', name: 'DescribeSeverityLevelsRequest')
    DescribeSeverityLevelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSeverityLevelsResponse', name: 'DescribeSeverityLevelsResponse')
    DescribeSupportedLanguagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSupportedLanguagesRequest', name: 'DescribeSupportedLanguagesRequest')
    DescribeSupportedLanguagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSupportedLanguagesResponse', name: 'DescribeSupportedLanguagesResponse')
    DescribeTrustedAdvisorCheckRefreshStatusesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesRequest', name: 'DescribeTrustedAdvisorCheckRefreshStatusesRequest')
    DescribeTrustedAdvisorCheckRefreshStatusesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesResponse', name: 'DescribeTrustedAdvisorCheckRefreshStatusesResponse')
    DescribeTrustedAdvisorCheckResultRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckResultRequest', name: 'DescribeTrustedAdvisorCheckResultRequest')
    DescribeTrustedAdvisorCheckResultResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckResultResponse', name: 'DescribeTrustedAdvisorCheckResultResponse')
    DescribeTrustedAdvisorCheckSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesRequest', name: 'DescribeTrustedAdvisorCheckSummariesRequest')
    DescribeTrustedAdvisorCheckSummariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesResponse', name: 'DescribeTrustedAdvisorCheckSummariesResponse')
    DescribeTrustedAdvisorChecksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorChecksRequest', name: 'DescribeTrustedAdvisorChecksRequest')
    DescribeTrustedAdvisorChecksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorChecksResponse', name: 'DescribeTrustedAdvisorChecksResponse')
    Display = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Display', name: 'Display')
    DisplayId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#DisplayId', name: 'DisplayId')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.support#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    EndTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#EndTime', name: 'EndTime')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ErrorMessage', name: 'ErrorMessage')
    ExpiryTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ExpiryTime', name: 'ExpiryTime')
    FileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#FileName', name: 'FileName')
    IncludeCommunications = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#IncludeCommunications', name: 'IncludeCommunications')
    IncludeResolvedCases = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#IncludeResolvedCases', name: 'IncludeResolvedCases', traits: {"smithy.api#default" => false})
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    IssueType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#IssueType', name: 'IssueType')
    Language = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Language', name: 'Language')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.support#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.support#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#NextToken', name: 'NextToken')
    RecentCaseCommunications = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RecentCaseCommunications', name: 'RecentCaseCommunications')
    RefreshTrustedAdvisorCheckRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RefreshTrustedAdvisorCheckRequest', name: 'RefreshTrustedAdvisorCheckRequest')
    RefreshTrustedAdvisorCheckResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RefreshTrustedAdvisorCheckResponse', name: 'RefreshTrustedAdvisorCheckResponse')
    ResolveCaseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ResolveCaseRequest', name: 'ResolveCaseRequest')
    ResolveCaseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ResolveCaseResponse', name: 'ResolveCaseResponse')
    Result = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#Result', name: 'Result', traits: {"smithy.api#default" => false})
    Service = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Service', name: 'Service')
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceCode', name: 'ServiceCode')
    ServiceCode2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceCode2', name: 'ServiceCode2', traits: {"smithy.api#pattern" => "^[0-9a-z\\-_]+$"})
    ServiceCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#ServiceCodeList', name: 'ServiceCodeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#ServiceList', name: 'ServiceList')
    ServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceName', name: 'ServiceName')
    SeverityCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityCode', name: 'SeverityCode')
    SeverityLevel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SeverityLevel', name: 'SeverityLevel')
    SeverityLevelCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityLevelCode', name: 'SeverityLevelCode')
    SeverityLevelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityLevelName', name: 'SeverityLevelName')
    SeverityLevelsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SeverityLevelsList', name: 'SeverityLevelsList')
    StartTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#StartTime', name: 'StartTime')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Status', name: 'Status')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#StringList', name: 'StringList', traits: {"smithy.api#sparse" => {}})
    Subject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Subject', name: 'Subject')
    SubmittedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SubmittedBy', name: 'SubmittedBy')
    SupportedHour = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SupportedHour', name: 'SupportedHour')
    SupportedHoursList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SupportedHoursList', name: 'SupportedHoursList')
    SupportedLanguage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SupportedLanguage', name: 'SupportedLanguage')
    SupportedLanguagesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SupportedLanguagesList', name: 'SupportedLanguagesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TimeCreated = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#TimeCreated', name: 'TimeCreated')
    TrustedAdvisorCategorySpecificSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCategorySpecificSummary', name: 'TrustedAdvisorCategorySpecificSummary')
    TrustedAdvisorCheckDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckDescription', name: 'TrustedAdvisorCheckDescription')
    TrustedAdvisorCheckList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckList', name: 'TrustedAdvisorCheckList')
    TrustedAdvisorCheckRefreshStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckRefreshStatus', name: 'TrustedAdvisorCheckRefreshStatus')
    TrustedAdvisorCheckRefreshStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckRefreshStatusList', name: 'TrustedAdvisorCheckRefreshStatusList')
    TrustedAdvisorCheckResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckResult', name: 'TrustedAdvisorCheckResult')
    TrustedAdvisorCheckSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckSummary', name: 'TrustedAdvisorCheckSummary')
    TrustedAdvisorCheckSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckSummaryList', name: 'TrustedAdvisorCheckSummaryList')
    TrustedAdvisorCostOptimizingSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCostOptimizingSummary', name: 'TrustedAdvisorCostOptimizingSummary')
    TrustedAdvisorResourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourceDetail', name: 'TrustedAdvisorResourceDetail')
    TrustedAdvisorResourceDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourceDetailList', name: 'TrustedAdvisorResourceDetailList')
    TrustedAdvisorResourcesSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourcesSummary', name: 'TrustedAdvisorResourcesSummary')
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Type', name: 'Type')
    ValidatedCategoryCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedCategoryCode', name: 'ValidatedCategoryCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedCommunicationBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedCommunicationBody', name: 'ValidatedCommunicationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    ValidatedDateTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedDateTime', name: 'ValidatedDateTime', traits: {"smithy.api#length" => {"min" => 8, "max" => 30}})
    ValidatedIssueTypeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedIssueTypeString', name: 'ValidatedIssueTypeString', traits: {"smithy.api#length" => {"min" => 9, "max" => 22}})
    ValidatedLanguageAvailability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedLanguageAvailability', name: 'ValidatedLanguageAvailability', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedServiceCode', name: 'ValidatedServiceCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})

    AddAttachmentsToSetRequest.add_member(:attachment_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a\n            new attachment set is created, and the ID of the set is returned in the response. If an\n                <code>attachmentSetId</code> is specified, the attachments are added to the\n            specified set, if it exists.</p>"}))
    AddAttachmentsToSetRequest.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>One or more attachments to add to the set. You can add up to three attachments per\n            set. The size limit is 5 MB per attachment.</p>\n         <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify\n            the contents of the attachment file. In the previous request syntax, the value for\n                <code>data</code> appear as <code>blob</code>, which is represented as a\n            base64-encoded string. The value for <code>fileName</code> is the name of the\n            attachment, such as <code>troubleshoot-screenshot.png</code>.</p>", "smithy.api#required" => {}}))
    AddAttachmentsToSetRequest.type = Types::AddAttachmentsToSetRequest
    AddAttachmentsToSetResponse.add_member(:attachment_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a\n            new attachment set is created, and the ID of the set is returned in the response. If an\n                <code>attachmentSetId</code> was specified, the attachments are added to the\n            specified set, if it exists.</p>"}))
    AddAttachmentsToSetResponse.add_member(:expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiryTime, location_name: 'expiryTime', traits: {"smithy.api#documentation" => "<p>The time and date when the attachment set expires.</p>"}))
    AddAttachmentsToSetResponse.type = Types::AddAttachmentsToSetResponse
    AddCommunicationToCaseRequest.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string formatted as shown in this example:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>"}))
    AddCommunicationToCaseRequest.add_member(:communication_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationBody, location_name: 'communicationBody', traits: {"smithy.api#documentation" => "<p>The body of an email communication to add to the support case.</p>", "smithy.api#required" => {}}))
    AddCommunicationToCaseRequest.add_member(:cc_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses', traits: {"smithy.api#documentation" => "<p>The email addresses in the CC line of an email to be added to the support case.</p>"}))
    AddCommunicationToCaseRequest.add_member(:attachment_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId', traits: {"smithy.api#documentation" => "<p>The ID of a set of one or more attachments for the communication to add to the case.\n            Create the set by calling <a>AddAttachmentsToSet</a>\n         </p>"}))
    AddCommunicationToCaseRequest.type = Types::AddCommunicationToCaseRequest
    AddCommunicationToCaseResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'result', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an\n            error.</p>"}))
    AddCommunicationToCaseResponse.type = Types::AddCommunicationToCaseResponse
    Attachment.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The name of the attachment file.</p>"}))
    Attachment.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Data, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The content of the attachment file.</p>"}))
    Attachment.type = Types::Attachment
    AttachmentDetails.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment.</p>"}))
    AttachmentDetails.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName', traits: {"smithy.api#documentation" => "<p>The file name of the attachment.</p>"}))
    AttachmentDetails.type = Types::AttachmentDetails
    AttachmentIdNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An attachment with the specified ID could not be found.</p>"}))
    AttachmentIdNotFound.type = Types::AttachmentIdNotFound
    AttachmentLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The limit for the number of attachment sets created in a short period of time has been\n            exceeded.</p>"}))
    AttachmentLimitExceeded.type = Types::AttachmentLimitExceeded
    AttachmentSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentDetails)
    AttachmentSetExpired.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The expiration time of the attachment set has passed. The set expires one hour after\n            it is created.</p>"}))
    AttachmentSetExpired.type = Types::AttachmentSetExpired
    AttachmentSetIdNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An attachment set with the specified ID could not be found.</p>"}))
    AttachmentSetIdNotFound.type = Types::AttachmentSetIdNotFound
    AttachmentSetSizeLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A limit for the size of an attachment set has been exceeded. The limits are three\n            attachments and 5 MB per attachment.</p>"}))
    AttachmentSetSizeLimitExceeded.type = Types::AttachmentSetSizeLimitExceeded
    Attachments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    CaseCreationLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message that indicates that you have exceeded the number of cases you can\n            have open.</p>"}))
    CaseCreationLimitExceeded.type = Types::CaseCreationLimitExceeded
    CaseDetails.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string formatted as shown in this example:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>"}))
    CaseDetails.add_member(:display_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayId, location_name: 'displayId', traits: {"smithy.api#documentation" => "<p>The ID displayed for the case in the Amazon Web Services Support Center. This is a numeric\n            string.</p>"}))
    CaseDetails.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The subject line for the case in the Amazon Web Services Support Center.</p>"}))
    CaseDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the case.</p>\n         <p>Valid values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>all-open</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>customer-action-completed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>opened</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>pending-customer-action</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>reopened</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>resolved</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>unassigned</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>work-in-progress</code>\n               </p>\n            </li>\n         </ul>"}))
    CaseDetails.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the Amazon Web Services service. You can get a list of codes and the corresponding\n            service names by calling <a>DescribeServices</a>.</p>"}))
    CaseDetails.add_member(:category_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode', traits: {"smithy.api#documentation" => "<p>The category of problem for the support case.</p>"}))
    CaseDetails.add_member(:severity_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCode, location_name: 'severityCode', traits: {"smithy.api#documentation" => "<p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>"}))
    CaseDetails.add_member(:submitted_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SubmittedBy, location_name: 'submittedBy', traits: {"smithy.api#documentation" => "<p>The email address of the account that submitted the case.</p>"}))
    CaseDetails.add_member(:time_created, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCreated, location_name: 'timeCreated', traits: {"smithy.api#documentation" => "<p>The time that the case was created in the Amazon Web Services Support Center.</p>"}))
    CaseDetails.add_member(:recent_communications, Smithy::Schema::Shapes::ShapeRef.new(shape: RecentCaseCommunications, location_name: 'recentCommunications', traits: {"smithy.api#documentation" => "<p>The five most recent communications between you and Amazon Web Services Support Center, including the\n            IDs of any attachments to the communications. Also includes a <code>nextToken</code>\n            that you can use to retrieve earlier communications.</p>"}))
    CaseDetails.add_member(:cc_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses', traits: {"smithy.api#documentation" => "<p>The email addresses that receive copies of communication about the case.</p>"}))
    CaseDetails.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>"}))
    CaseDetails.type = Types::CaseDetails
    CaseIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId)
    CaseIdNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The requested <code>CaseId</code> could not be located.</p>"}))
    CaseIdNotFound.type = Types::CaseIdNotFound
    CaseList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CaseDetails)
    Category.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The category code for the support case.</p>"}))
    Category.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The category name for the support case.</p>"}))
    Category.type = Types::Category
    CategoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Category)
    CcEmailAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddress)
    Communication.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string formatted as shown in this example:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>"}))
    Communication.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedCommunicationBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The text of the communication between the customer and Amazon Web Services Support.</p>"}))
    Communication.add_member(:submitted_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SubmittedBy, location_name: 'submittedBy', traits: {"smithy.api#documentation" => "<p>The identity of the account that submitted, or responded to, the support case.\n            Customer entries include the IAM role as well as the email address (for example,\n            \"AdminRole (Role) <janedoe@example.com>). Entries from the Amazon Web Services Support team display\n            \"Amazon Web Services,\" and don't show an email address.\n            </p>"}))
    Communication.add_member(:time_created, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCreated, location_name: 'timeCreated', traits: {"smithy.api#documentation" => "<p>The time the communication was created.</p>"}))
    Communication.add_member(:attachment_set, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSet, location_name: 'attachmentSet', traits: {"smithy.api#documentation" => "<p>Information about the attachments to the case communication.</p>"}))
    Communication.type = Types::Communication
    CommunicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Communication)
    CommunicationTypeOptions.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>\n        A string value indicating the communication type. At the moment the type value can assume one of 3 values at the moment chat, web and call.\n        </p>"}))
    CommunicationTypeOptions.add_member(:supported_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHoursList, location_name: 'supportedHours', traits: {"smithy.api#documentation" => "<p>\n        A JSON-formatted list containing time ranges when support is available.\n        </p>"}))
    CommunicationTypeOptions.add_member(:dates_without_support, Smithy::Schema::Shapes::ShapeRef.new(shape: DatesWithoutSupportList, location_name: 'datesWithoutSupport', traits: {"smithy.api#documentation" => "<p>\n        A JSON-formatted list containing date and time ranges for periods without support\n        </p>"}))
    CommunicationTypeOptions.type = Types::CommunicationTypeOptions
    CommunicationTypeOptionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTypeOptions)
    CreateCaseRequest.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The title of the support case. The title appears in the <b>Subject</b> field on the Amazon Web Services Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>", "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>\n            operation to get the possible <code>serviceCode</code> values.</p>"}))
    CreateCaseRequest.add_member(:severity_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCode, location_name: 'severityCode', traits: {"smithy.api#documentation" => "<p>A value that indicates the urgency of the case. This value determines the response\n            time according to your service level agreement with Amazon Web Services Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for\n                <code>severityCode</code>. </p>\n         <p>For more information, see <a>SeverityLevel</a> and <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity\">Choosing a\n                Severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>\n         <note>\n            <p>The availability of severity levels depends on the support plan for the\n                Amazon Web Services account.</p>\n         </note>"}))
    CreateCaseRequest.add_member(:category_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode', traits: {"smithy.api#documentation" => "<p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each\n            Amazon Web Services service defines its own set of category codes.</p>"}))
    CreateCaseRequest.add_member(:communication_body, Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationBody, location_name: 'communicationBody', traits: {"smithy.api#documentation" => "<p>The communication body text that describes the issue. This text appears in the\n                <b>Description</b> field on the Amazon Web Services Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>", "smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:cc_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses', traits: {"smithy.api#documentation" => "<p>A list of email addresses that Amazon Web Services Support copies on case correspondence. Amazon Web Services Support\n            identifies the account that creates the case when you specify your Amazon Web Services credentials in\n            an HTTP POST method or use the <a href=\"http://aws.amazon.com/tools/\">Amazon Web Services SDKs</a>.\n        </p>"}))
    CreateCaseRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>"}))
    CreateCaseRequest.add_member(:issue_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueType, location_name: 'issueType', traits: {"smithy.api#documentation" => "<p>The type of issue for the case. You can specify <code>customer-service</code> or\n                <code>technical</code>. If you don't specify a value, the default is\n                <code>technical</code>.</p>"}))
    CreateCaseRequest.add_member(:attachment_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId', traits: {"smithy.api#documentation" => "<p>The ID of a set of one or more attachments for the case. Create the set by using the\n                <a>AddAttachmentsToSet</a> operation.</p>"}))
    CreateCaseRequest.type = Types::CreateCaseRequest
    CreateCaseResponse.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string in the following format:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>"}))
    CreateCaseResponse.type = Types::CreateCaseResponse
    DateInterval.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedDateTime, location_name: 'startDateTime', traits: {"smithy.api#documentation" => "<p>\n        A JSON object containing start and date time (UTC). Date and time format is RFC 3339 : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.\n        </p>"}))
    DateInterval.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedDateTime, location_name: 'endDateTime', traits: {"smithy.api#documentation" => "<p>\n        End Date Time (UTC). RFC 3339 format : 'yyyy-MM-dd'T'HH:mm:ss.SSSZZ'.\n        </p>"}))
    DateInterval.type = Types::DateInterval
    DatesWithoutSupportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval)
    DescribeAttachmentLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The limit for the number of <a>DescribeAttachment</a> requests in a short\n            period of time has been exceeded.</p>"}))
    DescribeAttachmentLimitExceeded.type = Types::DescribeAttachmentLimitExceeded
    DescribeAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>", "smithy.api#required" => {}}))
    DescribeAttachmentRequest.type = Types::DescribeAttachmentRequest
    DescribeAttachmentResponse.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'attachment', traits: {"smithy.api#documentation" => "<p>This object includes the attachment content and file name.</p>\n         <p>In the previous response syntax, the value for the <code>data</code> parameter appears\n            as <code>blob</code>, which is represented as a base64-encoded string. The value for\n                <code>fileName</code> is the name of the attachment, such as\n                <code>troubleshoot-screenshot.png</code>.</p>"}))
    DescribeAttachmentResponse.type = Types::DescribeAttachmentResponse
    DescribeCasesRequest.add_member(:case_id_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdList, location_name: 'caseIdList', traits: {"smithy.api#documentation" => "<p>A list of ID numbers of the support cases you want returned. The maximum number of\n            cases is 100.</p>"}))
    DescribeCasesRequest.add_member(:display_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayId, location_name: 'displayId', traits: {"smithy.api#documentation" => "<p>The ID displayed for a case in the Amazon Web Services Support Center user interface.</p>"}))
    DescribeCasesRequest.add_member(:after_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AfterTime, location_name: 'afterTime', traits: {"smithy.api#documentation" => "<p>The start date for a filtered date search on support case communications. Case\n            communications are available for 12 months after creation.</p>"}))
    DescribeCasesRequest.add_member(:before_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeTime, location_name: 'beforeTime', traits: {"smithy.api#documentation" => "<p>The end date for a filtered date search on support case communications. Case\n            communications are available for 12 months after creation.</p>"}))
    DescribeCasesRequest.add_member(:include_resolved_cases, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeResolvedCases, location_name: 'includeResolvedCases', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to include resolved support cases in the <code>DescribeCases</code>\n            response. By default, resolved cases aren't included.</p>"}))
    DescribeCasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A resumption point for pagination.</p>"}))
    DescribeCasesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return before paginating.</p>"}))
    DescribeCasesRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>"}))
    DescribeCasesRequest.add_member(:include_communications, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeCommunications, location_name: 'includeCommunications', traits: {"smithy.api#documentation" => "<p>Specifies whether to include communications in the <code>DescribeCases</code>\n            response. By default, communications are included.</p>"}))
    DescribeCasesRequest.type = Types::DescribeCasesRequest
    DescribeCasesResponse.add_member(:cases, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseList, location_name: 'cases', traits: {"smithy.api#documentation" => "<p>The details for the cases that match the request.</p>"}))
    DescribeCasesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A resumption point for pagination.</p>"}))
    DescribeCasesResponse.type = Types::DescribeCasesResponse
    DescribeCommunicationsRequest.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string formatted as shown in this example:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>", "smithy.api#required" => {}}))
    DescribeCommunicationsRequest.add_member(:before_time, Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeTime, location_name: 'beforeTime', traits: {"smithy.api#documentation" => "<p>The end date for a filtered date search on support case communications. Case\n            communications are available for 12 months after creation.</p>"}))
    DescribeCommunicationsRequest.add_member(:after_time, Smithy::Schema::Shapes::ShapeRef.new(shape: AfterTime, location_name: 'afterTime', traits: {"smithy.api#documentation" => "<p>The start date for a filtered date search on support case communications. Case\n            communications are available for 12 months after creation.</p>"}))
    DescribeCommunicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A resumption point for pagination.</p>"}))
    DescribeCommunicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return before paginating.</p>"}))
    DescribeCommunicationsRequest.type = Types::DescribeCommunicationsRequest
    DescribeCommunicationsResponse.add_member(:communications, Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationList, location_name: 'communications', traits: {"smithy.api#documentation" => "<p>The communications for the case.</p>"}))
    DescribeCommunicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A resumption point for pagination.</p>"}))
    DescribeCommunicationsResponse.type = Types::DescribeCommunicationsResponse
    DescribeCreateCaseOptionsRequest.add_member(:issue_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueType, location_name: 'issueType', traits: {"smithy.api#documentation" => "<p>The type of issue for the case. You can specify <code>customer-service</code> or\n                <code>technical</code>. If you don't specify a value, the default is\n                <code>technical</code>.</p>", "smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>\n            operation to get the possible <code>serviceCode</code> values.</p>", "smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>", "smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:category_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode', traits: {"smithy.api#documentation" => "<p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each\n            Amazon Web Services service defines its own set of category codes.</p>", "smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.type = Types::DescribeCreateCaseOptionsRequest
    DescribeCreateCaseOptionsResponse.add_member(:language_availability, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedLanguageAvailability, location_name: 'languageAvailability', traits: {"smithy.api#documentation" => "<p>Language availability can be any of the following:</p>\n         <ul>\n            <li>\n               <p>\n                    available\n                </p>\n            </li>\n            <li>\n               <p>\n                    best_effort\n                </p>\n            </li>\n            <li>\n               <p>\n                    unavailable\n                </p>\n            </li>\n         </ul>"}))
    DescribeCreateCaseOptionsResponse.add_member(:communication_types, Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTypeOptionsList, location_name: 'communicationTypes', traits: {"smithy.api#documentation" => "<p>\n        A JSON-formatted array that contains the available communication type options, along with the available support \n        timeframes for the given inputs.\n        </p>"}))
    DescribeCreateCaseOptionsResponse.type = Types::DescribeCreateCaseOptionsResponse
    DescribeServicesRequest.add_member(:service_code_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCodeList, location_name: 'serviceCodeList', traits: {"smithy.api#documentation" => "<p>A JSON-formatted list of service codes available for Amazon Web Services services.</p>"}))
    DescribeServicesRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>"}))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services', traits: {"smithy.api#documentation" => "<p>A JSON-formatted list of Amazon Web Services services.</p>"}))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    DescribeSeverityLevelsRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The language in which Amazon Web Services Support handles the case. Amazon Web Services Support\ncurrently supports Chinese (“zh”), English (\"en\"), Japanese (\"ja\") and Korean (“ko”). You must specify the ISO 639-1\ncode for the <code>language</code> parameter if you want support in that language.</p>"}))
    DescribeSeverityLevelsRequest.type = Types::DescribeSeverityLevelsRequest
    DescribeSeverityLevelsResponse.add_member(:severity_levels, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelsList, location_name: 'severityLevels', traits: {"smithy.api#documentation" => "<p>The available severity levels for the support case. Available severity levels are\n            defined by your service level agreement with Amazon Web Services.</p>"}))
    DescribeSeverityLevelsResponse.type = Types::DescribeSeverityLevelsResponse
    DescribeSupportedLanguagesRequest.add_member(:issue_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedIssueTypeString, location_name: 'issueType', traits: {"smithy.api#documentation" => "<p>The type of issue for the case. You can specify <code>customer-service</code> or\n                <code>technical</code>.</p>", "smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedServiceCode, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The code for the Amazon Web Services service. You can use the <a>DescribeServices</a>\n            operation to get the possible <code>serviceCode</code> values.</p>", "smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:category_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedCategoryCode, location_name: 'categoryCode', traits: {"smithy.api#documentation" => "<p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each\n            Amazon Web Services service defines its own set of category codes.</p>", "smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.type = Types::DescribeSupportedLanguagesRequest
    DescribeSupportedLanguagesResponse.add_member(:supported_languages, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedLanguagesList, location_name: 'supportedLanguages', traits: {"smithy.api#documentation" => "<p>\n        A JSON-formatted array that contains the available ISO 639-1 language codes.\n        </p>"}))
    DescribeSupportedLanguagesResponse.type = Types::DescribeSupportedLanguagesResponse
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.add_member(:check_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'checkIds', traits: {"smithy.api#documentation" => "<p>The IDs of the Trusted Advisor checks to get the status.</p>\n         <note>\n            <p>If you specify the check ID of a check that is automatically refreshed, you might\n                see an <code>InvalidParameterValue</code> error.</p>\n         </note>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesRequest
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.add_member(:statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatusList, location_name: 'statuses', traits: {"smithy.api#documentation" => "<p>The refresh status of the specified Trusted Advisor checks.</p>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse
    DescribeTrustedAdvisorCheckResultRequest.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckResultRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The ISO 639-1 code for the language that you want your check results to appear\n            in.</p>\n         <p>The Amazon Web Services Support API currently supports the following languages for Trusted Advisor:</p>\n         <ul>\n            <li>\n               <p>Chinese, Simplified - <code>zh</code>\n               </p>\n            </li>\n            <li>\n               <p>Chinese, Traditional - <code>zh_TW</code>\n               </p>\n            </li>\n            <li>\n               <p>English - <code>en</code>\n               </p>\n            </li>\n            <li>\n               <p>French - <code>fr</code>\n               </p>\n            </li>\n            <li>\n               <p>German - <code>de</code>\n               </p>\n            </li>\n            <li>\n               <p>Indonesian - <code>id</code>\n               </p>\n            </li>\n            <li>\n               <p>Italian - <code>it</code>\n               </p>\n            </li>\n            <li>\n               <p>Japanese - <code>ja</code>\n               </p>\n            </li>\n            <li>\n               <p>Korean - <code>ko</code>\n               </p>\n            </li>\n            <li>\n               <p>Portuguese, Brazilian - <code>pt_BR</code>\n               </p>\n            </li>\n            <li>\n               <p>Spanish - <code>es</code>\n               </p>\n            </li>\n         </ul>"}))
    DescribeTrustedAdvisorCheckResultRequest.type = Types::DescribeTrustedAdvisorCheckResultRequest
    DescribeTrustedAdvisorCheckResultResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The detailed results of the Trusted Advisor check.</p>"}))
    DescribeTrustedAdvisorCheckResultResponse.type = Types::DescribeTrustedAdvisorCheckResultResponse
    DescribeTrustedAdvisorCheckSummariesRequest.add_member(:check_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'checkIds', traits: {"smithy.api#documentation" => "<p>The IDs of the Trusted Advisor checks.</p>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesRequest.type = Types::DescribeTrustedAdvisorCheckSummariesRequest
    DescribeTrustedAdvisorCheckSummariesResponse.add_member(:summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummaryList, location_name: 'summaries', traits: {"smithy.api#documentation" => "<p>The summary information for the requested Trusted Advisor checks.</p>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesResponse.type = Types::DescribeTrustedAdvisorCheckSummariesResponse
    DescribeTrustedAdvisorChecksRequest.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'language', traits: {"smithy.api#documentation" => "<p>The ISO 639-1 code for the language that you want your checks to appear in.</p>\n         <p>The Amazon Web Services Support API currently supports the following languages for Trusted Advisor:</p>\n         <ul>\n            <li>\n               <p>Chinese, Simplified - <code>zh</code>\n               </p>\n            </li>\n            <li>\n               <p>Chinese, Traditional - <code>zh_TW</code>\n               </p>\n            </li>\n            <li>\n               <p>English - <code>en</code>\n               </p>\n            </li>\n            <li>\n               <p>French - <code>fr</code>\n               </p>\n            </li>\n            <li>\n               <p>German - <code>de</code>\n               </p>\n            </li>\n            <li>\n               <p>Indonesian - <code>id</code>\n               </p>\n            </li>\n            <li>\n               <p>Italian - <code>it</code>\n               </p>\n            </li>\n            <li>\n               <p>Japanese - <code>ja</code>\n               </p>\n            </li>\n            <li>\n               <p>Korean - <code>ko</code>\n               </p>\n            </li>\n            <li>\n               <p>Portuguese, Brazilian - <code>pt_BR</code>\n               </p>\n            </li>\n            <li>\n               <p>Spanish - <code>es</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksRequest.type = Types::DescribeTrustedAdvisorChecksRequest
    DescribeTrustedAdvisorChecksResponse.add_member(:checks, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckList, location_name: 'checks', traits: {"smithy.api#documentation" => "<p>Information about all available Trusted Advisor checks.</p>", "smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksResponse.type = Types::DescribeTrustedAdvisorChecksResponse
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An internal server error occurred.</p>"}))
    InternalServerError.type = Types::InternalServerError
    RecentCaseCommunications.add_member(:communications, Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationList, location_name: 'communications', traits: {"smithy.api#documentation" => "<p>The five most recent communications associated with the case.</p>"}))
    RecentCaseCommunications.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A resumption point for pagination.</p>"}))
    RecentCaseCommunications.type = Types::RecentCaseCommunications
    RefreshTrustedAdvisorCheckRequest.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check to refresh.</p>\n         <note>\n            <p>Specifying the check ID of a check that is automatically refreshed causes an\n                    <code>InvalidParameterValue</code> error.</p>\n         </note>", "smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckRequest.type = Types::RefreshTrustedAdvisorCheckRequest
    RefreshTrustedAdvisorCheckResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current refresh status for a check, including the amount of time until the check\n            is eligible for refresh.</p>", "smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckResponse.type = Types::RefreshTrustedAdvisorCheckResponse
    ResolveCaseRequest.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#documentation" => "<p>The support case ID requested or returned in the call. The case ID is an alphanumeric\n            string formatted as shown in this example:\n                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>\n         </p>"}))
    ResolveCaseRequest.type = Types::ResolveCaseRequest
    ResolveCaseResponse.add_member(:initial_case_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'initialCaseStatus', traits: {"smithy.api#documentation" => "<p>The status of the case when the <a>ResolveCase</a> request was sent.</p>"}))
    ResolveCaseResponse.add_member(:final_case_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'finalCaseStatus', traits: {"smithy.api#documentation" => "<p>The status of the case after the <a>ResolveCase</a> request was\n            processed.</p>"}))
    ResolveCaseResponse.type = Types::ResolveCaseResponse
    Service.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The code for an Amazon Web Services service returned by the <a>DescribeServices</a>\n            response. The <code>name</code> element contains the corresponding friendly name.</p>"}))
    Service.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name for an Amazon Web Services service. The <code>code</code> element contains the\n            corresponding code.</p>"}))
    Service.add_member(:categories, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories', traits: {"smithy.api#documentation" => "<p>A list of categories that describe the type of support issue a case describes.\n            Categories consist of a category name and a category code. Category names and codes are\n            passed to Amazon Web Services Support when you call <a>CreateCase</a>.</p>"}))
    Service.type = Types::Service
    ServiceCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2)
    ServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    SeverityLevel.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The code for case severity level.</p>\n         <p>Valid values: <code>low</code> | <code>normal</code> | <code>high</code> |\n                <code>urgent</code> | <code>critical</code>\n         </p>"}))
    SeverityLevel.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the severity level that corresponds to the severity level code.</p>\n         <note>\n            <p>The values returned by the API are different from the values that appear in the\n                Amazon Web Services Support Center. For example, the API uses the code <code>low</code>, but the name\n                appears as General guidance in Support Center. </p>\n            <p>The following are the API code names and how they appear in the console:</p>\n            <ul>\n               <li>\n                  <p>\n                     <code>low</code> - General guidance</p>\n               </li>\n               <li>\n                  <p>\n                     <code>normal</code> - System impaired</p>\n               </li>\n               <li>\n                  <p>\n                     <code>high</code> - Production system impaired</p>\n               </li>\n               <li>\n                  <p>\n                     <code>urgent</code> - Production system down</p>\n               </li>\n               <li>\n                  <p>\n                     <code>critical</code> - Business-critical system down</p>\n               </li>\n            </ul>\n         </note>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity\">Choosing a\n                severity</a> in the <i>Amazon Web Services Support User Guide</i>.</p>"}))
    SeverityLevel.type = Types::SeverityLevel
    SeverityLevelsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel)
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportedHour.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>\n        Start Time. RFC 3339 format <code>'HH:mm:ss.SSS'</code>.\n        </p>"}))
    SupportedHour.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>\n        End Time. RFC 3339 format <code>'HH:mm:ss.SSS'</code>.\n        </p>"}))
    SupportedHour.type = Types::SupportedHour
    SupportedHoursList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHour)
    SupportedLanguage.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>\n        2 digit ISO 639-1 code. e.g. <code>en</code>\n         </p>"}))
    SupportedLanguage.add_member(:language, Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#documentation" => "<p>\n        Full language description e.g. <code>ENGLISH</code>\n         </p>"}))
    SupportedLanguage.add_member(:display, Smithy::Schema::Shapes::ShapeRef.new(shape: Display, location_name: 'display', traits: {"smithy.api#documentation" => "<p>\n            Language display value e.g. <code>ENGLISH</code>\n         </p>"}))
    SupportedLanguage.type = Types::SupportedLanguage
    SupportedLanguagesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedLanguage)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TrustedAdvisorCategorySpecificSummary.add_member(:cost_optimizing, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCostOptimizingSummary, location_name: 'costOptimizing', traits: {"smithy.api#documentation" => "<p>The summary information about cost savings for a Trusted Advisor check that is in the Cost\n            Optimizing category.</p>"}))
    TrustedAdvisorCategorySpecificSummary.type = Types::TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorCheckDescription.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The display name for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Trusted Advisor check, which includes the alert criteria and\n            recommended operations (contains HTML markup).</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The column headings for the data returned by the Trusted Advisor check. The order of the\n            headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a>\n            for the check. <b>Metadata</b> contains all the data that is\n            shown in the Excel download, even in those cases where the UI shows just summary data.\n        </p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.type = Types::TrustedAdvisorCheckDescription
    TrustedAdvisorCheckList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckDescription)
    TrustedAdvisorCheckRefreshStatus.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Trusted Advisor check for which a refresh has been requested:\n            </p>\n         <ul>\n            <li>\n               <p>\n                  <code>none</code> - The check is not refreshed or the non-success\n                    status exceeds the timeout</p>\n            </li>\n            <li>\n               <p>\n                  <code>enqueued</code> - The check refresh requests has entered the\n                    refresh queue</p>\n            </li>\n            <li>\n               <p>\n                  <code>processing</code> - The check refresh request is picked up by the\n                    rule processing engine</p>\n            </li>\n            <li>\n               <p>\n                  <code>success</code> - The check is successfully refreshed</p>\n            </li>\n            <li>\n               <p>\n                  <code>abandoned</code> - The check refresh has failed</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:millis_until_next_refreshable, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'millisUntilNextRefreshable', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for\n            refresh.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.type = Types::TrustedAdvisorCheckRefreshStatus
    TrustedAdvisorCheckRefreshStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus)
    TrustedAdvisorCheckResult.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time of the last refresh of the check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or\n            \"not_available\".</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:resources_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, location_name: 'resourcesSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:category_specific_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, location_name: 'categorySpecificSummary', traits: {"smithy.api#documentation" => "<p>Summary information that relates to the category of the check. Cost Optimizing is the\n            only category that is currently supported.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:flagged_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetailList, location_name: 'flaggedResources', traits: {"smithy.api#documentation" => "<p>The details about each resource listed in the check result.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.type = Types::TrustedAdvisorCheckResult
    TrustedAdvisorCheckSummary.add_member(:check_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The time of the last refresh of the check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or\n            \"not_available\".</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:has_flagged_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasFlaggedResources', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the Trusted Advisor check has flagged resources.</p>"}))
    TrustedAdvisorCheckSummary.add_member(:resources_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, location_name: 'resourcesSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:category_specific_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, location_name: 'categorySpecificSummary', traits: {"smithy.api#documentation" => "<p>Summary information that relates to the category of the check. Cost Optimizing is the\n            only category that is currently supported.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.type = Types::TrustedAdvisorCheckSummary
    TrustedAdvisorCheckSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummary)
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_monthly_savings, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'estimatedMonthlySavings', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The estimated monthly savings that might be realized if the recommended operations are\n            taken.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_percent_monthly_savings, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'estimatedPercentMonthlySavings', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The estimated percentage of savings that might be realized if the recommended\n            operations are taken.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.type = Types::TrustedAdvisorCostOptimizingSummary
    TrustedAdvisorResourceDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status code for the resource identified in the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the identified resource is located.</p>"}))
    TrustedAdvisorResourceDetail.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the identified resource.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:is_suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isSuppressed', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the Amazon Web Services resource was ignored by Trusted Advisor because it was marked as\n            suppressed by the user.</p>"}))
    TrustedAdvisorResourceDetail.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Additional information about the identified resource. The exact metadata and its order\n            can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a>\n            object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel\n            download, even in those cases where the UI shows just summary data.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.type = Types::TrustedAdvisorResourceDetail
    TrustedAdvisorResourceDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetail)
    TrustedAdvisorResourcesSummary.add_member(:resources_processed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesProcessed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Amazon Web Services resources that were analyzed by the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_flagged, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesFlagged', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Amazon Web Services resources that were flagged (listed) by the Trusted Advisor check.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_ignored, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesIgnored', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Amazon Web Services resources ignored by Trusted Advisor because information was\n            unavailable.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesSuppressed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Amazon Web Services resources ignored by Trusted Advisor because they were marked as\n            suppressed by the user.</p>", "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.type = Types::TrustedAdvisorResourcesSummary

    AWSSupport20130415 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.support#AWSSupport_20130415"
      service.name = "AWSSupport20130415"
      service.version = "2013-04-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Support", "arnNamespace" => "support", "cloudFormationName" => "Support", "cloudTrailEventSource" => "support.amazonaws.com", "endpointPrefix" => "support"}, "aws.auth#sigv4" => {"name" => "support"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Support", "smithy.api#xmlNamespace" => {"uri" => "http://support.amazonaws.com/doc/2013-04-15/"}}
      service.add_operation(:add_attachments_to_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddAttachmentsToSet"
        operation.name = "AddAttachmentsToSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttachmentsToSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttachmentsToSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetSizeLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:add_communication_to_case, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddCommunicationToCase"
        operation.name = "AddCommunicationToCase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCommunicationToCaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddCommunicationToCaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:create_case, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#CreateCase"
        operation.name = "CreateCase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseCreationLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeAttachment"
        operation.name = "DescribeAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_cases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCases"
        operation.name = "DescribeCases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCasesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCases.new
      end)
      service.add_operation(:describe_communications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCommunications"
        operation.name = "DescribeCommunications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommunicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommunicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCommunications.new
      end)
      service.add_operation(:describe_create_case_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCreateCaseOptions"
        operation.name = "DescribeCreateCaseOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateCaseOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateCaseOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_severity_levels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSeverityLevels"
        operation.name = "DescribeSeverityLevels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSeverityLevelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSeverityLevelsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_supported_languages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSupportedLanguages"
        operation.name = "DescribeSupportedLanguages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSupportedLanguagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSupportedLanguagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_refresh_statuses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.name = "DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckResult"
        operation.name = "DescribeTrustedAdvisorCheckResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckSummaries"
        operation.name = "DescribeTrustedAdvisorCheckSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_checks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorChecks"
        operation.name = "DescribeTrustedAdvisorChecks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:refresh_trusted_advisor_check, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#RefreshTrustedAdvisorCheck"
        operation.name = "RefreshTrustedAdvisorCheck"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:resolve_case, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#ResolveCase"
        operation.name = "ResolveCase"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCaseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCaseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
