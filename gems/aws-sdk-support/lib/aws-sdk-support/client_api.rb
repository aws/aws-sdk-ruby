# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Support
  # @api private
  module ClientApi

    include Seahorse::Model

    AddAttachmentsToSetRequest = Shapes::StructureShape.new(name: 'AddAttachmentsToSetRequest')
    AddAttachmentsToSetResponse = Shapes::StructureShape.new(name: 'AddAttachmentsToSetResponse')
    AddCommunicationToCaseRequest = Shapes::StructureShape.new(name: 'AddCommunicationToCaseRequest')
    AddCommunicationToCaseResponse = Shapes::StructureShape.new(name: 'AddCommunicationToCaseResponse')
    AfterTime = Shapes::StringShape.new(name: 'AfterTime')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentDetails = Shapes::StructureShape.new(name: 'AttachmentDetails')
    AttachmentId = Shapes::StringShape.new(name: 'AttachmentId')
    AttachmentIdNotFound = Shapes::StructureShape.new(name: 'AttachmentIdNotFound')
    AttachmentLimitExceeded = Shapes::StructureShape.new(name: 'AttachmentLimitExceeded')
    AttachmentSet = Shapes::ListShape.new(name: 'AttachmentSet')
    AttachmentSetExpired = Shapes::StructureShape.new(name: 'AttachmentSetExpired')
    AttachmentSetId = Shapes::StringShape.new(name: 'AttachmentSetId')
    AttachmentSetIdNotFound = Shapes::StructureShape.new(name: 'AttachmentSetIdNotFound')
    AttachmentSetSizeLimitExceeded = Shapes::StructureShape.new(name: 'AttachmentSetSizeLimitExceeded')
    Attachments = Shapes::ListShape.new(name: 'Attachments')
    BeforeTime = Shapes::StringShape.new(name: 'BeforeTime')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CaseCreationLimitExceeded = Shapes::StructureShape.new(name: 'CaseCreationLimitExceeded')
    CaseDetails = Shapes::StructureShape.new(name: 'CaseDetails')
    CaseId = Shapes::StringShape.new(name: 'CaseId')
    CaseIdList = Shapes::ListShape.new(name: 'CaseIdList')
    CaseIdNotFound = Shapes::StructureShape.new(name: 'CaseIdNotFound')
    CaseList = Shapes::ListShape.new(name: 'CaseList')
    CaseStatus = Shapes::StringShape.new(name: 'CaseStatus')
    Category = Shapes::StructureShape.new(name: 'Category')
    CategoryCode = Shapes::StringShape.new(name: 'CategoryCode')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CategoryName = Shapes::StringShape.new(name: 'CategoryName')
    CcEmailAddress = Shapes::StringShape.new(name: 'CcEmailAddress')
    CcEmailAddressList = Shapes::ListShape.new(name: 'CcEmailAddressList')
    Communication = Shapes::StructureShape.new(name: 'Communication')
    CommunicationBody = Shapes::StringShape.new(name: 'CommunicationBody')
    CommunicationList = Shapes::ListShape.new(name: 'CommunicationList')
    CreateCaseRequest = Shapes::StructureShape.new(name: 'CreateCaseRequest')
    CreateCaseResponse = Shapes::StructureShape.new(name: 'CreateCaseResponse')
    Data = Shapes::BlobShape.new(name: 'Data')
    DescribeAttachmentLimitExceeded = Shapes::StructureShape.new(name: 'DescribeAttachmentLimitExceeded')
    DescribeAttachmentRequest = Shapes::StructureShape.new(name: 'DescribeAttachmentRequest')
    DescribeAttachmentResponse = Shapes::StructureShape.new(name: 'DescribeAttachmentResponse')
    DescribeCasesRequest = Shapes::StructureShape.new(name: 'DescribeCasesRequest')
    DescribeCasesResponse = Shapes::StructureShape.new(name: 'DescribeCasesResponse')
    DescribeCommunicationsRequest = Shapes::StructureShape.new(name: 'DescribeCommunicationsRequest')
    DescribeCommunicationsResponse = Shapes::StructureShape.new(name: 'DescribeCommunicationsResponse')
    DescribeServicesRequest = Shapes::StructureShape.new(name: 'DescribeServicesRequest')
    DescribeServicesResponse = Shapes::StructureShape.new(name: 'DescribeServicesResponse')
    DescribeSeverityLevelsRequest = Shapes::StructureShape.new(name: 'DescribeSeverityLevelsRequest')
    DescribeSeverityLevelsResponse = Shapes::StructureShape.new(name: 'DescribeSeverityLevelsResponse')
    DescribeTrustedAdvisorCheckRefreshStatusesRequest = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckRefreshStatusesRequest')
    DescribeTrustedAdvisorCheckRefreshStatusesResponse = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckRefreshStatusesResponse')
    DescribeTrustedAdvisorCheckResultRequest = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckResultRequest')
    DescribeTrustedAdvisorCheckResultResponse = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckResultResponse')
    DescribeTrustedAdvisorCheckSummariesRequest = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckSummariesRequest')
    DescribeTrustedAdvisorCheckSummariesResponse = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorCheckSummariesResponse')
    DescribeTrustedAdvisorChecksRequest = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorChecksRequest')
    DescribeTrustedAdvisorChecksResponse = Shapes::StructureShape.new(name: 'DescribeTrustedAdvisorChecksResponse')
    DisplayId = Shapes::StringShape.new(name: 'DisplayId')
    Double = Shapes::FloatShape.new(name: 'Double')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpiryTime = Shapes::StringShape.new(name: 'ExpiryTime')
    FileName = Shapes::StringShape.new(name: 'FileName')
    IncludeCommunications = Shapes::BooleanShape.new(name: 'IncludeCommunications')
    IncludeResolvedCases = Shapes::BooleanShape.new(name: 'IncludeResolvedCases')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    IssueType = Shapes::StringShape.new(name: 'IssueType')
    Language = Shapes::StringShape.new(name: 'Language')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    RecentCaseCommunications = Shapes::StructureShape.new(name: 'RecentCaseCommunications')
    RefreshTrustedAdvisorCheckRequest = Shapes::StructureShape.new(name: 'RefreshTrustedAdvisorCheckRequest')
    RefreshTrustedAdvisorCheckResponse = Shapes::StructureShape.new(name: 'RefreshTrustedAdvisorCheckResponse')
    ResolveCaseRequest = Shapes::StructureShape.new(name: 'ResolveCaseRequest')
    ResolveCaseResponse = Shapes::StructureShape.new(name: 'ResolveCaseResponse')
    Result = Shapes::BooleanShape.new(name: 'Result')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceCodeList = Shapes::ListShape.new(name: 'ServiceCodeList')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    SeverityCode = Shapes::StringShape.new(name: 'SeverityCode')
    SeverityLevel = Shapes::StructureShape.new(name: 'SeverityLevel')
    SeverityLevelCode = Shapes::StringShape.new(name: 'SeverityLevelCode')
    SeverityLevelName = Shapes::StringShape.new(name: 'SeverityLevelName')
    SeverityLevelsList = Shapes::ListShape.new(name: 'SeverityLevelsList')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subject = Shapes::StringShape.new(name: 'Subject')
    SubmittedBy = Shapes::StringShape.new(name: 'SubmittedBy')
    TimeCreated = Shapes::StringShape.new(name: 'TimeCreated')
    TrustedAdvisorCategorySpecificSummary = Shapes::StructureShape.new(name: 'TrustedAdvisorCategorySpecificSummary')
    TrustedAdvisorCheckDescription = Shapes::StructureShape.new(name: 'TrustedAdvisorCheckDescription')
    TrustedAdvisorCheckList = Shapes::ListShape.new(name: 'TrustedAdvisorCheckList')
    TrustedAdvisorCheckRefreshStatus = Shapes::StructureShape.new(name: 'TrustedAdvisorCheckRefreshStatus')
    TrustedAdvisorCheckRefreshStatusList = Shapes::ListShape.new(name: 'TrustedAdvisorCheckRefreshStatusList')
    TrustedAdvisorCheckResult = Shapes::StructureShape.new(name: 'TrustedAdvisorCheckResult')
    TrustedAdvisorCheckSummary = Shapes::StructureShape.new(name: 'TrustedAdvisorCheckSummary')
    TrustedAdvisorCheckSummaryList = Shapes::ListShape.new(name: 'TrustedAdvisorCheckSummaryList')
    TrustedAdvisorCostOptimizingSummary = Shapes::StructureShape.new(name: 'TrustedAdvisorCostOptimizingSummary')
    TrustedAdvisorResourceDetail = Shapes::StructureShape.new(name: 'TrustedAdvisorResourceDetail')
    TrustedAdvisorResourceDetailList = Shapes::ListShape.new(name: 'TrustedAdvisorResourceDetailList')
    TrustedAdvisorResourcesSummary = Shapes::StructureShape.new(name: 'TrustedAdvisorResourcesSummary')

    AddAttachmentsToSetRequest.add_member(:attachment_set_id, Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: "attachmentSetId"))
    AddAttachmentsToSetRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, required: true, location_name: "attachments"))
    AddAttachmentsToSetRequest.struct_class = Types::AddAttachmentsToSetRequest

    AddAttachmentsToSetResponse.add_member(:attachment_set_id, Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: "attachmentSetId"))
    AddAttachmentsToSetResponse.add_member(:expiry_time, Shapes::ShapeRef.new(shape: ExpiryTime, location_name: "expiryTime"))
    AddAttachmentsToSetResponse.struct_class = Types::AddAttachmentsToSetResponse

    AddCommunicationToCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "caseId"))
    AddCommunicationToCaseRequest.add_member(:communication_body, Shapes::ShapeRef.new(shape: CommunicationBody, required: true, location_name: "communicationBody"))
    AddCommunicationToCaseRequest.add_member(:cc_email_addresses, Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: "ccEmailAddresses"))
    AddCommunicationToCaseRequest.add_member(:attachment_set_id, Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: "attachmentSetId"))
    AddCommunicationToCaseRequest.struct_class = Types::AddCommunicationToCaseRequest

    AddCommunicationToCaseResponse.add_member(:result, Shapes::ShapeRef.new(shape: Result, location_name: "result"))
    AddCommunicationToCaseResponse.struct_class = Types::AddCommunicationToCaseResponse

    Attachment.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "fileName"))
    Attachment.add_member(:data, Shapes::ShapeRef.new(shape: Data, location_name: "data"))
    Attachment.struct_class = Types::Attachment

    AttachmentDetails.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "attachmentId"))
    AttachmentDetails.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "fileName"))
    AttachmentDetails.struct_class = Types::AttachmentDetails

    AttachmentSet.member = Shapes::ShapeRef.new(shape: AttachmentDetails)

    Attachments.member = Shapes::ShapeRef.new(shape: Attachment)

    CaseDetails.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "caseId"))
    CaseDetails.add_member(:display_id, Shapes::ShapeRef.new(shape: DisplayId, location_name: "displayId"))
    CaseDetails.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, location_name: "subject"))
    CaseDetails.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CaseDetails.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    CaseDetails.add_member(:category_code, Shapes::ShapeRef.new(shape: CategoryCode, location_name: "categoryCode"))
    CaseDetails.add_member(:severity_code, Shapes::ShapeRef.new(shape: SeverityCode, location_name: "severityCode"))
    CaseDetails.add_member(:submitted_by, Shapes::ShapeRef.new(shape: SubmittedBy, location_name: "submittedBy"))
    CaseDetails.add_member(:time_created, Shapes::ShapeRef.new(shape: TimeCreated, location_name: "timeCreated"))
    CaseDetails.add_member(:recent_communications, Shapes::ShapeRef.new(shape: RecentCaseCommunications, location_name: "recentCommunications"))
    CaseDetails.add_member(:cc_email_addresses, Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: "ccEmailAddresses"))
    CaseDetails.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    CaseDetails.struct_class = Types::CaseDetails

    CaseIdList.member = Shapes::ShapeRef.new(shape: CaseId)

    CaseList.member = Shapes::ShapeRef.new(shape: CaseDetails)

    Category.add_member(:code, Shapes::ShapeRef.new(shape: CategoryCode, location_name: "code"))
    Category.add_member(:name, Shapes::ShapeRef.new(shape: CategoryName, location_name: "name"))
    Category.struct_class = Types::Category

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    CcEmailAddressList.member = Shapes::ShapeRef.new(shape: CcEmailAddress)

    Communication.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "caseId"))
    Communication.add_member(:body, Shapes::ShapeRef.new(shape: CommunicationBody, location_name: "body"))
    Communication.add_member(:submitted_by, Shapes::ShapeRef.new(shape: SubmittedBy, location_name: "submittedBy"))
    Communication.add_member(:time_created, Shapes::ShapeRef.new(shape: TimeCreated, location_name: "timeCreated"))
    Communication.add_member(:attachment_set, Shapes::ShapeRef.new(shape: AttachmentSet, location_name: "attachmentSet"))
    Communication.struct_class = Types::Communication

    CommunicationList.member = Shapes::ShapeRef.new(shape: Communication)

    CreateCaseRequest.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, required: true, location_name: "subject"))
    CreateCaseRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    CreateCaseRequest.add_member(:severity_code, Shapes::ShapeRef.new(shape: SeverityCode, location_name: "severityCode"))
    CreateCaseRequest.add_member(:category_code, Shapes::ShapeRef.new(shape: CategoryCode, location_name: "categoryCode"))
    CreateCaseRequest.add_member(:communication_body, Shapes::ShapeRef.new(shape: CommunicationBody, required: true, location_name: "communicationBody"))
    CreateCaseRequest.add_member(:cc_email_addresses, Shapes::ShapeRef.new(shape: CcEmailAddressList, location_name: "ccEmailAddresses"))
    CreateCaseRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    CreateCaseRequest.add_member(:issue_type, Shapes::ShapeRef.new(shape: IssueType, location_name: "issueType"))
    CreateCaseRequest.add_member(:attachment_set_id, Shapes::ShapeRef.new(shape: AttachmentSetId, location_name: "attachmentSetId"))
    CreateCaseRequest.struct_class = Types::CreateCaseRequest

    CreateCaseResponse.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "caseId"))
    CreateCaseResponse.struct_class = Types::CreateCaseResponse

    DescribeAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location_name: "attachmentId"))
    DescribeAttachmentRequest.struct_class = Types::DescribeAttachmentRequest

    DescribeAttachmentResponse.add_member(:attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "attachment"))
    DescribeAttachmentResponse.struct_class = Types::DescribeAttachmentResponse

    DescribeCasesRequest.add_member(:case_id_list, Shapes::ShapeRef.new(shape: CaseIdList, location_name: "caseIdList"))
    DescribeCasesRequest.add_member(:display_id, Shapes::ShapeRef.new(shape: DisplayId, location_name: "displayId"))
    DescribeCasesRequest.add_member(:after_time, Shapes::ShapeRef.new(shape: AfterTime, location_name: "afterTime"))
    DescribeCasesRequest.add_member(:before_time, Shapes::ShapeRef.new(shape: BeforeTime, location_name: "beforeTime"))
    DescribeCasesRequest.add_member(:include_resolved_cases, Shapes::ShapeRef.new(shape: IncludeResolvedCases, location_name: "includeResolvedCases"))
    DescribeCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeCasesRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    DescribeCasesRequest.add_member(:include_communications, Shapes::ShapeRef.new(shape: IncludeCommunications, location_name: "includeCommunications"))
    DescribeCasesRequest.struct_class = Types::DescribeCasesRequest

    DescribeCasesResponse.add_member(:cases, Shapes::ShapeRef.new(shape: CaseList, location_name: "cases"))
    DescribeCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeCasesResponse.struct_class = Types::DescribeCasesResponse

    DescribeCommunicationsRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, required: true, location_name: "caseId"))
    DescribeCommunicationsRequest.add_member(:before_time, Shapes::ShapeRef.new(shape: BeforeTime, location_name: "beforeTime"))
    DescribeCommunicationsRequest.add_member(:after_time, Shapes::ShapeRef.new(shape: AfterTime, location_name: "afterTime"))
    DescribeCommunicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeCommunicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeCommunicationsRequest.struct_class = Types::DescribeCommunicationsRequest

    DescribeCommunicationsResponse.add_member(:communications, Shapes::ShapeRef.new(shape: CommunicationList, location_name: "communications"))
    DescribeCommunicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeCommunicationsResponse.struct_class = Types::DescribeCommunicationsResponse

    DescribeServicesRequest.add_member(:service_code_list, Shapes::ShapeRef.new(shape: ServiceCodeList, location_name: "serviceCodeList"))
    DescribeServicesRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    DescribeServicesRequest.struct_class = Types::DescribeServicesRequest

    DescribeServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "services"))
    DescribeServicesResponse.struct_class = Types::DescribeServicesResponse

    DescribeSeverityLevelsRequest.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "language"))
    DescribeSeverityLevelsRequest.struct_class = Types::DescribeSeverityLevelsRequest

    DescribeSeverityLevelsResponse.add_member(:severity_levels, Shapes::ShapeRef.new(shape: SeverityLevelsList, location_name: "severityLevels"))
    DescribeSeverityLevelsResponse.struct_class = Types::DescribeSeverityLevelsResponse

    DescribeTrustedAdvisorCheckRefreshStatusesRequest.add_member(:check_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "checkIds"))
    DescribeTrustedAdvisorCheckRefreshStatusesRequest.struct_class = Types::DescribeTrustedAdvisorCheckRefreshStatusesRequest

    DescribeTrustedAdvisorCheckRefreshStatusesResponse.add_member(:statuses, Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatusList, required: true, location_name: "statuses"))
    DescribeTrustedAdvisorCheckRefreshStatusesResponse.struct_class = Types::DescribeTrustedAdvisorCheckRefreshStatusesResponse

    DescribeTrustedAdvisorCheckResultRequest.add_member(:check_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checkId"))
    DescribeTrustedAdvisorCheckResultRequest.add_member(:language, Shapes::ShapeRef.new(shape: String, location_name: "language"))
    DescribeTrustedAdvisorCheckResultRequest.struct_class = Types::DescribeTrustedAdvisorCheckResultRequest

    DescribeTrustedAdvisorCheckResultResponse.add_member(:result, Shapes::ShapeRef.new(shape: TrustedAdvisorCheckResult, location_name: "result"))
    DescribeTrustedAdvisorCheckResultResponse.struct_class = Types::DescribeTrustedAdvisorCheckResultResponse

    DescribeTrustedAdvisorCheckSummariesRequest.add_member(:check_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "checkIds"))
    DescribeTrustedAdvisorCheckSummariesRequest.struct_class = Types::DescribeTrustedAdvisorCheckSummariesRequest

    DescribeTrustedAdvisorCheckSummariesResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummaryList, required: true, location_name: "summaries"))
    DescribeTrustedAdvisorCheckSummariesResponse.struct_class = Types::DescribeTrustedAdvisorCheckSummariesResponse

    DescribeTrustedAdvisorChecksRequest.add_member(:language, Shapes::ShapeRef.new(shape: String, required: true, location_name: "language"))
    DescribeTrustedAdvisorChecksRequest.struct_class = Types::DescribeTrustedAdvisorChecksRequest

    DescribeTrustedAdvisorChecksResponse.add_member(:checks, Shapes::ShapeRef.new(shape: TrustedAdvisorCheckList, required: true, location_name: "checks"))
    DescribeTrustedAdvisorChecksResponse.struct_class = Types::DescribeTrustedAdvisorChecksResponse

    RecentCaseCommunications.add_member(:communications, Shapes::ShapeRef.new(shape: CommunicationList, location_name: "communications"))
    RecentCaseCommunications.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    RecentCaseCommunications.struct_class = Types::RecentCaseCommunications

    RefreshTrustedAdvisorCheckRequest.add_member(:check_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checkId"))
    RefreshTrustedAdvisorCheckRequest.struct_class = Types::RefreshTrustedAdvisorCheckRequest

    RefreshTrustedAdvisorCheckResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus, required: true, location_name: "status"))
    RefreshTrustedAdvisorCheckResponse.struct_class = Types::RefreshTrustedAdvisorCheckResponse

    ResolveCaseRequest.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "caseId"))
    ResolveCaseRequest.struct_class = Types::ResolveCaseRequest

    ResolveCaseResponse.add_member(:initial_case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "initialCaseStatus"))
    ResolveCaseResponse.add_member(:final_case_status, Shapes::ShapeRef.new(shape: CaseStatus, location_name: "finalCaseStatus"))
    ResolveCaseResponse.struct_class = Types::ResolveCaseResponse

    Service.add_member(:code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "code"))
    Service.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    Service.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "categories"))
    Service.struct_class = Types::Service

    ServiceCodeList.member = Shapes::ShapeRef.new(shape: ServiceCode)

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)

    SeverityLevel.add_member(:code, Shapes::ShapeRef.new(shape: SeverityLevelCode, location_name: "code"))
    SeverityLevel.add_member(:name, Shapes::ShapeRef.new(shape: SeverityLevelName, location_name: "name"))
    SeverityLevel.struct_class = Types::SeverityLevel

    SeverityLevelsList.member = Shapes::ShapeRef.new(shape: SeverityLevel)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TrustedAdvisorCategorySpecificSummary.add_member(:cost_optimizing, Shapes::ShapeRef.new(shape: TrustedAdvisorCostOptimizingSummary, location_name: "costOptimizing"))
    TrustedAdvisorCategorySpecificSummary.struct_class = Types::TrustedAdvisorCategorySpecificSummary

    TrustedAdvisorCheckDescription.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    TrustedAdvisorCheckDescription.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    TrustedAdvisorCheckDescription.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    TrustedAdvisorCheckDescription.add_member(:category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "category"))
    TrustedAdvisorCheckDescription.add_member(:metadata, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "metadata"))
    TrustedAdvisorCheckDescription.struct_class = Types::TrustedAdvisorCheckDescription

    TrustedAdvisorCheckList.member = Shapes::ShapeRef.new(shape: TrustedAdvisorCheckDescription)

    TrustedAdvisorCheckRefreshStatus.add_member(:check_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checkId"))
    TrustedAdvisorCheckRefreshStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    TrustedAdvisorCheckRefreshStatus.add_member(:millis_until_next_refreshable, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "millisUntilNextRefreshable"))
    TrustedAdvisorCheckRefreshStatus.struct_class = Types::TrustedAdvisorCheckRefreshStatus

    TrustedAdvisorCheckRefreshStatusList.member = Shapes::ShapeRef.new(shape: TrustedAdvisorCheckRefreshStatus)

    TrustedAdvisorCheckResult.add_member(:check_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checkId"))
    TrustedAdvisorCheckResult.add_member(:timestamp, Shapes::ShapeRef.new(shape: String, required: true, location_name: "timestamp"))
    TrustedAdvisorCheckResult.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    TrustedAdvisorCheckResult.add_member(:resources_summary, Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, required: true, location_name: "resourcesSummary"))
    TrustedAdvisorCheckResult.add_member(:category_specific_summary, Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, required: true, location_name: "categorySpecificSummary"))
    TrustedAdvisorCheckResult.add_member(:flagged_resources, Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetailList, required: true, location_name: "flaggedResources"))
    TrustedAdvisorCheckResult.struct_class = Types::TrustedAdvisorCheckResult

    TrustedAdvisorCheckSummary.add_member(:check_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checkId"))
    TrustedAdvisorCheckSummary.add_member(:timestamp, Shapes::ShapeRef.new(shape: String, required: true, location_name: "timestamp"))
    TrustedAdvisorCheckSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    TrustedAdvisorCheckSummary.add_member(:has_flagged_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasFlaggedResources"))
    TrustedAdvisorCheckSummary.add_member(:resources_summary, Shapes::ShapeRef.new(shape: TrustedAdvisorResourcesSummary, required: true, location_name: "resourcesSummary"))
    TrustedAdvisorCheckSummary.add_member(:category_specific_summary, Shapes::ShapeRef.new(shape: TrustedAdvisorCategorySpecificSummary, required: true, location_name: "categorySpecificSummary"))
    TrustedAdvisorCheckSummary.struct_class = Types::TrustedAdvisorCheckSummary

    TrustedAdvisorCheckSummaryList.member = Shapes::ShapeRef.new(shape: TrustedAdvisorCheckSummary)

    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "estimatedMonthlySavings"))
    TrustedAdvisorCostOptimizingSummary.add_member(:estimated_percent_monthly_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "estimatedPercentMonthlySavings"))
    TrustedAdvisorCostOptimizingSummary.struct_class = Types::TrustedAdvisorCostOptimizingSummary

    TrustedAdvisorResourceDetail.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    TrustedAdvisorResourceDetail.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    TrustedAdvisorResourceDetail.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    TrustedAdvisorResourceDetail.add_member(:is_suppressed, Shapes::ShapeRef.new(shape: Boolean, location_name: "isSuppressed"))
    TrustedAdvisorResourceDetail.add_member(:metadata, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "metadata"))
    TrustedAdvisorResourceDetail.struct_class = Types::TrustedAdvisorResourceDetail

    TrustedAdvisorResourceDetailList.member = Shapes::ShapeRef.new(shape: TrustedAdvisorResourceDetail)

    TrustedAdvisorResourcesSummary.add_member(:resources_processed, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "resourcesProcessed"))
    TrustedAdvisorResourcesSummary.add_member(:resources_flagged, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "resourcesFlagged"))
    TrustedAdvisorResourcesSummary.add_member(:resources_ignored, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "resourcesIgnored"))
    TrustedAdvisorResourcesSummary.add_member(:resources_suppressed, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "resourcesSuppressed"))
    TrustedAdvisorResourcesSummary.struct_class = Types::TrustedAdvisorResourcesSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-04-15"

      api.metadata = {
        "apiVersion" => "2013-04-15",
        "endpointPrefix" => "support",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Support",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSSupport_20130415",
        "uid" => "support-2013-04-15",
      }

      api.add_operation(:add_attachments_to_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddAttachmentsToSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddAttachmentsToSetRequest)
        o.output = Shapes::ShapeRef.new(shape: AddAttachmentsToSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetExpired)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetSizeLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentLimitExceeded)
      end)

      api.add_operation(:add_communication_to_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddCommunicationToCase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddCommunicationToCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: AddCommunicationToCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: CaseIdNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetExpired)
      end)

      api.add_operation(:create_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: CaseCreationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetIdNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentSetExpired)
      end)

      api.add_operation(:describe_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DescribeAttachmentLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentIdNotFound)
      end)

      api.add_operation(:describe_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: CaseIdNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_communications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCommunications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCommunicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCommunicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: CaseIdNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_severity_levels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSeverityLevels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSeverityLevelsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSeverityLevelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_trusted_advisor_check_refresh_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustedAdvisorCheckRefreshStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckRefreshStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_trusted_advisor_check_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustedAdvisorCheckResult"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_trusted_advisor_check_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustedAdvisorCheckSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorCheckSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_trusted_advisor_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrustedAdvisorChecks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrustedAdvisorChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:refresh_trusted_advisor_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshTrustedAdvisorCheck"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: RefreshTrustedAdvisorCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:resolve_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveCase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResolveCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: ResolveCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: CaseIdNotFound)
      end)
    end

  end
end
