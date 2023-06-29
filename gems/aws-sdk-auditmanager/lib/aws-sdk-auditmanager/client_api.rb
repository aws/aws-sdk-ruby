# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AuditManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccount = Shapes::StructureShape.new(name: 'AWSAccount')
    AWSAccounts = Shapes::ListShape.new(name: 'AWSAccounts')
    AWSService = Shapes::StructureShape.new(name: 'AWSService')
    AWSServiceName = Shapes::StringShape.new(name: 'AWSServiceName')
    AWSServices = Shapes::ListShape.new(name: 'AWSServices')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountStatus = Shapes::StringShape.new(name: 'AccountStatus')
    ActionEnum = Shapes::StringShape.new(name: 'ActionEnum')
    ActionPlanInstructions = Shapes::StringShape.new(name: 'ActionPlanInstructions')
    ActionPlanTitle = Shapes::StringShape.new(name: 'ActionPlanTitle')
    Assessment = Shapes::StructureShape.new(name: 'Assessment')
    AssessmentControl = Shapes::StructureShape.new(name: 'AssessmentControl')
    AssessmentControlSet = Shapes::StructureShape.new(name: 'AssessmentControlSet')
    AssessmentControlSets = Shapes::ListShape.new(name: 'AssessmentControlSets')
    AssessmentControls = Shapes::ListShape.new(name: 'AssessmentControls')
    AssessmentDescription = Shapes::StringShape.new(name: 'AssessmentDescription')
    AssessmentEvidenceFolder = Shapes::StructureShape.new(name: 'AssessmentEvidenceFolder')
    AssessmentEvidenceFolderName = Shapes::StringShape.new(name: 'AssessmentEvidenceFolderName')
    AssessmentEvidenceFolders = Shapes::ListShape.new(name: 'AssessmentEvidenceFolders')
    AssessmentFramework = Shapes::StructureShape.new(name: 'AssessmentFramework')
    AssessmentFrameworkDescription = Shapes::StringShape.new(name: 'AssessmentFrameworkDescription')
    AssessmentFrameworkMetadata = Shapes::StructureShape.new(name: 'AssessmentFrameworkMetadata')
    AssessmentFrameworkShareRequest = Shapes::StructureShape.new(name: 'AssessmentFrameworkShareRequest')
    AssessmentFrameworkShareRequestList = Shapes::ListShape.new(name: 'AssessmentFrameworkShareRequestList')
    AssessmentMetadata = Shapes::StructureShape.new(name: 'AssessmentMetadata')
    AssessmentMetadataItem = Shapes::StructureShape.new(name: 'AssessmentMetadataItem')
    AssessmentName = Shapes::StringShape.new(name: 'AssessmentName')
    AssessmentReport = Shapes::StructureShape.new(name: 'AssessmentReport')
    AssessmentReportDescription = Shapes::StringShape.new(name: 'AssessmentReportDescription')
    AssessmentReportDestinationType = Shapes::StringShape.new(name: 'AssessmentReportDestinationType')
    AssessmentReportEvidenceError = Shapes::StructureShape.new(name: 'AssessmentReportEvidenceError')
    AssessmentReportEvidenceErrors = Shapes::ListShape.new(name: 'AssessmentReportEvidenceErrors')
    AssessmentReportMetadata = Shapes::StructureShape.new(name: 'AssessmentReportMetadata')
    AssessmentReportName = Shapes::StringShape.new(name: 'AssessmentReportName')
    AssessmentReportStatus = Shapes::StringShape.new(name: 'AssessmentReportStatus')
    AssessmentReportsDestination = Shapes::StructureShape.new(name: 'AssessmentReportsDestination')
    AssessmentReportsMetadata = Shapes::ListShape.new(name: 'AssessmentReportsMetadata')
    AssessmentStatus = Shapes::StringShape.new(name: 'AssessmentStatus')
    AssociateAssessmentReportEvidenceFolderRequest = Shapes::StructureShape.new(name: 'AssociateAssessmentReportEvidenceFolderRequest')
    AssociateAssessmentReportEvidenceFolderResponse = Shapes::StructureShape.new(name: 'AssociateAssessmentReportEvidenceFolderResponse')
    AuditManagerArn = Shapes::StringShape.new(name: 'AuditManagerArn')
    BatchAssociateAssessmentReportEvidenceRequest = Shapes::StructureShape.new(name: 'BatchAssociateAssessmentReportEvidenceRequest')
    BatchAssociateAssessmentReportEvidenceResponse = Shapes::StructureShape.new(name: 'BatchAssociateAssessmentReportEvidenceResponse')
    BatchCreateDelegationByAssessmentError = Shapes::StructureShape.new(name: 'BatchCreateDelegationByAssessmentError')
    BatchCreateDelegationByAssessmentErrors = Shapes::ListShape.new(name: 'BatchCreateDelegationByAssessmentErrors')
    BatchCreateDelegationByAssessmentRequest = Shapes::StructureShape.new(name: 'BatchCreateDelegationByAssessmentRequest')
    BatchCreateDelegationByAssessmentResponse = Shapes::StructureShape.new(name: 'BatchCreateDelegationByAssessmentResponse')
    BatchDeleteDelegationByAssessmentError = Shapes::StructureShape.new(name: 'BatchDeleteDelegationByAssessmentError')
    BatchDeleteDelegationByAssessmentErrors = Shapes::ListShape.new(name: 'BatchDeleteDelegationByAssessmentErrors')
    BatchDeleteDelegationByAssessmentRequest = Shapes::StructureShape.new(name: 'BatchDeleteDelegationByAssessmentRequest')
    BatchDeleteDelegationByAssessmentResponse = Shapes::StructureShape.new(name: 'BatchDeleteDelegationByAssessmentResponse')
    BatchDisassociateAssessmentReportEvidenceRequest = Shapes::StructureShape.new(name: 'BatchDisassociateAssessmentReportEvidenceRequest')
    BatchDisassociateAssessmentReportEvidenceResponse = Shapes::StructureShape.new(name: 'BatchDisassociateAssessmentReportEvidenceResponse')
    BatchImportEvidenceToAssessmentControlError = Shapes::StructureShape.new(name: 'BatchImportEvidenceToAssessmentControlError')
    BatchImportEvidenceToAssessmentControlErrors = Shapes::ListShape.new(name: 'BatchImportEvidenceToAssessmentControlErrors')
    BatchImportEvidenceToAssessmentControlRequest = Shapes::StructureShape.new(name: 'BatchImportEvidenceToAssessmentControlRequest')
    BatchImportEvidenceToAssessmentControlResponse = Shapes::StructureShape.new(name: 'BatchImportEvidenceToAssessmentControlResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeLog = Shapes::StructureShape.new(name: 'ChangeLog')
    ChangeLogs = Shapes::ListShape.new(name: 'ChangeLogs')
    CloudTrailArn = Shapes::StringShape.new(name: 'CloudTrailArn')
    ComplianceType = Shapes::StringShape.new(name: 'ComplianceType')
    Control = Shapes::StructureShape.new(name: 'Control')
    ControlComment = Shapes::StructureShape.new(name: 'ControlComment')
    ControlCommentBody = Shapes::StringShape.new(name: 'ControlCommentBody')
    ControlComments = Shapes::ListShape.new(name: 'ControlComments')
    ControlDescription = Shapes::StringShape.new(name: 'ControlDescription')
    ControlDomainInsights = Shapes::StructureShape.new(name: 'ControlDomainInsights')
    ControlDomainInsightsList = Shapes::ListShape.new(name: 'ControlDomainInsightsList')
    ControlInsightsMetadata = Shapes::ListShape.new(name: 'ControlInsightsMetadata')
    ControlInsightsMetadataByAssessment = Shapes::ListShape.new(name: 'ControlInsightsMetadataByAssessment')
    ControlInsightsMetadataByAssessmentItem = Shapes::StructureShape.new(name: 'ControlInsightsMetadataByAssessmentItem')
    ControlInsightsMetadataItem = Shapes::StructureShape.new(name: 'ControlInsightsMetadataItem')
    ControlMappingSource = Shapes::StructureShape.new(name: 'ControlMappingSource')
    ControlMappingSources = Shapes::ListShape.new(name: 'ControlMappingSources')
    ControlMetadata = Shapes::StructureShape.new(name: 'ControlMetadata')
    ControlMetadataList = Shapes::ListShape.new(name: 'ControlMetadataList')
    ControlName = Shapes::StringShape.new(name: 'ControlName')
    ControlResponse = Shapes::StringShape.new(name: 'ControlResponse')
    ControlSet = Shapes::StructureShape.new(name: 'ControlSet')
    ControlSetId = Shapes::StringShape.new(name: 'ControlSetId')
    ControlSetName = Shapes::StringShape.new(name: 'ControlSetName')
    ControlSetStatus = Shapes::StringShape.new(name: 'ControlSetStatus')
    ControlSets = Shapes::ListShape.new(name: 'ControlSets')
    ControlSetsCount = Shapes::IntegerShape.new(name: 'ControlSetsCount')
    ControlSources = Shapes::StringShape.new(name: 'ControlSources')
    ControlStatus = Shapes::StringShape.new(name: 'ControlStatus')
    ControlType = Shapes::StringShape.new(name: 'ControlType')
    Controls = Shapes::ListShape.new(name: 'Controls')
    ControlsCount = Shapes::IntegerShape.new(name: 'ControlsCount')
    CreateAssessmentFrameworkControl = Shapes::StructureShape.new(name: 'CreateAssessmentFrameworkControl')
    CreateAssessmentFrameworkControlSet = Shapes::StructureShape.new(name: 'CreateAssessmentFrameworkControlSet')
    CreateAssessmentFrameworkControlSets = Shapes::ListShape.new(name: 'CreateAssessmentFrameworkControlSets')
    CreateAssessmentFrameworkControls = Shapes::ListShape.new(name: 'CreateAssessmentFrameworkControls')
    CreateAssessmentFrameworkRequest = Shapes::StructureShape.new(name: 'CreateAssessmentFrameworkRequest')
    CreateAssessmentFrameworkResponse = Shapes::StructureShape.new(name: 'CreateAssessmentFrameworkResponse')
    CreateAssessmentReportRequest = Shapes::StructureShape.new(name: 'CreateAssessmentReportRequest')
    CreateAssessmentReportResponse = Shapes::StructureShape.new(name: 'CreateAssessmentReportResponse')
    CreateAssessmentRequest = Shapes::StructureShape.new(name: 'CreateAssessmentRequest')
    CreateAssessmentResponse = Shapes::StructureShape.new(name: 'CreateAssessmentResponse')
    CreateControlMappingSource = Shapes::StructureShape.new(name: 'CreateControlMappingSource')
    CreateControlMappingSources = Shapes::ListShape.new(name: 'CreateControlMappingSources')
    CreateControlRequest = Shapes::StructureShape.new(name: 'CreateControlRequest')
    CreateControlResponse = Shapes::StructureShape.new(name: 'CreateControlResponse')
    CreateDelegationRequest = Shapes::StructureShape.new(name: 'CreateDelegationRequest')
    CreateDelegationRequests = Shapes::ListShape.new(name: 'CreateDelegationRequests')
    CreatedBy = Shapes::StringShape.new(name: 'CreatedBy')
    DefaultExportDestination = Shapes::StructureShape.new(name: 'DefaultExportDestination')
    Delegation = Shapes::StructureShape.new(name: 'Delegation')
    DelegationComment = Shapes::StringShape.new(name: 'DelegationComment')
    DelegationIds = Shapes::ListShape.new(name: 'DelegationIds')
    DelegationMetadata = Shapes::StructureShape.new(name: 'DelegationMetadata')
    DelegationMetadataList = Shapes::ListShape.new(name: 'DelegationMetadataList')
    DelegationStatus = Shapes::StringShape.new(name: 'DelegationStatus')
    Delegations = Shapes::ListShape.new(name: 'Delegations')
    DeleteAssessmentFrameworkRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentFrameworkRequest')
    DeleteAssessmentFrameworkResponse = Shapes::StructureShape.new(name: 'DeleteAssessmentFrameworkResponse')
    DeleteAssessmentFrameworkShareRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentFrameworkShareRequest')
    DeleteAssessmentFrameworkShareResponse = Shapes::StructureShape.new(name: 'DeleteAssessmentFrameworkShareResponse')
    DeleteAssessmentReportRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentReportRequest')
    DeleteAssessmentReportResponse = Shapes::StructureShape.new(name: 'DeleteAssessmentReportResponse')
    DeleteAssessmentRequest = Shapes::StructureShape.new(name: 'DeleteAssessmentRequest')
    DeleteAssessmentResponse = Shapes::StructureShape.new(name: 'DeleteAssessmentResponse')
    DeleteControlRequest = Shapes::StructureShape.new(name: 'DeleteControlRequest')
    DeleteControlResponse = Shapes::StructureShape.new(name: 'DeleteControlResponse')
    DeleteResources = Shapes::StringShape.new(name: 'DeleteResources')
    DeregisterAccountRequest = Shapes::StructureShape.new(name: 'DeregisterAccountRequest')
    DeregisterAccountResponse = Shapes::StructureShape.new(name: 'DeregisterAccountResponse')
    DeregisterOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'DeregisterOrganizationAdminAccountRequest')
    DeregisterOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'DeregisterOrganizationAdminAccountResponse')
    DeregistrationPolicy = Shapes::StructureShape.new(name: 'DeregistrationPolicy')
    DisassociateAssessmentReportEvidenceFolderRequest = Shapes::StructureShape.new(name: 'DisassociateAssessmentReportEvidenceFolderRequest')
    DisassociateAssessmentReportEvidenceFolderResponse = Shapes::StructureShape.new(name: 'DisassociateAssessmentReportEvidenceFolderResponse')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventName = Shapes::StringShape.new(name: 'EventName')
    Evidence = Shapes::StructureShape.new(name: 'Evidence')
    EvidenceAttributeKey = Shapes::StringShape.new(name: 'EvidenceAttributeKey')
    EvidenceAttributeValue = Shapes::StringShape.new(name: 'EvidenceAttributeValue')
    EvidenceAttributes = Shapes::MapShape.new(name: 'EvidenceAttributes')
    EvidenceFinderBackfillStatus = Shapes::StringShape.new(name: 'EvidenceFinderBackfillStatus')
    EvidenceFinderEnablement = Shapes::StructureShape.new(name: 'EvidenceFinderEnablement')
    EvidenceFinderEnablementStatus = Shapes::StringShape.new(name: 'EvidenceFinderEnablementStatus')
    EvidenceIds = Shapes::ListShape.new(name: 'EvidenceIds')
    EvidenceInsights = Shapes::StructureShape.new(name: 'EvidenceInsights')
    EvidenceList = Shapes::ListShape.new(name: 'EvidenceList')
    EvidenceSources = Shapes::ListShape.new(name: 'EvidenceSources')
    ExportDestinationType = Shapes::StringShape.new(name: 'ExportDestinationType')
    Filename = Shapes::StringShape.new(name: 'Filename')
    Framework = Shapes::StructureShape.new(name: 'Framework')
    FrameworkDescription = Shapes::StringShape.new(name: 'FrameworkDescription')
    FrameworkMetadata = Shapes::StructureShape.new(name: 'FrameworkMetadata')
    FrameworkMetadataList = Shapes::ListShape.new(name: 'FrameworkMetadataList')
    FrameworkName = Shapes::StringShape.new(name: 'FrameworkName')
    FrameworkType = Shapes::StringShape.new(name: 'FrameworkType')
    GenericArn = Shapes::StringShape.new(name: 'GenericArn')
    GetAccountStatusRequest = Shapes::StructureShape.new(name: 'GetAccountStatusRequest')
    GetAccountStatusResponse = Shapes::StructureShape.new(name: 'GetAccountStatusResponse')
    GetAssessmentFrameworkRequest = Shapes::StructureShape.new(name: 'GetAssessmentFrameworkRequest')
    GetAssessmentFrameworkResponse = Shapes::StructureShape.new(name: 'GetAssessmentFrameworkResponse')
    GetAssessmentReportUrlRequest = Shapes::StructureShape.new(name: 'GetAssessmentReportUrlRequest')
    GetAssessmentReportUrlResponse = Shapes::StructureShape.new(name: 'GetAssessmentReportUrlResponse')
    GetAssessmentRequest = Shapes::StructureShape.new(name: 'GetAssessmentRequest')
    GetAssessmentResponse = Shapes::StructureShape.new(name: 'GetAssessmentResponse')
    GetChangeLogsRequest = Shapes::StructureShape.new(name: 'GetChangeLogsRequest')
    GetChangeLogsResponse = Shapes::StructureShape.new(name: 'GetChangeLogsResponse')
    GetControlRequest = Shapes::StructureShape.new(name: 'GetControlRequest')
    GetControlResponse = Shapes::StructureShape.new(name: 'GetControlResponse')
    GetDelegationsRequest = Shapes::StructureShape.new(name: 'GetDelegationsRequest')
    GetDelegationsResponse = Shapes::StructureShape.new(name: 'GetDelegationsResponse')
    GetEvidenceByEvidenceFolderRequest = Shapes::StructureShape.new(name: 'GetEvidenceByEvidenceFolderRequest')
    GetEvidenceByEvidenceFolderResponse = Shapes::StructureShape.new(name: 'GetEvidenceByEvidenceFolderResponse')
    GetEvidenceFileUploadUrlRequest = Shapes::StructureShape.new(name: 'GetEvidenceFileUploadUrlRequest')
    GetEvidenceFileUploadUrlResponse = Shapes::StructureShape.new(name: 'GetEvidenceFileUploadUrlResponse')
    GetEvidenceFolderRequest = Shapes::StructureShape.new(name: 'GetEvidenceFolderRequest')
    GetEvidenceFolderResponse = Shapes::StructureShape.new(name: 'GetEvidenceFolderResponse')
    GetEvidenceFoldersByAssessmentControlRequest = Shapes::StructureShape.new(name: 'GetEvidenceFoldersByAssessmentControlRequest')
    GetEvidenceFoldersByAssessmentControlResponse = Shapes::StructureShape.new(name: 'GetEvidenceFoldersByAssessmentControlResponse')
    GetEvidenceFoldersByAssessmentRequest = Shapes::StructureShape.new(name: 'GetEvidenceFoldersByAssessmentRequest')
    GetEvidenceFoldersByAssessmentResponse = Shapes::StructureShape.new(name: 'GetEvidenceFoldersByAssessmentResponse')
    GetEvidenceRequest = Shapes::StructureShape.new(name: 'GetEvidenceRequest')
    GetEvidenceResponse = Shapes::StructureShape.new(name: 'GetEvidenceResponse')
    GetInsightsByAssessmentRequest = Shapes::StructureShape.new(name: 'GetInsightsByAssessmentRequest')
    GetInsightsByAssessmentResponse = Shapes::StructureShape.new(name: 'GetInsightsByAssessmentResponse')
    GetInsightsRequest = Shapes::StructureShape.new(name: 'GetInsightsRequest')
    GetInsightsResponse = Shapes::StructureShape.new(name: 'GetInsightsResponse')
    GetOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'GetOrganizationAdminAccountRequest')
    GetOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'GetOrganizationAdminAccountResponse')
    GetServicesInScopeRequest = Shapes::StructureShape.new(name: 'GetServicesInScopeRequest')
    GetServicesInScopeResponse = Shapes::StructureShape.new(name: 'GetServicesInScopeResponse')
    GetSettingsRequest = Shapes::StructureShape.new(name: 'GetSettingsRequest')
    GetSettingsResponse = Shapes::StructureShape.new(name: 'GetSettingsResponse')
    HyperlinkName = Shapes::StringShape.new(name: 'HyperlinkName')
    IamArn = Shapes::StringShape.new(name: 'IamArn')
    Insights = Shapes::StructureShape.new(name: 'Insights')
    InsightsByAssessment = Shapes::StructureShape.new(name: 'InsightsByAssessment')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeywordInputType = Shapes::StringShape.new(name: 'KeywordInputType')
    KeywordValue = Shapes::StringShape.new(name: 'KeywordValue')
    Keywords = Shapes::ListShape.new(name: 'Keywords')
    KmsKey = Shapes::StringShape.new(name: 'KmsKey')
    LastUpdatedBy = Shapes::StringShape.new(name: 'LastUpdatedBy')
    ListAssessmentControlInsightsByControlDomainRequest = Shapes::StructureShape.new(name: 'ListAssessmentControlInsightsByControlDomainRequest')
    ListAssessmentControlInsightsByControlDomainResponse = Shapes::StructureShape.new(name: 'ListAssessmentControlInsightsByControlDomainResponse')
    ListAssessmentFrameworkShareRequestsRequest = Shapes::StructureShape.new(name: 'ListAssessmentFrameworkShareRequestsRequest')
    ListAssessmentFrameworkShareRequestsResponse = Shapes::StructureShape.new(name: 'ListAssessmentFrameworkShareRequestsResponse')
    ListAssessmentFrameworksRequest = Shapes::StructureShape.new(name: 'ListAssessmentFrameworksRequest')
    ListAssessmentFrameworksResponse = Shapes::StructureShape.new(name: 'ListAssessmentFrameworksResponse')
    ListAssessmentMetadata = Shapes::ListShape.new(name: 'ListAssessmentMetadata')
    ListAssessmentReportsRequest = Shapes::StructureShape.new(name: 'ListAssessmentReportsRequest')
    ListAssessmentReportsResponse = Shapes::StructureShape.new(name: 'ListAssessmentReportsResponse')
    ListAssessmentsRequest = Shapes::StructureShape.new(name: 'ListAssessmentsRequest')
    ListAssessmentsResponse = Shapes::StructureShape.new(name: 'ListAssessmentsResponse')
    ListControlDomainInsightsByAssessmentRequest = Shapes::StructureShape.new(name: 'ListControlDomainInsightsByAssessmentRequest')
    ListControlDomainInsightsByAssessmentResponse = Shapes::StructureShape.new(name: 'ListControlDomainInsightsByAssessmentResponse')
    ListControlDomainInsightsRequest = Shapes::StructureShape.new(name: 'ListControlDomainInsightsRequest')
    ListControlDomainInsightsResponse = Shapes::StructureShape.new(name: 'ListControlDomainInsightsResponse')
    ListControlInsightsByControlDomainRequest = Shapes::StructureShape.new(name: 'ListControlInsightsByControlDomainRequest')
    ListControlInsightsByControlDomainResponse = Shapes::StructureShape.new(name: 'ListControlInsightsByControlDomainResponse')
    ListControlsRequest = Shapes::StructureShape.new(name: 'ListControlsRequest')
    ListControlsResponse = Shapes::StructureShape.new(name: 'ListControlsResponse')
    ListKeywordsForDataSourceRequest = Shapes::StructureShape.new(name: 'ListKeywordsForDataSourceRequest')
    ListKeywordsForDataSourceResponse = Shapes::StructureShape.new(name: 'ListKeywordsForDataSourceResponse')
    ListNotificationsRequest = Shapes::StructureShape.new(name: 'ListNotificationsRequest')
    ListNotificationsResponse = Shapes::StructureShape.new(name: 'ListNotificationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManualEvidence = Shapes::StructureShape.new(name: 'ManualEvidence')
    ManualEvidenceList = Shapes::ListShape.new(name: 'ManualEvidenceList')
    ManualEvidenceLocalFileName = Shapes::StringShape.new(name: 'ManualEvidenceLocalFileName')
    ManualEvidenceTextResponse = Shapes::StringShape.new(name: 'ManualEvidenceTextResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    Notification = Shapes::StructureShape.new(name: 'Notification')
    Notifications = Shapes::ListShape.new(name: 'Notifications')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    ObjectTypeEnum = Shapes::StringShape.new(name: 'ObjectTypeEnum')
    QueryStatement = Shapes::StringShape.new(name: 'QueryStatement')
    Region = Shapes::StringShape.new(name: 'Region')
    RegisterAccountRequest = Shapes::StructureShape.new(name: 'RegisterAccountRequest')
    RegisterAccountResponse = Shapes::StructureShape.new(name: 'RegisterAccountResponse')
    RegisterOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'RegisterOrganizationAdminAccountRequest')
    RegisterOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'RegisterOrganizationAdminAccountResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Resources = Shapes::ListShape.new(name: 'Resources')
    Role = Shapes::StructureShape.new(name: 'Role')
    RoleType = Shapes::StringShape.new(name: 'RoleType')
    Roles = Shapes::ListShape.new(name: 'Roles')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    SNSTopic = Shapes::StringShape.new(name: 'SNSTopic')
    Scope = Shapes::StructureShape.new(name: 'Scope')
    ServiceMetadata = Shapes::StructureShape.new(name: 'ServiceMetadata')
    ServiceMetadataList = Shapes::ListShape.new(name: 'ServiceMetadataList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SettingAttribute = Shapes::StringShape.new(name: 'SettingAttribute')
    Settings = Shapes::StructureShape.new(name: 'Settings')
    ShareRequestAction = Shapes::StringShape.new(name: 'ShareRequestAction')
    ShareRequestComment = Shapes::StringShape.new(name: 'ShareRequestComment')
    ShareRequestStatus = Shapes::StringShape.new(name: 'ShareRequestStatus')
    ShareRequestType = Shapes::StringShape.new(name: 'ShareRequestType')
    SnsArn = Shapes::StringShape.new(name: 'SnsArn')
    SourceDescription = Shapes::StringShape.new(name: 'SourceDescription')
    SourceFrequency = Shapes::StringShape.new(name: 'SourceFrequency')
    SourceKeyword = Shapes::StructureShape.new(name: 'SourceKeyword')
    SourceName = Shapes::StringShape.new(name: 'SourceName')
    SourceSetUpOption = Shapes::StringShape.new(name: 'SourceSetUpOption')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartAssessmentFrameworkShareRequest = Shapes::StructureShape.new(name: 'StartAssessmentFrameworkShareRequest')
    StartAssessmentFrameworkShareResponse = Shapes::StructureShape.new(name: 'StartAssessmentFrameworkShareResponse')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TestingInformation = Shapes::StringShape.new(name: 'TestingInformation')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampUUID = Shapes::StringShape.new(name: 'TimestampUUID')
    Token = Shapes::StringShape.new(name: 'Token')
    TroubleshootingText = Shapes::StringShape.new(name: 'TroubleshootingText')
    URL = Shapes::StructureShape.new(name: 'URL')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAssessmentControlRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentControlRequest')
    UpdateAssessmentControlResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentControlResponse')
    UpdateAssessmentControlSetStatusRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentControlSetStatusRequest')
    UpdateAssessmentControlSetStatusResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentControlSetStatusResponse')
    UpdateAssessmentFrameworkControlSet = Shapes::StructureShape.new(name: 'UpdateAssessmentFrameworkControlSet')
    UpdateAssessmentFrameworkControlSets = Shapes::ListShape.new(name: 'UpdateAssessmentFrameworkControlSets')
    UpdateAssessmentFrameworkRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentFrameworkRequest')
    UpdateAssessmentFrameworkResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentFrameworkResponse')
    UpdateAssessmentFrameworkShareRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentFrameworkShareRequest')
    UpdateAssessmentFrameworkShareResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentFrameworkShareResponse')
    UpdateAssessmentRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentRequest')
    UpdateAssessmentResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentResponse')
    UpdateAssessmentStatusRequest = Shapes::StructureShape.new(name: 'UpdateAssessmentStatusRequest')
    UpdateAssessmentStatusResponse = Shapes::StructureShape.new(name: 'UpdateAssessmentStatusResponse')
    UpdateControlRequest = Shapes::StructureShape.new(name: 'UpdateControlRequest')
    UpdateControlResponse = Shapes::StructureShape.new(name: 'UpdateControlResponse')
    UpdateSettingsRequest = Shapes::StructureShape.new(name: 'UpdateSettingsRequest')
    UpdateSettingsResponse = Shapes::StructureShape.new(name: 'UpdateSettingsResponse')
    UrlLink = Shapes::StringShape.new(name: 'UrlLink')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidateAssessmentReportIntegrityRequest = Shapes::StructureShape.new(name: 'ValidateAssessmentReportIntegrityRequest')
    ValidateAssessmentReportIntegrityResponse = Shapes::StructureShape.new(name: 'ValidateAssessmentReportIntegrityResponse')
    ValidationErrors = Shapes::ListShape.new(name: 'ValidationErrors')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    organizationId = Shapes::StringShape.new(name: 'organizationId')

    AWSAccount.add_member(:id, Shapes::ShapeRef.new(shape: AccountId, location_name: "id"))
    AWSAccount.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "emailAddress"))
    AWSAccount.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "name"))
    AWSAccount.struct_class = Types::AWSAccount

    AWSAccounts.member = Shapes::ShapeRef.new(shape: AWSAccount)

    AWSService.add_member(:service_name, Shapes::ShapeRef.new(shape: AWSServiceName, location_name: "serviceName"))
    AWSService.struct_class = Types::AWSService

    AWSServices.member = Shapes::ShapeRef.new(shape: AWSService)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Assessment.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    Assessment.add_member(:aws_account, Shapes::ShapeRef.new(shape: AWSAccount, location_name: "awsAccount"))
    Assessment.add_member(:metadata, Shapes::ShapeRef.new(shape: AssessmentMetadata, location_name: "metadata"))
    Assessment.add_member(:framework, Shapes::ShapeRef.new(shape: AssessmentFramework, location_name: "framework"))
    Assessment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Assessment.struct_class = Types::Assessment

    AssessmentControl.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentControl.add_member(:name, Shapes::ShapeRef.new(shape: ControlName, location_name: "name"))
    AssessmentControl.add_member(:description, Shapes::ShapeRef.new(shape: ControlDescription, location_name: "description"))
    AssessmentControl.add_member(:status, Shapes::ShapeRef.new(shape: ControlStatus, location_name: "status"))
    AssessmentControl.add_member(:response, Shapes::ShapeRef.new(shape: ControlResponse, location_name: "response"))
    AssessmentControl.add_member(:comments, Shapes::ShapeRef.new(shape: ControlComments, location_name: "comments"))
    AssessmentControl.add_member(:evidence_sources, Shapes::ShapeRef.new(shape: EvidenceSources, location_name: "evidenceSources"))
    AssessmentControl.add_member(:evidence_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceCount"))
    AssessmentControl.add_member(:assessment_report_evidence_count, Shapes::ShapeRef.new(shape: Integer, location_name: "assessmentReportEvidenceCount"))
    AssessmentControl.struct_class = Types::AssessmentControl

    AssessmentControlSet.add_member(:id, Shapes::ShapeRef.new(shape: ControlSetId, location_name: "id"))
    AssessmentControlSet.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    AssessmentControlSet.add_member(:status, Shapes::ShapeRef.new(shape: ControlSetStatus, location_name: "status"))
    AssessmentControlSet.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    AssessmentControlSet.add_member(:controls, Shapes::ShapeRef.new(shape: AssessmentControls, location_name: "controls"))
    AssessmentControlSet.add_member(:delegations, Shapes::ShapeRef.new(shape: Delegations, location_name: "delegations"))
    AssessmentControlSet.add_member(:system_evidence_count, Shapes::ShapeRef.new(shape: Integer, location_name: "systemEvidenceCount"))
    AssessmentControlSet.add_member(:manual_evidence_count, Shapes::ShapeRef.new(shape: Integer, location_name: "manualEvidenceCount"))
    AssessmentControlSet.struct_class = Types::AssessmentControlSet

    AssessmentControlSets.member = Shapes::ShapeRef.new(shape: AssessmentControlSet)

    AssessmentControls.member = Shapes::ShapeRef.new(shape: AssessmentControl)

    AssessmentEvidenceFolder.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentEvidenceFolderName, location_name: "name"))
    AssessmentEvidenceFolder.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "date"))
    AssessmentEvidenceFolder.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    AssessmentEvidenceFolder.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, location_name: "controlSetId"))
    AssessmentEvidenceFolder.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, location_name: "controlId"))
    AssessmentEvidenceFolder.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentEvidenceFolder.add_member(:data_source, Shapes::ShapeRef.new(shape: String, location_name: "dataSource"))
    AssessmentEvidenceFolder.add_member(:author, Shapes::ShapeRef.new(shape: String, location_name: "author"))
    AssessmentEvidenceFolder.add_member(:total_evidence, Shapes::ShapeRef.new(shape: Integer, location_name: "totalEvidence"))
    AssessmentEvidenceFolder.add_member(:assessment_report_selection_count, Shapes::ShapeRef.new(shape: Integer, location_name: "assessmentReportSelectionCount"))
    AssessmentEvidenceFolder.add_member(:control_name, Shapes::ShapeRef.new(shape: ControlName, location_name: "controlName"))
    AssessmentEvidenceFolder.add_member(:evidence_resources_included_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceResourcesIncludedCount"))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_configuration_data_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceByTypeConfigurationDataCount"))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_manual_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceByTypeManualCount"))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceByTypeComplianceCheckCount"))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_compliance_check_issues_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceByTypeComplianceCheckIssuesCount"))
    AssessmentEvidenceFolder.add_member(:evidence_by_type_user_activity_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceByTypeUserActivityCount"))
    AssessmentEvidenceFolder.add_member(:evidence_aws_service_source_count, Shapes::ShapeRef.new(shape: Integer, location_name: "evidenceAwsServiceSourceCount"))
    AssessmentEvidenceFolder.struct_class = Types::AssessmentEvidenceFolder

    AssessmentEvidenceFolders.member = Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder)

    AssessmentFramework.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentFramework.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    AssessmentFramework.add_member(:metadata, Shapes::ShapeRef.new(shape: FrameworkMetadata, location_name: "metadata"))
    AssessmentFramework.add_member(:control_sets, Shapes::ShapeRef.new(shape: AssessmentControlSets, location_name: "controlSets"))
    AssessmentFramework.struct_class = Types::AssessmentFramework

    AssessmentFrameworkMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    AssessmentFrameworkMetadata.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentFrameworkMetadata.add_member(:type, Shapes::ShapeRef.new(shape: FrameworkType, location_name: "type"))
    AssessmentFrameworkMetadata.add_member(:name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "name"))
    AssessmentFrameworkMetadata.add_member(:description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "description"))
    AssessmentFrameworkMetadata.add_member(:logo, Shapes::ShapeRef.new(shape: Filename, location_name: "logo"))
    AssessmentFrameworkMetadata.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    AssessmentFrameworkMetadata.add_member(:controls_count, Shapes::ShapeRef.new(shape: ControlsCount, location_name: "controlsCount"))
    AssessmentFrameworkMetadata.add_member(:control_sets_count, Shapes::ShapeRef.new(shape: ControlSetsCount, location_name: "controlSetsCount"))
    AssessmentFrameworkMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    AssessmentFrameworkMetadata.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    AssessmentFrameworkMetadata.struct_class = Types::AssessmentFrameworkMetadata

    AssessmentFrameworkShareRequest.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentFrameworkShareRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, location_name: "frameworkId"))
    AssessmentFrameworkShareRequest.add_member(:framework_name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "frameworkName"))
    AssessmentFrameworkShareRequest.add_member(:framework_description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "frameworkDescription"))
    AssessmentFrameworkShareRequest.add_member(:status, Shapes::ShapeRef.new(shape: ShareRequestStatus, location_name: "status"))
    AssessmentFrameworkShareRequest.add_member(:source_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccount"))
    AssessmentFrameworkShareRequest.add_member(:destination_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "destinationAccount"))
    AssessmentFrameworkShareRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, location_name: "destinationRegion"))
    AssessmentFrameworkShareRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationTime"))
    AssessmentFrameworkShareRequest.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AssessmentFrameworkShareRequest.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    AssessmentFrameworkShareRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: "comment"))
    AssessmentFrameworkShareRequest.add_member(:standard_controls_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "standardControlsCount"))
    AssessmentFrameworkShareRequest.add_member(:custom_controls_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "customControlsCount"))
    AssessmentFrameworkShareRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    AssessmentFrameworkShareRequest.struct_class = Types::AssessmentFrameworkShareRequest

    AssessmentFrameworkShareRequestList.member = Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest)

    AssessmentMetadata.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "name"))
    AssessmentMetadata.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentMetadata.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: "description"))
    AssessmentMetadata.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    AssessmentMetadata.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "status"))
    AssessmentMetadata.add_member(:assessment_reports_destination, Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: "assessmentReportsDestination"))
    AssessmentMetadata.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    AssessmentMetadata.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    AssessmentMetadata.add_member(:delegations, Shapes::ShapeRef.new(shape: Delegations, location_name: "delegations"))
    AssessmentMetadata.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AssessmentMetadata.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    AssessmentMetadata.struct_class = Types::AssessmentMetadata

    AssessmentMetadataItem.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "name"))
    AssessmentMetadataItem.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentMetadataItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    AssessmentMetadataItem.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "status"))
    AssessmentMetadataItem.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    AssessmentMetadataItem.add_member(:delegations, Shapes::ShapeRef.new(shape: Delegations, location_name: "delegations"))
    AssessmentMetadataItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AssessmentMetadataItem.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    AssessmentMetadataItem.struct_class = Types::AssessmentMetadataItem

    AssessmentReport.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentReport.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: "name"))
    AssessmentReport.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: "description"))
    AssessmentReport.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "awsAccountId"))
    AssessmentReport.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    AssessmentReport.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    AssessmentReport.add_member(:author, Shapes::ShapeRef.new(shape: Username, location_name: "author"))
    AssessmentReport.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: "status"))
    AssessmentReport.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AssessmentReport.struct_class = Types::AssessmentReport

    AssessmentReportEvidenceError.add_member(:evidence_id, Shapes::ShapeRef.new(shape: UUID, location_name: "evidenceId"))
    AssessmentReportEvidenceError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    AssessmentReportEvidenceError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    AssessmentReportEvidenceError.struct_class = Types::AssessmentReportEvidenceError

    AssessmentReportEvidenceErrors.member = Shapes::ShapeRef.new(shape: AssessmentReportEvidenceError)

    AssessmentReportMetadata.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    AssessmentReportMetadata.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentReportName, location_name: "name"))
    AssessmentReportMetadata.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: "description"))
    AssessmentReportMetadata.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    AssessmentReportMetadata.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    AssessmentReportMetadata.add_member(:author, Shapes::ShapeRef.new(shape: Username, location_name: "author"))
    AssessmentReportMetadata.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentReportStatus, location_name: "status"))
    AssessmentReportMetadata.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    AssessmentReportMetadata.struct_class = Types::AssessmentReportMetadata

    AssessmentReportsDestination.add_member(:destination_type, Shapes::ShapeRef.new(shape: AssessmentReportDestinationType, location_name: "destinationType"))
    AssessmentReportsDestination.add_member(:destination, Shapes::ShapeRef.new(shape: S3Url, location_name: "destination"))
    AssessmentReportsDestination.struct_class = Types::AssessmentReportsDestination

    AssessmentReportsMetadata.member = Shapes::ShapeRef.new(shape: AssessmentReportMetadata)

    AssociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    AssociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "evidenceFolderId"))
    AssociateAssessmentReportEvidenceFolderRequest.struct_class = Types::AssociateAssessmentReportEvidenceFolderRequest

    AssociateAssessmentReportEvidenceFolderResponse.struct_class = Types::AssociateAssessmentReportEvidenceFolderResponse

    BatchAssociateAssessmentReportEvidenceRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "evidenceFolderId"))
    BatchAssociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, Shapes::ShapeRef.new(shape: EvidenceIds, required: true, location_name: "evidenceIds"))
    BatchAssociateAssessmentReportEvidenceRequest.struct_class = Types::BatchAssociateAssessmentReportEvidenceRequest

    BatchAssociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, Shapes::ShapeRef.new(shape: EvidenceIds, location_name: "evidenceIds"))
    BatchAssociateAssessmentReportEvidenceResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: "errors"))
    BatchAssociateAssessmentReportEvidenceResponse.struct_class = Types::BatchAssociateAssessmentReportEvidenceResponse

    BatchCreateDelegationByAssessmentError.add_member(:create_delegation_request, Shapes::ShapeRef.new(shape: CreateDelegationRequest, location_name: "createDelegationRequest"))
    BatchCreateDelegationByAssessmentError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchCreateDelegationByAssessmentError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchCreateDelegationByAssessmentError.struct_class = Types::BatchCreateDelegationByAssessmentError

    BatchCreateDelegationByAssessmentErrors.member = Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentError)

    BatchCreateDelegationByAssessmentRequest.add_member(:create_delegation_requests, Shapes::ShapeRef.new(shape: CreateDelegationRequests, required: true, location_name: "createDelegationRequests"))
    BatchCreateDelegationByAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    BatchCreateDelegationByAssessmentRequest.struct_class = Types::BatchCreateDelegationByAssessmentRequest

    BatchCreateDelegationByAssessmentResponse.add_member(:delegations, Shapes::ShapeRef.new(shape: Delegations, location_name: "delegations"))
    BatchCreateDelegationByAssessmentResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentErrors, location_name: "errors"))
    BatchCreateDelegationByAssessmentResponse.struct_class = Types::BatchCreateDelegationByAssessmentResponse

    BatchDeleteDelegationByAssessmentError.add_member(:delegation_id, Shapes::ShapeRef.new(shape: UUID, location_name: "delegationId"))
    BatchDeleteDelegationByAssessmentError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchDeleteDelegationByAssessmentError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchDeleteDelegationByAssessmentError.struct_class = Types::BatchDeleteDelegationByAssessmentError

    BatchDeleteDelegationByAssessmentErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentError)

    BatchDeleteDelegationByAssessmentRequest.add_member(:delegation_ids, Shapes::ShapeRef.new(shape: DelegationIds, required: true, location_name: "delegationIds"))
    BatchDeleteDelegationByAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    BatchDeleteDelegationByAssessmentRequest.struct_class = Types::BatchDeleteDelegationByAssessmentRequest

    BatchDeleteDelegationByAssessmentResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentErrors, location_name: "errors"))
    BatchDeleteDelegationByAssessmentResponse.struct_class = Types::BatchDeleteDelegationByAssessmentResponse

    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "evidenceFolderId"))
    BatchDisassociateAssessmentReportEvidenceRequest.add_member(:evidence_ids, Shapes::ShapeRef.new(shape: EvidenceIds, required: true, location_name: "evidenceIds"))
    BatchDisassociateAssessmentReportEvidenceRequest.struct_class = Types::BatchDisassociateAssessmentReportEvidenceRequest

    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:evidence_ids, Shapes::ShapeRef.new(shape: EvidenceIds, location_name: "evidenceIds"))
    BatchDisassociateAssessmentReportEvidenceResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AssessmentReportEvidenceErrors, location_name: "errors"))
    BatchDisassociateAssessmentReportEvidenceResponse.struct_class = Types::BatchDisassociateAssessmentReportEvidenceResponse

    BatchImportEvidenceToAssessmentControlError.add_member(:manual_evidence, Shapes::ShapeRef.new(shape: ManualEvidence, location_name: "manualEvidence"))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchImportEvidenceToAssessmentControlError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchImportEvidenceToAssessmentControlError.struct_class = Types::BatchImportEvidenceToAssessmentControlError

    BatchImportEvidenceToAssessmentControlErrors.member = Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlError)

    BatchImportEvidenceToAssessmentControlRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    BatchImportEvidenceToAssessmentControlRequest.add_member(:manual_evidence, Shapes::ShapeRef.new(shape: ManualEvidenceList, required: true, location_name: "manualEvidence"))
    BatchImportEvidenceToAssessmentControlRequest.struct_class = Types::BatchImportEvidenceToAssessmentControlRequest

    BatchImportEvidenceToAssessmentControlResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlErrors, location_name: "errors"))
    BatchImportEvidenceToAssessmentControlResponse.struct_class = Types::BatchImportEvidenceToAssessmentControlResponse

    ChangeLog.add_member(:object_type, Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: "objectType"))
    ChangeLog.add_member(:object_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "objectName"))
    ChangeLog.add_member(:action, Shapes::ShapeRef.new(shape: ActionEnum, location_name: "action"))
    ChangeLog.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ChangeLog.add_member(:created_by, Shapes::ShapeRef.new(shape: IamArn, location_name: "createdBy"))
    ChangeLog.struct_class = Types::ChangeLog

    ChangeLogs.member = Shapes::ShapeRef.new(shape: ChangeLog)

    Control.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    Control.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    Control.add_member(:type, Shapes::ShapeRef.new(shape: ControlType, location_name: "type"))
    Control.add_member(:name, Shapes::ShapeRef.new(shape: ControlName, location_name: "name"))
    Control.add_member(:description, Shapes::ShapeRef.new(shape: ControlDescription, location_name: "description"))
    Control.add_member(:testing_information, Shapes::ShapeRef.new(shape: TestingInformation, location_name: "testingInformation"))
    Control.add_member(:action_plan_title, Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: "actionPlanTitle"))
    Control.add_member(:action_plan_instructions, Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: "actionPlanInstructions"))
    Control.add_member(:control_sources, Shapes::ShapeRef.new(shape: ControlSources, location_name: "controlSources"))
    Control.add_member(:control_mapping_sources, Shapes::ShapeRef.new(shape: ControlMappingSources, location_name: "controlMappingSources"))
    Control.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Control.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    Control.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    Control.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "lastUpdatedBy"))
    Control.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Control.struct_class = Types::Control

    ControlComment.add_member(:author_name, Shapes::ShapeRef.new(shape: Username, location_name: "authorName"))
    ControlComment.add_member(:comment_body, Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: "commentBody"))
    ControlComment.add_member(:posted_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "postedDate"))
    ControlComment.struct_class = Types::ControlComment

    ControlComments.member = Shapes::ShapeRef.new(shape: ControlComment)

    ControlDomainInsights.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ControlDomainInsights.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    ControlDomainInsights.add_member(:controls_count_by_noncompliant_evidence, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "controlsCountByNoncompliantEvidence"))
    ControlDomainInsights.add_member(:total_controls_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "totalControlsCount"))
    ControlDomainInsights.add_member(:evidence_insights, Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: "evidenceInsights"))
    ControlDomainInsights.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    ControlDomainInsights.struct_class = Types::ControlDomainInsights

    ControlDomainInsightsList.member = Shapes::ShapeRef.new(shape: ControlDomainInsights)

    ControlInsightsMetadata.member = Shapes::ShapeRef.new(shape: ControlInsightsMetadataItem)

    ControlInsightsMetadataByAssessment.member = Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessmentItem)

    ControlInsightsMetadataByAssessmentItem.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ControlInsightsMetadataByAssessmentItem.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    ControlInsightsMetadataByAssessmentItem.add_member(:evidence_insights, Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: "evidenceInsights"))
    ControlInsightsMetadataByAssessmentItem.add_member(:control_set_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "controlSetName"))
    ControlInsightsMetadataByAssessmentItem.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    ControlInsightsMetadataByAssessmentItem.struct_class = Types::ControlInsightsMetadataByAssessmentItem

    ControlInsightsMetadataItem.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ControlInsightsMetadataItem.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    ControlInsightsMetadataItem.add_member(:evidence_insights, Shapes::ShapeRef.new(shape: EvidenceInsights, location_name: "evidenceInsights"))
    ControlInsightsMetadataItem.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    ControlInsightsMetadataItem.struct_class = Types::ControlInsightsMetadataItem

    ControlMappingSource.add_member(:source_id, Shapes::ShapeRef.new(shape: UUID, location_name: "sourceId"))
    ControlMappingSource.add_member(:source_name, Shapes::ShapeRef.new(shape: SourceName, location_name: "sourceName"))
    ControlMappingSource.add_member(:source_description, Shapes::ShapeRef.new(shape: SourceDescription, location_name: "sourceDescription"))
    ControlMappingSource.add_member(:source_set_up_option, Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: "sourceSetUpOption"))
    ControlMappingSource.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType"))
    ControlMappingSource.add_member(:source_keyword, Shapes::ShapeRef.new(shape: SourceKeyword, location_name: "sourceKeyword"))
    ControlMappingSource.add_member(:source_frequency, Shapes::ShapeRef.new(shape: SourceFrequency, location_name: "sourceFrequency"))
    ControlMappingSource.add_member(:troubleshooting_text, Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: "troubleshootingText"))
    ControlMappingSource.struct_class = Types::ControlMappingSource

    ControlMappingSources.member = Shapes::ShapeRef.new(shape: ControlMappingSource)

    ControlMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    ControlMetadata.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    ControlMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ControlName, location_name: "name"))
    ControlMetadata.add_member(:control_sources, Shapes::ShapeRef.new(shape: ControlSources, location_name: "controlSources"))
    ControlMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ControlMetadata.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ControlMetadata.struct_class = Types::ControlMetadata

    ControlMetadataList.member = Shapes::ShapeRef.new(shape: ControlMetadata)

    ControlSet.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    ControlSet.add_member(:name, Shapes::ShapeRef.new(shape: ControlSetName, location_name: "name"))
    ControlSet.add_member(:controls, Shapes::ShapeRef.new(shape: Controls, location_name: "controls"))
    ControlSet.struct_class = Types::ControlSet

    ControlSets.member = Shapes::ShapeRef.new(shape: ControlSet)

    Controls.member = Shapes::ShapeRef.new(shape: Control)

    CreateAssessmentFrameworkControl.add_member(:id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "id"))
    CreateAssessmentFrameworkControl.struct_class = Types::CreateAssessmentFrameworkControl

    CreateAssessmentFrameworkControlSet.add_member(:name, Shapes::ShapeRef.new(shape: ControlSetName, required: true, location_name: "name"))
    CreateAssessmentFrameworkControlSet.add_member(:controls, Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, location_name: "controls"))
    CreateAssessmentFrameworkControlSet.struct_class = Types::CreateAssessmentFrameworkControlSet

    CreateAssessmentFrameworkControlSets.member = Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSet)

    CreateAssessmentFrameworkControls.member = Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControl)

    CreateAssessmentFrameworkRequest.add_member(:name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location_name: "name"))
    CreateAssessmentFrameworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "description"))
    CreateAssessmentFrameworkRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    CreateAssessmentFrameworkRequest.add_member(:control_sets, Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControlSets, required: true, location_name: "controlSets"))
    CreateAssessmentFrameworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssessmentFrameworkRequest.struct_class = Types::CreateAssessmentFrameworkRequest

    CreateAssessmentFrameworkResponse.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    CreateAssessmentFrameworkResponse.struct_class = Types::CreateAssessmentFrameworkResponse

    CreateAssessmentReportRequest.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentReportName, required: true, location_name: "name"))
    CreateAssessmentReportRequest.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentReportDescription, location_name: "description"))
    CreateAssessmentReportRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    CreateAssessmentReportRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryStatement, location_name: "queryStatement"))
    CreateAssessmentReportRequest.struct_class = Types::CreateAssessmentReportRequest

    CreateAssessmentReportResponse.add_member(:assessment_report, Shapes::ShapeRef.new(shape: AssessmentReport, location_name: "assessmentReport"))
    CreateAssessmentReportResponse.struct_class = Types::CreateAssessmentReportResponse

    CreateAssessmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentName, required: true, location_name: "name"))
    CreateAssessmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: "description"))
    CreateAssessmentRequest.add_member(:assessment_reports_destination, Shapes::ShapeRef.new(shape: AssessmentReportsDestination, required: true, location_name: "assessmentReportsDestination"))
    CreateAssessmentRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "scope"))
    CreateAssessmentRequest.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, required: true, location_name: "roles"))
    CreateAssessmentRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "frameworkId"))
    CreateAssessmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssessmentRequest.struct_class = Types::CreateAssessmentRequest

    CreateAssessmentResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: Assessment, location_name: "assessment"))
    CreateAssessmentResponse.struct_class = Types::CreateAssessmentResponse

    CreateControlMappingSource.add_member(:source_name, Shapes::ShapeRef.new(shape: SourceName, location_name: "sourceName"))
    CreateControlMappingSource.add_member(:source_description, Shapes::ShapeRef.new(shape: SourceDescription, location_name: "sourceDescription"))
    CreateControlMappingSource.add_member(:source_set_up_option, Shapes::ShapeRef.new(shape: SourceSetUpOption, location_name: "sourceSetUpOption"))
    CreateControlMappingSource.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType"))
    CreateControlMappingSource.add_member(:source_keyword, Shapes::ShapeRef.new(shape: SourceKeyword, location_name: "sourceKeyword"))
    CreateControlMappingSource.add_member(:source_frequency, Shapes::ShapeRef.new(shape: SourceFrequency, location_name: "sourceFrequency"))
    CreateControlMappingSource.add_member(:troubleshooting_text, Shapes::ShapeRef.new(shape: TroubleshootingText, location_name: "troubleshootingText"))
    CreateControlMappingSource.struct_class = Types::CreateControlMappingSource

    CreateControlMappingSources.member = Shapes::ShapeRef.new(shape: CreateControlMappingSource)

    CreateControlRequest.add_member(:name, Shapes::ShapeRef.new(shape: ControlName, required: true, location_name: "name"))
    CreateControlRequest.add_member(:description, Shapes::ShapeRef.new(shape: ControlDescription, location_name: "description"))
    CreateControlRequest.add_member(:testing_information, Shapes::ShapeRef.new(shape: TestingInformation, location_name: "testingInformation"))
    CreateControlRequest.add_member(:action_plan_title, Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: "actionPlanTitle"))
    CreateControlRequest.add_member(:action_plan_instructions, Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: "actionPlanInstructions"))
    CreateControlRequest.add_member(:control_mapping_sources, Shapes::ShapeRef.new(shape: CreateControlMappingSources, required: true, location_name: "controlMappingSources"))
    CreateControlRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateControlRequest.struct_class = Types::CreateControlRequest

    CreateControlResponse.add_member(:control, Shapes::ShapeRef.new(shape: Control, location_name: "control"))
    CreateControlResponse.struct_class = Types::CreateControlResponse

    CreateDelegationRequest.add_member(:comment, Shapes::ShapeRef.new(shape: DelegationComment, location_name: "comment"))
    CreateDelegationRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, location_name: "controlSetId"))
    CreateDelegationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, location_name: "roleArn"))
    CreateDelegationRequest.add_member(:role_type, Shapes::ShapeRef.new(shape: RoleType, location_name: "roleType"))
    CreateDelegationRequest.struct_class = Types::CreateDelegationRequest

    CreateDelegationRequests.member = Shapes::ShapeRef.new(shape: CreateDelegationRequest)

    DefaultExportDestination.add_member(:destination_type, Shapes::ShapeRef.new(shape: ExportDestinationType, location_name: "destinationType"))
    DefaultExportDestination.add_member(:destination, Shapes::ShapeRef.new(shape: S3Url, location_name: "destination"))
    DefaultExportDestination.struct_class = Types::DefaultExportDestination

    Delegation.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    Delegation.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    Delegation.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    Delegation.add_member(:status, Shapes::ShapeRef.new(shape: DelegationStatus, location_name: "status"))
    Delegation.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, location_name: "roleArn"))
    Delegation.add_member(:role_type, Shapes::ShapeRef.new(shape: RoleType, location_name: "roleType"))
    Delegation.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Delegation.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    Delegation.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, location_name: "controlSetId"))
    Delegation.add_member(:comment, Shapes::ShapeRef.new(shape: DelegationComment, location_name: "comment"))
    Delegation.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    Delegation.struct_class = Types::Delegation

    DelegationIds.member = Shapes::ShapeRef.new(shape: UUID)

    DelegationMetadata.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    DelegationMetadata.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    DelegationMetadata.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    DelegationMetadata.add_member(:status, Shapes::ShapeRef.new(shape: DelegationStatus, location_name: "status"))
    DelegationMetadata.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, location_name: "roleArn"))
    DelegationMetadata.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DelegationMetadata.add_member(:control_set_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "controlSetName"))
    DelegationMetadata.struct_class = Types::DelegationMetadata

    DelegationMetadataList.member = Shapes::ShapeRef.new(shape: DelegationMetadata)

    Delegations.member = Shapes::ShapeRef.new(shape: Delegation)

    DeleteAssessmentFrameworkRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "frameworkId"))
    DeleteAssessmentFrameworkRequest.struct_class = Types::DeleteAssessmentFrameworkRequest

    DeleteAssessmentFrameworkResponse.struct_class = Types::DeleteAssessmentFrameworkResponse

    DeleteAssessmentFrameworkShareRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "requestId"))
    DeleteAssessmentFrameworkShareRequest.add_member(:request_type, Shapes::ShapeRef.new(shape: ShareRequestType, required: true, location: "querystring", location_name: "requestType"))
    DeleteAssessmentFrameworkShareRequest.struct_class = Types::DeleteAssessmentFrameworkShareRequest

    DeleteAssessmentFrameworkShareResponse.struct_class = Types::DeleteAssessmentFrameworkShareResponse

    DeleteAssessmentReportRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    DeleteAssessmentReportRequest.add_member(:assessment_report_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentReportId"))
    DeleteAssessmentReportRequest.struct_class = Types::DeleteAssessmentReportRequest

    DeleteAssessmentReportResponse.struct_class = Types::DeleteAssessmentReportResponse

    DeleteAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    DeleteAssessmentRequest.struct_class = Types::DeleteAssessmentRequest

    DeleteAssessmentResponse.struct_class = Types::DeleteAssessmentResponse

    DeleteControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    DeleteControlRequest.struct_class = Types::DeleteControlRequest

    DeleteControlResponse.struct_class = Types::DeleteControlResponse

    DeregisterAccountRequest.struct_class = Types::DeregisterAccountRequest

    DeregisterAccountResponse.add_member(:status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "status"))
    DeregisterAccountResponse.struct_class = Types::DeregisterAccountResponse

    DeregisterOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "adminAccountId"))
    DeregisterOrganizationAdminAccountRequest.struct_class = Types::DeregisterOrganizationAdminAccountRequest

    DeregisterOrganizationAdminAccountResponse.struct_class = Types::DeregisterOrganizationAdminAccountResponse

    DeregistrationPolicy.add_member(:delete_resources, Shapes::ShapeRef.new(shape: DeleteResources, location_name: "deleteResources"))
    DeregistrationPolicy.struct_class = Types::DeregistrationPolicy

    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    DisassociateAssessmentReportEvidenceFolderRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "evidenceFolderId"))
    DisassociateAssessmentReportEvidenceFolderRequest.struct_class = Types::DisassociateAssessmentReportEvidenceFolderRequest

    DisassociateAssessmentReportEvidenceFolderResponse.struct_class = Types::DisassociateAssessmentReportEvidenceFolderResponse

    Evidence.add_member(:data_source, Shapes::ShapeRef.new(shape: String, location_name: "dataSource"))
    Evidence.add_member(:evidence_aws_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "evidenceAwsAccountId"))
    Evidence.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    Evidence.add_member(:event_source, Shapes::ShapeRef.new(shape: AWSServiceName, location_name: "eventSource"))
    Evidence.add_member(:event_name, Shapes::ShapeRef.new(shape: EventName, location_name: "eventName"))
    Evidence.add_member(:evidence_by_type, Shapes::ShapeRef.new(shape: String, location_name: "evidenceByType"))
    Evidence.add_member(:resources_included, Shapes::ShapeRef.new(shape: Resources, location_name: "resourcesIncluded"))
    Evidence.add_member(:attributes, Shapes::ShapeRef.new(shape: EvidenceAttributes, location_name: "attributes"))
    Evidence.add_member(:iam_id, Shapes::ShapeRef.new(shape: IamArn, location_name: "iamId"))
    Evidence.add_member(:compliance_check, Shapes::ShapeRef.new(shape: String, location_name: "complianceCheck"))
    Evidence.add_member(:aws_organization, Shapes::ShapeRef.new(shape: String, location_name: "awsOrganization"))
    Evidence.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "awsAccountId"))
    Evidence.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, location_name: "evidenceFolderId"))
    Evidence.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    Evidence.add_member(:assessment_report_selection, Shapes::ShapeRef.new(shape: String, location_name: "assessmentReportSelection"))
    Evidence.struct_class = Types::Evidence

    EvidenceAttributes.key = Shapes::ShapeRef.new(shape: EvidenceAttributeKey)
    EvidenceAttributes.value = Shapes::ShapeRef.new(shape: EvidenceAttributeValue)

    EvidenceFinderEnablement.add_member(:event_data_store_arn, Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: "eventDataStoreArn"))
    EvidenceFinderEnablement.add_member(:enablement_status, Shapes::ShapeRef.new(shape: EvidenceFinderEnablementStatus, location_name: "enablementStatus"))
    EvidenceFinderEnablement.add_member(:backfill_status, Shapes::ShapeRef.new(shape: EvidenceFinderBackfillStatus, location_name: "backfillStatus"))
    EvidenceFinderEnablement.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "error"))
    EvidenceFinderEnablement.struct_class = Types::EvidenceFinderEnablement

    EvidenceIds.member = Shapes::ShapeRef.new(shape: UUID)

    EvidenceInsights.add_member(:noncompliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "noncompliantEvidenceCount"))
    EvidenceInsights.add_member(:compliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "compliantEvidenceCount"))
    EvidenceInsights.add_member(:inconclusive_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "inconclusiveEvidenceCount"))
    EvidenceInsights.struct_class = Types::EvidenceInsights

    EvidenceList.member = Shapes::ShapeRef.new(shape: Evidence)

    EvidenceSources.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Framework.add_member(:arn, Shapes::ShapeRef.new(shape: AuditManagerArn, location_name: "arn"))
    Framework.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "id"))
    Framework.add_member(:name, Shapes::ShapeRef.new(shape: FrameworkName, location_name: "name"))
    Framework.add_member(:type, Shapes::ShapeRef.new(shape: FrameworkType, location_name: "type"))
    Framework.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    Framework.add_member(:description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "description"))
    Framework.add_member(:logo, Shapes::ShapeRef.new(shape: Filename, location_name: "logo"))
    Framework.add_member(:control_sources, Shapes::ShapeRef.new(shape: ControlSources, location_name: "controlSources"))
    Framework.add_member(:control_sets, Shapes::ShapeRef.new(shape: ControlSets, location_name: "controlSets"))
    Framework.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Framework.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    Framework.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatedBy, location_name: "createdBy"))
    Framework.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: "lastUpdatedBy"))
    Framework.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Framework.struct_class = Types::Framework

    FrameworkMetadata.add_member(:name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "name"))
    FrameworkMetadata.add_member(:description, Shapes::ShapeRef.new(shape: AssessmentFrameworkDescription, location_name: "description"))
    FrameworkMetadata.add_member(:logo, Shapes::ShapeRef.new(shape: Filename, location_name: "logo"))
    FrameworkMetadata.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    FrameworkMetadata.struct_class = Types::FrameworkMetadata

    FrameworkMetadataList.member = Shapes::ShapeRef.new(shape: AssessmentFrameworkMetadata)

    GetAccountStatusRequest.struct_class = Types::GetAccountStatusRequest

    GetAccountStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "status"))
    GetAccountStatusResponse.struct_class = Types::GetAccountStatusResponse

    GetAssessmentFrameworkRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "frameworkId"))
    GetAssessmentFrameworkRequest.struct_class = Types::GetAssessmentFrameworkRequest

    GetAssessmentFrameworkResponse.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    GetAssessmentFrameworkResponse.struct_class = Types::GetAssessmentFrameworkResponse

    GetAssessmentReportUrlRequest.add_member(:assessment_report_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentReportId"))
    GetAssessmentReportUrlRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetAssessmentReportUrlRequest.struct_class = Types::GetAssessmentReportUrlRequest

    GetAssessmentReportUrlResponse.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: URL, location_name: "preSignedUrl"))
    GetAssessmentReportUrlResponse.struct_class = Types::GetAssessmentReportUrlResponse

    GetAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetAssessmentRequest.struct_class = Types::GetAssessmentRequest

    GetAssessmentResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: Assessment, location_name: "assessment"))
    GetAssessmentResponse.add_member(:user_role, Shapes::ShapeRef.new(shape: Role, location_name: "userRole"))
    GetAssessmentResponse.struct_class = Types::GetAssessmentResponse

    GetChangeLogsRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetChangeLogsRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, location: "querystring", location_name: "controlSetId"))
    GetChangeLogsRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "controlId"))
    GetChangeLogsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetChangeLogsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetChangeLogsRequest.struct_class = Types::GetChangeLogsRequest

    GetChangeLogsResponse.add_member(:change_logs, Shapes::ShapeRef.new(shape: ChangeLogs, location_name: "changeLogs"))
    GetChangeLogsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetChangeLogsResponse.struct_class = Types::GetChangeLogsResponse

    GetControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    GetControlRequest.struct_class = Types::GetControlRequest

    GetControlResponse.add_member(:control, Shapes::ShapeRef.new(shape: Control, location_name: "control"))
    GetControlResponse.struct_class = Types::GetControlResponse

    GetDelegationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetDelegationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetDelegationsRequest.struct_class = Types::GetDelegationsRequest

    GetDelegationsResponse.add_member(:delegations, Shapes::ShapeRef.new(shape: DelegationMetadataList, location_name: "delegations"))
    GetDelegationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetDelegationsResponse.struct_class = Types::GetDelegationsResponse

    GetEvidenceByEvidenceFolderRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetEvidenceByEvidenceFolderRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    GetEvidenceByEvidenceFolderRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "evidenceFolderId"))
    GetEvidenceByEvidenceFolderRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetEvidenceByEvidenceFolderRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetEvidenceByEvidenceFolderRequest.struct_class = Types::GetEvidenceByEvidenceFolderRequest

    GetEvidenceByEvidenceFolderResponse.add_member(:evidence, Shapes::ShapeRef.new(shape: EvidenceList, location_name: "evidence"))
    GetEvidenceByEvidenceFolderResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetEvidenceByEvidenceFolderResponse.struct_class = Types::GetEvidenceByEvidenceFolderResponse

    GetEvidenceFileUploadUrlRequest.add_member(:file_name, Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, required: true, location: "querystring", location_name: "fileName"))
    GetEvidenceFileUploadUrlRequest.struct_class = Types::GetEvidenceFileUploadUrlRequest

    GetEvidenceFileUploadUrlResponse.add_member(:evidence_file_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "evidenceFileName"))
    GetEvidenceFileUploadUrlResponse.add_member(:upload_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "uploadUrl"))
    GetEvidenceFileUploadUrlResponse.struct_class = Types::GetEvidenceFileUploadUrlResponse

    GetEvidenceFolderRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetEvidenceFolderRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    GetEvidenceFolderRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "evidenceFolderId"))
    GetEvidenceFolderRequest.struct_class = Types::GetEvidenceFolderRequest

    GetEvidenceFolderResponse.add_member(:evidence_folder, Shapes::ShapeRef.new(shape: AssessmentEvidenceFolder, location_name: "evidenceFolder"))
    GetEvidenceFolderResponse.struct_class = Types::GetEvidenceFolderResponse

    GetEvidenceFoldersByAssessmentControlRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetEvidenceFoldersByAssessmentControlRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetEvidenceFoldersByAssessmentControlRequest.struct_class = Types::GetEvidenceFoldersByAssessmentControlRequest

    GetEvidenceFoldersByAssessmentControlResponse.add_member(:evidence_folders, Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: "evidenceFolders"))
    GetEvidenceFoldersByAssessmentControlResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetEvidenceFoldersByAssessmentControlResponse.struct_class = Types::GetEvidenceFoldersByAssessmentControlResponse

    GetEvidenceFoldersByAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetEvidenceFoldersByAssessmentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetEvidenceFoldersByAssessmentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetEvidenceFoldersByAssessmentRequest.struct_class = Types::GetEvidenceFoldersByAssessmentRequest

    GetEvidenceFoldersByAssessmentResponse.add_member(:evidence_folders, Shapes::ShapeRef.new(shape: AssessmentEvidenceFolders, location_name: "evidenceFolders"))
    GetEvidenceFoldersByAssessmentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetEvidenceFoldersByAssessmentResponse.struct_class = Types::GetEvidenceFoldersByAssessmentResponse

    GetEvidenceRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetEvidenceRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    GetEvidenceRequest.add_member(:evidence_folder_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "evidenceFolderId"))
    GetEvidenceRequest.add_member(:evidence_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "evidenceId"))
    GetEvidenceRequest.struct_class = Types::GetEvidenceRequest

    GetEvidenceResponse.add_member(:evidence, Shapes::ShapeRef.new(shape: Evidence, location_name: "evidence"))
    GetEvidenceResponse.struct_class = Types::GetEvidenceResponse

    GetInsightsByAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    GetInsightsByAssessmentRequest.struct_class = Types::GetInsightsByAssessmentRequest

    GetInsightsByAssessmentResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightsByAssessment, location_name: "insights"))
    GetInsightsByAssessmentResponse.struct_class = Types::GetInsightsByAssessmentResponse

    GetInsightsRequest.struct_class = Types::GetInsightsRequest

    GetInsightsResponse.add_member(:insights, Shapes::ShapeRef.new(shape: Insights, location_name: "insights"))
    GetInsightsResponse.struct_class = Types::GetInsightsResponse

    GetOrganizationAdminAccountRequest.struct_class = Types::GetOrganizationAdminAccountRequest

    GetOrganizationAdminAccountResponse.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "adminAccountId"))
    GetOrganizationAdminAccountResponse.add_member(:organization_id, Shapes::ShapeRef.new(shape: organizationId, location_name: "organizationId"))
    GetOrganizationAdminAccountResponse.struct_class = Types::GetOrganizationAdminAccountResponse

    GetServicesInScopeRequest.struct_class = Types::GetServicesInScopeRequest

    GetServicesInScopeResponse.add_member(:service_metadata, Shapes::ShapeRef.new(shape: ServiceMetadataList, location_name: "serviceMetadata"))
    GetServicesInScopeResponse.struct_class = Types::GetServicesInScopeResponse

    GetSettingsRequest.add_member(:attribute, Shapes::ShapeRef.new(shape: SettingAttribute, required: true, location: "uri", location_name: "attribute"))
    GetSettingsRequest.struct_class = Types::GetSettingsRequest

    GetSettingsResponse.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "settings"))
    GetSettingsResponse.struct_class = Types::GetSettingsResponse

    Insights.add_member(:active_assessments_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "activeAssessmentsCount"))
    Insights.add_member(:noncompliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "noncompliantEvidenceCount"))
    Insights.add_member(:compliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "compliantEvidenceCount"))
    Insights.add_member(:inconclusive_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "inconclusiveEvidenceCount"))
    Insights.add_member(:assessment_controls_count_by_noncompliant_evidence, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "assessmentControlsCountByNoncompliantEvidence"))
    Insights.add_member(:total_assessment_controls_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "totalAssessmentControlsCount"))
    Insights.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    Insights.struct_class = Types::Insights

    InsightsByAssessment.add_member(:noncompliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "noncompliantEvidenceCount"))
    InsightsByAssessment.add_member(:compliant_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "compliantEvidenceCount"))
    InsightsByAssessment.add_member(:inconclusive_evidence_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "inconclusiveEvidenceCount"))
    InsightsByAssessment.add_member(:assessment_controls_count_by_noncompliant_evidence, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "assessmentControlsCountByNoncompliantEvidence"))
    InsightsByAssessment.add_member(:total_assessment_controls_count, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "totalAssessmentControlsCount"))
    InsightsByAssessment.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    InsightsByAssessment.struct_class = Types::InsightsByAssessment

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Keywords.member = Shapes::ShapeRef.new(shape: KeywordValue)

    ListAssessmentControlInsightsByControlDomainRequest.add_member(:control_domain_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "querystring", location_name: "controlDomainId"))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "querystring", location_name: "assessmentId"))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAssessmentControlInsightsByControlDomainRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssessmentControlInsightsByControlDomainRequest.struct_class = Types::ListAssessmentControlInsightsByControlDomainRequest

    ListAssessmentControlInsightsByControlDomainResponse.add_member(:control_insights_by_assessment, Shapes::ShapeRef.new(shape: ControlInsightsMetadataByAssessment, location_name: "controlInsightsByAssessment"))
    ListAssessmentControlInsightsByControlDomainResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAssessmentControlInsightsByControlDomainResponse.struct_class = Types::ListAssessmentControlInsightsByControlDomainResponse

    ListAssessmentFrameworkShareRequestsRequest.add_member(:request_type, Shapes::ShapeRef.new(shape: ShareRequestType, required: true, location: "querystring", location_name: "requestType"))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAssessmentFrameworkShareRequestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssessmentFrameworkShareRequestsRequest.struct_class = Types::ListAssessmentFrameworkShareRequestsRequest

    ListAssessmentFrameworkShareRequestsResponse.add_member(:assessment_framework_share_requests, Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequestList, location_name: "assessmentFrameworkShareRequests"))
    ListAssessmentFrameworkShareRequestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAssessmentFrameworkShareRequestsResponse.struct_class = Types::ListAssessmentFrameworkShareRequestsResponse

    ListAssessmentFrameworksRequest.add_member(:framework_type, Shapes::ShapeRef.new(shape: FrameworkType, required: true, location: "querystring", location_name: "frameworkType"))
    ListAssessmentFrameworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAssessmentFrameworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssessmentFrameworksRequest.struct_class = Types::ListAssessmentFrameworksRequest

    ListAssessmentFrameworksResponse.add_member(:framework_metadata_list, Shapes::ShapeRef.new(shape: FrameworkMetadataList, location_name: "frameworkMetadataList"))
    ListAssessmentFrameworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAssessmentFrameworksResponse.struct_class = Types::ListAssessmentFrameworksResponse

    ListAssessmentMetadata.member = Shapes::ShapeRef.new(shape: AssessmentMetadataItem)

    ListAssessmentReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAssessmentReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssessmentReportsRequest.struct_class = Types::ListAssessmentReportsRequest

    ListAssessmentReportsResponse.add_member(:assessment_reports, Shapes::ShapeRef.new(shape: AssessmentReportsMetadata, location_name: "assessmentReports"))
    ListAssessmentReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAssessmentReportsResponse.struct_class = Types::ListAssessmentReportsResponse

    ListAssessmentsRequest.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentStatus, location: "querystring", location_name: "status"))
    ListAssessmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAssessmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssessmentsRequest.struct_class = Types::ListAssessmentsRequest

    ListAssessmentsResponse.add_member(:assessment_metadata, Shapes::ShapeRef.new(shape: ListAssessmentMetadata, location_name: "assessmentMetadata"))
    ListAssessmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAssessmentsResponse.struct_class = Types::ListAssessmentsResponse

    ListControlDomainInsightsByAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "querystring", location_name: "assessmentId"))
    ListControlDomainInsightsByAssessmentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListControlDomainInsightsByAssessmentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListControlDomainInsightsByAssessmentRequest.struct_class = Types::ListControlDomainInsightsByAssessmentRequest

    ListControlDomainInsightsByAssessmentResponse.add_member(:control_domain_insights, Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: "controlDomainInsights"))
    ListControlDomainInsightsByAssessmentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListControlDomainInsightsByAssessmentResponse.struct_class = Types::ListControlDomainInsightsByAssessmentResponse

    ListControlDomainInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListControlDomainInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListControlDomainInsightsRequest.struct_class = Types::ListControlDomainInsightsRequest

    ListControlDomainInsightsResponse.add_member(:control_domain_insights, Shapes::ShapeRef.new(shape: ControlDomainInsightsList, location_name: "controlDomainInsights"))
    ListControlDomainInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListControlDomainInsightsResponse.struct_class = Types::ListControlDomainInsightsResponse

    ListControlInsightsByControlDomainRequest.add_member(:control_domain_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "querystring", location_name: "controlDomainId"))
    ListControlInsightsByControlDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListControlInsightsByControlDomainRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListControlInsightsByControlDomainRequest.struct_class = Types::ListControlInsightsByControlDomainRequest

    ListControlInsightsByControlDomainResponse.add_member(:control_insights_metadata, Shapes::ShapeRef.new(shape: ControlInsightsMetadata, location_name: "controlInsightsMetadata"))
    ListControlInsightsByControlDomainResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListControlInsightsByControlDomainResponse.struct_class = Types::ListControlInsightsByControlDomainResponse

    ListControlsRequest.add_member(:control_type, Shapes::ShapeRef.new(shape: ControlType, required: true, location: "querystring", location_name: "controlType"))
    ListControlsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListControlsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListControlsRequest.struct_class = Types::ListControlsRequest

    ListControlsResponse.add_member(:control_metadata_list, Shapes::ShapeRef.new(shape: ControlMetadataList, location_name: "controlMetadataList"))
    ListControlsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListControlsResponse.struct_class = Types::ListControlsResponse

    ListKeywordsForDataSourceRequest.add_member(:source, Shapes::ShapeRef.new(shape: SourceType, required: true, location: "querystring", location_name: "source"))
    ListKeywordsForDataSourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListKeywordsForDataSourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKeywordsForDataSourceRequest.struct_class = Types::ListKeywordsForDataSourceRequest

    ListKeywordsForDataSourceResponse.add_member(:keywords, Shapes::ShapeRef.new(shape: Keywords, location_name: "keywords"))
    ListKeywordsForDataSourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListKeywordsForDataSourceResponse.struct_class = Types::ListKeywordsForDataSourceResponse

    ListNotificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListNotificationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNotificationsRequest.struct_class = Types::ListNotificationsRequest

    ListNotificationsResponse.add_member(:notifications, Shapes::ShapeRef.new(shape: Notifications, location_name: "notifications"))
    ListNotificationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListNotificationsResponse.struct_class = Types::ListNotificationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AuditManagerArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManualEvidence.add_member(:s3_resource_path, Shapes::ShapeRef.new(shape: S3Url, location_name: "s3ResourcePath"))
    ManualEvidence.add_member(:text_response, Shapes::ShapeRef.new(shape: ManualEvidenceTextResponse, location_name: "textResponse"))
    ManualEvidence.add_member(:evidence_file_name, Shapes::ShapeRef.new(shape: ManualEvidenceLocalFileName, location_name: "evidenceFileName"))
    ManualEvidence.struct_class = Types::ManualEvidence

    ManualEvidenceList.member = Shapes::ShapeRef.new(shape: ManualEvidence)

    Notification.add_member(:id, Shapes::ShapeRef.new(shape: TimestampUUID, location_name: "id"))
    Notification.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, location_name: "assessmentId"))
    Notification.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    Notification.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, location_name: "controlSetId"))
    Notification.add_member(:control_set_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "controlSetName"))
    Notification.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    Notification.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "eventTime"))
    Notification.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "source"))
    Notification.struct_class = Types::Notification

    Notifications.member = Shapes::ShapeRef.new(shape: Notification)

    RegisterAccountRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "kmsKey"))
    RegisterAccountRequest.add_member(:delegated_admin_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "delegatedAdminAccount"))
    RegisterAccountRequest.struct_class = Types::RegisterAccountRequest

    RegisterAccountResponse.add_member(:status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "status"))
    RegisterAccountResponse.struct_class = Types::RegisterAccountResponse

    RegisterOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "adminAccountId"))
    RegisterOrganizationAdminAccountRequest.struct_class = Types::RegisterOrganizationAdminAccountRequest

    RegisterOrganizationAdminAccountResponse.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "adminAccountId"))
    RegisterOrganizationAdminAccountResponse.add_member(:organization_id, Shapes::ShapeRef.new(shape: organizationId, location_name: "organizationId"))
    RegisterOrganizationAdminAccountResponse.struct_class = Types::RegisterOrganizationAdminAccountResponse

    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: GenericArn, location_name: "arn"))
    Resource.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Resource.add_member(:compliance_check, Shapes::ShapeRef.new(shape: String, location_name: "complianceCheck"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    Role.add_member(:role_type, Shapes::ShapeRef.new(shape: RoleType, required: true, location_name: "roleType"))
    Role.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "roleArn"))
    Role.struct_class = Types::Role

    Roles.member = Shapes::ShapeRef.new(shape: Role)

    Scope.add_member(:aws_accounts, Shapes::ShapeRef.new(shape: AWSAccounts, location_name: "awsAccounts"))
    Scope.add_member(:aws_services, Shapes::ShapeRef.new(shape: AWSServices, location_name: "awsServices"))
    Scope.struct_class = Types::Scope

    ServiceMetadata.add_member(:name, Shapes::ShapeRef.new(shape: AWSServiceName, location_name: "name"))
    ServiceMetadata.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "displayName"))
    ServiceMetadata.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ServiceMetadata.add_member(:category, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "category"))
    ServiceMetadata.struct_class = Types::ServiceMetadata

    ServiceMetadataList.member = Shapes::ShapeRef.new(shape: ServiceMetadata)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Settings.add_member(:is_aws_org_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "isAwsOrgEnabled"))
    Settings.add_member(:sns_topic, Shapes::ShapeRef.new(shape: SNSTopic, location_name: "snsTopic"))
    Settings.add_member(:default_assessment_reports_destination, Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: "defaultAssessmentReportsDestination"))
    Settings.add_member(:default_process_owners, Shapes::ShapeRef.new(shape: Roles, location_name: "defaultProcessOwners"))
    Settings.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "kmsKey"))
    Settings.add_member(:evidence_finder_enablement, Shapes::ShapeRef.new(shape: EvidenceFinderEnablement, location_name: "evidenceFinderEnablement"))
    Settings.add_member(:deregistration_policy, Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: "deregistrationPolicy"))
    Settings.add_member(:default_export_destination, Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: "defaultExportDestination"))
    Settings.struct_class = Types::Settings

    SourceKeyword.add_member(:keyword_input_type, Shapes::ShapeRef.new(shape: KeywordInputType, location_name: "keywordInputType"))
    SourceKeyword.add_member(:keyword_value, Shapes::ShapeRef.new(shape: KeywordValue, location_name: "keywordValue"))
    SourceKeyword.struct_class = Types::SourceKeyword

    StartAssessmentFrameworkShareRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "frameworkId"))
    StartAssessmentFrameworkShareRequest.add_member(:destination_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "destinationAccount"))
    StartAssessmentFrameworkShareRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "destinationRegion"))
    StartAssessmentFrameworkShareRequest.add_member(:comment, Shapes::ShapeRef.new(shape: ShareRequestComment, location_name: "comment"))
    StartAssessmentFrameworkShareRequest.struct_class = Types::StartAssessmentFrameworkShareRequest

    StartAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: "assessmentFrameworkShareRequest"))
    StartAssessmentFrameworkShareResponse.struct_class = Types::StartAssessmentFrameworkShareResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AuditManagerArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    URL.add_member(:hyperlink_name, Shapes::ShapeRef.new(shape: HyperlinkName, location_name: "hyperlinkName"))
    URL.add_member(:link, Shapes::ShapeRef.new(shape: UrlLink, location_name: "link"))
    URL.struct_class = Types::URL

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AuditManagerArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAssessmentControlRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    UpdateAssessmentControlRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: ControlSetId, required: true, location: "uri", location_name: "controlSetId"))
    UpdateAssessmentControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    UpdateAssessmentControlRequest.add_member(:control_status, Shapes::ShapeRef.new(shape: ControlStatus, location_name: "controlStatus"))
    UpdateAssessmentControlRequest.add_member(:comment_body, Shapes::ShapeRef.new(shape: ControlCommentBody, location_name: "commentBody"))
    UpdateAssessmentControlRequest.struct_class = Types::UpdateAssessmentControlRequest

    UpdateAssessmentControlResponse.add_member(:control, Shapes::ShapeRef.new(shape: AssessmentControl, location_name: "control"))
    UpdateAssessmentControlResponse.struct_class = Types::UpdateAssessmentControlResponse

    UpdateAssessmentControlSetStatusRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    UpdateAssessmentControlSetStatusRequest.add_member(:control_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "controlSetId"))
    UpdateAssessmentControlSetStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: ControlSetStatus, required: true, location_name: "status"))
    UpdateAssessmentControlSetStatusRequest.add_member(:comment, Shapes::ShapeRef.new(shape: DelegationComment, required: true, location_name: "comment"))
    UpdateAssessmentControlSetStatusRequest.struct_class = Types::UpdateAssessmentControlSetStatusRequest

    UpdateAssessmentControlSetStatusResponse.add_member(:control_set, Shapes::ShapeRef.new(shape: AssessmentControlSet, location_name: "controlSet"))
    UpdateAssessmentControlSetStatusResponse.struct_class = Types::UpdateAssessmentControlSetStatusResponse

    UpdateAssessmentFrameworkControlSet.add_member(:id, Shapes::ShapeRef.new(shape: ControlSetName, location_name: "id"))
    UpdateAssessmentFrameworkControlSet.add_member(:name, Shapes::ShapeRef.new(shape: ControlSetName, required: true, location_name: "name"))
    UpdateAssessmentFrameworkControlSet.add_member(:controls, Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkControls, required: true, location_name: "controls"))
    UpdateAssessmentFrameworkControlSet.struct_class = Types::UpdateAssessmentFrameworkControlSet

    UpdateAssessmentFrameworkControlSets.member = Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSet)

    UpdateAssessmentFrameworkRequest.add_member(:framework_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "frameworkId"))
    UpdateAssessmentFrameworkRequest.add_member(:name, Shapes::ShapeRef.new(shape: FrameworkName, required: true, location_name: "name"))
    UpdateAssessmentFrameworkRequest.add_member(:description, Shapes::ShapeRef.new(shape: FrameworkDescription, location_name: "description"))
    UpdateAssessmentFrameworkRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "complianceType"))
    UpdateAssessmentFrameworkRequest.add_member(:control_sets, Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkControlSets, required: true, location_name: "controlSets"))
    UpdateAssessmentFrameworkRequest.struct_class = Types::UpdateAssessmentFrameworkRequest

    UpdateAssessmentFrameworkResponse.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    UpdateAssessmentFrameworkResponse.struct_class = Types::UpdateAssessmentFrameworkResponse

    UpdateAssessmentFrameworkShareRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "requestId"))
    UpdateAssessmentFrameworkShareRequest.add_member(:request_type, Shapes::ShapeRef.new(shape: ShareRequestType, required: true, location_name: "requestType"))
    UpdateAssessmentFrameworkShareRequest.add_member(:action, Shapes::ShapeRef.new(shape: ShareRequestAction, required: true, location_name: "action"))
    UpdateAssessmentFrameworkShareRequest.struct_class = Types::UpdateAssessmentFrameworkShareRequest

    UpdateAssessmentFrameworkShareResponse.add_member(:assessment_framework_share_request, Shapes::ShapeRef.new(shape: AssessmentFrameworkShareRequest, location_name: "assessmentFrameworkShareRequest"))
    UpdateAssessmentFrameworkShareResponse.struct_class = Types::UpdateAssessmentFrameworkShareResponse

    UpdateAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    UpdateAssessmentRequest.add_member(:assessment_name, Shapes::ShapeRef.new(shape: AssessmentName, location_name: "assessmentName"))
    UpdateAssessmentRequest.add_member(:assessment_description, Shapes::ShapeRef.new(shape: AssessmentDescription, location_name: "assessmentDescription"))
    UpdateAssessmentRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, required: true, location_name: "scope"))
    UpdateAssessmentRequest.add_member(:assessment_reports_destination, Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: "assessmentReportsDestination"))
    UpdateAssessmentRequest.add_member(:roles, Shapes::ShapeRef.new(shape: Roles, location_name: "roles"))
    UpdateAssessmentRequest.struct_class = Types::UpdateAssessmentRequest

    UpdateAssessmentResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: Assessment, location_name: "assessment"))
    UpdateAssessmentResponse.struct_class = Types::UpdateAssessmentResponse

    UpdateAssessmentStatusRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "assessmentId"))
    UpdateAssessmentStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentStatus, required: true, location_name: "status"))
    UpdateAssessmentStatusRequest.struct_class = Types::UpdateAssessmentStatusRequest

    UpdateAssessmentStatusResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: Assessment, location_name: "assessment"))
    UpdateAssessmentStatusResponse.struct_class = Types::UpdateAssessmentStatusResponse

    UpdateControlRequest.add_member(:control_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "controlId"))
    UpdateControlRequest.add_member(:name, Shapes::ShapeRef.new(shape: ControlName, required: true, location_name: "name"))
    UpdateControlRequest.add_member(:description, Shapes::ShapeRef.new(shape: ControlDescription, location_name: "description"))
    UpdateControlRequest.add_member(:testing_information, Shapes::ShapeRef.new(shape: TestingInformation, location_name: "testingInformation"))
    UpdateControlRequest.add_member(:action_plan_title, Shapes::ShapeRef.new(shape: ActionPlanTitle, location_name: "actionPlanTitle"))
    UpdateControlRequest.add_member(:action_plan_instructions, Shapes::ShapeRef.new(shape: ActionPlanInstructions, location_name: "actionPlanInstructions"))
    UpdateControlRequest.add_member(:control_mapping_sources, Shapes::ShapeRef.new(shape: ControlMappingSources, required: true, location_name: "controlMappingSources"))
    UpdateControlRequest.struct_class = Types::UpdateControlRequest

    UpdateControlResponse.add_member(:control, Shapes::ShapeRef.new(shape: Control, location_name: "control"))
    UpdateControlResponse.struct_class = Types::UpdateControlResponse

    UpdateSettingsRequest.add_member(:sns_topic, Shapes::ShapeRef.new(shape: SnsArn, location_name: "snsTopic"))
    UpdateSettingsRequest.add_member(:default_assessment_reports_destination, Shapes::ShapeRef.new(shape: AssessmentReportsDestination, location_name: "defaultAssessmentReportsDestination"))
    UpdateSettingsRequest.add_member(:default_process_owners, Shapes::ShapeRef.new(shape: Roles, location_name: "defaultProcessOwners"))
    UpdateSettingsRequest.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKey, location_name: "kmsKey"))
    UpdateSettingsRequest.add_member(:evidence_finder_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "evidenceFinderEnabled"))
    UpdateSettingsRequest.add_member(:deregistration_policy, Shapes::ShapeRef.new(shape: DeregistrationPolicy, location_name: "deregistrationPolicy"))
    UpdateSettingsRequest.add_member(:default_export_destination, Shapes::ShapeRef.new(shape: DefaultExportDestination, location_name: "defaultExportDestination"))
    UpdateSettingsRequest.struct_class = Types::UpdateSettingsRequest

    UpdateSettingsResponse.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "settings"))
    UpdateSettingsResponse.struct_class = Types::UpdateSettingsResponse

    ValidateAssessmentReportIntegrityRequest.add_member(:s3_relative_path, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "s3RelativePath"))
    ValidateAssessmentReportIntegrityRequest.struct_class = Types::ValidateAssessmentReportIntegrityRequest

    ValidateAssessmentReportIntegrityResponse.add_member(:signature_valid, Shapes::ShapeRef.new(shape: Boolean, location_name: "signatureValid"))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_algorithm, Shapes::ShapeRef.new(shape: String, location_name: "signatureAlgorithm"))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_date_time, Shapes::ShapeRef.new(shape: String, location_name: "signatureDateTime"))
    ValidateAssessmentReportIntegrityResponse.add_member(:signature_key_id, Shapes::ShapeRef.new(shape: String, location_name: "signatureKeyId"))
    ValidateAssessmentReportIntegrityResponse.add_member(:validation_errors, Shapes::ShapeRef.new(shape: ValidationErrors, location_name: "validationErrors"))
    ValidateAssessmentReportIntegrityResponse.struct_class = Types::ValidateAssessmentReportIntegrityResponse

    ValidationErrors.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "auditmanager",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Audit Manager",
        "serviceId" => "AuditManager",
        "signatureVersion" => "v4",
        "signingName" => "auditmanager",
        "uid" => "auditmanager-2017-07-25",
      }

      api.add_operation(:associate_assessment_report_evidence_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAssessmentReportEvidenceFolder"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/associateToAssessmentReport"
        o.input = Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAssessmentReportEvidenceFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_associate_assessment_report_evidence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateAssessmentReportEvidence"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/batchAssociateToAssessmentReport"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateAssessmentReportEvidenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_create_delegation_by_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateDelegationByAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/assessments/{assessmentId}/delegations"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateDelegationByAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_delete_delegation_by_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDelegationByAssessment"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/delegations"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDelegationByAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_disassociate_assessment_report_evidence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateAssessmentReportEvidence"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateAssessmentReportEvidenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_import_evidence_to_assessment_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchImportEvidenceToAssessmentControl"
        o.http_method = "POST"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence"
        o.input = Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchImportEvidenceToAssessmentControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/assessments"
        o.input = Shapes::ShapeRef.new(shape: CreateAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_assessment_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssessmentFramework"
        o.http_method = "POST"
        o.http_request_uri = "/assessmentFrameworks"
        o.input = Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssessmentFrameworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_assessment_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssessmentReport"
        o.http_method = "POST"
        o.http_request_uri = "/assessments/{assessmentId}/reports"
        o.input = Shapes::ShapeRef.new(shape: CreateAssessmentReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssessmentReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateControl"
        o.http_method = "POST"
        o.http_request_uri = "/controls"
        o.input = Shapes::ShapeRef.new(shape: CreateControlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessment"
        o.http_method = "DELETE"
        o.http_request_uri = "/assessments/{assessmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_assessment_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentFramework"
        o.http_method = "DELETE"
        o.http_request_uri = "/assessmentFrameworks/{frameworkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_assessment_framework_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentFrameworkShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/assessmentFrameworkShareRequests/{requestId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssessmentFrameworkShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_assessment_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssessmentReport"
        o.http_method = "DELETE"
        o.http_request_uri = "/assessments/{assessmentId}/reports/{assessmentReportId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssessmentReportRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssessmentReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteControl"
        o.http_method = "DELETE"
        o.http_request_uri = "/controls/{controlId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteControlRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/account/deregisterAccount"
        o.input = Shapes::ShapeRef.new(shape: DeregisterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/account/deregisterOrganizationAdminAccount"
        o.input = Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_assessment_report_evidence_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAssessmentReportEvidenceFolder"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/disassociateFromAssessmentReport"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAssessmentReportEvidenceFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_account_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountStatus"
        o.http_method = "GET"
        o.http_request_uri = "/account/status"
        o.input = Shapes::ShapeRef.new(shape: GetAccountStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssessment"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_assessment_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssessmentFramework"
        o.http_method = "GET"
        o.http_request_uri = "/assessmentFrameworks/{frameworkId}"
        o.input = Shapes::ShapeRef.new(shape: GetAssessmentFrameworkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssessmentFrameworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_assessment_report_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssessmentReportUrl"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/reports/{assessmentReportId}/url"
        o.input = Shapes::ShapeRef.new(shape: GetAssessmentReportUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssessmentReportUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_change_logs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChangeLogs"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/changelogs"
        o.input = Shapes::ShapeRef.new(shape: GetChangeLogsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChangeLogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetControl"
        o.http_method = "GET"
        o.http_request_uri = "/controls/{controlId}"
        o.input = Shapes::ShapeRef.new(shape: GetControlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_delegations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDelegations"
        o.http_method = "GET"
        o.http_request_uri = "/delegations"
        o.input = Shapes::ShapeRef.new(shape: GetDelegationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDelegationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_evidence, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidence"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_evidence_by_evidence_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidenceByEvidenceFolder"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceByEvidenceFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_evidence_file_upload_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidenceFileUploadUrl"
        o.http_method = "GET"
        o.http_request_uri = "/evidenceFileUploadUrl"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceFileUploadUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_evidence_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidenceFolder"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_evidence_folders_by_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidenceFoldersByAssessment"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/evidenceFolders"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_evidence_folders_by_assessment_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvidenceFoldersByAssessmentControl"
        o.http_method = "GET"
        o.http_request_uri = "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}"
        o.input = Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvidenceFoldersByAssessmentControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsights"
        o.http_method = "GET"
        o.http_request_uri = "/insights"
        o.input = Shapes::ShapeRef.new(shape: GetInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_insights_by_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInsightsByAssessment"
        o.http_method = "GET"
        o.http_request_uri = "/insights/assessments/{assessmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetInsightsByAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInsightsByAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationAdminAccount"
        o.http_method = "GET"
        o.http_request_uri = "/account/organizationAdminAccount"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_services_in_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServicesInScope"
        o.http_method = "GET"
        o.http_request_uri = "/services"
        o.input = Shapes::ShapeRef.new(shape: GetServicesInScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServicesInScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings/{attribute}"
        o.input = Shapes::ShapeRef.new(shape: GetSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_assessment_control_insights_by_control_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentControlInsightsByControlDomain"
        o.http_method = "GET"
        o.http_request_uri = "/insights/controls-by-assessment"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentControlInsightsByControlDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_framework_share_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentFrameworkShareRequests"
        o.http_method = "GET"
        o.http_request_uri = "/assessmentFrameworkShareRequests"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentFrameworkShareRequestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_frameworks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentFrameworks"
        o.http_method = "GET"
        o.http_request_uri = "/assessmentFrameworks"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentFrameworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentFrameworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessment_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessmentReports"
        o.http_method = "GET"
        o.http_request_uri = "/assessmentReports"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssessments"
        o.http_method = "GET"
        o.http_request_uri = "/assessments"
        o.input = Shapes::ShapeRef.new(shape: ListAssessmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_control_domain_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlDomainInsights"
        o.http_method = "GET"
        o.http_request_uri = "/insights/control-domains"
        o.input = Shapes::ShapeRef.new(shape: ListControlDomainInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlDomainInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_control_domain_insights_by_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlDomainInsightsByAssessment"
        o.http_method = "GET"
        o.http_request_uri = "/insights/control-domains-by-assessment"
        o.input = Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlDomainInsightsByAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_control_insights_by_control_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControlInsightsByControlDomain"
        o.http_method = "GET"
        o.http_request_uri = "/insights/controls"
        o.input = Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlInsightsByControlDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_controls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListControls"
        o.http_method = "GET"
        o.http_request_uri = "/controls"
        o.input = Shapes::ShapeRef.new(shape: ListControlsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListControlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_keywords_for_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeywordsForDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/dataSourceKeywords"
        o.input = Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKeywordsForDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotifications"
        o.http_method = "GET"
        o.http_request_uri = "/notifications"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/account/registerAccount"
        o.input = Shapes::ShapeRef.new(shape: RegisterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:register_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/account/registerOrganizationAdminAccount"
        o.input = Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_assessment_framework_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssessmentFrameworkShare"
        o.http_method = "POST"
        o.http_request_uri = "/assessmentFrameworks/{frameworkId}/shareRequests"
        o.input = Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssessmentFrameworkShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessment"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_assessment_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentControl"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_assessment_control_set_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentControlSetStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/controlSets/{controlSetId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentControlSetStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_assessment_framework, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentFramework"
        o.http_method = "PUT"
        o.http_request_uri = "/assessmentFrameworks/{frameworkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_assessment_framework_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentFrameworkShare"
        o.http_method = "PUT"
        o.http_request_uri = "/assessmentFrameworkShareRequests/{requestId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentFrameworkShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_assessment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssessmentStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/assessments/{assessmentId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssessmentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssessmentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_control, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateControl"
        o.http_method = "PUT"
        o.http_request_uri = "/controls/{controlId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateControlRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateControlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:validate_assessment_report_integrity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateAssessmentReportIntegrity"
        o.http_method = "POST"
        o.http_request_uri = "/assessmentReports/integrity"
        o.input = Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidateAssessmentReportIntegrityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
