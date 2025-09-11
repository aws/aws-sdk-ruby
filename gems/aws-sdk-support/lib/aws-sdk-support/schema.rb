# frozen_string_literal: true

# This is generated code!

module Aws::Support
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddAttachmentsToSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddAttachmentsToSetRequest', name: 'AddAttachmentsToSetRequest')
    AddAttachmentsToSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddAttachmentsToSetResponse', name: 'AddAttachmentsToSetResponse')
    AddCommunicationToCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddCommunicationToCaseRequest', name: 'AddCommunicationToCaseRequest')
    AddCommunicationToCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AddCommunicationToCaseResponse', name: 'AddCommunicationToCaseResponse')
    AfterTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AfterTime', name: 'AfterTime')
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Attachment', name: 'Attachment')
    AttachmentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentDetails', name: 'AttachmentDetails')
    AttachmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AttachmentId', name: 'AttachmentId')
    AttachmentIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentIdNotFound', name: 'AttachmentIdNotFound', traits: {"smithy.api#error" => "client"})
    AttachmentLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentLimitExceeded', name: 'AttachmentLimitExceeded', traits: {"smithy.api#error" => "client"})
    AttachmentSet = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#AttachmentSet', name: 'AttachmentSet')
    AttachmentSetExpired = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetExpired', name: 'AttachmentSetExpired', traits: {"smithy.api#error" => "client"})
    AttachmentSetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AttachmentSetId', name: 'AttachmentSetId')
    AttachmentSetIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetIdNotFound', name: 'AttachmentSetIdNotFound', traits: {"smithy.api#error" => "client"})
    AttachmentSetSizeLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#AttachmentSetSizeLimitExceeded', name: 'AttachmentSetSizeLimitExceeded', traits: {"smithy.api#error" => "client"})
    Attachments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#Attachments', name: 'Attachments')
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#AvailabilityErrorMessage', name: 'AvailabilityErrorMessage')
    BeforeTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#BeforeTime', name: 'BeforeTime')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CaseCreationLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseCreationLimitExceeded', name: 'CaseCreationLimitExceeded', traits: {"smithy.api#error" => "client"})
    CaseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseDetails', name: 'CaseDetails')
    CaseId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CaseId', name: 'CaseId')
    CaseIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CaseIdList', name: 'CaseIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CaseIdNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CaseIdNotFound', name: 'CaseIdNotFound', traits: {"smithy.api#error" => "client"})
    CaseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CaseList', name: 'CaseList')
    CaseStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CaseStatus', name: 'CaseStatus')
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Category', name: 'Category')
    CategoryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CategoryCode', name: 'CategoryCode')
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CategoryList', name: 'CategoryList')
    CategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CategoryName', name: 'CategoryName')
    CcEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CcEmailAddress', name: 'CcEmailAddress')
    CcEmailAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CcEmailAddressList', name: 'CcEmailAddressList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Code', name: 'Code')
    Communication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Communication', name: 'Communication')
    CommunicationBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#CommunicationBody', name: 'CommunicationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    CommunicationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CommunicationList', name: 'CommunicationList')
    CommunicationTypeOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CommunicationTypeOptions', name: 'CommunicationTypeOptions')
    CommunicationTypeOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#CommunicationTypeOptionsList', name: 'CommunicationTypeOptionsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CreateCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CreateCaseRequest', name: 'CreateCaseRequest')
    CreateCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#CreateCaseResponse', name: 'CreateCaseResponse')
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.support#Data', name: 'Data')
    DateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DateInterval', name: 'DateInterval')
    DatesWithoutSupportList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#DatesWithoutSupportList', name: 'DatesWithoutSupportList')
    DescribeAttachmentLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentLimitExceeded', name: 'DescribeAttachmentLimitExceeded', traits: {"smithy.api#error" => "client"})
    DescribeAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentRequest', name: 'DescribeAttachmentRequest')
    DescribeAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeAttachmentResponse', name: 'DescribeAttachmentResponse')
    DescribeCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCasesRequest', name: 'DescribeCasesRequest')
    DescribeCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCasesResponse', name: 'DescribeCasesResponse')
    DescribeCommunicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCommunicationsRequest', name: 'DescribeCommunicationsRequest')
    DescribeCommunicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCommunicationsResponse', name: 'DescribeCommunicationsResponse')
    DescribeCreateCaseOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCreateCaseOptionsRequest', name: 'DescribeCreateCaseOptionsRequest')
    DescribeCreateCaseOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeCreateCaseOptionsResponse', name: 'DescribeCreateCaseOptionsResponse')
    DescribeServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeServicesRequest', name: 'DescribeServicesRequest')
    DescribeServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeServicesResponse', name: 'DescribeServicesResponse')
    DescribeSeverityLevelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSeverityLevelsRequest', name: 'DescribeSeverityLevelsRequest')
    DescribeSeverityLevelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSeverityLevelsResponse', name: 'DescribeSeverityLevelsResponse')
    DescribeSupportedLanguagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSupportedLanguagesRequest', name: 'DescribeSupportedLanguagesRequest')
    DescribeSupportedLanguagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeSupportedLanguagesResponse', name: 'DescribeSupportedLanguagesResponse')
    DescribeTrustedAdvisorCheckRefreshStatusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesRequest', name: 'DescribeTrustedAdvisorCheckRefreshStatusesRequest')
    DescribeTrustedAdvisorCheckRefreshStatusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatusesResponse', name: 'DescribeTrustedAdvisorCheckRefreshStatusesResponse')
    DescribeTrustedAdvisorCheckResultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckResultRequest', name: 'DescribeTrustedAdvisorCheckResultRequest')
    DescribeTrustedAdvisorCheckResultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckResultResponse', name: 'DescribeTrustedAdvisorCheckResultResponse')
    DescribeTrustedAdvisorCheckSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesRequest', name: 'DescribeTrustedAdvisorCheckSummariesRequest')
    DescribeTrustedAdvisorCheckSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorCheckSummariesResponse', name: 'DescribeTrustedAdvisorCheckSummariesResponse')
    DescribeTrustedAdvisorChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorChecksRequest', name: 'DescribeTrustedAdvisorChecksRequest')
    DescribeTrustedAdvisorChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#DescribeTrustedAdvisorChecksResponse', name: 'DescribeTrustedAdvisorChecksResponse')
    Display = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Display', name: 'Display')
    DisplayId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#DisplayId', name: 'DisplayId')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.support#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    EndTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#EndTime', name: 'EndTime')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ErrorMessage', name: 'ErrorMessage')
    ExpiryTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ExpiryTime', name: 'ExpiryTime')
    FileName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#FileName', name: 'FileName')
    IncludeCommunications = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#IncludeCommunications', name: 'IncludeCommunications')
    IncludeResolvedCases = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#IncludeResolvedCases', name: 'IncludeResolvedCases', traits: {"smithy.api#default" => false})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    IssueType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#IssueType', name: 'IssueType')
    Language = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Language', name: 'Language')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.support#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.support#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 10, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#NextToken', name: 'NextToken')
    RecentCaseCommunications = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RecentCaseCommunications', name: 'RecentCaseCommunications')
    RefreshTrustedAdvisorCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RefreshTrustedAdvisorCheckRequest', name: 'RefreshTrustedAdvisorCheckRequest')
    RefreshTrustedAdvisorCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#RefreshTrustedAdvisorCheckResponse', name: 'RefreshTrustedAdvisorCheckResponse')
    ResolveCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ResolveCaseRequest', name: 'ResolveCaseRequest')
    ResolveCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ResolveCaseResponse', name: 'ResolveCaseResponse')
    Result = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.support#Result', name: 'Result', traits: {"smithy.api#default" => false})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#Service', name: 'Service')
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceCode', name: 'ServiceCode')
    ServiceCode2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceCode2', name: 'ServiceCode2', traits: {"smithy.api#pattern" => "^[0-9a-z\\-_]+$"})
    ServiceCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#ServiceCodeList', name: 'ServiceCodeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#ServiceList', name: 'ServiceList')
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ServiceName', name: 'ServiceName')
    SeverityCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityCode', name: 'SeverityCode')
    SeverityLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SeverityLevel', name: 'SeverityLevel')
    SeverityLevelCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityLevelCode', name: 'SeverityLevelCode')
    SeverityLevelName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SeverityLevelName', name: 'SeverityLevelName')
    SeverityLevelsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SeverityLevelsList', name: 'SeverityLevelsList')
    StartTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#StartTime', name: 'StartTime')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Status', name: 'Status')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#StringList', name: 'StringList', traits: {"smithy.api#sparse" => {}})
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Subject', name: 'Subject')
    SubmittedBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#SubmittedBy', name: 'SubmittedBy')
    SupportedHour = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SupportedHour', name: 'SupportedHour')
    SupportedHoursList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SupportedHoursList', name: 'SupportedHoursList')
    SupportedLanguage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#SupportedLanguage', name: 'SupportedLanguage')
    SupportedLanguagesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#SupportedLanguagesList', name: 'SupportedLanguagesList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TimeCreated = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#TimeCreated', name: 'TimeCreated')
    TrustedAdvisorCategorySpecificSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCategorySpecificSummary', name: 'TrustedAdvisorCategorySpecificSummary')
    TrustedAdvisorCheckDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckDescription', name: 'TrustedAdvisorCheckDescription')
    TrustedAdvisorCheckList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckList', name: 'TrustedAdvisorCheckList')
    TrustedAdvisorCheckRefreshStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckRefreshStatus', name: 'TrustedAdvisorCheckRefreshStatus')
    TrustedAdvisorCheckRefreshStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckRefreshStatusList', name: 'TrustedAdvisorCheckRefreshStatusList')
    TrustedAdvisorCheckResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckResult', name: 'TrustedAdvisorCheckResult')
    TrustedAdvisorCheckSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckSummary', name: 'TrustedAdvisorCheckSummary')
    TrustedAdvisorCheckSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorCheckSummaryList', name: 'TrustedAdvisorCheckSummaryList')
    TrustedAdvisorCostOptimizingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorCostOptimizingSummary', name: 'TrustedAdvisorCostOptimizingSummary')
    TrustedAdvisorResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourceDetail', name: 'TrustedAdvisorResourceDetail')
    TrustedAdvisorResourceDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourceDetailList', name: 'TrustedAdvisorResourceDetailList')
    TrustedAdvisorResourcesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.support#TrustedAdvisorResourcesSummary', name: 'TrustedAdvisorResourcesSummary')
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#Type', name: 'Type')
    ValidatedCategoryCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedCategoryCode', name: 'ValidatedCategoryCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedCommunicationBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedCommunicationBody', name: 'ValidatedCommunicationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}})
    ValidatedDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedDateTime', name: 'ValidatedDateTime', traits: {"smithy.api#length" => {"min" => 8, "max" => 30}})
    ValidatedIssueTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedIssueTypeString', name: 'ValidatedIssueTypeString', traits: {"smithy.api#length" => {"min" => 9, "max" => 22}})
    ValidatedLanguageAvailability = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedLanguageAvailability', name: 'ValidatedLanguageAvailability', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ValidatedServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.support#ValidatedServiceCode', name: 'ValidatedServiceCode', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})

    AddAttachmentsToSetRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId'))
    AddAttachmentsToSetRequest.add_member(:attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'attachments', traits: {"smithy.api#required" => {}}))
    AddAttachmentsToSetRequest.type = Types::AddAttachmentsToSetRequest
    AddAttachmentsToSetResponse.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId'))
    AddAttachmentsToSetResponse.add_member(:expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiryTime, location_name: 'expiryTime'))
    AddAttachmentsToSetResponse.type = Types::AddAttachmentsToSetResponse
    AddCommunicationToCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId'))
    AddCommunicationToCaseRequest.add_member(:communication_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationBody, location_name: 'communicationBody', traits: {"smithy.api#required" => {}}))
    AddCommunicationToCaseRequest.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses'))
    AddCommunicationToCaseRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId'))
    AddCommunicationToCaseRequest.type = Types::AddCommunicationToCaseRequest
    AddCommunicationToCaseResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'result', traits: {"smithy.api#default" => false}))
    AddCommunicationToCaseResponse.type = Types::AddCommunicationToCaseResponse
    Attachment.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName'))
    Attachment.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Data, location_name: 'data'))
    Attachment.type = Types::Attachment
    AttachmentDetails.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId'))
    AttachmentDetails.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileName, location_name: 'fileName'))
    AttachmentDetails.type = Types::AttachmentDetails
    AttachmentIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AttachmentIdNotFound.type = Types::AttachmentIdNotFound
    AttachmentLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AttachmentLimitExceeded.type = Types::AttachmentLimitExceeded
    AttachmentSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentDetails)
    AttachmentSetExpired.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AttachmentSetExpired.type = Types::AttachmentSetExpired
    AttachmentSetIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AttachmentSetIdNotFound.type = Types::AttachmentSetIdNotFound
    AttachmentSetSizeLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AttachmentSetSizeLimitExceeded.type = Types::AttachmentSetSizeLimitExceeded
    Attachments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    CaseCreationLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CaseCreationLimitExceeded.type = Types::CaseCreationLimitExceeded
    CaseDetails.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId'))
    CaseDetails.add_member(:display_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayId, location_name: 'displayId'))
    CaseDetails.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'subject'))
    CaseDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status'))
    CaseDetails.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode'))
    CaseDetails.add_member(:category_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode'))
    CaseDetails.add_member(:severity_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCode, location_name: 'severityCode'))
    CaseDetails.add_member(:submitted_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmittedBy, location_name: 'submittedBy'))
    CaseDetails.add_member(:time_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCreated, location_name: 'timeCreated'))
    CaseDetails.add_member(:recent_communications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecentCaseCommunications, location_name: 'recentCommunications'))
    CaseDetails.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses'))
    CaseDetails.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    CaseDetails.type = Types::CaseDetails
    CaseIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId)
    CaseIdNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CaseIdNotFound.type = Types::CaseIdNotFound
    CaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseDetails)
    Category.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'code'))
    Category.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName, location_name: 'name'))
    Category.type = Types::Category
    CategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category)
    CcEmailAddressList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddress)
    Communication.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId'))
    Communication.add_member(:body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedCommunicationBody, location_name: 'body'))
    Communication.add_member(:submitted_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmittedBy, location_name: 'submittedBy'))
    Communication.add_member(:time_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeCreated, location_name: 'timeCreated'))
    Communication.add_member(:attachment_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSet, location_name: 'attachmentSet'))
    Communication.type = Types::Communication
    CommunicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Communication)
    CommunicationTypeOptions.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type'))
    CommunicationTypeOptions.add_member(:supported_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHoursList, location_name: 'supportedHours'))
    CommunicationTypeOptions.add_member(:dates_without_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatesWithoutSupportList, location_name: 'datesWithoutSupport'))
    CommunicationTypeOptions.type = Types::CommunicationTypeOptions
    CommunicationTypeOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTypeOptions)
    CreateCaseRequest.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'subject', traits: {"smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2, location_name: 'serviceCode'))
    CreateCaseRequest.add_member(:severity_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityCode, location_name: 'severityCode'))
    CreateCaseRequest.add_member(:category_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode'))
    CreateCaseRequest.add_member(:communication_body, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationBody, location_name: 'communicationBody', traits: {"smithy.api#required" => {}}))
    CreateCaseRequest.add_member(:cc_email_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: 'ccEmailAddresses'))
    CreateCaseRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    CreateCaseRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueType, location_name: 'issueType'))
    CreateCaseRequest.add_member(:attachment_set_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: 'attachmentSetId'))
    CreateCaseRequest.type = Types::CreateCaseRequest
    CreateCaseResponse.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId'))
    CreateCaseResponse.type = Types::CreateCaseResponse
    DateInterval.add_member(:start_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedDateTime, location_name: 'startDateTime'))
    DateInterval.add_member(:end_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedDateTime, location_name: 'endDateTime'))
    DateInterval.type = Types::DateInterval
    DatesWithoutSupportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval)
    DescribeAttachmentLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DescribeAttachmentLimitExceeded.type = Types::DescribeAttachmentLimitExceeded
    DescribeAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#required" => {}}))
    DescribeAttachmentRequest.type = Types::DescribeAttachmentRequest
    DescribeAttachmentResponse.add_member(:attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment, location_name: 'attachment'))
    DescribeAttachmentResponse.type = Types::DescribeAttachmentResponse
    DescribeCasesRequest.add_member(:case_id_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdList, location_name: 'caseIdList'))
    DescribeCasesRequest.add_member(:display_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayId, location_name: 'displayId'))
    DescribeCasesRequest.add_member(:after_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AfterTime, location_name: 'afterTime'))
    DescribeCasesRequest.add_member(:before_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeTime, location_name: 'beforeTime'))
    DescribeCasesRequest.add_member(:include_resolved_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeResolvedCases, location_name: 'includeResolvedCases', traits: {"smithy.api#default" => false}))
    DescribeCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeCasesRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    DescribeCasesRequest.add_member(:include_communications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeCommunications, location_name: 'includeCommunications'))
    DescribeCasesRequest.type = Types::DescribeCasesRequest
    DescribeCasesResponse.add_member(:cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseList, location_name: 'cases'))
    DescribeCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeCasesResponse.type = Types::DescribeCasesResponse
    DescribeCommunicationsRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId', traits: {"smithy.api#required" => {}}))
    DescribeCommunicationsRequest.add_member(:before_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeTime, location_name: 'beforeTime'))
    DescribeCommunicationsRequest.add_member(:after_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AfterTime, location_name: 'afterTime'))
    DescribeCommunicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeCommunicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeCommunicationsRequest.type = Types::DescribeCommunicationsRequest
    DescribeCommunicationsResponse.add_member(:communications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationList, location_name: 'communications'))
    DescribeCommunicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    DescribeCommunicationsResponse.type = Types::DescribeCommunicationsResponse
    DescribeCreateCaseOptionsRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueType, location_name: 'issueType', traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language', traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.add_member(:category_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryCode, location_name: 'categoryCode', traits: {"smithy.api#required" => {}}))
    DescribeCreateCaseOptionsRequest.type = Types::DescribeCreateCaseOptionsRequest
    DescribeCreateCaseOptionsResponse.add_member(:language_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedLanguageAvailability, location_name: 'languageAvailability'))
    DescribeCreateCaseOptionsResponse.add_member(:communication_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationTypeOptionsList, location_name: 'communicationTypes'))
    DescribeCreateCaseOptionsResponse.type = Types::DescribeCreateCaseOptionsResponse
    DescribeServicesRequest.add_member(:service_code_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCodeList, location_name: 'serviceCodeList'))
    DescribeServicesRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services'))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    DescribeSeverityLevelsRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    DescribeSeverityLevelsRequest.type = Types::DescribeSeverityLevelsRequest
    DescribeSeverityLevelsResponse.add_member(:severity_levels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelsList, location_name: 'severityLevels'))
    DescribeSeverityLevelsResponse.type = Types::DescribeSeverityLevelsResponse
    DescribeSupportedLanguagesRequest.add_member(:issue_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedIssueTypeString, location_name: 'issueType', traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedServiceCode, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.add_member(:category_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatedCategoryCode, location_name: 'categoryCode', traits: {"smithy.api#required" => {}}))
    DescribeSupportedLanguagesRequest.type = Types::DescribeSupportedLanguagesRequest
    DescribeSupportedLanguagesResponse.add_member(:supported_languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedLanguagesList, location_name: 'supportedLanguages'))
    DescribeSupportedLanguagesResponse.type = Types::DescribeSupportedLanguagesResponse
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.add_member(:check_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'checkIds', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesRequest
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatusList, location_name: 'statuses', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.type = Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse
    DescribeTrustedAdvisorCheckResultRequest.add_member(:check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckResultRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'language'))
    DescribeTrustedAdvisorCheckResultRequest.type = Types::DescribeTrustedAdvisorCheckResultRequest
    DescribeTrustedAdvisorCheckResultResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckResult, location_name: 'result'))
    DescribeTrustedAdvisorCheckResultResponse.type = Types::DescribeTrustedAdvisorCheckResultResponse
    DescribeTrustedAdvisorCheckSummariesRequest.add_member(:check_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'checkIds', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesRequest.type = Types::DescribeTrustedAdvisorCheckSummariesRequest
    DescribeTrustedAdvisorCheckSummariesResponse.add_member(:summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummaryList, location_name: 'summaries', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorCheckSummariesResponse.type = Types::DescribeTrustedAdvisorCheckSummariesResponse
    DescribeTrustedAdvisorChecksRequest.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'language', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksRequest.type = Types::DescribeTrustedAdvisorChecksRequest
    DescribeTrustedAdvisorChecksResponse.add_member(:checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckList, location_name: 'checks', traits: {"smithy.api#required" => {}}))
    DescribeTrustedAdvisorChecksResponse.type = Types::DescribeTrustedAdvisorChecksResponse
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerError.type = Types::InternalServerError
    RecentCaseCommunications.add_member(:communications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommunicationList, location_name: 'communications'))
    RecentCaseCommunications.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    RecentCaseCommunications.type = Types::RecentCaseCommunications
    RefreshTrustedAdvisorCheckRequest.add_member(:check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckRequest.type = Types::RefreshTrustedAdvisorCheckRequest
    RefreshTrustedAdvisorCheckResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    RefreshTrustedAdvisorCheckResponse.type = Types::RefreshTrustedAdvisorCheckResponse
    ResolveCaseRequest.add_member(:case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'caseId'))
    ResolveCaseRequest.type = Types::ResolveCaseRequest
    ResolveCaseResponse.add_member(:initial_case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'initialCaseStatus'))
    ResolveCaseResponse.add_member(:final_case_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseStatus, location_name: 'finalCaseStatus'))
    ResolveCaseResponse.type = Types::ResolveCaseResponse
    Service.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'code'))
    Service.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceName, location_name: 'name'))
    Service.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories'))
    Service.type = Types::Service
    ServiceCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode2)
    ServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    SeverityLevel.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelCode, location_name: 'code'))
    SeverityLevel.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelName, location_name: 'name'))
    SeverityLevel.type = Types::SeverityLevel
    SeverityLevelsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel)
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportedHour.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime'))
    SupportedHour.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime'))
    SupportedHour.type = Types::SupportedHour
    SupportedHoursList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedHour)
    SupportedLanguage.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code'))
    SupportedLanguage.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Language, location_name: 'language'))
    SupportedLanguage.add_member(:display, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Display, location_name: 'display'))
    SupportedLanguage.type = Types::SupportedLanguage
    SupportedLanguagesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedLanguage)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TrustedAdvisorCategorySpecificSummary.add_member(:cost_optimizing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCostOptimizingSummary, location_name: 'costOptimizing'))
    TrustedAdvisorCategorySpecificSummary.type = Types::TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorCheckDescription.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'category', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckDescription.type = Types::TrustedAdvisorCheckDescription
    TrustedAdvisorCheckList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckDescription)
    TrustedAdvisorCheckRefreshStatus.add_member(:check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.add_member(:millis_until_next_refreshable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'millisUntilNextRefreshable', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCheckRefreshStatus.type = Types::TrustedAdvisorCheckRefreshStatus
    TrustedAdvisorCheckRefreshStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus)
    TrustedAdvisorCheckResult.add_member(:check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:resources_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, location_name: 'resourcesSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, location_name: 'categorySpecificSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.add_member(:flagged_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetailList, location_name: 'flaggedResources', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckResult.type = Types::TrustedAdvisorCheckResult
    TrustedAdvisorCheckSummary.add_member(:check_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checkId', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timestamp', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:has_flagged_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'hasFlaggedResources', traits: {"smithy.api#default" => false}))
    TrustedAdvisorCheckSummary.add_member(:resources_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, location_name: 'resourcesSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, location_name: 'categorySpecificSummary', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorCheckSummary.type = Types::TrustedAdvisorCheckSummary
    TrustedAdvisorCheckSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummary)
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'estimatedMonthlySavings', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_percent_monthly_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'estimatedPercentMonthlySavings', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorCostOptimizingSummary.type = Types::TrustedAdvisorCostOptimizingSummary
    TrustedAdvisorResourceDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region'))
    TrustedAdvisorResourceDetail.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.add_member(:is_suppressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isSuppressed', traits: {"smithy.api#default" => false}))
    TrustedAdvisorResourceDetail.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'metadata', traits: {"smithy.api#required" => {}}))
    TrustedAdvisorResourceDetail.type = Types::TrustedAdvisorResourceDetail
    TrustedAdvisorResourceDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetail)
    TrustedAdvisorResourcesSummary.add_member(:resources_processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesProcessed', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_flagged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesFlagged', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_ignored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesIgnored', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.add_member(:resources_suppressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'resourcesSuppressed', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TrustedAdvisorResourcesSummary.type = Types::TrustedAdvisorResourcesSummary

    AWSSupport20130415 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.support#AWSSupport_20130415"
      service.name = "AWSSupport20130415"
      service.version = "2013-04-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Support", "arnNamespace" => "support", "cloudFormationName" => "Support", "cloudTrailEventSource" => "support.amazonaws.com", "endpointPrefix" => "support"}, "aws.auth#sigv4" => {"name" => "support"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Support", "smithy.api#xmlNamespace" => {"uri" => "http://support.amazonaws.com/doc/2013-04-15/"}}
      service.add_operation(:add_attachments_to_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddAttachmentsToSet"
        operation.name = "AddAttachmentsToSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttachmentsToSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddAttachmentsToSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetSizeLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:add_communication_to_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#AddCommunicationToCase"
        operation.name = "AddCommunicationToCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCommunicationToCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddCommunicationToCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:create_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#CreateCase"
        operation.name = "CreateCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseCreationLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeAttachment"
        operation.name = "DescribeAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAttachmentLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCases"
        operation.name = "DescribeCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCases.new
      end)
      service.add_operation(:describe_communications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCommunications"
        operation.name = "DescribeCommunications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommunicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommunicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCommunications.new
      end)
      service.add_operation(:describe_create_case_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeCreateCaseOptions"
        operation.name = "DescribeCreateCaseOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateCaseOptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCreateCaseOptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_severity_levels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSeverityLevels"
        operation.name = "DescribeSeverityLevels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSeverityLevelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSeverityLevelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:describe_supported_languages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeSupportedLanguages"
        operation.name = "DescribeSupportedLanguages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSupportedLanguagesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSupportedLanguagesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_refresh_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.name = "DescribeTrustedAdvisorCheckRefreshStatuses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckResult"
        operation.name = "DescribeTrustedAdvisorCheckResult"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_check_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorCheckSummaries"
        operation.name = "DescribeTrustedAdvisorCheckSummaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_trusted_advisor_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#DescribeTrustedAdvisorChecks"
        operation.name = "DescribeTrustedAdvisorChecks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:refresh_trusted_advisor_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#RefreshTrustedAdvisorCheck"
        operation.name = "RefreshTrustedAdvisorCheck"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:resolve_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.support#ResolveCase"
        operation.name = "ResolveCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaseIdNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
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
