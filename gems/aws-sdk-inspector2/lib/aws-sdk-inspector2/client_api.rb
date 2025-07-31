# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Inspector2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountAggregation = Shapes::StructureShape.new(name: 'AccountAggregation')
    AccountAggregationResponse = Shapes::StructureShape.new(name: 'AccountAggregationResponse')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdFilterList = Shapes::ListShape.new(name: 'AccountIdFilterList')
    AccountIdSet = Shapes::ListShape.new(name: 'AccountIdSet')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountSortBy = Shapes::StringShape.new(name: 'AccountSortBy')
    AccountState = Shapes::StructureShape.new(name: 'AccountState')
    AccountStateList = Shapes::ListShape.new(name: 'AccountStateList')
    AggCounts = Shapes::IntegerShape.new(name: 'AggCounts')
    AggregationFindingType = Shapes::StringShape.new(name: 'AggregationFindingType')
    AggregationRequest = Shapes::UnionShape.new(name: 'AggregationRequest')
    AggregationResourceType = Shapes::StringShape.new(name: 'AggregationResourceType')
    AggregationResponse = Shapes::UnionShape.new(name: 'AggregationResponse')
    AggregationResponseList = Shapes::ListShape.new(name: 'AggregationResponseList')
    AggregationType = Shapes::StringShape.new(name: 'AggregationType')
    AmiAggregation = Shapes::StructureShape.new(name: 'AmiAggregation')
    AmiAggregationResponse = Shapes::StructureShape.new(name: 'AmiAggregationResponse')
    AmiId = Shapes::StringShape.new(name: 'AmiId')
    AmiSortBy = Shapes::StringShape.new(name: 'AmiSortBy')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    ArchitectureList = Shapes::ListShape.new(name: 'ArchitectureList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateConfigurationRequest = Shapes::StructureShape.new(name: 'AssociateConfigurationRequest')
    AssociateConfigurationRequestList = Shapes::ListShape.new(name: 'AssociateConfigurationRequestList')
    AssociateMemberRequest = Shapes::StructureShape.new(name: 'AssociateMemberRequest')
    AssociateMemberResponse = Shapes::StructureShape.new(name: 'AssociateMemberResponse')
    AssociationResultStatusCode = Shapes::StringShape.new(name: 'AssociationResultStatusCode')
    AssociationResultStatusMessage = Shapes::StringShape.new(name: 'AssociationResultStatusMessage')
    AtigData = Shapes::StructureShape.new(name: 'AtigData')
    AuthorizationUrl = Shapes::StringShape.new(name: 'AuthorizationUrl')
    AutoEnable = Shapes::StructureShape.new(name: 'AutoEnable')
    AwsEc2InstanceDetails = Shapes::StructureShape.new(name: 'AwsEc2InstanceDetails')
    AwsEcrContainerAggregation = Shapes::StructureShape.new(name: 'AwsEcrContainerAggregation')
    AwsEcrContainerAggregationResponse = Shapes::StructureShape.new(name: 'AwsEcrContainerAggregationResponse')
    AwsEcrContainerImageDetails = Shapes::StructureShape.new(name: 'AwsEcrContainerImageDetails')
    AwsEcrContainerSortBy = Shapes::StringShape.new(name: 'AwsEcrContainerSortBy')
    AwsEcsMetadataDetails = Shapes::StructureShape.new(name: 'AwsEcsMetadataDetails')
    AwsEcsMetadataDetailsDetailsGroupString = Shapes::StringShape.new(name: 'AwsEcsMetadataDetailsDetailsGroupString')
    AwsEcsMetadataDetailsTaskDefinitionArnString = Shapes::StringShape.new(name: 'AwsEcsMetadataDetailsTaskDefinitionArnString')
    AwsEksMetadataDetails = Shapes::StructureShape.new(name: 'AwsEksMetadataDetails')
    AwsEksMetadataDetailsNamespaceString = Shapes::StringShape.new(name: 'AwsEksMetadataDetailsNamespaceString')
    AwsEksWorkloadInfo = Shapes::StructureShape.new(name: 'AwsEksWorkloadInfo')
    AwsEksWorkloadInfoList = Shapes::ListShape.new(name: 'AwsEksWorkloadInfoList')
    AwsEksWorkloadInfoNameString = Shapes::StringShape.new(name: 'AwsEksWorkloadInfoNameString')
    AwsEksWorkloadInfoTypeString = Shapes::StringShape.new(name: 'AwsEksWorkloadInfoTypeString')
    AwsLambdaFunctionDetails = Shapes::StructureShape.new(name: 'AwsLambdaFunctionDetails')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchAssociateCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'BatchAssociateCodeSecurityScanConfigurationRequest')
    BatchAssociateCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'BatchAssociateCodeSecurityScanConfigurationResponse')
    BatchDisassociateCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'BatchDisassociateCodeSecurityScanConfigurationRequest')
    BatchDisassociateCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'BatchDisassociateCodeSecurityScanConfigurationResponse')
    BatchGetAccountStatusRequest = Shapes::StructureShape.new(name: 'BatchGetAccountStatusRequest')
    BatchGetAccountStatusResponse = Shapes::StructureShape.new(name: 'BatchGetAccountStatusResponse')
    BatchGetCodeSnippetRequest = Shapes::StructureShape.new(name: 'BatchGetCodeSnippetRequest')
    BatchGetCodeSnippetRequestFindingArnsList = Shapes::ListShape.new(name: 'BatchGetCodeSnippetRequestFindingArnsList')
    BatchGetCodeSnippetResponse = Shapes::StructureShape.new(name: 'BatchGetCodeSnippetResponse')
    BatchGetFindingDetailsRequest = Shapes::StructureShape.new(name: 'BatchGetFindingDetailsRequest')
    BatchGetFindingDetailsResponse = Shapes::StructureShape.new(name: 'BatchGetFindingDetailsResponse')
    BatchGetFreeTrialInfoRequest = Shapes::StructureShape.new(name: 'BatchGetFreeTrialInfoRequest')
    BatchGetFreeTrialInfoRequestAccountIdsList = Shapes::ListShape.new(name: 'BatchGetFreeTrialInfoRequestAccountIdsList')
    BatchGetFreeTrialInfoResponse = Shapes::StructureShape.new(name: 'BatchGetFreeTrialInfoResponse')
    BatchGetMemberEc2DeepInspectionStatusRequest = Shapes::StructureShape.new(name: 'BatchGetMemberEc2DeepInspectionStatusRequest')
    BatchGetMemberEc2DeepInspectionStatusResponse = Shapes::StructureShape.new(name: 'BatchGetMemberEc2DeepInspectionStatusResponse')
    BatchUpdateMemberEc2DeepInspectionStatusRequest = Shapes::StructureShape.new(name: 'BatchUpdateMemberEc2DeepInspectionStatusRequest')
    BatchUpdateMemberEc2DeepInspectionStatusResponse = Shapes::StructureShape.new(name: 'BatchUpdateMemberEc2DeepInspectionStatusResponse')
    BenchmarkProfile = Shapes::StringShape.new(name: 'BenchmarkProfile')
    BenchmarkVersion = Shapes::StringShape.new(name: 'BenchmarkVersion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelFindingsReportRequest = Shapes::StructureShape.new(name: 'CancelFindingsReportRequest')
    CancelFindingsReportResponse = Shapes::StructureShape.new(name: 'CancelFindingsReportResponse')
    CancelSbomExportRequest = Shapes::StructureShape.new(name: 'CancelSbomExportRequest')
    CancelSbomExportResponse = Shapes::StructureShape.new(name: 'CancelSbomExportResponse')
    CheckCount = Shapes::IntegerShape.new(name: 'CheckCount')
    CheckIdFilterList = Shapes::ListShape.new(name: 'CheckIdFilterList')
    CisAccountIdList = Shapes::ListShape.new(name: 'CisAccountIdList')
    CisCheckAggregation = Shapes::StructureShape.new(name: 'CisCheckAggregation')
    CisCheckAggregationList = Shapes::ListShape.new(name: 'CisCheckAggregationList')
    CisDateFilter = Shapes::StructureShape.new(name: 'CisDateFilter')
    CisFindingArn = Shapes::StringShape.new(name: 'CisFindingArn')
    CisFindingArnFilterList = Shapes::ListShape.new(name: 'CisFindingArnFilterList')
    CisFindingStatus = Shapes::StringShape.new(name: 'CisFindingStatus')
    CisFindingStatusComparison = Shapes::StringShape.new(name: 'CisFindingStatusComparison')
    CisFindingStatusFilter = Shapes::StructureShape.new(name: 'CisFindingStatusFilter')
    CisFindingStatusFilterList = Shapes::ListShape.new(name: 'CisFindingStatusFilterList')
    CisNumberFilter = Shapes::StructureShape.new(name: 'CisNumberFilter')
    CisNumberFilterList = Shapes::ListShape.new(name: 'CisNumberFilterList')
    CisOwnerId = Shapes::StringShape.new(name: 'CisOwnerId')
    CisReportFormat = Shapes::StringShape.new(name: 'CisReportFormat')
    CisReportStatus = Shapes::StringShape.new(name: 'CisReportStatus')
    CisResultStatus = Shapes::StringShape.new(name: 'CisResultStatus')
    CisResultStatusComparison = Shapes::StringShape.new(name: 'CisResultStatusComparison')
    CisResultStatusFilter = Shapes::StructureShape.new(name: 'CisResultStatusFilter')
    CisResultStatusFilterList = Shapes::ListShape.new(name: 'CisResultStatusFilterList')
    CisRuleDetails = Shapes::BlobShape.new(name: 'CisRuleDetails')
    CisRuleStatus = Shapes::StringShape.new(name: 'CisRuleStatus')
    CisScan = Shapes::StructureShape.new(name: 'CisScan')
    CisScanArn = Shapes::StringShape.new(name: 'CisScanArn')
    CisScanArnFilterList = Shapes::ListShape.new(name: 'CisScanArnFilterList')
    CisScanConfiguration = Shapes::StructureShape.new(name: 'CisScanConfiguration')
    CisScanConfigurationArn = Shapes::StringShape.new(name: 'CisScanConfigurationArn')
    CisScanConfigurationArnFilterList = Shapes::ListShape.new(name: 'CisScanConfigurationArnFilterList')
    CisScanConfigurationList = Shapes::ListShape.new(name: 'CisScanConfigurationList')
    CisScanConfigurationsSortBy = Shapes::StringShape.new(name: 'CisScanConfigurationsSortBy')
    CisScanDateFilterList = Shapes::ListShape.new(name: 'CisScanDateFilterList')
    CisScanList = Shapes::ListShape.new(name: 'CisScanList')
    CisScanName = Shapes::StringShape.new(name: 'CisScanName')
    CisScanNameFilterList = Shapes::ListShape.new(name: 'CisScanNameFilterList')
    CisScanResultDetails = Shapes::StructureShape.new(name: 'CisScanResultDetails')
    CisScanResultDetailsFilterCriteria = Shapes::StructureShape.new(name: 'CisScanResultDetailsFilterCriteria')
    CisScanResultDetailsList = Shapes::ListShape.new(name: 'CisScanResultDetailsList')
    CisScanResultDetailsSortBy = Shapes::StringShape.new(name: 'CisScanResultDetailsSortBy')
    CisScanResultsAggregatedByChecksFilterCriteria = Shapes::StructureShape.new(name: 'CisScanResultsAggregatedByChecksFilterCriteria')
    CisScanResultsAggregatedByChecksSortBy = Shapes::StringShape.new(name: 'CisScanResultsAggregatedByChecksSortBy')
    CisScanResultsAggregatedByTargetResourceFilterCriteria = Shapes::StructureShape.new(name: 'CisScanResultsAggregatedByTargetResourceFilterCriteria')
    CisScanResultsAggregatedByTargetResourceSortBy = Shapes::StringShape.new(name: 'CisScanResultsAggregatedByTargetResourceSortBy')
    CisScanResultsMaxResults = Shapes::IntegerShape.new(name: 'CisScanResultsMaxResults')
    CisScanStatus = Shapes::StringShape.new(name: 'CisScanStatus')
    CisScanStatusComparison = Shapes::StringShape.new(name: 'CisScanStatusComparison')
    CisScanStatusFilter = Shapes::StructureShape.new(name: 'CisScanStatusFilter')
    CisScanStatusFilterList = Shapes::ListShape.new(name: 'CisScanStatusFilterList')
    CisScheduledByFilterList = Shapes::ListShape.new(name: 'CisScheduledByFilterList')
    CisSecurityLevel = Shapes::StringShape.new(name: 'CisSecurityLevel')
    CisSecurityLevelComparison = Shapes::StringShape.new(name: 'CisSecurityLevelComparison')
    CisSecurityLevelFilter = Shapes::StructureShape.new(name: 'CisSecurityLevelFilter')
    CisSecurityLevelFilterList = Shapes::ListShape.new(name: 'CisSecurityLevelFilterList')
    CisSessionMessage = Shapes::StructureShape.new(name: 'CisSessionMessage')
    CisSessionMessages = Shapes::ListShape.new(name: 'CisSessionMessages')
    CisSortOrder = Shapes::StringShape.new(name: 'CisSortOrder')
    CisStringComparison = Shapes::StringShape.new(name: 'CisStringComparison')
    CisStringFilter = Shapes::StructureShape.new(name: 'CisStringFilter')
    CisTagMap = Shapes::MapShape.new(name: 'CisTagMap')
    CisTargetResourceAggregation = Shapes::StructureShape.new(name: 'CisTargetResourceAggregation')
    CisTargetResourceAggregationList = Shapes::ListShape.new(name: 'CisTargetResourceAggregationList')
    CisTargetStatus = Shapes::StringShape.new(name: 'CisTargetStatus')
    CisTargetStatusComparison = Shapes::StringShape.new(name: 'CisTargetStatusComparison')
    CisTargetStatusFilter = Shapes::StructureShape.new(name: 'CisTargetStatusFilter')
    CisTargetStatusReason = Shapes::StringShape.new(name: 'CisTargetStatusReason')
    CisTargetStatusReasonFilter = Shapes::StructureShape.new(name: 'CisTargetStatusReasonFilter')
    CisTargets = Shapes::StructureShape.new(name: 'CisTargets')
    CisaAction = Shapes::StringShape.new(name: 'CisaAction')
    CisaData = Shapes::StructureShape.new(name: 'CisaData')
    CisaDateAdded = Shapes::TimestampShape.new(name: 'CisaDateAdded')
    CisaDateDue = Shapes::TimestampShape.new(name: 'CisaDateDue')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClusterDetails = Shapes::StructureShape.new(name: 'ClusterDetails')
    ClusterForImageFilterCriteria = Shapes::StructureShape.new(name: 'ClusterForImageFilterCriteria')
    ClusterForImageFilterCriteriaResourceIdString = Shapes::StringShape.new(name: 'ClusterForImageFilterCriteriaResourceIdString')
    ClusterInformation = Shapes::StructureShape.new(name: 'ClusterInformation')
    ClusterInformationClusterArnString = Shapes::StringShape.new(name: 'ClusterInformationClusterArnString')
    ClusterInformationClusterDetailsList = Shapes::ListShape.new(name: 'ClusterInformationClusterDetailsList')
    ClusterInformationList = Shapes::ListShape.new(name: 'ClusterInformationList')
    ClusterMetadata = Shapes::UnionShape.new(name: 'ClusterMetadata')
    CodeFilePath = Shapes::StructureShape.new(name: 'CodeFilePath')
    CodeLine = Shapes::StructureShape.new(name: 'CodeLine')
    CodeLineContentString = Shapes::StringShape.new(name: 'CodeLineContentString')
    CodeLineList = Shapes::ListShape.new(name: 'CodeLineList')
    CodeRepositoryAggregation = Shapes::StructureShape.new(name: 'CodeRepositoryAggregation')
    CodeRepositoryAggregationResponse = Shapes::StructureShape.new(name: 'CodeRepositoryAggregationResponse')
    CodeRepositoryDetails = Shapes::StructureShape.new(name: 'CodeRepositoryDetails')
    CodeRepositoryIntegrationArn = Shapes::StringShape.new(name: 'CodeRepositoryIntegrationArn')
    CodeRepositoryMetadata = Shapes::StructureShape.new(name: 'CodeRepositoryMetadata')
    CodeRepositoryMetadataProjectNameString = Shapes::StringShape.new(name: 'CodeRepositoryMetadataProjectNameString')
    CodeRepositoryMetadataProviderTypeString = Shapes::StringShape.new(name: 'CodeRepositoryMetadataProviderTypeString')
    CodeRepositoryMetadataProviderTypeVisibilityString = Shapes::StringShape.new(name: 'CodeRepositoryMetadataProviderTypeVisibilityString')
    CodeRepositoryOnDemandScan = Shapes::StructureShape.new(name: 'CodeRepositoryOnDemandScan')
    CodeRepositoryProjectName = Shapes::StringShape.new(name: 'CodeRepositoryProjectName')
    CodeRepositoryProviderType = Shapes::StringShape.new(name: 'CodeRepositoryProviderType')
    CodeRepositorySortBy = Shapes::StringShape.new(name: 'CodeRepositorySortBy')
    CodeScanStatus = Shapes::StringShape.new(name: 'CodeScanStatus')
    CodeSecurityClientToken = Shapes::StringShape.new(name: 'CodeSecurityClientToken')
    CodeSecurityIntegrationArn = Shapes::StringShape.new(name: 'CodeSecurityIntegrationArn')
    CodeSecurityIntegrationSummary = Shapes::StructureShape.new(name: 'CodeSecurityIntegrationSummary')
    CodeSecurityResource = Shapes::UnionShape.new(name: 'CodeSecurityResource')
    CodeSecurityScanConfiguration = Shapes::StructureShape.new(name: 'CodeSecurityScanConfiguration')
    CodeSecurityScanConfigurationAssociationSummaries = Shapes::ListShape.new(name: 'CodeSecurityScanConfigurationAssociationSummaries')
    CodeSecurityScanConfigurationAssociationSummary = Shapes::StructureShape.new(name: 'CodeSecurityScanConfigurationAssociationSummary')
    CodeSecurityScanConfigurationSummaries = Shapes::ListShape.new(name: 'CodeSecurityScanConfigurationSummaries')
    CodeSecurityScanConfigurationSummary = Shapes::StructureShape.new(name: 'CodeSecurityScanConfigurationSummary')
    CodeSecurityUuid = Shapes::StringShape.new(name: 'CodeSecurityUuid')
    CodeSnippetError = Shapes::StructureShape.new(name: 'CodeSnippetError')
    CodeSnippetErrorCode = Shapes::StringShape.new(name: 'CodeSnippetErrorCode')
    CodeSnippetErrorList = Shapes::ListShape.new(name: 'CodeSnippetErrorList')
    CodeSnippetResult = Shapes::StructureShape.new(name: 'CodeSnippetResult')
    CodeSnippetResultList = Shapes::ListShape.new(name: 'CodeSnippetResultList')
    CodeVulnerabilityDetails = Shapes::StructureShape.new(name: 'CodeVulnerabilityDetails')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    Component = Shapes::StringShape.new(name: 'Component')
    ComponentArn = Shapes::StringShape.new(name: 'ComponentArn')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ComputePlatform = Shapes::StructureShape.new(name: 'ComputePlatform')
    ConfigurationLevel = Shapes::StringShape.new(name: 'ConfigurationLevel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContinuousIntegrationScanConfiguration = Shapes::StructureShape.new(name: 'ContinuousIntegrationScanConfiguration')
    ContinuousIntegrationScanEvent = Shapes::StringShape.new(name: 'ContinuousIntegrationScanEvent')
    ContinuousIntegrationScanSupportedEvents = Shapes::ListShape.new(name: 'ContinuousIntegrationScanSupportedEvents')
    Counts = Shapes::StructureShape.new(name: 'Counts')
    CountsList = Shapes::ListShape.new(name: 'CountsList')
    CoverageDateFilter = Shapes::StructureShape.new(name: 'CoverageDateFilter')
    CoverageDateFilterList = Shapes::ListShape.new(name: 'CoverageDateFilterList')
    CoverageFilterCriteria = Shapes::StructureShape.new(name: 'CoverageFilterCriteria')
    CoverageMapComparison = Shapes::StringShape.new(name: 'CoverageMapComparison')
    CoverageMapFilter = Shapes::StructureShape.new(name: 'CoverageMapFilter')
    CoverageMapFilterList = Shapes::ListShape.new(name: 'CoverageMapFilterList')
    CoverageNumberFilter = Shapes::StructureShape.new(name: 'CoverageNumberFilter')
    CoverageNumberFilterList = Shapes::ListShape.new(name: 'CoverageNumberFilterList')
    CoverageResourceType = Shapes::StringShape.new(name: 'CoverageResourceType')
    CoverageStringComparison = Shapes::StringShape.new(name: 'CoverageStringComparison')
    CoverageStringFilter = Shapes::StructureShape.new(name: 'CoverageStringFilter')
    CoverageStringFilterList = Shapes::ListShape.new(name: 'CoverageStringFilterList')
    CoverageStringInput = Shapes::StringShape.new(name: 'CoverageStringInput')
    CoveredResource = Shapes::StructureShape.new(name: 'CoveredResource')
    CoveredResources = Shapes::ListShape.new(name: 'CoveredResources')
    CreateCisScanConfigurationRequest = Shapes::StructureShape.new(name: 'CreateCisScanConfigurationRequest')
    CreateCisScanConfigurationResponse = Shapes::StructureShape.new(name: 'CreateCisScanConfigurationResponse')
    CreateCisTargets = Shapes::StructureShape.new(name: 'CreateCisTargets')
    CreateCodeSecurityIntegrationRequest = Shapes::StructureShape.new(name: 'CreateCodeSecurityIntegrationRequest')
    CreateCodeSecurityIntegrationResponse = Shapes::StructureShape.new(name: 'CreateCodeSecurityIntegrationResponse')
    CreateCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'CreateCodeSecurityScanConfigurationRequest')
    CreateCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'CreateCodeSecurityScanConfigurationResponse')
    CreateFilterRequest = Shapes::StructureShape.new(name: 'CreateFilterRequest')
    CreateFilterResponse = Shapes::StructureShape.new(name: 'CreateFilterResponse')
    CreateFindingsReportRequest = Shapes::StructureShape.new(name: 'CreateFindingsReportRequest')
    CreateFindingsReportResponse = Shapes::StructureShape.new(name: 'CreateFindingsReportResponse')
    CreateGitLabSelfManagedIntegrationDetail = Shapes::StructureShape.new(name: 'CreateGitLabSelfManagedIntegrationDetail')
    CreateIntegrationDetail = Shapes::UnionShape.new(name: 'CreateIntegrationDetail')
    CreateSbomExportRequest = Shapes::StructureShape.new(name: 'CreateSbomExportRequest')
    CreateSbomExportResponse = Shapes::StructureShape.new(name: 'CreateSbomExportResponse')
    Currency = Shapes::StringShape.new(name: 'Currency')
    Cvss2 = Shapes::StructureShape.new(name: 'Cvss2')
    Cvss2BaseScore = Shapes::FloatShape.new(name: 'Cvss2BaseScore')
    Cvss2ScoringVector = Shapes::StringShape.new(name: 'Cvss2ScoringVector')
    Cvss3 = Shapes::StructureShape.new(name: 'Cvss3')
    Cvss3BaseScore = Shapes::FloatShape.new(name: 'Cvss3BaseScore')
    Cvss3ScoringVector = Shapes::StringShape.new(name: 'Cvss3ScoringVector')
    CvssScore = Shapes::StructureShape.new(name: 'CvssScore')
    CvssScoreAdjustment = Shapes::StructureShape.new(name: 'CvssScoreAdjustment')
    CvssScoreAdjustmentList = Shapes::ListShape.new(name: 'CvssScoreAdjustmentList')
    CvssScoreDetails = Shapes::StructureShape.new(name: 'CvssScoreDetails')
    CvssScoreList = Shapes::ListShape.new(name: 'CvssScoreList')
    Cwe = Shapes::StringShape.new(name: 'Cwe')
    CweList = Shapes::ListShape.new(name: 'CweList')
    Cwes = Shapes::ListShape.new(name: 'Cwes')
    DailySchedule = Shapes::StructureShape.new(name: 'DailySchedule')
    DateFilter = Shapes::StructureShape.new(name: 'DateFilter')
    DateFilterList = Shapes::ListShape.new(name: 'DateFilterList')
    DateTimeTimestamp = Shapes::TimestampShape.new(name: 'DateTimeTimestamp')
    Day = Shapes::StringShape.new(name: 'Day')
    DaysList = Shapes::ListShape.new(name: 'DaysList')
    DelegatedAdmin = Shapes::StructureShape.new(name: 'DelegatedAdmin')
    DelegatedAdminAccount = Shapes::StructureShape.new(name: 'DelegatedAdminAccount')
    DelegatedAdminAccountList = Shapes::ListShape.new(name: 'DelegatedAdminAccountList')
    DelegatedAdminStatus = Shapes::StringShape.new(name: 'DelegatedAdminStatus')
    DeleteCisScanConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteCisScanConfigurationRequest')
    DeleteCisScanConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteCisScanConfigurationResponse')
    DeleteCodeSecurityIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteCodeSecurityIntegrationRequest')
    DeleteCodeSecurityIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteCodeSecurityIntegrationResponse')
    DeleteCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteCodeSecurityScanConfigurationRequest')
    DeleteCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteCodeSecurityScanConfigurationResponse')
    DeleteFilterRequest = Shapes::StructureShape.new(name: 'DeleteFilterRequest')
    DeleteFilterResponse = Shapes::StructureShape.new(name: 'DeleteFilterResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DetectionPlatforms = Shapes::ListShape.new(name: 'DetectionPlatforms')
    DetectorTagList = Shapes::ListShape.new(name: 'DetectorTagList')
    DisableDelegatedAdminAccountRequest = Shapes::StructureShape.new(name: 'DisableDelegatedAdminAccountRequest')
    DisableDelegatedAdminAccountResponse = Shapes::StructureShape.new(name: 'DisableDelegatedAdminAccountResponse')
    DisableRequest = Shapes::StructureShape.new(name: 'DisableRequest')
    DisableResourceTypeList = Shapes::ListShape.new(name: 'DisableResourceTypeList')
    DisableResponse = Shapes::StructureShape.new(name: 'DisableResponse')
    DisassociateConfigurationRequest = Shapes::StructureShape.new(name: 'DisassociateConfigurationRequest')
    DisassociateConfigurationRequestList = Shapes::ListShape.new(name: 'DisassociateConfigurationRequestList')
    DisassociateMemberRequest = Shapes::StructureShape.new(name: 'DisassociateMemberRequest')
    DisassociateMemberResponse = Shapes::StructureShape.new(name: 'DisassociateMemberResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    Ec2Configuration = Shapes::StructureShape.new(name: 'Ec2Configuration')
    Ec2ConfigurationState = Shapes::StructureShape.new(name: 'Ec2ConfigurationState')
    Ec2DeepInspectionStatus = Shapes::StringShape.new(name: 'Ec2DeepInspectionStatus')
    Ec2InstanceAggregation = Shapes::StructureShape.new(name: 'Ec2InstanceAggregation')
    Ec2InstanceAggregationResponse = Shapes::StructureShape.new(name: 'Ec2InstanceAggregationResponse')
    Ec2InstanceSortBy = Shapes::StringShape.new(name: 'Ec2InstanceSortBy')
    Ec2Metadata = Shapes::StructureShape.new(name: 'Ec2Metadata')
    Ec2Platform = Shapes::StringShape.new(name: 'Ec2Platform')
    Ec2ScanMode = Shapes::StringShape.new(name: 'Ec2ScanMode')
    Ec2ScanModeState = Shapes::StructureShape.new(name: 'Ec2ScanModeState')
    Ec2ScanModeStatus = Shapes::StringShape.new(name: 'Ec2ScanModeStatus')
    EcrConfiguration = Shapes::StructureShape.new(name: 'EcrConfiguration')
    EcrConfigurationState = Shapes::StructureShape.new(name: 'EcrConfigurationState')
    EcrContainerImageMetadata = Shapes::StructureShape.new(name: 'EcrContainerImageMetadata')
    EcrPullDateRescanDuration = Shapes::StringShape.new(name: 'EcrPullDateRescanDuration')
    EcrPullDateRescanMode = Shapes::StringShape.new(name: 'EcrPullDateRescanMode')
    EcrRepositoryMetadata = Shapes::StructureShape.new(name: 'EcrRepositoryMetadata')
    EcrRescanDuration = Shapes::StringShape.new(name: 'EcrRescanDuration')
    EcrRescanDurationState = Shapes::StructureShape.new(name: 'EcrRescanDurationState')
    EcrRescanDurationStatus = Shapes::StringShape.new(name: 'EcrRescanDurationStatus')
    EcrScanFrequency = Shapes::StringShape.new(name: 'EcrScanFrequency')
    EnableDelegatedAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableDelegatedAdminAccountRequest')
    EnableDelegatedAdminAccountResponse = Shapes::StructureShape.new(name: 'EnableDelegatedAdminAccountResponse')
    EnableRequest = Shapes::StructureShape.new(name: 'EnableRequest')
    EnableResourceTypeList = Shapes::ListShape.new(name: 'EnableResourceTypeList')
    EnableResponse = Shapes::StructureShape.new(name: 'EnableResponse')
    Epss = Shapes::StructureShape.new(name: 'Epss')
    EpssDetails = Shapes::StructureShape.new(name: 'EpssDetails')
    EpssScore = Shapes::FloatShape.new(name: 'EpssScore')
    EpssScoreValue = Shapes::FloatShape.new(name: 'EpssScoreValue')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Evidence = Shapes::StructureShape.new(name: 'Evidence')
    EvidenceDetail = Shapes::StringShape.new(name: 'EvidenceDetail')
    EvidenceList = Shapes::ListShape.new(name: 'EvidenceList')
    EvidenceRule = Shapes::StringShape.new(name: 'EvidenceRule')
    EvidenceSeverity = Shapes::StringShape.new(name: 'EvidenceSeverity')
    ExecutionRoleArn = Shapes::StringShape.new(name: 'ExecutionRoleArn')
    ExploitAvailable = Shapes::StringShape.new(name: 'ExploitAvailable')
    ExploitObserved = Shapes::StructureShape.new(name: 'ExploitObserved')
    ExploitabilityDetails = Shapes::StructureShape.new(name: 'ExploitabilityDetails')
    ExternalReportStatus = Shapes::StringShape.new(name: 'ExternalReportStatus')
    FailedAccount = Shapes::StructureShape.new(name: 'FailedAccount')
    FailedAccountList = Shapes::ListShape.new(name: 'FailedAccountList')
    FailedAssociationResult = Shapes::StructureShape.new(name: 'FailedAssociationResult')
    FailedAssociationResultList = Shapes::ListShape.new(name: 'FailedAssociationResultList')
    FailedMemberAccountEc2DeepInspectionStatusState = Shapes::StructureShape.new(name: 'FailedMemberAccountEc2DeepInspectionStatusState')
    FailedMemberAccountEc2DeepInspectionStatusStateList = Shapes::ListShape.new(name: 'FailedMemberAccountEc2DeepInspectionStatusStateList')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterAction = Shapes::StringShape.new(name: 'FilterAction')
    FilterArn = Shapes::StringShape.new(name: 'FilterArn')
    FilterArnList = Shapes::ListShape.new(name: 'FilterArnList')
    FilterCriteria = Shapes::StructureShape.new(name: 'FilterCriteria')
    FilterDescription = Shapes::StringShape.new(name: 'FilterDescription')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterReason = Shapes::StringShape.new(name: 'FilterReason')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingArn = Shapes::StringShape.new(name: 'FindingArn')
    FindingArnList = Shapes::ListShape.new(name: 'FindingArnList')
    FindingDescription = Shapes::StringShape.new(name: 'FindingDescription')
    FindingDetail = Shapes::StructureShape.new(name: 'FindingDetail')
    FindingDetails = Shapes::ListShape.new(name: 'FindingDetails')
    FindingDetailsError = Shapes::StructureShape.new(name: 'FindingDetailsError')
    FindingDetailsErrorCode = Shapes::StringShape.new(name: 'FindingDetailsErrorCode')
    FindingDetailsErrorList = Shapes::ListShape.new(name: 'FindingDetailsErrorList')
    FindingList = Shapes::ListShape.new(name: 'FindingList')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingTitle = Shapes::StringShape.new(name: 'FindingTitle')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingTypeAggregation = Shapes::StructureShape.new(name: 'FindingTypeAggregation')
    FindingTypeAggregationResponse = Shapes::StructureShape.new(name: 'FindingTypeAggregationResponse')
    FindingTypeSortBy = Shapes::StringShape.new(name: 'FindingTypeSortBy')
    FirstSeen = Shapes::TimestampShape.new(name: 'FirstSeen')
    FixAvailable = Shapes::StringShape.new(name: 'FixAvailable')
    FreeTrialAccountInfo = Shapes::StructureShape.new(name: 'FreeTrialAccountInfo')
    FreeTrialAccountInfoList = Shapes::ListShape.new(name: 'FreeTrialAccountInfoList')
    FreeTrialInfo = Shapes::StructureShape.new(name: 'FreeTrialInfo')
    FreeTrialInfoError = Shapes::StructureShape.new(name: 'FreeTrialInfoError')
    FreeTrialInfoErrorCode = Shapes::StringShape.new(name: 'FreeTrialInfoErrorCode')
    FreeTrialInfoErrorList = Shapes::ListShape.new(name: 'FreeTrialInfoErrorList')
    FreeTrialInfoList = Shapes::ListShape.new(name: 'FreeTrialInfoList')
    FreeTrialStatus = Shapes::StringShape.new(name: 'FreeTrialStatus')
    FreeTrialType = Shapes::StringShape.new(name: 'FreeTrialType')
    FrequencyExpression = Shapes::StringShape.new(name: 'FrequencyExpression')
    FunctionName = Shapes::StringShape.new(name: 'FunctionName')
    GetCisScanReportRequest = Shapes::StructureShape.new(name: 'GetCisScanReportRequest')
    GetCisScanReportResponse = Shapes::StructureShape.new(name: 'GetCisScanReportResponse')
    GetCisScanResultDetailsMaxResults = Shapes::IntegerShape.new(name: 'GetCisScanResultDetailsMaxResults')
    GetCisScanResultDetailsRequest = Shapes::StructureShape.new(name: 'GetCisScanResultDetailsRequest')
    GetCisScanResultDetailsResponse = Shapes::StructureShape.new(name: 'GetCisScanResultDetailsResponse')
    GetClustersForImageNextToken = Shapes::StringShape.new(name: 'GetClustersForImageNextToken')
    GetClustersForImageRequest = Shapes::StructureShape.new(name: 'GetClustersForImageRequest')
    GetClustersForImageRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetClustersForImageRequestMaxResultsInteger')
    GetClustersForImageResponse = Shapes::StructureShape.new(name: 'GetClustersForImageResponse')
    GetCodeSecurityIntegrationRequest = Shapes::StructureShape.new(name: 'GetCodeSecurityIntegrationRequest')
    GetCodeSecurityIntegrationResponse = Shapes::StructureShape.new(name: 'GetCodeSecurityIntegrationResponse')
    GetCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'GetCodeSecurityScanConfigurationRequest')
    GetCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'GetCodeSecurityScanConfigurationResponse')
    GetCodeSecurityScanRequest = Shapes::StructureShape.new(name: 'GetCodeSecurityScanRequest')
    GetCodeSecurityScanResponse = Shapes::StructureShape.new(name: 'GetCodeSecurityScanResponse')
    GetConfigurationRequest = Shapes::StructureShape.new(name: 'GetConfigurationRequest')
    GetConfigurationResponse = Shapes::StructureShape.new(name: 'GetConfigurationResponse')
    GetDelegatedAdminAccountRequest = Shapes::StructureShape.new(name: 'GetDelegatedAdminAccountRequest')
    GetDelegatedAdminAccountResponse = Shapes::StructureShape.new(name: 'GetDelegatedAdminAccountResponse')
    GetEc2DeepInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'GetEc2DeepInspectionConfigurationRequest')
    GetEc2DeepInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'GetEc2DeepInspectionConfigurationResponse')
    GetEncryptionKeyRequest = Shapes::StructureShape.new(name: 'GetEncryptionKeyRequest')
    GetEncryptionKeyResponse = Shapes::StructureShape.new(name: 'GetEncryptionKeyResponse')
    GetFindingsReportStatusRequest = Shapes::StructureShape.new(name: 'GetFindingsReportStatusRequest')
    GetFindingsReportStatusResponse = Shapes::StructureShape.new(name: 'GetFindingsReportStatusResponse')
    GetMemberRequest = Shapes::StructureShape.new(name: 'GetMemberRequest')
    GetMemberResponse = Shapes::StructureShape.new(name: 'GetMemberResponse')
    GetSbomExportRequest = Shapes::StructureShape.new(name: 'GetSbomExportRequest')
    GetSbomExportResponse = Shapes::StructureShape.new(name: 'GetSbomExportResponse')
    GitHubAuthCode = Shapes::StringShape.new(name: 'GitHubAuthCode')
    GitHubInstallationId = Shapes::StringShape.new(name: 'GitHubInstallationId')
    GitLabAccessToken = Shapes::StringShape.new(name: 'GitLabAccessToken')
    GitLabAuthCode = Shapes::StringShape.new(name: 'GitLabAuthCode')
    GroupKey = Shapes::StringShape.new(name: 'GroupKey')
    ImageHash = Shapes::StringShape.new(name: 'ImageHash')
    ImageLayerAggregation = Shapes::StructureShape.new(name: 'ImageLayerAggregation')
    ImageLayerAggregationResponse = Shapes::StructureShape.new(name: 'ImageLayerAggregationResponse')
    ImageLayerSortBy = Shapes::StringShape.new(name: 'ImageLayerSortBy')
    ImageTagList = Shapes::ListShape.new(name: 'ImageTagList')
    InspectorScoreDetails = Shapes::StructureShape.new(name: 'InspectorScoreDetails')
    InstanceUrl = Shapes::StringShape.new(name: 'InstanceUrl')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegrationName = Shapes::StringShape.new(name: 'IntegrationName')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationSummaries = Shapes::ListShape.new(name: 'IntegrationSummaries')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpV4Address = Shapes::StringShape.new(name: 'IpV4Address')
    IpV4AddressList = Shapes::ListShape.new(name: 'IpV4AddressList')
    IpV6Address = Shapes::StringShape.new(name: 'IpV6Address')
    IpV6AddressList = Shapes::ListShape.new(name: 'IpV6AddressList')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaFunctionAggregation = Shapes::StructureShape.new(name: 'LambdaFunctionAggregation')
    LambdaFunctionAggregationResponse = Shapes::StructureShape.new(name: 'LambdaFunctionAggregationResponse')
    LambdaFunctionMetadata = Shapes::StructureShape.new(name: 'LambdaFunctionMetadata')
    LambdaFunctionSortBy = Shapes::StringShape.new(name: 'LambdaFunctionSortBy')
    LambdaLayerAggregation = Shapes::StructureShape.new(name: 'LambdaLayerAggregation')
    LambdaLayerAggregationResponse = Shapes::StructureShape.new(name: 'LambdaLayerAggregationResponse')
    LambdaLayerArn = Shapes::StringShape.new(name: 'LambdaLayerArn')
    LambdaLayerList = Shapes::ListShape.new(name: 'LambdaLayerList')
    LambdaLayerSortBy = Shapes::StringShape.new(name: 'LambdaLayerSortBy')
    LambdaVpcConfig = Shapes::StructureShape.new(name: 'LambdaVpcConfig')
    LastSeen = Shapes::TimestampShape.new(name: 'LastSeen')
    LayerList = Shapes::ListShape.new(name: 'LayerList')
    ListAccountPermissionsMaxResults = Shapes::IntegerShape.new(name: 'ListAccountPermissionsMaxResults')
    ListAccountPermissionsRequest = Shapes::StructureShape.new(name: 'ListAccountPermissionsRequest')
    ListAccountPermissionsResponse = Shapes::StructureShape.new(name: 'ListAccountPermissionsResponse')
    ListCisScanConfigurationsFilterCriteria = Shapes::StructureShape.new(name: 'ListCisScanConfigurationsFilterCriteria')
    ListCisScanConfigurationsMaxResults = Shapes::IntegerShape.new(name: 'ListCisScanConfigurationsMaxResults')
    ListCisScanConfigurationsRequest = Shapes::StructureShape.new(name: 'ListCisScanConfigurationsRequest')
    ListCisScanConfigurationsResponse = Shapes::StructureShape.new(name: 'ListCisScanConfigurationsResponse')
    ListCisScanResultsAggregatedByChecksRequest = Shapes::StructureShape.new(name: 'ListCisScanResultsAggregatedByChecksRequest')
    ListCisScanResultsAggregatedByChecksResponse = Shapes::StructureShape.new(name: 'ListCisScanResultsAggregatedByChecksResponse')
    ListCisScanResultsAggregatedByTargetResourceRequest = Shapes::StructureShape.new(name: 'ListCisScanResultsAggregatedByTargetResourceRequest')
    ListCisScanResultsAggregatedByTargetResourceResponse = Shapes::StructureShape.new(name: 'ListCisScanResultsAggregatedByTargetResourceResponse')
    ListCisScansDetailLevel = Shapes::StringShape.new(name: 'ListCisScansDetailLevel')
    ListCisScansFilterCriteria = Shapes::StructureShape.new(name: 'ListCisScansFilterCriteria')
    ListCisScansMaxResults = Shapes::IntegerShape.new(name: 'ListCisScansMaxResults')
    ListCisScansRequest = Shapes::StructureShape.new(name: 'ListCisScansRequest')
    ListCisScansResponse = Shapes::StructureShape.new(name: 'ListCisScansResponse')
    ListCisScansSortBy = Shapes::StringShape.new(name: 'ListCisScansSortBy')
    ListCodeSecurityIntegrationsRequest = Shapes::StructureShape.new(name: 'ListCodeSecurityIntegrationsRequest')
    ListCodeSecurityIntegrationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCodeSecurityIntegrationsRequestMaxResultsInteger')
    ListCodeSecurityIntegrationsResponse = Shapes::StructureShape.new(name: 'ListCodeSecurityIntegrationsResponse')
    ListCodeSecurityScanConfigurationAssociationsRequest = Shapes::StructureShape.new(name: 'ListCodeSecurityScanConfigurationAssociationsRequest')
    ListCodeSecurityScanConfigurationAssociationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCodeSecurityScanConfigurationAssociationsRequestMaxResultsInteger')
    ListCodeSecurityScanConfigurationAssociationsResponse = Shapes::StructureShape.new(name: 'ListCodeSecurityScanConfigurationAssociationsResponse')
    ListCodeSecurityScanConfigurationsRequest = Shapes::StructureShape.new(name: 'ListCodeSecurityScanConfigurationsRequest')
    ListCodeSecurityScanConfigurationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCodeSecurityScanConfigurationsRequestMaxResultsInteger')
    ListCodeSecurityScanConfigurationsResponse = Shapes::StructureShape.new(name: 'ListCodeSecurityScanConfigurationsResponse')
    ListCoverageMaxResults = Shapes::IntegerShape.new(name: 'ListCoverageMaxResults')
    ListCoverageRequest = Shapes::StructureShape.new(name: 'ListCoverageRequest')
    ListCoverageResponse = Shapes::StructureShape.new(name: 'ListCoverageResponse')
    ListCoverageStatisticsRequest = Shapes::StructureShape.new(name: 'ListCoverageStatisticsRequest')
    ListCoverageStatisticsResponse = Shapes::StructureShape.new(name: 'ListCoverageStatisticsResponse')
    ListDelegatedAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListDelegatedAdminAccountsRequest')
    ListDelegatedAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListDelegatedAdminAccountsResponse')
    ListDelegatedAdminMaxResults = Shapes::IntegerShape.new(name: 'ListDelegatedAdminMaxResults')
    ListFilterMaxResults = Shapes::IntegerShape.new(name: 'ListFilterMaxResults')
    ListFiltersRequest = Shapes::StructureShape.new(name: 'ListFiltersRequest')
    ListFiltersResponse = Shapes::StructureShape.new(name: 'ListFiltersResponse')
    ListFindingAggregationsMaxResults = Shapes::IntegerShape.new(name: 'ListFindingAggregationsMaxResults')
    ListFindingAggregationsRequest = Shapes::StructureShape.new(name: 'ListFindingAggregationsRequest')
    ListFindingAggregationsResponse = Shapes::StructureShape.new(name: 'ListFindingAggregationsResponse')
    ListFindingsMaxResults = Shapes::IntegerShape.new(name: 'ListFindingsMaxResults')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListMembersMaxResults = Shapes::IntegerShape.new(name: 'ListMembersMaxResults')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsageTotalsMaxResults = Shapes::IntegerShape.new(name: 'ListUsageTotalsMaxResults')
    ListUsageTotalsNextToken = Shapes::StringShape.new(name: 'ListUsageTotalsNextToken')
    ListUsageTotalsRequest = Shapes::StructureShape.new(name: 'ListUsageTotalsRequest')
    ListUsageTotalsResponse = Shapes::StructureShape.new(name: 'ListUsageTotalsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapComparison = Shapes::StringShape.new(name: 'MapComparison')
    MapFilter = Shapes::StructureShape.new(name: 'MapFilter')
    MapFilterList = Shapes::ListShape.new(name: 'MapFilterList')
    MapKey = Shapes::StringShape.new(name: 'MapKey')
    MapValue = Shapes::StringShape.new(name: 'MapValue')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberAccountEc2DeepInspectionStatus = Shapes::StructureShape.new(name: 'MemberAccountEc2DeepInspectionStatus')
    MemberAccountEc2DeepInspectionStatusList = Shapes::ListShape.new(name: 'MemberAccountEc2DeepInspectionStatusList')
    MemberAccountEc2DeepInspectionStatusState = Shapes::StructureShape.new(name: 'MemberAccountEc2DeepInspectionStatusState')
    MemberAccountEc2DeepInspectionStatusStateList = Shapes::ListShape.new(name: 'MemberAccountEc2DeepInspectionStatusStateList')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    MeteringAccountId = Shapes::StringShape.new(name: 'MeteringAccountId')
    MonthlyCostEstimate = Shapes::FloatShape.new(name: 'MonthlyCostEstimate')
    MonthlySchedule = Shapes::StructureShape.new(name: 'MonthlySchedule')
    NetworkPath = Shapes::StructureShape.new(name: 'NetworkPath')
    NetworkProtocol = Shapes::StringShape.new(name: 'NetworkProtocol')
    NetworkReachabilityDetails = Shapes::StructureShape.new(name: 'NetworkReachabilityDetails')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NumberFilter = Shapes::StructureShape.new(name: 'NumberFilter')
    NumberFilterList = Shapes::ListShape.new(name: 'NumberFilterList')
    OneAccountIdFilterList = Shapes::ListShape.new(name: 'OneAccountIdFilterList')
    OneTimeSchedule = Shapes::StructureShape.new(name: 'OneTimeSchedule')
    Operation = Shapes::StringShape.new(name: 'Operation')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PackageAggregation = Shapes::StructureShape.new(name: 'PackageAggregation')
    PackageAggregationResponse = Shapes::StructureShape.new(name: 'PackageAggregationResponse')
    PackageArchitecture = Shapes::StringShape.new(name: 'PackageArchitecture')
    PackageEpoch = Shapes::IntegerShape.new(name: 'PackageEpoch')
    PackageFilter = Shapes::StructureShape.new(name: 'PackageFilter')
    PackageFilterList = Shapes::ListShape.new(name: 'PackageFilterList')
    PackageManager = Shapes::StringShape.new(name: 'PackageManager')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageRelease = Shapes::StringShape.new(name: 'PackageRelease')
    PackageSortBy = Shapes::StringShape.new(name: 'PackageSortBy')
    PackageType = Shapes::StringShape.new(name: 'PackageType')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PackageVulnerabilityDetails = Shapes::StructureShape.new(name: 'PackageVulnerabilityDetails')
    Path = Shapes::StringShape.new(name: 'Path')
    PathList = Shapes::ListShape.new(name: 'PathList')
    PeriodicScanConfiguration = Shapes::StructureShape.new(name: 'PeriodicScanConfiguration')
    PeriodicScanFrequency = Shapes::StringShape.new(name: 'PeriodicScanFrequency')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    Permissions = Shapes::ListShape.new(name: 'Permissions')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PlatformFilterList = Shapes::ListShape.new(name: 'PlatformFilterList')
    PlatformVersion = Shapes::StringShape.new(name: 'PlatformVersion')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRangeFilter = Shapes::StructureShape.new(name: 'PortRangeFilter')
    PortRangeFilterList = Shapes::ListShape.new(name: 'PortRangeFilterList')
    Product = Shapes::StringShape.new(name: 'Product')
    ProjectCodeSecurityScanConfiguration = Shapes::StructureShape.new(name: 'ProjectCodeSecurityScanConfiguration')
    ProjectContinuousIntegrationScanConfiguration = Shapes::StructureShape.new(name: 'ProjectContinuousIntegrationScanConfiguration')
    ProjectContinuousIntegrationScanConfigurationList = Shapes::ListShape.new(name: 'ProjectContinuousIntegrationScanConfigurationList')
    ProjectId = Shapes::StringShape.new(name: 'ProjectId')
    ProjectPeriodicScanConfiguration = Shapes::StructureShape.new(name: 'ProjectPeriodicScanConfiguration')
    ProjectPeriodicScanConfigurationList = Shapes::ListShape.new(name: 'ProjectPeriodicScanConfigurationList')
    ProjectSelectionScope = Shapes::StringShape.new(name: 'ProjectSelectionScope')
    Reason = Shapes::StringShape.new(name: 'Reason')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    ReferenceUrls = Shapes::ListShape.new(name: 'ReferenceUrls')
    RelatedVulnerabilities = Shapes::ListShape.new(name: 'RelatedVulnerabilities')
    RelatedVulnerability = Shapes::StringShape.new(name: 'RelatedVulnerability')
    RelationshipStatus = Shapes::StringShape.new(name: 'RelationshipStatus')
    Remediation = Shapes::StructureShape.new(name: 'Remediation')
    ReportFormat = Shapes::StringShape.new(name: 'ReportFormat')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportTargetAccounts = Shapes::ListShape.new(name: 'ReportTargetAccounts')
    ReportingErrorCode = Shapes::StringShape.new(name: 'ReportingErrorCode')
    RepositoryAggregation = Shapes::StructureShape.new(name: 'RepositoryAggregation')
    RepositoryAggregationResponse = Shapes::StructureShape.new(name: 'RepositoryAggregationResponse')
    RepositorySortBy = Shapes::StringShape.new(name: 'RepositorySortBy')
    ResetEncryptionKeyRequest = Shapes::StructureShape.new(name: 'ResetEncryptionKeyRequest')
    ResetEncryptionKeyResponse = Shapes::StructureShape.new(name: 'ResetEncryptionKeyResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceFilterCriteria = Shapes::StructureShape.new(name: 'ResourceFilterCriteria')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdFilterList = Shapes::ListShape.new(name: 'ResourceIdFilterList')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceMapComparison = Shapes::StringShape.new(name: 'ResourceMapComparison')
    ResourceMapFilter = Shapes::StructureShape.new(name: 'ResourceMapFilter')
    ResourceMapFilterList = Shapes::ListShape.new(name: 'ResourceMapFilterList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceScanMetadata = Shapes::StructureShape.new(name: 'ResourceScanMetadata')
    ResourceScanType = Shapes::StringShape.new(name: 'ResourceScanType')
    ResourceState = Shapes::StructureShape.new(name: 'ResourceState')
    ResourceStatus = Shapes::StructureShape.new(name: 'ResourceStatus')
    ResourceStringComparison = Shapes::StringShape.new(name: 'ResourceStringComparison')
    ResourceStringFilter = Shapes::StructureShape.new(name: 'ResourceStringFilter')
    ResourceStringFilterList = Shapes::ListShape.new(name: 'ResourceStringFilterList')
    ResourceStringInput = Shapes::StringShape.new(name: 'ResourceStringInput')
    ResourceTagFilterList = Shapes::ListShape.new(name: 'ResourceTagFilterList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RiskScore = Shapes::IntegerShape.new(name: 'RiskScore')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    RuleSetCategories = Shapes::ListShape.new(name: 'RuleSetCategories')
    RuleSetCategory = Shapes::StringShape.new(name: 'RuleSetCategory')
    Runtime = Shapes::StringShape.new(name: 'Runtime')
    SbomReportFormat = Shapes::StringShape.new(name: 'SbomReportFormat')
    ScanConfigurationArn = Shapes::StringShape.new(name: 'ScanConfigurationArn')
    ScanConfigurationName = Shapes::StringShape.new(name: 'ScanConfigurationName')
    ScanMode = Shapes::StringShape.new(name: 'ScanMode')
    ScanStatus = Shapes::StructureShape.new(name: 'ScanStatus')
    ScanStatusCode = Shapes::StringShape.new(name: 'ScanStatusCode')
    ScanStatusReason = Shapes::StringShape.new(name: 'ScanStatusReason')
    ScanType = Shapes::StringShape.new(name: 'ScanType')
    Schedule = Shapes::UnionShape.new(name: 'Schedule')
    ScopeSettings = Shapes::StructureShape.new(name: 'ScopeSettings')
    SearchVulnerabilitiesFilterCriteria = Shapes::StructureShape.new(name: 'SearchVulnerabilitiesFilterCriteria')
    SearchVulnerabilitiesRequest = Shapes::StructureShape.new(name: 'SearchVulnerabilitiesRequest')
    SearchVulnerabilitiesResponse = Shapes::StructureShape.new(name: 'SearchVulnerabilitiesResponse')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SendCisSessionHealthRequest = Shapes::StructureShape.new(name: 'SendCisSessionHealthRequest')
    SendCisSessionHealthResponse = Shapes::StructureShape.new(name: 'SendCisSessionHealthResponse')
    SendCisSessionTelemetryRequest = Shapes::StructureShape.new(name: 'SendCisSessionTelemetryRequest')
    SendCisSessionTelemetryResponse = Shapes::StructureShape.new(name: 'SendCisSessionTelemetryResponse')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Severity = Shapes::StringShape.new(name: 'Severity')
    SeverityCounts = Shapes::StructureShape.new(name: 'SeverityCounts')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    SortField = Shapes::StringShape.new(name: 'SortField')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceLayerHash = Shapes::StringShape.new(name: 'SourceLayerHash')
    StartCisSessionMessage = Shapes::StructureShape.new(name: 'StartCisSessionMessage')
    StartCisSessionRequest = Shapes::StructureShape.new(name: 'StartCisSessionRequest')
    StartCisSessionResponse = Shapes::StructureShape.new(name: 'StartCisSessionResponse')
    StartCodeSecurityScanRequest = Shapes::StructureShape.new(name: 'StartCodeSecurityScanRequest')
    StartCodeSecurityScanResponse = Shapes::StructureShape.new(name: 'StartCodeSecurityScanResponse')
    State = Shapes::StructureShape.new(name: 'State')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusCounts = Shapes::StructureShape.new(name: 'StatusCounts')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepList = Shapes::ListShape.new(name: 'StepList')
    StopCisMessageProgress = Shapes::StructureShape.new(name: 'StopCisMessageProgress')
    StopCisSessionMessage = Shapes::StructureShape.new(name: 'StopCisSessionMessage')
    StopCisSessionRequest = Shapes::StructureShape.new(name: 'StopCisSessionRequest')
    StopCisSessionResponse = Shapes::StructureShape.new(name: 'StopCisSessionResponse')
    StopCisSessionStatus = Shapes::StringShape.new(name: 'StopCisSessionStatus')
    String = Shapes::StringShape.new(name: 'String')
    StringComparison = Shapes::StringShape.new(name: 'StringComparison')
    StringFilter = Shapes::StructureShape.new(name: 'StringFilter')
    StringFilterList = Shapes::ListShape.new(name: 'StringFilterList')
    StringInput = Shapes::StringShape.new(name: 'StringInput')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SuccessfulAssociationResult = Shapes::StructureShape.new(name: 'SuccessfulAssociationResult')
    SuccessfulAssociationResultList = Shapes::ListShape.new(name: 'SuccessfulAssociationResultList')
    SuggestedFix = Shapes::StructureShape.new(name: 'SuggestedFix')
    SuggestedFixCodeString = Shapes::StringShape.new(name: 'SuggestedFixCodeString')
    SuggestedFixDescriptionString = Shapes::StringShape.new(name: 'SuggestedFixDescriptionString')
    SuggestedFixes = Shapes::ListShape.new(name: 'SuggestedFixes')
    TagComparison = Shapes::StringShape.new(name: 'TagComparison')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    Target = Shapes::StringShape.new(name: 'Target')
    TargetAccount = Shapes::StringShape.new(name: 'TargetAccount')
    TargetAccountList = Shapes::ListShape.new(name: 'TargetAccountList')
    TargetResourceTags = Shapes::MapShape.new(name: 'TargetResourceTags')
    TargetResourceTagsKey = Shapes::StringShape.new(name: 'TargetResourceTagsKey')
    TargetResourceTagsValue = Shapes::StringShape.new(name: 'TargetResourceTagsValue')
    TargetStatusFilterList = Shapes::ListShape.new(name: 'TargetStatusFilterList')
    TargetStatusReasonFilterList = Shapes::ListShape.new(name: 'TargetStatusReasonFilterList')
    Targets = Shapes::ListShape.new(name: 'Targets')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::StructureShape.new(name: 'Time')
    TimeOfDay = Shapes::StringShape.new(name: 'TimeOfDay')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TitleAggregation = Shapes::StructureShape.new(name: 'TitleAggregation')
    TitleAggregationResponse = Shapes::StructureShape.new(name: 'TitleAggregationResponse')
    TitleFilterList = Shapes::ListShape.new(name: 'TitleFilterList')
    TitleSortBy = Shapes::StringShape.new(name: 'TitleSortBy')
    Tool = Shapes::StringShape.new(name: 'Tool')
    Tools = Shapes::ListShape.new(name: 'Tools')
    Ttp = Shapes::StringShape.new(name: 'Ttp')
    Ttps = Shapes::ListShape.new(name: 'Ttps')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCisScanConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateCisScanConfigurationRequest')
    UpdateCisScanConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateCisScanConfigurationResponse')
    UpdateCisTargets = Shapes::StructureShape.new(name: 'UpdateCisTargets')
    UpdateCodeSecurityIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateCodeSecurityIntegrationRequest')
    UpdateCodeSecurityIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateCodeSecurityIntegrationResponse')
    UpdateCodeSecurityScanConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateCodeSecurityScanConfigurationRequest')
    UpdateCodeSecurityScanConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateCodeSecurityScanConfigurationResponse')
    UpdateConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationResponse')
    UpdateEc2DeepInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateEc2DeepInspectionConfigurationRequest')
    UpdateEc2DeepInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateEc2DeepInspectionConfigurationResponse')
    UpdateEncryptionKeyRequest = Shapes::StructureShape.new(name: 'UpdateEncryptionKeyRequest')
    UpdateEncryptionKeyResponse = Shapes::StructureShape.new(name: 'UpdateEncryptionKeyResponse')
    UpdateFilterRequest = Shapes::StructureShape.new(name: 'UpdateFilterRequest')
    UpdateFilterResponse = Shapes::StructureShape.new(name: 'UpdateFilterResponse')
    UpdateGitHubIntegrationDetail = Shapes::StructureShape.new(name: 'UpdateGitHubIntegrationDetail')
    UpdateGitLabSelfManagedIntegrationDetail = Shapes::StructureShape.new(name: 'UpdateGitLabSelfManagedIntegrationDetail')
    UpdateIntegrationDetails = Shapes::UnionShape.new(name: 'UpdateIntegrationDetails')
    UpdateOrgEc2DeepInspectionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrgEc2DeepInspectionConfigurationRequest')
    UpdateOrgEc2DeepInspectionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrgEc2DeepInspectionConfigurationResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationResponse')
    Usage = Shapes::StructureShape.new(name: 'Usage')
    UsageAccountId = Shapes::StringShape.new(name: 'UsageAccountId')
    UsageAccountIdList = Shapes::ListShape.new(name: 'UsageAccountIdList')
    UsageList = Shapes::ListShape.new(name: 'UsageList')
    UsageTotal = Shapes::StructureShape.new(name: 'UsageTotal')
    UsageTotalList = Shapes::ListShape.new(name: 'UsageTotalList')
    UsageType = Shapes::StringShape.new(name: 'UsageType')
    UsageValue = Shapes::FloatShape.new(name: 'UsageValue')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Vendor = Shapes::StringShape.new(name: 'Vendor')
    VendorCreatedAt = Shapes::TimestampShape.new(name: 'VendorCreatedAt')
    VendorSeverity = Shapes::StringShape.new(name: 'VendorSeverity')
    VendorUpdatedAt = Shapes::TimestampShape.new(name: 'VendorUpdatedAt')
    Version = Shapes::StringShape.new(name: 'Version')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    VulnId = Shapes::StringShape.new(name: 'VulnId')
    VulnIdList = Shapes::ListShape.new(name: 'VulnIdList')
    Vulnerabilities = Shapes::ListShape.new(name: 'Vulnerabilities')
    Vulnerability = Shapes::StructureShape.new(name: 'Vulnerability')
    VulnerabilityDescription = Shapes::StringShape.new(name: 'VulnerabilityDescription')
    VulnerabilityId = Shapes::StringShape.new(name: 'VulnerabilityId')
    VulnerabilityIdList = Shapes::ListShape.new(name: 'VulnerabilityIdList')
    VulnerabilityReferenceUrl = Shapes::StringShape.new(name: 'VulnerabilityReferenceUrl')
    VulnerabilityReferenceUrls = Shapes::ListShape.new(name: 'VulnerabilityReferenceUrls')
    VulnerabilitySource = Shapes::StringShape.new(name: 'VulnerabilitySource')
    VulnerabilitySourceUrl = Shapes::StringShape.new(name: 'VulnerabilitySourceUrl')
    VulnerablePackage = Shapes::StructureShape.new(name: 'VulnerablePackage')
    VulnerablePackageList = Shapes::ListShape.new(name: 'VulnerablePackageList')
    VulnerablePackageRemediation = Shapes::StringShape.new(name: 'VulnerablePackageRemediation')
    WeeklySchedule = Shapes::StructureShape.new(name: 'WeeklySchedule')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    Account.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Account.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "resourceStatus"))
    Account.struct_class = Types::Account

    AccountAggregation.add_member(:finding_type, Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: "findingType"))
    AccountAggregation.add_member(:resource_type, Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: "resourceType"))
    AccountAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    AccountAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: AccountSortBy, location_name: "sortBy"))
    AccountAggregation.struct_class = Types::AccountAggregation

    AccountAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AccountAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    AccountAggregationResponse.add_member(:exploit_available_count, Shapes::ShapeRef.new(shape: Long, location_name: "exploitAvailableCount"))
    AccountAggregationResponse.add_member(:fix_available_count, Shapes::ShapeRef.new(shape: Long, location_name: "fixAvailableCount"))
    AccountAggregationResponse.struct_class = Types::AccountAggregationResponse

    AccountIdFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    AccountIdSet.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AccountState.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountState.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    AccountState.add_member(:resource_state, Shapes::ShapeRef.new(shape: ResourceState, required: true, location_name: "resourceState"))
    AccountState.struct_class = Types::AccountState

    AccountStateList.member = Shapes::ShapeRef.new(shape: AccountState)

    AggregationRequest.add_member(:account_aggregation, Shapes::ShapeRef.new(shape: AccountAggregation, location_name: "accountAggregation"))
    AggregationRequest.add_member(:ami_aggregation, Shapes::ShapeRef.new(shape: AmiAggregation, location_name: "amiAggregation"))
    AggregationRequest.add_member(:aws_ecr_container_aggregation, Shapes::ShapeRef.new(shape: AwsEcrContainerAggregation, location_name: "awsEcrContainerAggregation"))
    AggregationRequest.add_member(:ec2_instance_aggregation, Shapes::ShapeRef.new(shape: Ec2InstanceAggregation, location_name: "ec2InstanceAggregation"))
    AggregationRequest.add_member(:finding_type_aggregation, Shapes::ShapeRef.new(shape: FindingTypeAggregation, location_name: "findingTypeAggregation"))
    AggregationRequest.add_member(:image_layer_aggregation, Shapes::ShapeRef.new(shape: ImageLayerAggregation, location_name: "imageLayerAggregation"))
    AggregationRequest.add_member(:package_aggregation, Shapes::ShapeRef.new(shape: PackageAggregation, location_name: "packageAggregation"))
    AggregationRequest.add_member(:repository_aggregation, Shapes::ShapeRef.new(shape: RepositoryAggregation, location_name: "repositoryAggregation"))
    AggregationRequest.add_member(:title_aggregation, Shapes::ShapeRef.new(shape: TitleAggregation, location_name: "titleAggregation"))
    AggregationRequest.add_member(:lambda_layer_aggregation, Shapes::ShapeRef.new(shape: LambdaLayerAggregation, location_name: "lambdaLayerAggregation"))
    AggregationRequest.add_member(:lambda_function_aggregation, Shapes::ShapeRef.new(shape: LambdaFunctionAggregation, location_name: "lambdaFunctionAggregation"))
    AggregationRequest.add_member(:code_repository_aggregation, Shapes::ShapeRef.new(shape: CodeRepositoryAggregation, location_name: "codeRepositoryAggregation"))
    AggregationRequest.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AggregationRequest.add_member_subclass(:account_aggregation, Types::AggregationRequest::AccountAggregation)
    AggregationRequest.add_member_subclass(:ami_aggregation, Types::AggregationRequest::AmiAggregation)
    AggregationRequest.add_member_subclass(:aws_ecr_container_aggregation, Types::AggregationRequest::AwsEcrContainerAggregation)
    AggregationRequest.add_member_subclass(:ec2_instance_aggregation, Types::AggregationRequest::Ec2InstanceAggregation)
    AggregationRequest.add_member_subclass(:finding_type_aggregation, Types::AggregationRequest::FindingTypeAggregation)
    AggregationRequest.add_member_subclass(:image_layer_aggregation, Types::AggregationRequest::ImageLayerAggregation)
    AggregationRequest.add_member_subclass(:package_aggregation, Types::AggregationRequest::PackageAggregation)
    AggregationRequest.add_member_subclass(:repository_aggregation, Types::AggregationRequest::RepositoryAggregation)
    AggregationRequest.add_member_subclass(:title_aggregation, Types::AggregationRequest::TitleAggregation)
    AggregationRequest.add_member_subclass(:lambda_layer_aggregation, Types::AggregationRequest::LambdaLayerAggregation)
    AggregationRequest.add_member_subclass(:lambda_function_aggregation, Types::AggregationRequest::LambdaFunctionAggregation)
    AggregationRequest.add_member_subclass(:code_repository_aggregation, Types::AggregationRequest::CodeRepositoryAggregation)
    AggregationRequest.add_member_subclass(:unknown, Types::AggregationRequest::Unknown)
    AggregationRequest.struct_class = Types::AggregationRequest

    AggregationResponse.add_member(:account_aggregation, Shapes::ShapeRef.new(shape: AccountAggregationResponse, location_name: "accountAggregation"))
    AggregationResponse.add_member(:ami_aggregation, Shapes::ShapeRef.new(shape: AmiAggregationResponse, location_name: "amiAggregation"))
    AggregationResponse.add_member(:aws_ecr_container_aggregation, Shapes::ShapeRef.new(shape: AwsEcrContainerAggregationResponse, location_name: "awsEcrContainerAggregation"))
    AggregationResponse.add_member(:ec2_instance_aggregation, Shapes::ShapeRef.new(shape: Ec2InstanceAggregationResponse, location_name: "ec2InstanceAggregation"))
    AggregationResponse.add_member(:finding_type_aggregation, Shapes::ShapeRef.new(shape: FindingTypeAggregationResponse, location_name: "findingTypeAggregation"))
    AggregationResponse.add_member(:image_layer_aggregation, Shapes::ShapeRef.new(shape: ImageLayerAggregationResponse, location_name: "imageLayerAggregation"))
    AggregationResponse.add_member(:package_aggregation, Shapes::ShapeRef.new(shape: PackageAggregationResponse, location_name: "packageAggregation"))
    AggregationResponse.add_member(:repository_aggregation, Shapes::ShapeRef.new(shape: RepositoryAggregationResponse, location_name: "repositoryAggregation"))
    AggregationResponse.add_member(:title_aggregation, Shapes::ShapeRef.new(shape: TitleAggregationResponse, location_name: "titleAggregation"))
    AggregationResponse.add_member(:lambda_layer_aggregation, Shapes::ShapeRef.new(shape: LambdaLayerAggregationResponse, location_name: "lambdaLayerAggregation"))
    AggregationResponse.add_member(:lambda_function_aggregation, Shapes::ShapeRef.new(shape: LambdaFunctionAggregationResponse, location_name: "lambdaFunctionAggregation"))
    AggregationResponse.add_member(:code_repository_aggregation, Shapes::ShapeRef.new(shape: CodeRepositoryAggregationResponse, location_name: "codeRepositoryAggregation"))
    AggregationResponse.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AggregationResponse.add_member_subclass(:account_aggregation, Types::AggregationResponse::AccountAggregation)
    AggregationResponse.add_member_subclass(:ami_aggregation, Types::AggregationResponse::AmiAggregation)
    AggregationResponse.add_member_subclass(:aws_ecr_container_aggregation, Types::AggregationResponse::AwsEcrContainerAggregation)
    AggregationResponse.add_member_subclass(:ec2_instance_aggregation, Types::AggregationResponse::Ec2InstanceAggregation)
    AggregationResponse.add_member_subclass(:finding_type_aggregation, Types::AggregationResponse::FindingTypeAggregation)
    AggregationResponse.add_member_subclass(:image_layer_aggregation, Types::AggregationResponse::ImageLayerAggregation)
    AggregationResponse.add_member_subclass(:package_aggregation, Types::AggregationResponse::PackageAggregation)
    AggregationResponse.add_member_subclass(:repository_aggregation, Types::AggregationResponse::RepositoryAggregation)
    AggregationResponse.add_member_subclass(:title_aggregation, Types::AggregationResponse::TitleAggregation)
    AggregationResponse.add_member_subclass(:lambda_layer_aggregation, Types::AggregationResponse::LambdaLayerAggregation)
    AggregationResponse.add_member_subclass(:lambda_function_aggregation, Types::AggregationResponse::LambdaFunctionAggregation)
    AggregationResponse.add_member_subclass(:code_repository_aggregation, Types::AggregationResponse::CodeRepositoryAggregation)
    AggregationResponse.add_member_subclass(:unknown, Types::AggregationResponse::Unknown)
    AggregationResponse.struct_class = Types::AggregationResponse

    AggregationResponseList.member = Shapes::ShapeRef.new(shape: AggregationResponse)

    AmiAggregation.add_member(:amis, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "amis"))
    AmiAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    AmiAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: AmiSortBy, location_name: "sortBy"))
    AmiAggregation.struct_class = Types::AmiAggregation

    AmiAggregationResponse.add_member(:ami, Shapes::ShapeRef.new(shape: AmiId, required: true, location_name: "ami"))
    AmiAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AmiAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    AmiAggregationResponse.add_member(:affected_instances, Shapes::ShapeRef.new(shape: Long, location_name: "affectedInstances"))
    AmiAggregationResponse.struct_class = Types::AmiAggregationResponse

    ArchitectureList.member = Shapes::ShapeRef.new(shape: Architecture)

    AssociateConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    AssociateConfigurationRequest.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, required: true, location_name: "resource"))
    AssociateConfigurationRequest.struct_class = Types::AssociateConfigurationRequest

    AssociateConfigurationRequestList.member = Shapes::ShapeRef.new(shape: AssociateConfigurationRequest)

    AssociateMemberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AssociateMemberRequest.struct_class = Types::AssociateMemberRequest

    AssociateMemberResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AssociateMemberResponse.struct_class = Types::AssociateMemberResponse

    AtigData.add_member(:first_seen, Shapes::ShapeRef.new(shape: FirstSeen, location_name: "firstSeen"))
    AtigData.add_member(:last_seen, Shapes::ShapeRef.new(shape: LastSeen, location_name: "lastSeen"))
    AtigData.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "targets"))
    AtigData.add_member(:ttps, Shapes::ShapeRef.new(shape: Ttps, location_name: "ttps"))
    AtigData.struct_class = Types::AtigData

    AutoEnable.add_member(:ec2, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ec2"))
    AutoEnable.add_member(:ecr, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ecr"))
    AutoEnable.add_member(:lambda, Shapes::ShapeRef.new(shape: Boolean, location_name: "lambda"))
    AutoEnable.add_member(:lambda_code, Shapes::ShapeRef.new(shape: Boolean, location_name: "lambdaCode"))
    AutoEnable.add_member(:code_repository, Shapes::ShapeRef.new(shape: Boolean, location_name: "codeRepository"))
    AutoEnable.struct_class = Types::AutoEnable

    AwsEc2InstanceDetails.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "type"))
    AwsEc2InstanceDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageId"))
    AwsEc2InstanceDetails.add_member(:ip_v4_addresses, Shapes::ShapeRef.new(shape: IpV4AddressList, location_name: "ipV4Addresses"))
    AwsEc2InstanceDetails.add_member(:ip_v6_addresses, Shapes::ShapeRef.new(shape: IpV6AddressList, location_name: "ipV6Addresses"))
    AwsEc2InstanceDetails.add_member(:key_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyName"))
    AwsEc2InstanceDetails.add_member(:iam_instance_profile_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "iamInstanceProfileArn"))
    AwsEc2InstanceDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vpcId"))
    AwsEc2InstanceDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    AwsEc2InstanceDetails.add_member(:launched_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "launchedAt"))
    AwsEc2InstanceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    AwsEc2InstanceDetails.struct_class = Types::AwsEc2InstanceDetails

    AwsEcrContainerAggregation.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceIds"))
    AwsEcrContainerAggregation.add_member(:image_shas, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "imageShas"))
    AwsEcrContainerAggregation.add_member(:repositories, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "repositories"))
    AwsEcrContainerAggregation.add_member(:architectures, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "architectures"))
    AwsEcrContainerAggregation.add_member(:image_tags, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "imageTags"))
    AwsEcrContainerAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    AwsEcrContainerAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: AwsEcrContainerSortBy, location_name: "sortBy"))
    AwsEcrContainerAggregation.add_member(:last_in_use_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "lastInUseAt"))
    AwsEcrContainerAggregation.add_member(:in_use_count, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "inUseCount"))
    AwsEcrContainerAggregation.struct_class = Types::AwsEcrContainerAggregation

    AwsEcrContainerAggregationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "resourceId"))
    AwsEcrContainerAggregationResponse.add_member(:image_sha, Shapes::ShapeRef.new(shape: String, location_name: "imageSha"))
    AwsEcrContainerAggregationResponse.add_member(:repository, Shapes::ShapeRef.new(shape: String, location_name: "repository"))
    AwsEcrContainerAggregationResponse.add_member(:architecture, Shapes::ShapeRef.new(shape: String, location_name: "architecture"))
    AwsEcrContainerAggregationResponse.add_member(:image_tags, Shapes::ShapeRef.new(shape: StringList, location_name: "imageTags"))
    AwsEcrContainerAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AwsEcrContainerAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    AwsEcrContainerAggregationResponse.add_member(:last_in_use_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastInUseAt"))
    AwsEcrContainerAggregationResponse.add_member(:in_use_count, Shapes::ShapeRef.new(shape: Long, location_name: "inUseCount"))
    AwsEcrContainerAggregationResponse.struct_class = Types::AwsEcrContainerAggregationResponse

    AwsEcrContainerImageDetails.add_member(:repository_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "repositoryName"))
    AwsEcrContainerImageDetails.add_member(:image_tags, Shapes::ShapeRef.new(shape: ImageTagList, location_name: "imageTags"))
    AwsEcrContainerImageDetails.add_member(:pushed_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "pushedAt"))
    AwsEcrContainerImageDetails.add_member(:author, Shapes::ShapeRef.new(shape: String, location_name: "author"))
    AwsEcrContainerImageDetails.add_member(:architecture, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "architecture"))
    AwsEcrContainerImageDetails.add_member(:image_hash, Shapes::ShapeRef.new(shape: ImageHash, required: true, location_name: "imageHash"))
    AwsEcrContainerImageDetails.add_member(:registry, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "registry"))
    AwsEcrContainerImageDetails.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    AwsEcrContainerImageDetails.add_member(:last_in_use_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastInUseAt"))
    AwsEcrContainerImageDetails.add_member(:in_use_count, Shapes::ShapeRef.new(shape: Long, location_name: "inUseCount"))
    AwsEcrContainerImageDetails.struct_class = Types::AwsEcrContainerImageDetails

    AwsEcsMetadataDetails.add_member(:details_group, Shapes::ShapeRef.new(shape: AwsEcsMetadataDetailsDetailsGroupString, required: true, location_name: "detailsGroup"))
    AwsEcsMetadataDetails.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: AwsEcsMetadataDetailsTaskDefinitionArnString, required: true, location_name: "taskDefinitionArn"))
    AwsEcsMetadataDetails.struct_class = Types::AwsEcsMetadataDetails

    AwsEksMetadataDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: AwsEksMetadataDetailsNamespaceString, location_name: "namespace"))
    AwsEksMetadataDetails.add_member(:workload_info_list, Shapes::ShapeRef.new(shape: AwsEksWorkloadInfoList, location_name: "workloadInfoList"))
    AwsEksMetadataDetails.struct_class = Types::AwsEksMetadataDetails

    AwsEksWorkloadInfo.add_member(:name, Shapes::ShapeRef.new(shape: AwsEksWorkloadInfoNameString, required: true, location_name: "name"))
    AwsEksWorkloadInfo.add_member(:type, Shapes::ShapeRef.new(shape: AwsEksWorkloadInfoTypeString, required: true, location_name: "type"))
    AwsEksWorkloadInfo.struct_class = Types::AwsEksWorkloadInfo

    AwsEksWorkloadInfoList.member = Shapes::ShapeRef.new(shape: AwsEksWorkloadInfo)

    AwsLambdaFunctionDetails.add_member(:function_name, Shapes::ShapeRef.new(shape: FunctionName, required: true, location_name: "functionName"))
    AwsLambdaFunctionDetails.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, required: true, location_name: "runtime"))
    AwsLambdaFunctionDetails.add_member(:code_sha_256, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "codeSha256"))
    AwsLambdaFunctionDetails.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    AwsLambdaFunctionDetails.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "executionRoleArn"))
    AwsLambdaFunctionDetails.add_member(:layers, Shapes::ShapeRef.new(shape: LayerList, location_name: "layers"))
    AwsLambdaFunctionDetails.add_member(:vpc_config, Shapes::ShapeRef.new(shape: LambdaVpcConfig, location_name: "vpcConfig"))
    AwsLambdaFunctionDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "packageType"))
    AwsLambdaFunctionDetails.add_member(:architectures, Shapes::ShapeRef.new(shape: ArchitectureList, location_name: "architectures"))
    AwsLambdaFunctionDetails.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedAt"))
    AwsLambdaFunctionDetails.struct_class = Types::AwsLambdaFunctionDetails

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchAssociateCodeSecurityScanConfigurationRequest.add_member(:associate_configuration_requests, Shapes::ShapeRef.new(shape: AssociateConfigurationRequestList, required: true, location_name: "associateConfigurationRequests"))
    BatchAssociateCodeSecurityScanConfigurationRequest.struct_class = Types::BatchAssociateCodeSecurityScanConfigurationRequest

    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, Shapes::ShapeRef.new(shape: FailedAssociationResultList, location_name: "failedAssociations"))
    BatchAssociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, Shapes::ShapeRef.new(shape: SuccessfulAssociationResultList, location_name: "successfulAssociations"))
    BatchAssociateCodeSecurityScanConfigurationResponse.struct_class = Types::BatchAssociateCodeSecurityScanConfigurationResponse

    BatchDisassociateCodeSecurityScanConfigurationRequest.add_member(:disassociate_configuration_requests, Shapes::ShapeRef.new(shape: DisassociateConfigurationRequestList, required: true, location_name: "disassociateConfigurationRequests"))
    BatchDisassociateCodeSecurityScanConfigurationRequest.struct_class = Types::BatchDisassociateCodeSecurityScanConfigurationRequest

    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:failed_associations, Shapes::ShapeRef.new(shape: FailedAssociationResultList, location_name: "failedAssociations"))
    BatchDisassociateCodeSecurityScanConfigurationResponse.add_member(:successful_associations, Shapes::ShapeRef.new(shape: SuccessfulAssociationResultList, location_name: "successfulAssociations"))
    BatchDisassociateCodeSecurityScanConfigurationResponse.struct_class = Types::BatchDisassociateCodeSecurityScanConfigurationResponse

    BatchGetAccountStatusRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdSet, location_name: "accountIds"))
    BatchGetAccountStatusRequest.struct_class = Types::BatchGetAccountStatusRequest

    BatchGetAccountStatusResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountStateList, required: true, location_name: "accounts"))
    BatchGetAccountStatusResponse.add_member(:failed_accounts, Shapes::ShapeRef.new(shape: FailedAccountList, location_name: "failedAccounts"))
    BatchGetAccountStatusResponse.struct_class = Types::BatchGetAccountStatusResponse

    BatchGetCodeSnippetRequest.add_member(:finding_arns, Shapes::ShapeRef.new(shape: BatchGetCodeSnippetRequestFindingArnsList, required: true, location_name: "findingArns"))
    BatchGetCodeSnippetRequest.struct_class = Types::BatchGetCodeSnippetRequest

    BatchGetCodeSnippetRequestFindingArnsList.member = Shapes::ShapeRef.new(shape: FindingArn)

    BatchGetCodeSnippetResponse.add_member(:code_snippet_results, Shapes::ShapeRef.new(shape: CodeSnippetResultList, location_name: "codeSnippetResults"))
    BatchGetCodeSnippetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: CodeSnippetErrorList, location_name: "errors"))
    BatchGetCodeSnippetResponse.struct_class = Types::BatchGetCodeSnippetResponse

    BatchGetFindingDetailsRequest.add_member(:finding_arns, Shapes::ShapeRef.new(shape: FindingArnList, required: true, location_name: "findingArns"))
    BatchGetFindingDetailsRequest.struct_class = Types::BatchGetFindingDetailsRequest

    BatchGetFindingDetailsResponse.add_member(:finding_details, Shapes::ShapeRef.new(shape: FindingDetails, location_name: "findingDetails"))
    BatchGetFindingDetailsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FindingDetailsErrorList, location_name: "errors"))
    BatchGetFindingDetailsResponse.struct_class = Types::BatchGetFindingDetailsResponse

    BatchGetFreeTrialInfoRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: BatchGetFreeTrialInfoRequestAccountIdsList, required: true, location_name: "accountIds"))
    BatchGetFreeTrialInfoRequest.struct_class = Types::BatchGetFreeTrialInfoRequest

    BatchGetFreeTrialInfoRequestAccountIdsList.member = Shapes::ShapeRef.new(shape: MeteringAccountId)

    BatchGetFreeTrialInfoResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: FreeTrialAccountInfoList, required: true, location_name: "accounts"))
    BatchGetFreeTrialInfoResponse.add_member(:failed_accounts, Shapes::ShapeRef.new(shape: FreeTrialInfoErrorList, required: true, location_name: "failedAccounts"))
    BatchGetFreeTrialInfoResponse.struct_class = Types::BatchGetFreeTrialInfoResponse

    BatchGetMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdSet, location_name: "accountIds"))
    BatchGetMemberEc2DeepInspectionStatusRequest.struct_class = Types::BatchGetMemberEc2DeepInspectionStatusRequest

    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusStateList, location_name: "accountIds"))
    BatchGetMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusStateList, location_name: "failedAccountIds"))
    BatchGetMemberEc2DeepInspectionStatusResponse.struct_class = Types::BatchGetMemberEc2DeepInspectionStatusResponse

    BatchUpdateMemberEc2DeepInspectionStatusRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusList, required: true, location_name: "accountIds"))
    BatchUpdateMemberEc2DeepInspectionStatusRequest.struct_class = Types::BatchUpdateMemberEc2DeepInspectionStatusRequest

    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusStateList, location_name: "accountIds"))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.add_member(:failed_account_ids, Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusStateList, location_name: "failedAccountIds"))
    BatchUpdateMemberEc2DeepInspectionStatusResponse.struct_class = Types::BatchUpdateMemberEc2DeepInspectionStatusResponse

    CancelFindingsReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    CancelFindingsReportRequest.struct_class = Types::CancelFindingsReportRequest

    CancelFindingsReportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    CancelFindingsReportResponse.struct_class = Types::CancelFindingsReportResponse

    CancelSbomExportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    CancelSbomExportRequest.struct_class = Types::CancelSbomExportRequest

    CancelSbomExportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    CancelSbomExportResponse.struct_class = Types::CancelSbomExportResponse

    CheckIdFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisAccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    CisCheckAggregation.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    CisCheckAggregation.add_member(:check_id, Shapes::ShapeRef.new(shape: String, location_name: "checkId"))
    CisCheckAggregation.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CisCheckAggregation.add_member(:check_description, Shapes::ShapeRef.new(shape: String, location_name: "checkDescription"))
    CisCheckAggregation.add_member(:level, Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: "level"))
    CisCheckAggregation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    CisCheckAggregation.add_member(:status_counts, Shapes::ShapeRef.new(shape: StatusCounts, location_name: "statusCounts"))
    CisCheckAggregation.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    CisCheckAggregation.struct_class = Types::CisCheckAggregation

    CisCheckAggregationList.member = Shapes::ShapeRef.new(shape: CisCheckAggregation)

    CisDateFilter.add_member(:earliest_scan_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "earliestScanStartTime"))
    CisDateFilter.add_member(:latest_scan_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "latestScanStartTime"))
    CisDateFilter.struct_class = Types::CisDateFilter

    CisFindingArnFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisFindingStatusFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisFindingStatusComparison, required: true, location_name: "comparison"))
    CisFindingStatusFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisFindingStatus, required: true, location_name: "value"))
    CisFindingStatusFilter.struct_class = Types::CisFindingStatusFilter

    CisFindingStatusFilterList.member = Shapes::ShapeRef.new(shape: CisFindingStatusFilter)

    CisNumberFilter.add_member(:upper_inclusive, Shapes::ShapeRef.new(shape: Integer, location_name: "upperInclusive"))
    CisNumberFilter.add_member(:lower_inclusive, Shapes::ShapeRef.new(shape: Integer, location_name: "lowerInclusive"))
    CisNumberFilter.struct_class = Types::CisNumberFilter

    CisNumberFilterList.member = Shapes::ShapeRef.new(shape: CisNumberFilter)

    CisResultStatusFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisResultStatusComparison, required: true, location_name: "comparison"))
    CisResultStatusFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisResultStatus, required: true, location_name: "value"))
    CisResultStatusFilter.struct_class = Types::CisResultStatusFilter

    CisResultStatusFilterList.member = Shapes::ShapeRef.new(shape: CisResultStatusFilter)

    CisScan.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    CisScan.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    CisScan.add_member(:status, Shapes::ShapeRef.new(shape: CisScanStatus, location_name: "status"))
    CisScan.add_member(:scan_name, Shapes::ShapeRef.new(shape: CisScanName, location_name: "scanName"))
    CisScan.add_member(:scan_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanDate"))
    CisScan.add_member(:failed_checks, Shapes::ShapeRef.new(shape: Integer, location_name: "failedChecks"))
    CisScan.add_member(:total_checks, Shapes::ShapeRef.new(shape: Integer, location_name: "totalChecks"))
    CisScan.add_member(:targets, Shapes::ShapeRef.new(shape: CisTargets, location_name: "targets"))
    CisScan.add_member(:scheduled_by, Shapes::ShapeRef.new(shape: String, location_name: "scheduledBy"))
    CisScan.add_member(:security_level, Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: "securityLevel"))
    CisScan.struct_class = Types::CisScan

    CisScanArnFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisScanConfiguration.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    CisScanConfiguration.add_member(:owner_id, Shapes::ShapeRef.new(shape: CisOwnerId, location_name: "ownerId"))
    CisScanConfiguration.add_member(:scan_name, Shapes::ShapeRef.new(shape: CisScanName, location_name: "scanName"))
    CisScanConfiguration.add_member(:security_level, Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: "securityLevel"))
    CisScanConfiguration.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CisScanConfiguration.add_member(:targets, Shapes::ShapeRef.new(shape: CisTargets, location_name: "targets"))
    CisScanConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: CisTagMap, location_name: "tags"))
    CisScanConfiguration.struct_class = Types::CisScanConfiguration

    CisScanConfigurationArnFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisScanConfigurationList.member = Shapes::ShapeRef.new(shape: CisScanConfiguration)

    CisScanDateFilterList.member = Shapes::ShapeRef.new(shape: CisDateFilter)

    CisScanList.member = Shapes::ShapeRef.new(shape: CisScan)

    CisScanNameFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisScanResultDetails.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    CisScanResultDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    CisScanResultDetails.add_member(:target_resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "targetResourceId"))
    CisScanResultDetails.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    CisScanResultDetails.add_member(:status, Shapes::ShapeRef.new(shape: CisFindingStatus, location_name: "status"))
    CisScanResultDetails.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CisScanResultDetails.add_member(:check_id, Shapes::ShapeRef.new(shape: String, location_name: "checkId"))
    CisScanResultDetails.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CisScanResultDetails.add_member(:check_description, Shapes::ShapeRef.new(shape: String, location_name: "checkDescription"))
    CisScanResultDetails.add_member(:remediation, Shapes::ShapeRef.new(shape: String, location_name: "remediation"))
    CisScanResultDetails.add_member(:level, Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: "level"))
    CisScanResultDetails.add_member(:finding_arn, Shapes::ShapeRef.new(shape: CisFindingArn, location_name: "findingArn"))
    CisScanResultDetails.struct_class = Types::CisScanResultDetails

    CisScanResultDetailsFilterCriteria.add_member(:finding_status_filters, Shapes::ShapeRef.new(shape: CisFindingStatusFilterList, location_name: "findingStatusFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:check_id_filters, Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: "checkIdFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:title_filters, Shapes::ShapeRef.new(shape: TitleFilterList, location_name: "titleFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:security_level_filters, Shapes::ShapeRef.new(shape: CisSecurityLevelFilterList, location_name: "securityLevelFilters"))
    CisScanResultDetailsFilterCriteria.add_member(:finding_arn_filters, Shapes::ShapeRef.new(shape: CisFindingArnFilterList, location_name: "findingArnFilters"))
    CisScanResultDetailsFilterCriteria.struct_class = Types::CisScanResultDetailsFilterCriteria

    CisScanResultDetailsList.member = Shapes::ShapeRef.new(shape: CisScanResultDetails)

    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:account_id_filters, Shapes::ShapeRef.new(shape: OneAccountIdFilterList, location_name: "accountIdFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:check_id_filters, Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: "checkIdFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:title_filters, Shapes::ShapeRef.new(shape: TitleFilterList, location_name: "titleFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:platform_filters, Shapes::ShapeRef.new(shape: PlatformFilterList, location_name: "platformFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:failed_resources_filters, Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: "failedResourcesFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.add_member(:security_level_filters, Shapes::ShapeRef.new(shape: CisSecurityLevelFilterList, location_name: "securityLevelFilters"))
    CisScanResultsAggregatedByChecksFilterCriteria.struct_class = Types::CisScanResultsAggregatedByChecksFilterCriteria

    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:account_id_filters, Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: "accountIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:status_filters, Shapes::ShapeRef.new(shape: CisResultStatusFilterList, location_name: "statusFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:check_id_filters, Shapes::ShapeRef.new(shape: CheckIdFilterList, location_name: "checkIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_id_filters, Shapes::ShapeRef.new(shape: ResourceIdFilterList, location_name: "targetResourceIdFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_resource_tag_filters, Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: "targetResourceTagFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:platform_filters, Shapes::ShapeRef.new(shape: PlatformFilterList, location_name: "platformFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_filters, Shapes::ShapeRef.new(shape: TargetStatusFilterList, location_name: "targetStatusFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:target_status_reason_filters, Shapes::ShapeRef.new(shape: TargetStatusReasonFilterList, location_name: "targetStatusReasonFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.add_member(:failed_checks_filters, Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: "failedChecksFilters"))
    CisScanResultsAggregatedByTargetResourceFilterCriteria.struct_class = Types::CisScanResultsAggregatedByTargetResourceFilterCriteria

    CisScanStatusFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisScanStatusComparison, required: true, location_name: "comparison"))
    CisScanStatusFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisScanStatus, required: true, location_name: "value"))
    CisScanStatusFilter.struct_class = Types::CisScanStatusFilter

    CisScanStatusFilterList.member = Shapes::ShapeRef.new(shape: CisScanStatusFilter)

    CisScheduledByFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    CisSecurityLevelFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisSecurityLevelComparison, required: true, location_name: "comparison"))
    CisSecurityLevelFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisSecurityLevel, required: true, location_name: "value"))
    CisSecurityLevelFilter.struct_class = Types::CisSecurityLevelFilter

    CisSecurityLevelFilterList.member = Shapes::ShapeRef.new(shape: CisSecurityLevelFilter)

    CisSessionMessage.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    CisSessionMessage.add_member(:status, Shapes::ShapeRef.new(shape: CisRuleStatus, required: true, location_name: "status"))
    CisSessionMessage.add_member(:cis_rule_details, Shapes::ShapeRef.new(shape: CisRuleDetails, required: true, location_name: "cisRuleDetails"))
    CisSessionMessage.struct_class = Types::CisSessionMessage

    CisSessionMessages.member = Shapes::ShapeRef.new(shape: CisSessionMessage)

    CisStringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisStringComparison, required: true, location_name: "comparison"))
    CisStringFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    CisStringFilter.struct_class = Types::CisStringFilter

    CisTagMap.key = Shapes::ShapeRef.new(shape: MapKey)
    CisTagMap.value = Shapes::ShapeRef.new(shape: MapValue)

    CisTargetResourceAggregation.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    CisTargetResourceAggregation.add_member(:target_resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "targetResourceId"))
    CisTargetResourceAggregation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    CisTargetResourceAggregation.add_member(:target_resource_tags, Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: "targetResourceTags"))
    CisTargetResourceAggregation.add_member(:status_counts, Shapes::ShapeRef.new(shape: StatusCounts, location_name: "statusCounts"))
    CisTargetResourceAggregation.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    CisTargetResourceAggregation.add_member(:target_status, Shapes::ShapeRef.new(shape: CisTargetStatus, location_name: "targetStatus"))
    CisTargetResourceAggregation.add_member(:target_status_reason, Shapes::ShapeRef.new(shape: CisTargetStatusReason, location_name: "targetStatusReason"))
    CisTargetResourceAggregation.struct_class = Types::CisTargetResourceAggregation

    CisTargetResourceAggregationList.member = Shapes::ShapeRef.new(shape: CisTargetResourceAggregation)

    CisTargetStatusFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisTargetStatusComparison, required: true, location_name: "comparison"))
    CisTargetStatusFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisTargetStatus, required: true, location_name: "value"))
    CisTargetStatusFilter.struct_class = Types::CisTargetStatusFilter

    CisTargetStatusReasonFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CisTargetStatusComparison, required: true, location_name: "comparison"))
    CisTargetStatusReasonFilter.add_member(:value, Shapes::ShapeRef.new(shape: CisTargetStatusReason, required: true, location_name: "value"))
    CisTargetStatusReasonFilter.struct_class = Types::CisTargetStatusReasonFilter

    CisTargets.add_member(:account_ids, Shapes::ShapeRef.new(shape: CisAccountIdList, location_name: "accountIds"))
    CisTargets.add_member(:target_resource_tags, Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: "targetResourceTags"))
    CisTargets.struct_class = Types::CisTargets

    CisaData.add_member(:date_added, Shapes::ShapeRef.new(shape: CisaDateAdded, location_name: "dateAdded"))
    CisaData.add_member(:date_due, Shapes::ShapeRef.new(shape: CisaDateDue, location_name: "dateDue"))
    CisaData.add_member(:action, Shapes::ShapeRef.new(shape: CisaAction, location_name: "action"))
    CisaData.struct_class = Types::CisaData

    ClusterDetails.add_member(:last_in_use, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastInUse"))
    ClusterDetails.add_member(:running_unit_count, Shapes::ShapeRef.new(shape: Long, location_name: "runningUnitCount"))
    ClusterDetails.add_member(:stopped_unit_count, Shapes::ShapeRef.new(shape: Long, location_name: "stoppedUnitCount"))
    ClusterDetails.add_member(:cluster_metadata, Shapes::ShapeRef.new(shape: ClusterMetadata, required: true, location_name: "clusterMetadata"))
    ClusterDetails.struct_class = Types::ClusterDetails

    ClusterForImageFilterCriteria.add_member(:resource_id, Shapes::ShapeRef.new(shape: ClusterForImageFilterCriteriaResourceIdString, required: true, location_name: "resourceId"))
    ClusterForImageFilterCriteria.struct_class = Types::ClusterForImageFilterCriteria

    ClusterInformation.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ClusterInformationClusterArnString, required: true, location_name: "clusterArn"))
    ClusterInformation.add_member(:cluster_details, Shapes::ShapeRef.new(shape: ClusterInformationClusterDetailsList, location_name: "clusterDetails"))
    ClusterInformation.struct_class = Types::ClusterInformation

    ClusterInformationClusterDetailsList.member = Shapes::ShapeRef.new(shape: ClusterDetails)

    ClusterInformationList.member = Shapes::ShapeRef.new(shape: ClusterInformation)

    ClusterMetadata.add_member(:aws_ecs_metadata_details, Shapes::ShapeRef.new(shape: AwsEcsMetadataDetails, location_name: "awsEcsMetadataDetails"))
    ClusterMetadata.add_member(:aws_eks_metadata_details, Shapes::ShapeRef.new(shape: AwsEksMetadataDetails, location_name: "awsEksMetadataDetails"))
    ClusterMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClusterMetadata.add_member_subclass(:aws_ecs_metadata_details, Types::ClusterMetadata::AwsEcsMetadataDetails)
    ClusterMetadata.add_member_subclass(:aws_eks_metadata_details, Types::ClusterMetadata::AwsEksMetadataDetails)
    ClusterMetadata.add_member_subclass(:unknown, Types::ClusterMetadata::Unknown)
    ClusterMetadata.struct_class = Types::ClusterMetadata

    CodeFilePath.add_member(:file_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "fileName"))
    CodeFilePath.add_member(:file_path, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "filePath"))
    CodeFilePath.add_member(:start_line, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "startLine"))
    CodeFilePath.add_member(:end_line, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "endLine"))
    CodeFilePath.struct_class = Types::CodeFilePath

    CodeLine.add_member(:content, Shapes::ShapeRef.new(shape: CodeLineContentString, required: true, location_name: "content"))
    CodeLine.add_member(:line_number, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "lineNumber"))
    CodeLine.struct_class = Types::CodeLine

    CodeLineList.member = Shapes::ShapeRef.new(shape: CodeLine)

    CodeRepositoryAggregation.add_member(:project_names, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "projectNames"))
    CodeRepositoryAggregation.add_member(:provider_types, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "providerTypes"))
    CodeRepositoryAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    CodeRepositoryAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: CodeRepositorySortBy, location_name: "sortBy"))
    CodeRepositoryAggregation.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceIds"))
    CodeRepositoryAggregation.struct_class = Types::CodeRepositoryAggregation

    CodeRepositoryAggregationResponse.add_member(:project_names, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectNames"))
    CodeRepositoryAggregationResponse.add_member(:provider_type, Shapes::ShapeRef.new(shape: String, location_name: "providerType"))
    CodeRepositoryAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    CodeRepositoryAggregationResponse.add_member(:exploit_available_active_findings_count, Shapes::ShapeRef.new(shape: Long, location_name: "exploitAvailableActiveFindingsCount"))
    CodeRepositoryAggregationResponse.add_member(:fix_available_active_findings_count, Shapes::ShapeRef.new(shape: Long, location_name: "fixAvailableActiveFindingsCount"))
    CodeRepositoryAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    CodeRepositoryAggregationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    CodeRepositoryAggregationResponse.struct_class = Types::CodeRepositoryAggregationResponse

    CodeRepositoryDetails.add_member(:project_name, Shapes::ShapeRef.new(shape: CodeRepositoryProjectName, location_name: "projectName"))
    CodeRepositoryDetails.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeRepositoryIntegrationArn, location_name: "integrationArn"))
    CodeRepositoryDetails.add_member(:provider_type, Shapes::ShapeRef.new(shape: CodeRepositoryProviderType, location_name: "providerType"))
    CodeRepositoryDetails.struct_class = Types::CodeRepositoryDetails

    CodeRepositoryMetadata.add_member(:project_name, Shapes::ShapeRef.new(shape: CodeRepositoryMetadataProjectNameString, required: true, location_name: "projectName"))
    CodeRepositoryMetadata.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeRepositoryIntegrationArn, location_name: "integrationArn"))
    CodeRepositoryMetadata.add_member(:provider_type, Shapes::ShapeRef.new(shape: CodeRepositoryMetadataProviderTypeString, required: true, location_name: "providerType"))
    CodeRepositoryMetadata.add_member(:provider_type_visibility, Shapes::ShapeRef.new(shape: CodeRepositoryMetadataProviderTypeVisibilityString, required: true, location_name: "providerTypeVisibility"))
    CodeRepositoryMetadata.add_member(:last_scanned_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "lastScannedCommitId"))
    CodeRepositoryMetadata.add_member(:scan_configuration, Shapes::ShapeRef.new(shape: ProjectCodeSecurityScanConfiguration, location_name: "scanConfiguration"))
    CodeRepositoryMetadata.add_member(:on_demand_scan, Shapes::ShapeRef.new(shape: CodeRepositoryOnDemandScan, location_name: "onDemandScan"))
    CodeRepositoryMetadata.struct_class = Types::CodeRepositoryMetadata

    CodeRepositoryOnDemandScan.add_member(:last_scanned_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "lastScannedCommitId"))
    CodeRepositoryOnDemandScan.add_member(:last_scan_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastScanAt"))
    CodeRepositoryOnDemandScan.add_member(:scan_status, Shapes::ShapeRef.new(shape: ScanStatus, location_name: "scanStatus"))
    CodeRepositoryOnDemandScan.struct_class = Types::CodeRepositoryOnDemandScan

    CodeSecurityIntegrationSummary.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    CodeSecurityIntegrationSummary.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    CodeSecurityIntegrationSummary.add_member(:type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "type"))
    CodeSecurityIntegrationSummary.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "status"))
    CodeSecurityIntegrationSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    CodeSecurityIntegrationSummary.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdOn"))
    CodeSecurityIntegrationSummary.add_member(:last_update_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateOn"))
    CodeSecurityIntegrationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CodeSecurityIntegrationSummary.struct_class = Types::CodeSecurityIntegrationSummary

    CodeSecurityResource.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    CodeSecurityResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CodeSecurityResource.add_member_subclass(:project_id, Types::CodeSecurityResource::ProjectId)
    CodeSecurityResource.add_member_subclass(:unknown, Types::CodeSecurityResource::Unknown)
    CodeSecurityResource.struct_class = Types::CodeSecurityResource

    CodeSecurityScanConfiguration.add_member(:periodic_scan_configuration, Shapes::ShapeRef.new(shape: PeriodicScanConfiguration, location_name: "periodicScanConfiguration"))
    CodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configuration, Shapes::ShapeRef.new(shape: ContinuousIntegrationScanConfiguration, location_name: "continuousIntegrationScanConfiguration"))
    CodeSecurityScanConfiguration.add_member(:rule_set_categories, Shapes::ShapeRef.new(shape: RuleSetCategories, required: true, location_name: "ruleSetCategories"))
    CodeSecurityScanConfiguration.struct_class = Types::CodeSecurityScanConfiguration

    CodeSecurityScanConfigurationAssociationSummaries.member = Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationAssociationSummary)

    CodeSecurityScanConfigurationAssociationSummary.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: "resource"))
    CodeSecurityScanConfigurationAssociationSummary.struct_class = Types::CodeSecurityScanConfigurationAssociationSummary

    CodeSecurityScanConfigurationSummaries.member = Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationSummary)

    CodeSecurityScanConfigurationSummary.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    CodeSecurityScanConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ScanConfigurationName, required: true, location_name: "name"))
    CodeSecurityScanConfigurationSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "ownerAccountId"))
    CodeSecurityScanConfigurationSummary.add_member(:periodic_scan_frequency, Shapes::ShapeRef.new(shape: PeriodicScanFrequency, location_name: "periodicScanFrequency"))
    CodeSecurityScanConfigurationSummary.add_member(:frequency_expression, Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: "frequencyExpression"))
    CodeSecurityScanConfigurationSummary.add_member(:continuous_integration_scan_supported_events, Shapes::ShapeRef.new(shape: ContinuousIntegrationScanSupportedEvents, location_name: "continuousIntegrationScanSupportedEvents"))
    CodeSecurityScanConfigurationSummary.add_member(:rule_set_categories, Shapes::ShapeRef.new(shape: RuleSetCategories, required: true, location_name: "ruleSetCategories"))
    CodeSecurityScanConfigurationSummary.add_member(:scope_settings, Shapes::ShapeRef.new(shape: ScopeSettings, location_name: "scopeSettings"))
    CodeSecurityScanConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CodeSecurityScanConfigurationSummary.struct_class = Types::CodeSecurityScanConfigurationSummary

    CodeSnippetError.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    CodeSnippetError.add_member(:error_code, Shapes::ShapeRef.new(shape: CodeSnippetErrorCode, required: true, location_name: "errorCode"))
    CodeSnippetError.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorMessage"))
    CodeSnippetError.struct_class = Types::CodeSnippetError

    CodeSnippetErrorList.member = Shapes::ShapeRef.new(shape: CodeSnippetError)

    CodeSnippetResult.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, location_name: "findingArn"))
    CodeSnippetResult.add_member(:start_line, Shapes::ShapeRef.new(shape: Integer, location_name: "startLine"))
    CodeSnippetResult.add_member(:end_line, Shapes::ShapeRef.new(shape: Integer, location_name: "endLine"))
    CodeSnippetResult.add_member(:code_snippet, Shapes::ShapeRef.new(shape: CodeLineList, location_name: "codeSnippet"))
    CodeSnippetResult.add_member(:suggested_fixes, Shapes::ShapeRef.new(shape: SuggestedFixes, location_name: "suggestedFixes"))
    CodeSnippetResult.struct_class = Types::CodeSnippetResult

    CodeSnippetResultList.member = Shapes::ShapeRef.new(shape: CodeSnippetResult)

    CodeVulnerabilityDetails.add_member(:file_path, Shapes::ShapeRef.new(shape: CodeFilePath, required: true, location_name: "filePath"))
    CodeVulnerabilityDetails.add_member(:detector_tags, Shapes::ShapeRef.new(shape: DetectorTagList, location_name: "detectorTags"))
    CodeVulnerabilityDetails.add_member(:reference_urls, Shapes::ShapeRef.new(shape: ReferenceUrls, location_name: "referenceUrls"))
    CodeVulnerabilityDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ruleId"))
    CodeVulnerabilityDetails.add_member(:source_lambda_layer_arn, Shapes::ShapeRef.new(shape: LambdaLayerArn, location_name: "sourceLambdaLayerArn"))
    CodeVulnerabilityDetails.add_member(:detector_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "detectorId"))
    CodeVulnerabilityDetails.add_member(:detector_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "detectorName"))
    CodeVulnerabilityDetails.add_member(:cwes, Shapes::ShapeRef.new(shape: CweList, required: true, location_name: "cwes"))
    CodeVulnerabilityDetails.struct_class = Types::CodeVulnerabilityDetails

    ComputePlatform.add_member(:vendor, Shapes::ShapeRef.new(shape: Vendor, location_name: "vendor"))
    ComputePlatform.add_member(:product, Shapes::ShapeRef.new(shape: Product, location_name: "product"))
    ComputePlatform.add_member(:version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "version"))
    ComputePlatform.struct_class = Types::ComputePlatform

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ContinuousIntegrationScanConfiguration.add_member(:supported_events, Shapes::ShapeRef.new(shape: ContinuousIntegrationScanSupportedEvents, required: true, location_name: "supportedEvents"))
    ContinuousIntegrationScanConfiguration.struct_class = Types::ContinuousIntegrationScanConfiguration

    ContinuousIntegrationScanSupportedEvents.member = Shapes::ShapeRef.new(shape: ContinuousIntegrationScanEvent)

    Counts.add_member(:count, Shapes::ShapeRef.new(shape: AggCounts, location_name: "count"))
    Counts.add_member(:group_key, Shapes::ShapeRef.new(shape: GroupKey, location_name: "groupKey"))
    Counts.struct_class = Types::Counts

    CountsList.member = Shapes::ShapeRef.new(shape: Counts)

    CoverageDateFilter.add_member(:start_inclusive, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "startInclusive"))
    CoverageDateFilter.add_member(:end_inclusive, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "endInclusive"))
    CoverageDateFilter.struct_class = Types::CoverageDateFilter

    CoverageDateFilterList.member = Shapes::ShapeRef.new(shape: CoverageDateFilter)

    CoverageFilterCriteria.add_member(:scan_status_code, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "scanStatusCode"))
    CoverageFilterCriteria.add_member(:scan_status_reason, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "scanStatusReason"))
    CoverageFilterCriteria.add_member(:account_id, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "accountId"))
    CoverageFilterCriteria.add_member(:resource_id, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "resourceId"))
    CoverageFilterCriteria.add_member(:resource_type, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "resourceType"))
    CoverageFilterCriteria.add_member(:scan_type, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "scanType"))
    CoverageFilterCriteria.add_member(:ecr_repository_name, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "ecrRepositoryName"))
    CoverageFilterCriteria.add_member(:ecr_image_tags, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "ecrImageTags"))
    CoverageFilterCriteria.add_member(:ec2_instance_tags, Shapes::ShapeRef.new(shape: CoverageMapFilterList, location_name: "ec2InstanceTags"))
    CoverageFilterCriteria.add_member(:lambda_function_name, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "lambdaFunctionName"))
    CoverageFilterCriteria.add_member(:lambda_function_tags, Shapes::ShapeRef.new(shape: CoverageMapFilterList, location_name: "lambdaFunctionTags"))
    CoverageFilterCriteria.add_member(:lambda_function_runtime, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "lambdaFunctionRuntime"))
    CoverageFilterCriteria.add_member(:last_scanned_at, Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: "lastScannedAt"))
    CoverageFilterCriteria.add_member(:scan_mode, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "scanMode"))
    CoverageFilterCriteria.add_member(:image_pulled_at, Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: "imagePulledAt"))
    CoverageFilterCriteria.add_member(:ecr_image_last_in_use_at, Shapes::ShapeRef.new(shape: CoverageDateFilterList, location_name: "ecrImageLastInUseAt"))
    CoverageFilterCriteria.add_member(:ecr_image_in_use_count, Shapes::ShapeRef.new(shape: CoverageNumberFilterList, location_name: "ecrImageInUseCount"))
    CoverageFilterCriteria.add_member(:code_repository_project_name, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "codeRepositoryProjectName"))
    CoverageFilterCriteria.add_member(:code_repository_provider_type, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "codeRepositoryProviderType"))
    CoverageFilterCriteria.add_member(:code_repository_provider_type_visibility, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "codeRepositoryProviderTypeVisibility"))
    CoverageFilterCriteria.add_member(:last_scanned_commit_id, Shapes::ShapeRef.new(shape: CoverageStringFilterList, location_name: "lastScannedCommitId"))
    CoverageFilterCriteria.struct_class = Types::CoverageFilterCriteria

    CoverageMapFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CoverageMapComparison, required: true, location_name: "comparison"))
    CoverageMapFilter.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "key"))
    CoverageMapFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "value"))
    CoverageMapFilter.struct_class = Types::CoverageMapFilter

    CoverageMapFilterList.member = Shapes::ShapeRef.new(shape: CoverageMapFilter)

    CoverageNumberFilter.add_member(:upper_inclusive, Shapes::ShapeRef.new(shape: Long, location_name: "upperInclusive"))
    CoverageNumberFilter.add_member(:lower_inclusive, Shapes::ShapeRef.new(shape: Long, location_name: "lowerInclusive"))
    CoverageNumberFilter.struct_class = Types::CoverageNumberFilter

    CoverageNumberFilterList.member = Shapes::ShapeRef.new(shape: CoverageNumberFilter)

    CoverageStringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: CoverageStringComparison, required: true, location_name: "comparison"))
    CoverageStringFilter.add_member(:value, Shapes::ShapeRef.new(shape: CoverageStringInput, required: true, location_name: "value"))
    CoverageStringFilter.struct_class = Types::CoverageStringFilter

    CoverageStringFilterList.member = Shapes::ShapeRef.new(shape: CoverageStringFilter)

    CoveredResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: CoverageResourceType, required: true, location_name: "resourceType"))
    CoveredResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    CoveredResource.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    CoveredResource.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, required: true, location_name: "scanType"))
    CoveredResource.add_member(:scan_status, Shapes::ShapeRef.new(shape: ScanStatus, location_name: "scanStatus"))
    CoveredResource.add_member(:resource_metadata, Shapes::ShapeRef.new(shape: ResourceScanMetadata, location_name: "resourceMetadata"))
    CoveredResource.add_member(:last_scanned_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastScannedAt"))
    CoveredResource.add_member(:scan_mode, Shapes::ShapeRef.new(shape: ScanMode, location_name: "scanMode"))
    CoveredResource.struct_class = Types::CoveredResource

    CoveredResources.member = Shapes::ShapeRef.new(shape: CoveredResource)

    CreateCisScanConfigurationRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: CisScanName, required: true, location_name: "scanName"))
    CreateCisScanConfigurationRequest.add_member(:security_level, Shapes::ShapeRef.new(shape: CisSecurityLevel, required: true, location_name: "securityLevel"))
    CreateCisScanConfigurationRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, required: true, location_name: "schedule"))
    CreateCisScanConfigurationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: CreateCisTargets, required: true, location_name: "targets"))
    CreateCisScanConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: CisTagMap, location_name: "tags"))
    CreateCisScanConfigurationRequest.struct_class = Types::CreateCisScanConfigurationRequest

    CreateCisScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, location_name: "scanConfigurationArn"))
    CreateCisScanConfigurationResponse.struct_class = Types::CreateCisScanConfigurationResponse

    CreateCisTargets.add_member(:account_ids, Shapes::ShapeRef.new(shape: TargetAccountList, required: true, location_name: "accountIds"))
    CreateCisTargets.add_member(:target_resource_tags, Shapes::ShapeRef.new(shape: TargetResourceTags, required: true, location_name: "targetResourceTags"))
    CreateCisTargets.struct_class = Types::CreateCisTargets

    CreateCodeSecurityIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    CreateCodeSecurityIntegrationRequest.add_member(:type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "type"))
    CreateCodeSecurityIntegrationRequest.add_member(:details, Shapes::ShapeRef.new(shape: CreateIntegrationDetail, location_name: "details"))
    CreateCodeSecurityIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCodeSecurityIntegrationRequest.struct_class = Types::CreateCodeSecurityIntegrationRequest

    CreateCodeSecurityIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    CreateCodeSecurityIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "status"))
    CreateCodeSecurityIntegrationResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: AuthorizationUrl, location_name: "authorizationUrl"))
    CreateCodeSecurityIntegrationResponse.struct_class = Types::CreateCodeSecurityIntegrationResponse

    CreateCodeSecurityScanConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScanConfigurationName, required: true, location_name: "name"))
    CreateCodeSecurityScanConfigurationRequest.add_member(:level, Shapes::ShapeRef.new(shape: ConfigurationLevel, required: true, location_name: "level"))
    CreateCodeSecurityScanConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, required: true, location_name: "configuration"))
    CreateCodeSecurityScanConfigurationRequest.add_member(:scope_settings, Shapes::ShapeRef.new(shape: ScopeSettings, location_name: "scopeSettings"))
    CreateCodeSecurityScanConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCodeSecurityScanConfigurationRequest.struct_class = Types::CreateCodeSecurityScanConfigurationRequest

    CreateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    CreateCodeSecurityScanConfigurationResponse.struct_class = Types::CreateCodeSecurityScanConfigurationResponse

    CreateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, required: true, location_name: "action"))
    CreateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    CreateFilterRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, required: true, location_name: "filterCriteria"))
    CreateFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    CreateFilterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFilterRequest.add_member(:reason, Shapes::ShapeRef.new(shape: FilterReason, location_name: "reason"))
    CreateFilterRequest.struct_class = Types::CreateFilterRequest

    CreateFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "arn"))
    CreateFilterResponse.struct_class = Types::CreateFilterResponse

    CreateFindingsReportRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "filterCriteria"))
    CreateFindingsReportRequest.add_member(:report_format, Shapes::ShapeRef.new(shape: ReportFormat, required: true, location_name: "reportFormat"))
    CreateFindingsReportRequest.add_member(:s3_destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "s3Destination"))
    CreateFindingsReportRequest.struct_class = Types::CreateFindingsReportRequest

    CreateFindingsReportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    CreateFindingsReportResponse.struct_class = Types::CreateFindingsReportResponse

    CreateGitLabSelfManagedIntegrationDetail.add_member(:instance_url, Shapes::ShapeRef.new(shape: InstanceUrl, required: true, location_name: "instanceUrl"))
    CreateGitLabSelfManagedIntegrationDetail.add_member(:access_token, Shapes::ShapeRef.new(shape: GitLabAccessToken, required: true, location_name: "accessToken"))
    CreateGitLabSelfManagedIntegrationDetail.struct_class = Types::CreateGitLabSelfManagedIntegrationDetail

    CreateIntegrationDetail.add_member(:gitlab_self_managed, Shapes::ShapeRef.new(shape: CreateGitLabSelfManagedIntegrationDetail, location_name: "gitlabSelfManaged"))
    CreateIntegrationDetail.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CreateIntegrationDetail.add_member_subclass(:gitlab_self_managed, Types::CreateIntegrationDetail::GitlabSelfManaged)
    CreateIntegrationDetail.add_member_subclass(:unknown, Types::CreateIntegrationDetail::Unknown)
    CreateIntegrationDetail.struct_class = Types::CreateIntegrationDetail

    CreateSbomExportRequest.add_member(:resource_filter_criteria, Shapes::ShapeRef.new(shape: ResourceFilterCriteria, location_name: "resourceFilterCriteria"))
    CreateSbomExportRequest.add_member(:report_format, Shapes::ShapeRef.new(shape: SbomReportFormat, required: true, location_name: "reportFormat"))
    CreateSbomExportRequest.add_member(:s3_destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "s3Destination"))
    CreateSbomExportRequest.struct_class = Types::CreateSbomExportRequest

    CreateSbomExportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    CreateSbomExportResponse.struct_class = Types::CreateSbomExportResponse

    Cvss2.add_member(:base_score, Shapes::ShapeRef.new(shape: Cvss2BaseScore, location_name: "baseScore"))
    Cvss2.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: Cvss2ScoringVector, location_name: "scoringVector"))
    Cvss2.struct_class = Types::Cvss2

    Cvss3.add_member(:base_score, Shapes::ShapeRef.new(shape: Cvss3BaseScore, location_name: "baseScore"))
    Cvss3.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: Cvss3ScoringVector, location_name: "scoringVector"))
    Cvss3.struct_class = Types::Cvss3

    CvssScore.add_member(:base_score, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "baseScore"))
    CvssScore.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "scoringVector"))
    CvssScore.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "version"))
    CvssScore.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "source"))
    CvssScore.struct_class = Types::CvssScore

    CvssScoreAdjustment.add_member(:metric, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "metric"))
    CvssScoreAdjustment.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "reason"))
    CvssScoreAdjustment.struct_class = Types::CvssScoreAdjustment

    CvssScoreAdjustmentList.member = Shapes::ShapeRef.new(shape: CvssScoreAdjustment)

    CvssScoreDetails.add_member(:score_source, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "scoreSource"))
    CvssScoreDetails.add_member(:cvss_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "cvssSource"))
    CvssScoreDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "version"))
    CvssScoreDetails.add_member(:score, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "score"))
    CvssScoreDetails.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "scoringVector"))
    CvssScoreDetails.add_member(:adjustments, Shapes::ShapeRef.new(shape: CvssScoreAdjustmentList, location_name: "adjustments"))
    CvssScoreDetails.struct_class = Types::CvssScoreDetails

    CvssScoreList.member = Shapes::ShapeRef.new(shape: CvssScore)

    CweList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Cwes.member = Shapes::ShapeRef.new(shape: Cwe)

    DailySchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "startTime"))
    DailySchedule.struct_class = Types::DailySchedule

    DateFilter.add_member(:start_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startInclusive"))
    DateFilter.add_member(:end_inclusive, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endInclusive"))
    DateFilter.struct_class = Types::DateFilter

    DateFilterList.member = Shapes::ShapeRef.new(shape: DateFilter)

    DaysList.member = Shapes::ShapeRef.new(shape: Day)

    DelegatedAdmin.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    DelegatedAdmin.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    DelegatedAdmin.struct_class = Types::DelegatedAdmin

    DelegatedAdminAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    DelegatedAdminAccount.add_member(:status, Shapes::ShapeRef.new(shape: DelegatedAdminStatus, location_name: "status"))
    DelegatedAdminAccount.struct_class = Types::DelegatedAdminAccount

    DelegatedAdminAccountList.member = Shapes::ShapeRef.new(shape: DelegatedAdminAccount)

    DeleteCisScanConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    DeleteCisScanConfigurationRequest.struct_class = Types::DeleteCisScanConfigurationRequest

    DeleteCisScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    DeleteCisScanConfigurationResponse.struct_class = Types::DeleteCisScanConfigurationResponse

    DeleteCodeSecurityIntegrationRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    DeleteCodeSecurityIntegrationRequest.struct_class = Types::DeleteCodeSecurityIntegrationRequest

    DeleteCodeSecurityIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, location_name: "integrationArn"))
    DeleteCodeSecurityIntegrationResponse.struct_class = Types::DeleteCodeSecurityIntegrationResponse

    DeleteCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    DeleteCodeSecurityScanConfigurationRequest.struct_class = Types::DeleteCodeSecurityScanConfigurationRequest

    DeleteCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: "scanConfigurationArn"))
    DeleteCodeSecurityScanConfigurationResponse.struct_class = Types::DeleteCodeSecurityScanConfigurationResponse

    DeleteFilterRequest.add_member(:arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "arn"))
    DeleteFilterRequest.struct_class = Types::DeleteFilterRequest

    DeleteFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "arn"))
    DeleteFilterResponse.struct_class = Types::DeleteFilterResponse

    DescribeOrganizationConfigurationRequest.struct_class = Types::DescribeOrganizationConfigurationRequest

    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: AutoEnable, location_name: "autoEnable"))
    DescribeOrganizationConfigurationResponse.add_member(:max_account_limit_reached, Shapes::ShapeRef.new(shape: Boolean, location_name: "maxAccountLimitReached"))
    DescribeOrganizationConfigurationResponse.struct_class = Types::DescribeOrganizationConfigurationResponse

    Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "bucketName"))
    Destination.add_member(:key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "keyPrefix"))
    Destination.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "kmsKeyArn"))
    Destination.struct_class = Types::Destination

    DetectionPlatforms.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    DetectorTagList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    DisableDelegatedAdminAccountRequest.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "delegatedAdminAccountId"))
    DisableDelegatedAdminAccountRequest.struct_class = Types::DisableDelegatedAdminAccountRequest

    DisableDelegatedAdminAccountResponse.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "delegatedAdminAccountId"))
    DisableDelegatedAdminAccountResponse.struct_class = Types::DisableDelegatedAdminAccountResponse

    DisableRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdSet, location_name: "accountIds"))
    DisableRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: DisableResourceTypeList, location_name: "resourceTypes"))
    DisableRequest.struct_class = Types::DisableRequest

    DisableResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceScanType)

    DisableResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "accounts"))
    DisableResponse.add_member(:failed_accounts, Shapes::ShapeRef.new(shape: FailedAccountList, location_name: "failedAccounts"))
    DisableResponse.struct_class = Types::DisableResponse

    DisassociateConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    DisassociateConfigurationRequest.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, required: true, location_name: "resource"))
    DisassociateConfigurationRequest.struct_class = Types::DisassociateConfigurationRequest

    DisassociateConfigurationRequestList.member = Shapes::ShapeRef.new(shape: DisassociateConfigurationRequest)

    DisassociateMemberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    DisassociateMemberRequest.struct_class = Types::DisassociateMemberRequest

    DisassociateMemberResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    DisassociateMemberResponse.struct_class = Types::DisassociateMemberResponse

    Ec2Configuration.add_member(:scan_mode, Shapes::ShapeRef.new(shape: Ec2ScanMode, required: true, location_name: "scanMode"))
    Ec2Configuration.struct_class = Types::Ec2Configuration

    Ec2ConfigurationState.add_member(:scan_mode_state, Shapes::ShapeRef.new(shape: Ec2ScanModeState, location_name: "scanModeState"))
    Ec2ConfigurationState.struct_class = Types::Ec2ConfigurationState

    Ec2InstanceAggregation.add_member(:amis, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "amis"))
    Ec2InstanceAggregation.add_member(:operating_systems, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "operatingSystems"))
    Ec2InstanceAggregation.add_member(:instance_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "instanceIds"))
    Ec2InstanceAggregation.add_member(:instance_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "instanceTags"))
    Ec2InstanceAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    Ec2InstanceAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: Ec2InstanceSortBy, location_name: "sortBy"))
    Ec2InstanceAggregation.struct_class = Types::Ec2InstanceAggregation

    Ec2InstanceAggregationResponse.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "instanceId"))
    Ec2InstanceAggregationResponse.add_member(:ami, Shapes::ShapeRef.new(shape: AmiId, location_name: "ami"))
    Ec2InstanceAggregationResponse.add_member(:operating_system, Shapes::ShapeRef.new(shape: String, location_name: "operatingSystem"))
    Ec2InstanceAggregationResponse.add_member(:instance_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "instanceTags"))
    Ec2InstanceAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    Ec2InstanceAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    Ec2InstanceAggregationResponse.add_member(:network_findings, Shapes::ShapeRef.new(shape: Long, location_name: "networkFindings"))
    Ec2InstanceAggregationResponse.struct_class = Types::Ec2InstanceAggregationResponse

    Ec2Metadata.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Ec2Metadata.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    Ec2Metadata.add_member(:platform, Shapes::ShapeRef.new(shape: Ec2Platform, location_name: "platform"))
    Ec2Metadata.struct_class = Types::Ec2Metadata

    Ec2ScanModeState.add_member(:scan_mode, Shapes::ShapeRef.new(shape: Ec2ScanMode, location_name: "scanMode"))
    Ec2ScanModeState.add_member(:scan_mode_status, Shapes::ShapeRef.new(shape: Ec2ScanModeStatus, location_name: "scanModeStatus"))
    Ec2ScanModeState.struct_class = Types::Ec2ScanModeState

    EcrConfiguration.add_member(:rescan_duration, Shapes::ShapeRef.new(shape: EcrRescanDuration, required: true, location_name: "rescanDuration"))
    EcrConfiguration.add_member(:pull_date_rescan_duration, Shapes::ShapeRef.new(shape: EcrPullDateRescanDuration, location_name: "pullDateRescanDuration"))
    EcrConfiguration.add_member(:pull_date_rescan_mode, Shapes::ShapeRef.new(shape: EcrPullDateRescanMode, location_name: "pullDateRescanMode"))
    EcrConfiguration.struct_class = Types::EcrConfiguration

    EcrConfigurationState.add_member(:rescan_duration_state, Shapes::ShapeRef.new(shape: EcrRescanDurationState, location_name: "rescanDurationState"))
    EcrConfigurationState.struct_class = Types::EcrConfigurationState

    EcrContainerImageMetadata.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    EcrContainerImageMetadata.add_member(:image_pulled_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "imagePulledAt"))
    EcrContainerImageMetadata.add_member(:last_in_use_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastInUseAt"))
    EcrContainerImageMetadata.add_member(:in_use_count, Shapes::ShapeRef.new(shape: Long, location_name: "inUseCount"))
    EcrContainerImageMetadata.struct_class = Types::EcrContainerImageMetadata

    EcrRepositoryMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EcrRepositoryMetadata.add_member(:scan_frequency, Shapes::ShapeRef.new(shape: EcrScanFrequency, location_name: "scanFrequency"))
    EcrRepositoryMetadata.struct_class = Types::EcrRepositoryMetadata

    EcrRescanDurationState.add_member(:rescan_duration, Shapes::ShapeRef.new(shape: EcrRescanDuration, location_name: "rescanDuration"))
    EcrRescanDurationState.add_member(:status, Shapes::ShapeRef.new(shape: EcrRescanDurationStatus, location_name: "status"))
    EcrRescanDurationState.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "updatedAt"))
    EcrRescanDurationState.add_member(:pull_date_rescan_duration, Shapes::ShapeRef.new(shape: EcrPullDateRescanDuration, location_name: "pullDateRescanDuration"))
    EcrRescanDurationState.add_member(:pull_date_rescan_mode, Shapes::ShapeRef.new(shape: EcrPullDateRescanMode, location_name: "pullDateRescanMode"))
    EcrRescanDurationState.struct_class = Types::EcrRescanDurationState

    EnableDelegatedAdminAccountRequest.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "delegatedAdminAccountId"))
    EnableDelegatedAdminAccountRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    EnableDelegatedAdminAccountRequest.struct_class = Types::EnableDelegatedAdminAccountRequest

    EnableDelegatedAdminAccountResponse.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "delegatedAdminAccountId"))
    EnableDelegatedAdminAccountResponse.struct_class = Types::EnableDelegatedAdminAccountResponse

    EnableRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdSet, location_name: "accountIds"))
    EnableRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: EnableResourceTypeList, required: true, location_name: "resourceTypes"))
    EnableRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    EnableRequest.struct_class = Types::EnableRequest

    EnableResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceScanType)

    EnableResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, required: true, location_name: "accounts"))
    EnableResponse.add_member(:failed_accounts, Shapes::ShapeRef.new(shape: FailedAccountList, location_name: "failedAccounts"))
    EnableResponse.struct_class = Types::EnableResponse

    Epss.add_member(:score, Shapes::ShapeRef.new(shape: EpssScore, location_name: "score"))
    Epss.struct_class = Types::Epss

    EpssDetails.add_member(:score, Shapes::ShapeRef.new(shape: EpssScoreValue, location_name: "score"))
    EpssDetails.struct_class = Types::EpssDetails

    Evidence.add_member(:evidence_rule, Shapes::ShapeRef.new(shape: EvidenceRule, location_name: "evidenceRule"))
    Evidence.add_member(:evidence_detail, Shapes::ShapeRef.new(shape: EvidenceDetail, location_name: "evidenceDetail"))
    Evidence.add_member(:severity, Shapes::ShapeRef.new(shape: EvidenceSeverity, location_name: "severity"))
    Evidence.struct_class = Types::Evidence

    EvidenceList.member = Shapes::ShapeRef.new(shape: Evidence)

    ExploitObserved.add_member(:last_seen, Shapes::ShapeRef.new(shape: LastSeen, location_name: "lastSeen"))
    ExploitObserved.add_member(:first_seen, Shapes::ShapeRef.new(shape: FirstSeen, location_name: "firstSeen"))
    ExploitObserved.struct_class = Types::ExploitObserved

    ExploitabilityDetails.add_member(:last_known_exploit_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastKnownExploitAt"))
    ExploitabilityDetails.struct_class = Types::ExploitabilityDetails

    FailedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    FailedAccount.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    FailedAccount.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "resourceStatus"))
    FailedAccount.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    FailedAccount.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorMessage"))
    FailedAccount.struct_class = Types::FailedAccount

    FailedAccountList.member = Shapes::ShapeRef.new(shape: FailedAccount)

    FailedAssociationResult.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: "scanConfigurationArn"))
    FailedAssociationResult.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: "resource"))
    FailedAssociationResult.add_member(:status_code, Shapes::ShapeRef.new(shape: AssociationResultStatusCode, location_name: "statusCode"))
    FailedAssociationResult.add_member(:status_message, Shapes::ShapeRef.new(shape: AssociationResultStatusMessage, location_name: "statusMessage"))
    FailedAssociationResult.struct_class = Types::FailedAssociationResult

    FailedAssociationResultList.member = Shapes::ShapeRef.new(shape: FailedAssociationResult)

    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:ec2_scan_status, Shapes::ShapeRef.new(shape: Status, location_name: "ec2ScanStatus"))
    FailedMemberAccountEc2DeepInspectionStatusState.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "errorMessage"))
    FailedMemberAccountEc2DeepInspectionStatusState.struct_class = Types::FailedMemberAccountEc2DeepInspectionStatusState

    FailedMemberAccountEc2DeepInspectionStatusStateList.member = Shapes::ShapeRef.new(shape: FailedMemberAccountEc2DeepInspectionStatusState)

    Filter.add_member(:arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "arn"))
    Filter.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "ownerId"))
    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    Filter.add_member(:criteria, Shapes::ShapeRef.new(shape: FilterCriteria, required: true, location_name: "criteria"))
    Filter.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, required: true, location_name: "action"))
    Filter.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, required: true, location_name: "createdAt"))
    Filter.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, required: true, location_name: "updatedAt"))
    Filter.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    Filter.add_member(:reason, Shapes::ShapeRef.new(shape: FilterReason, location_name: "reason"))
    Filter.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Filter.struct_class = Types::Filter

    FilterArnList.member = Shapes::ShapeRef.new(shape: FilterArn)

    FilterCriteria.add_member(:finding_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "findingArn"))
    FilterCriteria.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "awsAccountId"))
    FilterCriteria.add_member(:finding_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "findingType"))
    FilterCriteria.add_member(:severity, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "severity"))
    FilterCriteria.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "firstObservedAt"))
    FilterCriteria.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "lastObservedAt"))
    FilterCriteria.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "updatedAt"))
    FilterCriteria.add_member(:finding_status, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "findingStatus"))
    FilterCriteria.add_member(:title, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "title"))
    FilterCriteria.add_member(:inspector_score, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "inspectorScore"))
    FilterCriteria.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceType"))
    FilterCriteria.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceId"))
    FilterCriteria.add_member(:resource_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "resourceTags"))
    FilterCriteria.add_member(:ec2_instance_image_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ec2InstanceImageId"))
    FilterCriteria.add_member(:ec2_instance_vpc_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ec2InstanceVpcId"))
    FilterCriteria.add_member(:ec2_instance_subnet_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ec2InstanceSubnetId"))
    FilterCriteria.add_member(:ecr_image_pushed_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ecrImagePushedAt"))
    FilterCriteria.add_member(:ecr_image_architecture, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ecrImageArchitecture"))
    FilterCriteria.add_member(:ecr_image_registry, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ecrImageRegistry"))
    FilterCriteria.add_member(:ecr_image_repository_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ecrImageRepositoryName"))
    FilterCriteria.add_member(:ecr_image_tags, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ecrImageTags"))
    FilterCriteria.add_member(:ecr_image_hash, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "ecrImageHash"))
    FilterCriteria.add_member(:ecr_image_last_in_use_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "ecrImageLastInUseAt"))
    FilterCriteria.add_member(:ecr_image_in_use_count, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "ecrImageInUseCount"))
    FilterCriteria.add_member(:port_range, Shapes::ShapeRef.new(shape: PortRangeFilterList, location_name: "portRange"))
    FilterCriteria.add_member(:network_protocol, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "networkProtocol"))
    FilterCriteria.add_member(:component_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "componentId"))
    FilterCriteria.add_member(:component_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "componentType"))
    FilterCriteria.add_member(:vulnerability_id, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "vulnerabilityId"))
    FilterCriteria.add_member(:vulnerability_source, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "vulnerabilitySource"))
    FilterCriteria.add_member(:vendor_severity, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "vendorSeverity"))
    FilterCriteria.add_member(:vulnerable_packages, Shapes::ShapeRef.new(shape: PackageFilterList, location_name: "vulnerablePackages"))
    FilterCriteria.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "relatedVulnerabilities"))
    FilterCriteria.add_member(:fix_available, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "fixAvailable"))
    FilterCriteria.add_member(:lambda_function_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "lambdaFunctionName"))
    FilterCriteria.add_member(:lambda_function_layers, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "lambdaFunctionLayers"))
    FilterCriteria.add_member(:lambda_function_runtime, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "lambdaFunctionRuntime"))
    FilterCriteria.add_member(:lambda_function_last_modified_at, Shapes::ShapeRef.new(shape: DateFilterList, location_name: "lambdaFunctionLastModifiedAt"))
    FilterCriteria.add_member(:lambda_function_execution_role_arn, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "lambdaFunctionExecutionRoleArn"))
    FilterCriteria.add_member(:exploit_available, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "exploitAvailable"))
    FilterCriteria.add_member(:code_vulnerability_detector_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "codeVulnerabilityDetectorName"))
    FilterCriteria.add_member(:code_vulnerability_detector_tags, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "codeVulnerabilityDetectorTags"))
    FilterCriteria.add_member(:code_vulnerability_file_path, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "codeVulnerabilityFilePath"))
    FilterCriteria.add_member(:epss_score, Shapes::ShapeRef.new(shape: NumberFilterList, location_name: "epssScore"))
    FilterCriteria.add_member(:code_repository_project_name, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "codeRepositoryProjectName"))
    FilterCriteria.add_member(:code_repository_provider_type, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "codeRepositoryProviderType"))
    FilterCriteria.struct_class = Types::FilterCriteria

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    Finding.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    Finding.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "awsAccountId"))
    Finding.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, required: true, location_name: "type"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: FindingDescription, required: true, location_name: "description"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: FindingTitle, location_name: "title"))
    Finding.add_member(:remediation, Shapes::ShapeRef.new(shape: Remediation, required: true, location_name: "remediation"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, required: true, location_name: "severity"))
    Finding.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, required: true, location_name: "firstObservedAt"))
    Finding.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, required: true, location_name: "lastObservedAt"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "updatedAt"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    Finding.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    Finding.add_member(:inspector_score, Shapes::ShapeRef.new(shape: Double, location_name: "inspectorScore"))
    Finding.add_member(:inspector_score_details, Shapes::ShapeRef.new(shape: InspectorScoreDetails, location_name: "inspectorScoreDetails"))
    Finding.add_member(:network_reachability_details, Shapes::ShapeRef.new(shape: NetworkReachabilityDetails, location_name: "networkReachabilityDetails"))
    Finding.add_member(:package_vulnerability_details, Shapes::ShapeRef.new(shape: PackageVulnerabilityDetails, location_name: "packageVulnerabilityDetails"))
    Finding.add_member(:fix_available, Shapes::ShapeRef.new(shape: FixAvailable, location_name: "fixAvailable"))
    Finding.add_member(:exploit_available, Shapes::ShapeRef.new(shape: ExploitAvailable, location_name: "exploitAvailable"))
    Finding.add_member(:exploitability_details, Shapes::ShapeRef.new(shape: ExploitabilityDetails, location_name: "exploitabilityDetails"))
    Finding.add_member(:code_vulnerability_details, Shapes::ShapeRef.new(shape: CodeVulnerabilityDetails, location_name: "codeVulnerabilityDetails"))
    Finding.add_member(:epss, Shapes::ShapeRef.new(shape: EpssDetails, location_name: "epss"))
    Finding.struct_class = Types::Finding

    FindingArnList.member = Shapes::ShapeRef.new(shape: FindingArn)

    FindingDetail.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, location_name: "findingArn"))
    FindingDetail.add_member(:cisa_data, Shapes::ShapeRef.new(shape: CisaData, location_name: "cisaData"))
    FindingDetail.add_member(:risk_score, Shapes::ShapeRef.new(shape: RiskScore, location_name: "riskScore"))
    FindingDetail.add_member(:evidences, Shapes::ShapeRef.new(shape: EvidenceList, location_name: "evidences"))
    FindingDetail.add_member(:ttps, Shapes::ShapeRef.new(shape: Ttps, location_name: "ttps"))
    FindingDetail.add_member(:tools, Shapes::ShapeRef.new(shape: Tools, location_name: "tools"))
    FindingDetail.add_member(:exploit_observed, Shapes::ShapeRef.new(shape: ExploitObserved, location_name: "exploitObserved"))
    FindingDetail.add_member(:reference_urls, Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrls, location_name: "referenceUrls"))
    FindingDetail.add_member(:cwes, Shapes::ShapeRef.new(shape: Cwes, location_name: "cwes"))
    FindingDetail.add_member(:epss_score, Shapes::ShapeRef.new(shape: Double, location_name: "epssScore"))
    FindingDetail.struct_class = Types::FindingDetail

    FindingDetails.member = Shapes::ShapeRef.new(shape: FindingDetail)

    FindingDetailsError.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    FindingDetailsError.add_member(:error_code, Shapes::ShapeRef.new(shape: FindingDetailsErrorCode, required: true, location_name: "errorCode"))
    FindingDetailsError.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorMessage"))
    FindingDetailsError.struct_class = Types::FindingDetailsError

    FindingDetailsErrorList.member = Shapes::ShapeRef.new(shape: FindingDetailsError)

    FindingList.member = Shapes::ShapeRef.new(shape: Finding)

    FindingTypeAggregation.add_member(:finding_type, Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: "findingType"))
    FindingTypeAggregation.add_member(:resource_type, Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: "resourceType"))
    FindingTypeAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    FindingTypeAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: FindingTypeSortBy, location_name: "sortBy"))
    FindingTypeAggregation.struct_class = Types::FindingTypeAggregation

    FindingTypeAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    FindingTypeAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    FindingTypeAggregationResponse.add_member(:exploit_available_count, Shapes::ShapeRef.new(shape: Long, location_name: "exploitAvailableCount"))
    FindingTypeAggregationResponse.add_member(:fix_available_count, Shapes::ShapeRef.new(shape: Long, location_name: "fixAvailableCount"))
    FindingTypeAggregationResponse.struct_class = Types::FindingTypeAggregationResponse

    FreeTrialAccountInfo.add_member(:account_id, Shapes::ShapeRef.new(shape: MeteringAccountId, required: true, location_name: "accountId"))
    FreeTrialAccountInfo.add_member(:free_trial_info, Shapes::ShapeRef.new(shape: FreeTrialInfoList, required: true, location_name: "freeTrialInfo"))
    FreeTrialAccountInfo.struct_class = Types::FreeTrialAccountInfo

    FreeTrialAccountInfoList.member = Shapes::ShapeRef.new(shape: FreeTrialAccountInfo)

    FreeTrialInfo.add_member(:type, Shapes::ShapeRef.new(shape: FreeTrialType, required: true, location_name: "type"))
    FreeTrialInfo.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "start"))
    FreeTrialInfo.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "end"))
    FreeTrialInfo.add_member(:status, Shapes::ShapeRef.new(shape: FreeTrialStatus, required: true, location_name: "status"))
    FreeTrialInfo.struct_class = Types::FreeTrialInfo

    FreeTrialInfoError.add_member(:account_id, Shapes::ShapeRef.new(shape: MeteringAccountId, required: true, location_name: "accountId"))
    FreeTrialInfoError.add_member(:code, Shapes::ShapeRef.new(shape: FreeTrialInfoErrorCode, required: true, location_name: "code"))
    FreeTrialInfoError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    FreeTrialInfoError.struct_class = Types::FreeTrialInfoError

    FreeTrialInfoErrorList.member = Shapes::ShapeRef.new(shape: FreeTrialInfoError)

    FreeTrialInfoList.member = Shapes::ShapeRef.new(shape: FreeTrialInfo)

    GetCisScanReportRequest.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    GetCisScanReportRequest.add_member(:target_accounts, Shapes::ShapeRef.new(shape: ReportTargetAccounts, location_name: "targetAccounts"))
    GetCisScanReportRequest.add_member(:report_format, Shapes::ShapeRef.new(shape: CisReportFormat, location_name: "reportFormat"))
    GetCisScanReportRequest.struct_class = Types::GetCisScanReportRequest

    GetCisScanReportResponse.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    GetCisScanReportResponse.add_member(:status, Shapes::ShapeRef.new(shape: CisReportStatus, location_name: "status"))
    GetCisScanReportResponse.struct_class = Types::GetCisScanReportResponse

    GetCisScanResultDetailsRequest.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    GetCisScanResultDetailsRequest.add_member(:target_resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "targetResourceId"))
    GetCisScanResultDetailsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    GetCisScanResultDetailsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CisScanResultDetailsFilterCriteria, location_name: "filterCriteria"))
    GetCisScanResultDetailsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CisScanResultDetailsSortBy, location_name: "sortBy"))
    GetCisScanResultDetailsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: CisSortOrder, location_name: "sortOrder"))
    GetCisScanResultDetailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCisScanResultDetailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetCisScanResultDetailsMaxResults, location_name: "maxResults"))
    GetCisScanResultDetailsRequest.struct_class = Types::GetCisScanResultDetailsRequest

    GetCisScanResultDetailsResponse.add_member(:scan_result_details, Shapes::ShapeRef.new(shape: CisScanResultDetailsList, location_name: "scanResultDetails"))
    GetCisScanResultDetailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCisScanResultDetailsResponse.struct_class = Types::GetCisScanResultDetailsResponse

    GetClustersForImageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ClusterForImageFilterCriteria, required: true, location_name: "filter"))
    GetClustersForImageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetClustersForImageRequestMaxResultsInteger, location_name: "maxResults"))
    GetClustersForImageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GetClustersForImageNextToken, location_name: "nextToken"))
    GetClustersForImageRequest.struct_class = Types::GetClustersForImageRequest

    GetClustersForImageResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: ClusterInformationList, required: true, location_name: "cluster"))
    GetClustersForImageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GetClustersForImageNextToken, location_name: "nextToken"))
    GetClustersForImageResponse.struct_class = Types::GetClustersForImageResponse

    GetCodeSecurityIntegrationRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    GetCodeSecurityIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCodeSecurityIntegrationRequest.struct_class = Types::GetCodeSecurityIntegrationRequest

    GetCodeSecurityIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    GetCodeSecurityIntegrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    GetCodeSecurityIntegrationResponse.add_member(:type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "type"))
    GetCodeSecurityIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "status"))
    GetCodeSecurityIntegrationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    GetCodeSecurityIntegrationResponse.add_member(:created_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdOn"))
    GetCodeSecurityIntegrationResponse.add_member(:last_update_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateOn"))
    GetCodeSecurityIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCodeSecurityIntegrationResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: AuthorizationUrl, location_name: "authorizationUrl"))
    GetCodeSecurityIntegrationResponse.struct_class = Types::GetCodeSecurityIntegrationResponse

    GetCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    GetCodeSecurityScanConfigurationRequest.struct_class = Types::GetCodeSecurityScanConfigurationRequest

    GetCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: "scanConfigurationArn"))
    GetCodeSecurityScanConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScanConfigurationName, location_name: "name"))
    GetCodeSecurityScanConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, location_name: "configuration"))
    GetCodeSecurityScanConfigurationResponse.add_member(:level, Shapes::ShapeRef.new(shape: ConfigurationLevel, location_name: "level"))
    GetCodeSecurityScanConfigurationResponse.add_member(:scope_settings, Shapes::ShapeRef.new(shape: ScopeSettings, location_name: "scopeSettings"))
    GetCodeSecurityScanConfigurationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetCodeSecurityScanConfigurationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetCodeSecurityScanConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCodeSecurityScanConfigurationResponse.struct_class = Types::GetCodeSecurityScanConfigurationResponse

    GetCodeSecurityScanRequest.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, required: true, location_name: "resource"))
    GetCodeSecurityScanRequest.add_member(:scan_id, Shapes::ShapeRef.new(shape: CodeSecurityUuid, required: true, location_name: "scanId"))
    GetCodeSecurityScanRequest.struct_class = Types::GetCodeSecurityScanRequest

    GetCodeSecurityScanResponse.add_member(:scan_id, Shapes::ShapeRef.new(shape: CodeSecurityUuid, location_name: "scanId"))
    GetCodeSecurityScanResponse.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: "resource"))
    GetCodeSecurityScanResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    GetCodeSecurityScanResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeScanStatus, location_name: "status"))
    GetCodeSecurityScanResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetCodeSecurityScanResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetCodeSecurityScanResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetCodeSecurityScanResponse.add_member(:last_commit_id, Shapes::ShapeRef.new(shape: String, location_name: "lastCommitId"))
    GetCodeSecurityScanResponse.struct_class = Types::GetCodeSecurityScanResponse

    GetConfigurationRequest.struct_class = Types::GetConfigurationRequest

    GetConfigurationResponse.add_member(:ecr_configuration, Shapes::ShapeRef.new(shape: EcrConfigurationState, location_name: "ecrConfiguration"))
    GetConfigurationResponse.add_member(:ec2_configuration, Shapes::ShapeRef.new(shape: Ec2ConfigurationState, location_name: "ec2Configuration"))
    GetConfigurationResponse.struct_class = Types::GetConfigurationResponse

    GetDelegatedAdminAccountRequest.struct_class = Types::GetDelegatedAdminAccountRequest

    GetDelegatedAdminAccountResponse.add_member(:delegated_admin, Shapes::ShapeRef.new(shape: DelegatedAdmin, location_name: "delegatedAdmin"))
    GetDelegatedAdminAccountResponse.struct_class = Types::GetDelegatedAdminAccountResponse

    GetEc2DeepInspectionConfigurationRequest.struct_class = Types::GetEc2DeepInspectionConfigurationRequest

    GetEc2DeepInspectionConfigurationResponse.add_member(:package_paths, Shapes::ShapeRef.new(shape: PathList, location_name: "packagePaths"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, Shapes::ShapeRef.new(shape: PathList, location_name: "orgPackagePaths"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: "status"))
    GetEc2DeepInspectionConfigurationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "errorMessage"))
    GetEc2DeepInspectionConfigurationResponse.struct_class = Types::GetEc2DeepInspectionConfigurationResponse

    GetEncryptionKeyRequest.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, required: true, location: "querystring", location_name: "scanType"))
    GetEncryptionKeyRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location: "querystring", location_name: "resourceType"))
    GetEncryptionKeyRequest.struct_class = Types::GetEncryptionKeyRequest

    GetEncryptionKeyResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyId"))
    GetEncryptionKeyResponse.struct_class = Types::GetEncryptionKeyResponse

    GetFindingsReportStatusRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    GetFindingsReportStatusRequest.struct_class = Types::GetFindingsReportStatusRequest

    GetFindingsReportStatusResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    GetFindingsReportStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExternalReportStatus, location_name: "status"))
    GetFindingsReportStatusResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: ReportingErrorCode, location_name: "errorCode"))
    GetFindingsReportStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    GetFindingsReportStatusResponse.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    GetFindingsReportStatusResponse.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "filterCriteria"))
    GetFindingsReportStatusResponse.struct_class = Types::GetFindingsReportStatusResponse

    GetMemberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    GetMemberRequest.struct_class = Types::GetMemberRequest

    GetMemberResponse.add_member(:member, Shapes::ShapeRef.new(shape: Member, location_name: "member"))
    GetMemberResponse.struct_class = Types::GetMemberResponse

    GetSbomExportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "reportId"))
    GetSbomExportRequest.struct_class = Types::GetSbomExportRequest

    GetSbomExportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "reportId"))
    GetSbomExportResponse.add_member(:format, Shapes::ShapeRef.new(shape: SbomReportFormat, location_name: "format"))
    GetSbomExportResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExternalReportStatus, location_name: "status"))
    GetSbomExportResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: ReportingErrorCode, location_name: "errorCode"))
    GetSbomExportResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "errorMessage"))
    GetSbomExportResponse.add_member(:s3_destination, Shapes::ShapeRef.new(shape: Destination, location_name: "s3Destination"))
    GetSbomExportResponse.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ResourceFilterCriteria, location_name: "filterCriteria"))
    GetSbomExportResponse.struct_class = Types::GetSbomExportResponse

    ImageLayerAggregation.add_member(:repositories, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "repositories"))
    ImageLayerAggregation.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceIds"))
    ImageLayerAggregation.add_member(:layer_hashes, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "layerHashes"))
    ImageLayerAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ImageLayerAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: ImageLayerSortBy, location_name: "sortBy"))
    ImageLayerAggregation.struct_class = Types::ImageLayerAggregation

    ImageLayerAggregationResponse.add_member(:repository, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "repository"))
    ImageLayerAggregationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "resourceId"))
    ImageLayerAggregationResponse.add_member(:layer_hash, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "layerHash"))
    ImageLayerAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ImageLayerAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    ImageLayerAggregationResponse.struct_class = Types::ImageLayerAggregationResponse

    ImageTagList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    InspectorScoreDetails.add_member(:adjusted_cvss, Shapes::ShapeRef.new(shape: CvssScoreDetails, location_name: "adjustedCvss"))
    InspectorScoreDetails.struct_class = Types::InspectorScoreDetails

    IntegrationSummaries.member = Shapes::ShapeRef.new(shape: CodeSecurityIntegrationSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    IpV4AddressList.member = Shapes::ShapeRef.new(shape: IpV4Address)

    IpV6AddressList.member = Shapes::ShapeRef.new(shape: IpV6Address)

    LambdaFunctionAggregation.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceIds"))
    LambdaFunctionAggregation.add_member(:function_names, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "functionNames"))
    LambdaFunctionAggregation.add_member(:runtimes, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "runtimes"))
    LambdaFunctionAggregation.add_member(:function_tags, Shapes::ShapeRef.new(shape: MapFilterList, location_name: "functionTags"))
    LambdaFunctionAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    LambdaFunctionAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: LambdaFunctionSortBy, location_name: "sortBy"))
    LambdaFunctionAggregation.struct_class = Types::LambdaFunctionAggregation

    LambdaFunctionAggregationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "resourceId"))
    LambdaFunctionAggregationResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: String, location_name: "functionName"))
    LambdaFunctionAggregationResponse.add_member(:runtime, Shapes::ShapeRef.new(shape: String, location_name: "runtime"))
    LambdaFunctionAggregationResponse.add_member(:lambda_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "lambdaTags"))
    LambdaFunctionAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    LambdaFunctionAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    LambdaFunctionAggregationResponse.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "lastModifiedAt"))
    LambdaFunctionAggregationResponse.struct_class = Types::LambdaFunctionAggregationResponse

    LambdaFunctionMetadata.add_member(:function_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "functionTags"))
    LambdaFunctionMetadata.add_member(:layers, Shapes::ShapeRef.new(shape: LambdaLayerList, location_name: "layers"))
    LambdaFunctionMetadata.add_member(:function_name, Shapes::ShapeRef.new(shape: String, location_name: "functionName"))
    LambdaFunctionMetadata.add_member(:runtime, Shapes::ShapeRef.new(shape: Runtime, location_name: "runtime"))
    LambdaFunctionMetadata.struct_class = Types::LambdaFunctionMetadata

    LambdaLayerAggregation.add_member(:function_names, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "functionNames"))
    LambdaLayerAggregation.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "resourceIds"))
    LambdaLayerAggregation.add_member(:layer_arns, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "layerArns"))
    LambdaLayerAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    LambdaLayerAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: LambdaLayerSortBy, location_name: "sortBy"))
    LambdaLayerAggregation.struct_class = Types::LambdaLayerAggregation

    LambdaLayerAggregationResponse.add_member(:function_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "functionName"))
    LambdaLayerAggregationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "resourceId"))
    LambdaLayerAggregationResponse.add_member(:layer_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "layerArn"))
    LambdaLayerAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    LambdaLayerAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    LambdaLayerAggregationResponse.struct_class = Types::LambdaLayerAggregationResponse

    LambdaLayerList.member = Shapes::ShapeRef.new(shape: String)

    LambdaVpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    LambdaVpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    LambdaVpcConfig.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    LambdaVpcConfig.struct_class = Types::LambdaVpcConfig

    LayerList.member = Shapes::ShapeRef.new(shape: LambdaLayerArn)

    ListAccountPermissionsRequest.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    ListAccountPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccountPermissionsMaxResults, location_name: "maxResults"))
    ListAccountPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccountPermissionsRequest.struct_class = Types::ListAccountPermissionsRequest

    ListAccountPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, required: true, location_name: "permissions"))
    ListAccountPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccountPermissionsResponse.struct_class = Types::ListAccountPermissionsResponse

    ListCisScanConfigurationsFilterCriteria.add_member(:scan_name_filters, Shapes::ShapeRef.new(shape: CisScanNameFilterList, location_name: "scanNameFilters"))
    ListCisScanConfigurationsFilterCriteria.add_member(:target_resource_tag_filters, Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: "targetResourceTagFilters"))
    ListCisScanConfigurationsFilterCriteria.add_member(:scan_configuration_arn_filters, Shapes::ShapeRef.new(shape: CisScanConfigurationArnFilterList, location_name: "scanConfigurationArnFilters"))
    ListCisScanConfigurationsFilterCriteria.struct_class = Types::ListCisScanConfigurationsFilterCriteria

    ListCisScanConfigurationsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ListCisScanConfigurationsFilterCriteria, location_name: "filterCriteria"))
    ListCisScanConfigurationsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CisScanConfigurationsSortBy, location_name: "sortBy"))
    ListCisScanConfigurationsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: CisSortOrder, location_name: "sortOrder"))
    ListCisScanConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCisScanConfigurationsMaxResults, location_name: "maxResults"))
    ListCisScanConfigurationsRequest.struct_class = Types::ListCisScanConfigurationsRequest

    ListCisScanConfigurationsResponse.add_member(:scan_configurations, Shapes::ShapeRef.new(shape: CisScanConfigurationList, location_name: "scanConfigurations"))
    ListCisScanConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanConfigurationsResponse.struct_class = Types::ListCisScanConfigurationsResponse

    ListCisScanResultsAggregatedByChecksRequest.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByChecksFilterCriteria, location_name: "filterCriteria"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByChecksSortBy, location_name: "sortBy"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: CisSortOrder, location_name: "sortOrder"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanResultsAggregatedByChecksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CisScanResultsMaxResults, location_name: "maxResults"))
    ListCisScanResultsAggregatedByChecksRequest.struct_class = Types::ListCisScanResultsAggregatedByChecksRequest

    ListCisScanResultsAggregatedByChecksResponse.add_member(:check_aggregations, Shapes::ShapeRef.new(shape: CisCheckAggregationList, location_name: "checkAggregations"))
    ListCisScanResultsAggregatedByChecksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanResultsAggregatedByChecksResponse.struct_class = Types::ListCisScanResultsAggregatedByChecksResponse

    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:scan_arn, Shapes::ShapeRef.new(shape: CisScanArn, required: true, location_name: "scanArn"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByTargetResourceFilterCriteria, location_name: "filterCriteria"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: CisScanResultsAggregatedByTargetResourceSortBy, location_name: "sortBy"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: CisSortOrder, location_name: "sortOrder"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanResultsAggregatedByTargetResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CisScanResultsMaxResults, location_name: "maxResults"))
    ListCisScanResultsAggregatedByTargetResourceRequest.struct_class = Types::ListCisScanResultsAggregatedByTargetResourceRequest

    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:target_resource_aggregations, Shapes::ShapeRef.new(shape: CisTargetResourceAggregationList, location_name: "targetResourceAggregations"))
    ListCisScanResultsAggregatedByTargetResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScanResultsAggregatedByTargetResourceResponse.struct_class = Types::ListCisScanResultsAggregatedByTargetResourceResponse

    ListCisScansFilterCriteria.add_member(:scan_name_filters, Shapes::ShapeRef.new(shape: CisScanNameFilterList, location_name: "scanNameFilters"))
    ListCisScansFilterCriteria.add_member(:target_resource_tag_filters, Shapes::ShapeRef.new(shape: ResourceTagFilterList, location_name: "targetResourceTagFilters"))
    ListCisScansFilterCriteria.add_member(:target_resource_id_filters, Shapes::ShapeRef.new(shape: ResourceIdFilterList, location_name: "targetResourceIdFilters"))
    ListCisScansFilterCriteria.add_member(:scan_status_filters, Shapes::ShapeRef.new(shape: CisScanStatusFilterList, location_name: "scanStatusFilters"))
    ListCisScansFilterCriteria.add_member(:scan_at_filters, Shapes::ShapeRef.new(shape: CisScanDateFilterList, location_name: "scanAtFilters"))
    ListCisScansFilterCriteria.add_member(:scan_configuration_arn_filters, Shapes::ShapeRef.new(shape: CisScanConfigurationArnFilterList, location_name: "scanConfigurationArnFilters"))
    ListCisScansFilterCriteria.add_member(:scan_arn_filters, Shapes::ShapeRef.new(shape: CisScanArnFilterList, location_name: "scanArnFilters"))
    ListCisScansFilterCriteria.add_member(:scheduled_by_filters, Shapes::ShapeRef.new(shape: CisScheduledByFilterList, location_name: "scheduledByFilters"))
    ListCisScansFilterCriteria.add_member(:failed_checks_filters, Shapes::ShapeRef.new(shape: CisNumberFilterList, location_name: "failedChecksFilters"))
    ListCisScansFilterCriteria.add_member(:target_account_id_filters, Shapes::ShapeRef.new(shape: AccountIdFilterList, location_name: "targetAccountIdFilters"))
    ListCisScansFilterCriteria.struct_class = Types::ListCisScansFilterCriteria

    ListCisScansRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ListCisScansFilterCriteria, location_name: "filterCriteria"))
    ListCisScansRequest.add_member(:detail_level, Shapes::ShapeRef.new(shape: ListCisScansDetailLevel, location_name: "detailLevel"))
    ListCisScansRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListCisScansSortBy, location_name: "sortBy"))
    ListCisScansRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: CisSortOrder, location_name: "sortOrder"))
    ListCisScansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCisScansMaxResults, location_name: "maxResults"))
    ListCisScansRequest.struct_class = Types::ListCisScansRequest

    ListCisScansResponse.add_member(:scans, Shapes::ShapeRef.new(shape: CisScanList, location_name: "scans"))
    ListCisScansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCisScansResponse.struct_class = Types::ListCisScansResponse

    ListCodeSecurityIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListCodeSecurityIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCodeSecurityIntegrationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListCodeSecurityIntegrationsRequest.struct_class = Types::ListCodeSecurityIntegrationsRequest

    ListCodeSecurityIntegrationsResponse.add_member(:integrations, Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: "integrations"))
    ListCodeSecurityIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCodeSecurityIntegrationsResponse.struct_class = Types::ListCodeSecurityIntegrationsResponse

    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeSecurityScanConfigurationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationAssociationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListCodeSecurityScanConfigurationAssociationsRequest.struct_class = Types::ListCodeSecurityScanConfigurationAssociationsRequest

    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:associations, Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationAssociationSummaries, location_name: "associations"))
    ListCodeSecurityScanConfigurationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeSecurityScanConfigurationAssociationsResponse.struct_class = Types::ListCodeSecurityScanConfigurationAssociationsResponse

    ListCodeSecurityScanConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeSecurityScanConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListCodeSecurityScanConfigurationsRequest.struct_class = Types::ListCodeSecurityScanConfigurationsRequest

    ListCodeSecurityScanConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: CodeSecurityScanConfigurationSummaries, location_name: "configurations"))
    ListCodeSecurityScanConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeSecurityScanConfigurationsResponse.struct_class = Types::ListCodeSecurityScanConfigurationsResponse

    ListCoverageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCoverageMaxResults, location_name: "maxResults"))
    ListCoverageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCoverageRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: "filterCriteria"))
    ListCoverageRequest.struct_class = Types::ListCoverageRequest

    ListCoverageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCoverageResponse.add_member(:covered_resources, Shapes::ShapeRef.new(shape: CoveredResources, location_name: "coveredResources"))
    ListCoverageResponse.struct_class = Types::ListCoverageResponse

    ListCoverageStatisticsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: "filterCriteria"))
    ListCoverageStatisticsRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupKey, location_name: "groupBy"))
    ListCoverageStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCoverageStatisticsRequest.struct_class = Types::ListCoverageStatisticsRequest

    ListCoverageStatisticsResponse.add_member(:counts_by_group, Shapes::ShapeRef.new(shape: CountsList, location_name: "countsByGroup"))
    ListCoverageStatisticsResponse.add_member(:total_counts, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "totalCounts"))
    ListCoverageStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCoverageStatisticsResponse.struct_class = Types::ListCoverageStatisticsResponse

    ListDelegatedAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDelegatedAdminMaxResults, location_name: "maxResults"))
    ListDelegatedAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDelegatedAdminAccountsRequest.struct_class = Types::ListDelegatedAdminAccountsRequest

    ListDelegatedAdminAccountsResponse.add_member(:delegated_admin_accounts, Shapes::ShapeRef.new(shape: DelegatedAdminAccountList, location_name: "delegatedAdminAccounts"))
    ListDelegatedAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDelegatedAdminAccountsResponse.struct_class = Types::ListDelegatedAdminAccountsResponse

    ListFiltersRequest.add_member(:arns, Shapes::ShapeRef.new(shape: FilterArnList, location_name: "arns"))
    ListFiltersRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    ListFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFilterMaxResults, location_name: "maxResults"))
    ListFiltersRequest.struct_class = Types::ListFiltersRequest

    ListFiltersResponse.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "filters"))
    ListFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFiltersResponse.struct_class = Types::ListFiltersResponse

    ListFindingAggregationsRequest.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: AggregationType, required: true, location_name: "aggregationType"))
    ListFindingAggregationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingAggregationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFindingAggregationsMaxResults, location_name: "maxResults"))
    ListFindingAggregationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "accountIds"))
    ListFindingAggregationsRequest.add_member(:aggregation_request, Shapes::ShapeRef.new(shape: AggregationRequest, location_name: "aggregationRequest"))
    ListFindingAggregationsRequest.struct_class = Types::ListFindingAggregationsRequest

    ListFindingAggregationsResponse.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: AggregationType, required: true, location_name: "aggregationType"))
    ListFindingAggregationsResponse.add_member(:responses, Shapes::ShapeRef.new(shape: AggregationResponseList, location_name: "responses"))
    ListFindingAggregationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingAggregationsResponse.struct_class = Types::ListFindingAggregationsResponse

    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFindingsMaxResults, location_name: "maxResults"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "filterCriteria"))
    ListFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: FindingList, location_name: "findings"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: Boolean, location_name: "onlyAssociated"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMembersMaxResults, location_name: "maxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsageTotalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListUsageTotalsMaxResults, location_name: "maxResults"))
    ListUsageTotalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListUsageTotalsNextToken, location_name: "nextToken"))
    ListUsageTotalsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: UsageAccountIdList, location_name: "accountIds"))
    ListUsageTotalsRequest.struct_class = Types::ListUsageTotalsRequest

    ListUsageTotalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListUsageTotalsNextToken, location_name: "nextToken"))
    ListUsageTotalsResponse.add_member(:totals, Shapes::ShapeRef.new(shape: UsageTotalList, location_name: "totals"))
    ListUsageTotalsResponse.struct_class = Types::ListUsageTotalsResponse

    MapFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: MapComparison, required: true, location_name: "comparison"))
    MapFilter.add_member(:key, Shapes::ShapeRef.new(shape: MapKey, required: true, location_name: "key"))
    MapFilter.add_member(:value, Shapes::ShapeRef.new(shape: MapValue, location_name: "value"))
    MapFilter.struct_class = Types::MapFilter

    MapFilterList.member = Shapes::ShapeRef.new(shape: MapFilter)

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Member.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    Member.add_member(:delegated_admin_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "delegatedAdminAccountId"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "updatedAt"))
    Member.struct_class = Types::Member

    MemberAccountEc2DeepInspectionStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberAccountEc2DeepInspectionStatus.add_member(:activate_deep_inspection, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "activateDeepInspection"))
    MemberAccountEc2DeepInspectionStatus.struct_class = Types::MemberAccountEc2DeepInspectionStatus

    MemberAccountEc2DeepInspectionStatusList.member = Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatus)

    MemberAccountEc2DeepInspectionStatusState.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberAccountEc2DeepInspectionStatusState.add_member(:status, Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: "status"))
    MemberAccountEc2DeepInspectionStatusState.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "errorMessage"))
    MemberAccountEc2DeepInspectionStatusState.struct_class = Types::MemberAccountEc2DeepInspectionStatusState

    MemberAccountEc2DeepInspectionStatusStateList.member = Shapes::ShapeRef.new(shape: MemberAccountEc2DeepInspectionStatusState)

    MemberList.member = Shapes::ShapeRef.new(shape: Member)

    MonthlySchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "startTime"))
    MonthlySchedule.add_member(:day, Shapes::ShapeRef.new(shape: Day, required: true, location_name: "day"))
    MonthlySchedule.struct_class = Types::MonthlySchedule

    NetworkPath.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, location_name: "steps"))
    NetworkPath.struct_class = Types::NetworkPath

    NetworkReachabilityDetails.add_member(:open_port_range, Shapes::ShapeRef.new(shape: PortRange, required: true, location_name: "openPortRange"))
    NetworkReachabilityDetails.add_member(:protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, required: true, location_name: "protocol"))
    NetworkReachabilityDetails.add_member(:network_path, Shapes::ShapeRef.new(shape: NetworkPath, required: true, location_name: "networkPath"))
    NetworkReachabilityDetails.struct_class = Types::NetworkReachabilityDetails

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    NumberFilter.add_member(:upper_inclusive, Shapes::ShapeRef.new(shape: Double, location_name: "upperInclusive"))
    NumberFilter.add_member(:lower_inclusive, Shapes::ShapeRef.new(shape: Double, location_name: "lowerInclusive"))
    NumberFilter.struct_class = Types::NumberFilter

    NumberFilterList.member = Shapes::ShapeRef.new(shape: NumberFilter)

    OneAccountIdFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    OneTimeSchedule.struct_class = Types::OneTimeSchedule

    PackageAggregation.add_member(:package_names, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "packageNames"))
    PackageAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    PackageAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: PackageSortBy, location_name: "sortBy"))
    PackageAggregation.struct_class = Types::PackageAggregation

    PackageAggregationResponse.add_member(:package_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "packageName"))
    PackageAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    PackageAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    PackageAggregationResponse.struct_class = Types::PackageAggregationResponse

    PackageFilter.add_member(:name, Shapes::ShapeRef.new(shape: StringFilter, location_name: "name"))
    PackageFilter.add_member(:version, Shapes::ShapeRef.new(shape: StringFilter, location_name: "version"))
    PackageFilter.add_member(:epoch, Shapes::ShapeRef.new(shape: NumberFilter, location_name: "epoch"))
    PackageFilter.add_member(:release, Shapes::ShapeRef.new(shape: StringFilter, location_name: "release"))
    PackageFilter.add_member(:architecture, Shapes::ShapeRef.new(shape: StringFilter, location_name: "architecture"))
    PackageFilter.add_member(:source_layer_hash, Shapes::ShapeRef.new(shape: StringFilter, location_name: "sourceLayerHash"))
    PackageFilter.add_member(:source_lambda_layer_arn, Shapes::ShapeRef.new(shape: StringFilter, location_name: "sourceLambdaLayerArn"))
    PackageFilter.add_member(:file_path, Shapes::ShapeRef.new(shape: StringFilter, location_name: "filePath"))
    PackageFilter.struct_class = Types::PackageFilter

    PackageFilterList.member = Shapes::ShapeRef.new(shape: PackageFilter)

    PackageVulnerabilityDetails.add_member(:vulnerability_id, Shapes::ShapeRef.new(shape: VulnerabilityId, required: true, location_name: "vulnerabilityId"))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, Shapes::ShapeRef.new(shape: VulnerablePackageList, location_name: "vulnerablePackages"))
    PackageVulnerabilityDetails.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "source"))
    PackageVulnerabilityDetails.add_member(:cvss, Shapes::ShapeRef.new(shape: CvssScoreList, location_name: "cvss"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: VulnerabilityIdList, location_name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:reference_urls, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "referenceUrls"))
    PackageVulnerabilityDetails.struct_class = Types::PackageVulnerabilityDetails

    PathList.member = Shapes::ShapeRef.new(shape: Path)

    PeriodicScanConfiguration.add_member(:frequency, Shapes::ShapeRef.new(shape: PeriodicScanFrequency, location_name: "frequency"))
    PeriodicScanConfiguration.add_member(:frequency_expression, Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: "frequencyExpression"))
    PeriodicScanConfiguration.struct_class = Types::PeriodicScanConfiguration

    Permission.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    Permission.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "operation"))
    Permission.struct_class = Types::Permission

    Permissions.member = Shapes::ShapeRef.new(shape: Permission)

    PlatformFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    PortRange.add_member(:begin, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "begin"))
    PortRange.add_member(:end, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "end"))
    PortRange.struct_class = Types::PortRange

    PortRangeFilter.add_member(:begin_inclusive, Shapes::ShapeRef.new(shape: Port, location_name: "beginInclusive"))
    PortRangeFilter.add_member(:end_inclusive, Shapes::ShapeRef.new(shape: Port, location_name: "endInclusive"))
    PortRangeFilter.struct_class = Types::PortRangeFilter

    PortRangeFilterList.member = Shapes::ShapeRef.new(shape: PortRangeFilter)

    ProjectCodeSecurityScanConfiguration.add_member(:periodic_scan_configurations, Shapes::ShapeRef.new(shape: ProjectPeriodicScanConfigurationList, location_name: "periodicScanConfigurations"))
    ProjectCodeSecurityScanConfiguration.add_member(:continuous_integration_scan_configurations, Shapes::ShapeRef.new(shape: ProjectContinuousIntegrationScanConfigurationList, location_name: "continuousIntegrationScanConfigurations"))
    ProjectCodeSecurityScanConfiguration.struct_class = Types::ProjectCodeSecurityScanConfiguration

    ProjectContinuousIntegrationScanConfiguration.add_member(:supported_event, Shapes::ShapeRef.new(shape: ContinuousIntegrationScanEvent, location_name: "supportedEvent"))
    ProjectContinuousIntegrationScanConfiguration.add_member(:rule_set_categories, Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: "ruleSetCategories"))
    ProjectContinuousIntegrationScanConfiguration.struct_class = Types::ProjectContinuousIntegrationScanConfiguration

    ProjectContinuousIntegrationScanConfigurationList.member = Shapes::ShapeRef.new(shape: ProjectContinuousIntegrationScanConfiguration)

    ProjectPeriodicScanConfiguration.add_member(:frequency_expression, Shapes::ShapeRef.new(shape: FrequencyExpression, location_name: "frequencyExpression"))
    ProjectPeriodicScanConfiguration.add_member(:rule_set_categories, Shapes::ShapeRef.new(shape: RuleSetCategories, location_name: "ruleSetCategories"))
    ProjectPeriodicScanConfiguration.struct_class = Types::ProjectPeriodicScanConfiguration

    ProjectPeriodicScanConfigurationList.member = Shapes::ShapeRef.new(shape: ProjectPeriodicScanConfiguration)

    Recommendation.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "text"))
    Recommendation.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Url"))
    Recommendation.struct_class = Types::Recommendation

    ReferenceUrls.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    RelatedVulnerabilities.member = Shapes::ShapeRef.new(shape: RelatedVulnerability)

    Remediation.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, location_name: "recommendation"))
    Remediation.struct_class = Types::Remediation

    ReportTargetAccounts.member = Shapes::ShapeRef.new(shape: AccountId)

    RepositoryAggregation.add_member(:repositories, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "repositories"))
    RepositoryAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    RepositoryAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: RepositorySortBy, location_name: "sortBy"))
    RepositoryAggregation.struct_class = Types::RepositoryAggregation

    RepositoryAggregationResponse.add_member(:repository, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "repository"))
    RepositoryAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    RepositoryAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    RepositoryAggregationResponse.add_member(:affected_images, Shapes::ShapeRef.new(shape: Long, location_name: "affectedImages"))
    RepositoryAggregationResponse.struct_class = Types::RepositoryAggregationResponse

    ResetEncryptionKeyRequest.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, required: true, location_name: "scanType"))
    ResetEncryptionKeyRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResetEncryptionKeyRequest.struct_class = Types::ResetEncryptionKeyRequest

    ResetEncryptionKeyResponse.struct_class = Types::ResetEncryptionKeyResponse

    Resource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "type"))
    Resource.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "id"))
    Resource.add_member(:partition, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "partition"))
    Resource.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "region"))
    Resource.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Resource.add_member(:details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "details"))
    Resource.struct_class = Types::Resource

    ResourceDetails.add_member(:aws_ec2_instance, Shapes::ShapeRef.new(shape: AwsEc2InstanceDetails, location_name: "awsEc2Instance"))
    ResourceDetails.add_member(:aws_ecr_container_image, Shapes::ShapeRef.new(shape: AwsEcrContainerImageDetails, location_name: "awsEcrContainerImage"))
    ResourceDetails.add_member(:aws_lambda_function, Shapes::ShapeRef.new(shape: AwsLambdaFunctionDetails, location_name: "awsLambdaFunction"))
    ResourceDetails.add_member(:code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryDetails, location_name: "codeRepository"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceFilterCriteria.add_member(:account_id, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "accountId"))
    ResourceFilterCriteria.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "resourceId"))
    ResourceFilterCriteria.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "resourceType"))
    ResourceFilterCriteria.add_member(:ecr_repository_name, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "ecrRepositoryName"))
    ResourceFilterCriteria.add_member(:lambda_function_name, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "lambdaFunctionName"))
    ResourceFilterCriteria.add_member(:ecr_image_tags, Shapes::ShapeRef.new(shape: ResourceStringFilterList, location_name: "ecrImageTags"))
    ResourceFilterCriteria.add_member(:ec2_instance_tags, Shapes::ShapeRef.new(shape: ResourceMapFilterList, location_name: "ec2InstanceTags"))
    ResourceFilterCriteria.add_member(:lambda_function_tags, Shapes::ShapeRef.new(shape: ResourceMapFilterList, location_name: "lambdaFunctionTags"))
    ResourceFilterCriteria.struct_class = Types::ResourceFilterCriteria

    ResourceIdFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceMapFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: ResourceMapComparison, required: true, location_name: "comparison"))
    ResourceMapFilter.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "key"))
    ResourceMapFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "value"))
    ResourceMapFilter.struct_class = Types::ResourceMapFilter

    ResourceMapFilterList.member = Shapes::ShapeRef.new(shape: ResourceMapFilter)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceScanMetadata.add_member(:ecr_repository, Shapes::ShapeRef.new(shape: EcrRepositoryMetadata, location_name: "ecrRepository"))
    ResourceScanMetadata.add_member(:ecr_image, Shapes::ShapeRef.new(shape: EcrContainerImageMetadata, location_name: "ecrImage"))
    ResourceScanMetadata.add_member(:ec2, Shapes::ShapeRef.new(shape: Ec2Metadata, location_name: "ec2"))
    ResourceScanMetadata.add_member(:lambda_function, Shapes::ShapeRef.new(shape: LambdaFunctionMetadata, location_name: "lambdaFunction"))
    ResourceScanMetadata.add_member(:code_repository, Shapes::ShapeRef.new(shape: CodeRepositoryMetadata, location_name: "codeRepository"))
    ResourceScanMetadata.struct_class = Types::ResourceScanMetadata

    ResourceState.add_member(:ec2, Shapes::ShapeRef.new(shape: State, required: true, location_name: "ec2"))
    ResourceState.add_member(:ecr, Shapes::ShapeRef.new(shape: State, required: true, location_name: "ecr"))
    ResourceState.add_member(:lambda, Shapes::ShapeRef.new(shape: State, location_name: "lambda"))
    ResourceState.add_member(:lambda_code, Shapes::ShapeRef.new(shape: State, location_name: "lambdaCode"))
    ResourceState.add_member(:code_repository, Shapes::ShapeRef.new(shape: State, location_name: "codeRepository"))
    ResourceState.struct_class = Types::ResourceState

    ResourceStatus.add_member(:ec2, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "ec2"))
    ResourceStatus.add_member(:ecr, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "ecr"))
    ResourceStatus.add_member(:lambda, Shapes::ShapeRef.new(shape: Status, location_name: "lambda"))
    ResourceStatus.add_member(:lambda_code, Shapes::ShapeRef.new(shape: Status, location_name: "lambdaCode"))
    ResourceStatus.add_member(:code_repository, Shapes::ShapeRef.new(shape: Status, location_name: "codeRepository"))
    ResourceStatus.struct_class = Types::ResourceStatus

    ResourceStringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: ResourceStringComparison, required: true, location_name: "comparison"))
    ResourceStringFilter.add_member(:value, Shapes::ShapeRef.new(shape: ResourceStringInput, required: true, location_name: "value"))
    ResourceStringFilter.struct_class = Types::ResourceStringFilter

    ResourceStringFilterList.member = Shapes::ShapeRef.new(shape: ResourceStringFilter)

    ResourceTagFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    RuleSetCategories.member = Shapes::ShapeRef.new(shape: RuleSetCategory)

    ScanStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: ScanStatusCode, required: true, location_name: "statusCode"))
    ScanStatus.add_member(:reason, Shapes::ShapeRef.new(shape: ScanStatusReason, required: true, location_name: "reason"))
    ScanStatus.struct_class = Types::ScanStatus

    Schedule.add_member(:one_time, Shapes::ShapeRef.new(shape: OneTimeSchedule, location_name: "oneTime"))
    Schedule.add_member(:daily, Shapes::ShapeRef.new(shape: DailySchedule, location_name: "daily"))
    Schedule.add_member(:weekly, Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: "weekly"))
    Schedule.add_member(:monthly, Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: "monthly"))
    Schedule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Schedule.add_member_subclass(:one_time, Types::Schedule::OneTime)
    Schedule.add_member_subclass(:daily, Types::Schedule::Daily)
    Schedule.add_member_subclass(:weekly, Types::Schedule::Weekly)
    Schedule.add_member_subclass(:monthly, Types::Schedule::Monthly)
    Schedule.add_member_subclass(:unknown, Types::Schedule::Unknown)
    Schedule.struct_class = Types::Schedule

    ScopeSettings.add_member(:project_selection_scope, Shapes::ShapeRef.new(shape: ProjectSelectionScope, location_name: "projectSelectionScope"))
    ScopeSettings.struct_class = Types::ScopeSettings

    SearchVulnerabilitiesFilterCriteria.add_member(:vulnerability_ids, Shapes::ShapeRef.new(shape: VulnIdList, required: true, location_name: "vulnerabilityIds"))
    SearchVulnerabilitiesFilterCriteria.struct_class = Types::SearchVulnerabilitiesFilterCriteria

    SearchVulnerabilitiesRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: SearchVulnerabilitiesFilterCriteria, required: true, location_name: "filterCriteria"))
    SearchVulnerabilitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchVulnerabilitiesRequest.struct_class = Types::SearchVulnerabilitiesRequest

    SearchVulnerabilitiesResponse.add_member(:vulnerabilities, Shapes::ShapeRef.new(shape: Vulnerabilities, required: true, location_name: "vulnerabilities"))
    SearchVulnerabilitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchVulnerabilitiesResponse.struct_class = Types::SearchVulnerabilitiesResponse

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SendCisSessionHealthRequest.add_member(:scan_job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "scanJobId"))
    SendCisSessionHealthRequest.add_member(:session_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "sessionToken"))
    SendCisSessionHealthRequest.struct_class = Types::SendCisSessionHealthRequest

    SendCisSessionHealthResponse.struct_class = Types::SendCisSessionHealthResponse

    SendCisSessionTelemetryRequest.add_member(:scan_job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "scanJobId"))
    SendCisSessionTelemetryRequest.add_member(:session_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "sessionToken"))
    SendCisSessionTelemetryRequest.add_member(:messages, Shapes::ShapeRef.new(shape: CisSessionMessages, required: true, location_name: "messages"))
    SendCisSessionTelemetryRequest.struct_class = Types::SendCisSessionTelemetryRequest

    SendCisSessionTelemetryResponse.struct_class = Types::SendCisSessionTelemetryResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SeverityCounts.add_member(:all, Shapes::ShapeRef.new(shape: Long, location_name: "all"))
    SeverityCounts.add_member(:medium, Shapes::ShapeRef.new(shape: Long, location_name: "medium"))
    SeverityCounts.add_member(:high, Shapes::ShapeRef.new(shape: Long, location_name: "high"))
    SeverityCounts.add_member(:critical, Shapes::ShapeRef.new(shape: Long, location_name: "critical"))
    SeverityCounts.struct_class = Types::SeverityCounts

    SortCriteria.add_member(:field, Shapes::ShapeRef.new(shape: SortField, required: true, location_name: "field"))
    SortCriteria.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "sortOrder"))
    SortCriteria.struct_class = Types::SortCriteria

    StartCisSessionMessage.add_member(:session_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "sessionToken"))
    StartCisSessionMessage.struct_class = Types::StartCisSessionMessage

    StartCisSessionRequest.add_member(:scan_job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "scanJobId"))
    StartCisSessionRequest.add_member(:message, Shapes::ShapeRef.new(shape: StartCisSessionMessage, required: true, location_name: "message"))
    StartCisSessionRequest.struct_class = Types::StartCisSessionRequest

    StartCisSessionResponse.struct_class = Types::StartCisSessionResponse

    StartCodeSecurityScanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CodeSecurityClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartCodeSecurityScanRequest.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, required: true, location_name: "resource"))
    StartCodeSecurityScanRequest.struct_class = Types::StartCodeSecurityScanRequest

    StartCodeSecurityScanResponse.add_member(:scan_id, Shapes::ShapeRef.new(shape: CodeSecurityUuid, location_name: "scanId"))
    StartCodeSecurityScanResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeScanStatus, location_name: "status"))
    StartCodeSecurityScanResponse.struct_class = Types::StartCodeSecurityScanResponse

    State.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    State.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    State.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "errorMessage"))
    State.struct_class = Types::State

    StatusCounts.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "failed"))
    StatusCounts.add_member(:skipped, Shapes::ShapeRef.new(shape: Integer, location_name: "skipped"))
    StatusCounts.add_member(:passed, Shapes::ShapeRef.new(shape: Integer, location_name: "passed"))
    StatusCounts.struct_class = Types::StatusCounts

    Step.add_member(:component_id, Shapes::ShapeRef.new(shape: Component, required: true, location_name: "componentId"))
    Step.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    Step.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentArn, location_name: "componentArn"))
    Step.struct_class = Types::Step

    StepList.member = Shapes::ShapeRef.new(shape: Step)

    StopCisMessageProgress.add_member(:total_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "totalChecks"))
    StopCisMessageProgress.add_member(:successful_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "successfulChecks"))
    StopCisMessageProgress.add_member(:failed_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "failedChecks"))
    StopCisMessageProgress.add_member(:not_evaluated_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "notEvaluatedChecks"))
    StopCisMessageProgress.add_member(:unknown_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "unknownChecks"))
    StopCisMessageProgress.add_member(:not_applicable_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "notApplicableChecks"))
    StopCisMessageProgress.add_member(:informational_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "informationalChecks"))
    StopCisMessageProgress.add_member(:error_checks, Shapes::ShapeRef.new(shape: CheckCount, location_name: "errorChecks"))
    StopCisMessageProgress.struct_class = Types::StopCisMessageProgress

    StopCisSessionMessage.add_member(:status, Shapes::ShapeRef.new(shape: StopCisSessionStatus, required: true, location_name: "status"))
    StopCisSessionMessage.add_member(:reason, Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    StopCisSessionMessage.add_member(:progress, Shapes::ShapeRef.new(shape: StopCisMessageProgress, required: true, location_name: "progress"))
    StopCisSessionMessage.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    StopCisSessionMessage.add_member(:benchmark_version, Shapes::ShapeRef.new(shape: BenchmarkVersion, location_name: "benchmarkVersion"))
    StopCisSessionMessage.add_member(:benchmark_profile, Shapes::ShapeRef.new(shape: BenchmarkProfile, location_name: "benchmarkProfile"))
    StopCisSessionMessage.struct_class = Types::StopCisSessionMessage

    StopCisSessionRequest.add_member(:scan_job_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "scanJobId"))
    StopCisSessionRequest.add_member(:session_token, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "sessionToken"))
    StopCisSessionRequest.add_member(:message, Shapes::ShapeRef.new(shape: StopCisSessionMessage, required: true, location_name: "message"))
    StopCisSessionRequest.struct_class = Types::StopCisSessionRequest

    StopCisSessionResponse.struct_class = Types::StopCisSessionResponse

    StringFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: StringComparison, required: true, location_name: "comparison"))
    StringFilter.add_member(:value, Shapes::ShapeRef.new(shape: StringInput, required: true, location_name: "value"))
    StringFilter.struct_class = Types::StringFilter

    StringFilterList.member = Shapes::ShapeRef.new(shape: StringFilter)

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    SuccessfulAssociationResult.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: "scanConfigurationArn"))
    SuccessfulAssociationResult.add_member(:resource, Shapes::ShapeRef.new(shape: CodeSecurityResource, location_name: "resource"))
    SuccessfulAssociationResult.struct_class = Types::SuccessfulAssociationResult

    SuccessfulAssociationResultList.member = Shapes::ShapeRef.new(shape: SuccessfulAssociationResult)

    SuggestedFix.add_member(:description, Shapes::ShapeRef.new(shape: SuggestedFixDescriptionString, location_name: "description"))
    SuggestedFix.add_member(:code, Shapes::ShapeRef.new(shape: SuggestedFixCodeString, location_name: "code"))
    SuggestedFix.struct_class = Types::SuggestedFix

    SuggestedFixes.member = Shapes::ShapeRef.new(shape: SuggestedFix)

    TagFilter.add_member(:comparison, Shapes::ShapeRef.new(shape: TagComparison, required: true, location_name: "comparison"))
    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "key"))
    TagFilter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    TagFilter.struct_class = Types::TagFilter

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: MapKey)
    TagMap.value = Shapes::ShapeRef.new(shape: MapValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValueList.member = Shapes::ShapeRef.new(shape: TargetResourceTagsValue)

    TargetAccountList.member = Shapes::ShapeRef.new(shape: TargetAccount)

    TargetResourceTags.key = Shapes::ShapeRef.new(shape: TargetResourceTagsKey)
    TargetResourceTags.value = Shapes::ShapeRef.new(shape: TagValueList)

    TargetStatusFilterList.member = Shapes::ShapeRef.new(shape: CisTargetStatusFilter)

    TargetStatusReasonFilterList.member = Shapes::ShapeRef.new(shape: CisTargetStatusReasonFilter)

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Time.add_member(:time_of_day, Shapes::ShapeRef.new(shape: TimeOfDay, required: true, location_name: "timeOfDay"))
    Time.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, required: true, location_name: "timezone"))
    Time.struct_class = Types::Time

    TitleAggregation.add_member(:titles, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "titles"))
    TitleAggregation.add_member(:vulnerability_ids, Shapes::ShapeRef.new(shape: StringFilterList, location_name: "vulnerabilityIds"))
    TitleAggregation.add_member(:resource_type, Shapes::ShapeRef.new(shape: AggregationResourceType, location_name: "resourceType"))
    TitleAggregation.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    TitleAggregation.add_member(:sort_by, Shapes::ShapeRef.new(shape: TitleSortBy, location_name: "sortBy"))
    TitleAggregation.add_member(:finding_type, Shapes::ShapeRef.new(shape: AggregationFindingType, location_name: "findingType"))
    TitleAggregation.struct_class = Types::TitleAggregation

    TitleAggregationResponse.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "title"))
    TitleAggregationResponse.add_member(:vulnerability_id, Shapes::ShapeRef.new(shape: String, location_name: "vulnerabilityId"))
    TitleAggregationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    TitleAggregationResponse.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    TitleAggregationResponse.struct_class = Types::TitleAggregationResponse

    TitleFilterList.member = Shapes::ShapeRef.new(shape: CisStringFilter)

    Tools.member = Shapes::ShapeRef.new(shape: Tool)

    Ttps.member = Shapes::ShapeRef.new(shape: Ttp)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCisScanConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    UpdateCisScanConfigurationRequest.add_member(:scan_name, Shapes::ShapeRef.new(shape: CisScanName, location_name: "scanName"))
    UpdateCisScanConfigurationRequest.add_member(:security_level, Shapes::ShapeRef.new(shape: CisSecurityLevel, location_name: "securityLevel"))
    UpdateCisScanConfigurationRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateCisScanConfigurationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: UpdateCisTargets, location_name: "targets"))
    UpdateCisScanConfigurationRequest.struct_class = Types::UpdateCisScanConfigurationRequest

    UpdateCisScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: CisScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    UpdateCisScanConfigurationResponse.struct_class = Types::UpdateCisScanConfigurationResponse

    UpdateCisTargets.add_member(:account_ids, Shapes::ShapeRef.new(shape: TargetAccountList, location_name: "accountIds"))
    UpdateCisTargets.add_member(:target_resource_tags, Shapes::ShapeRef.new(shape: TargetResourceTags, location_name: "targetResourceTags"))
    UpdateCisTargets.struct_class = Types::UpdateCisTargets

    UpdateCodeSecurityIntegrationRequest.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    UpdateCodeSecurityIntegrationRequest.add_member(:details, Shapes::ShapeRef.new(shape: UpdateIntegrationDetails, required: true, location_name: "details"))
    UpdateCodeSecurityIntegrationRequest.struct_class = Types::UpdateCodeSecurityIntegrationRequest

    UpdateCodeSecurityIntegrationResponse.add_member(:integration_arn, Shapes::ShapeRef.new(shape: CodeSecurityIntegrationArn, required: true, location_name: "integrationArn"))
    UpdateCodeSecurityIntegrationResponse.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "status"))
    UpdateCodeSecurityIntegrationResponse.struct_class = Types::UpdateCodeSecurityIntegrationResponse

    UpdateCodeSecurityScanConfigurationRequest.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, required: true, location_name: "scanConfigurationArn"))
    UpdateCodeSecurityScanConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CodeSecurityScanConfiguration, required: true, location_name: "configuration"))
    UpdateCodeSecurityScanConfigurationRequest.struct_class = Types::UpdateCodeSecurityScanConfigurationRequest

    UpdateCodeSecurityScanConfigurationResponse.add_member(:scan_configuration_arn, Shapes::ShapeRef.new(shape: ScanConfigurationArn, location_name: "scanConfigurationArn"))
    UpdateCodeSecurityScanConfigurationResponse.struct_class = Types::UpdateCodeSecurityScanConfigurationResponse

    UpdateConfigurationRequest.add_member(:ecr_configuration, Shapes::ShapeRef.new(shape: EcrConfiguration, location_name: "ecrConfiguration"))
    UpdateConfigurationRequest.add_member(:ec2_configuration, Shapes::ShapeRef.new(shape: Ec2Configuration, location_name: "ec2Configuration"))
    UpdateConfigurationRequest.struct_class = Types::UpdateConfigurationRequest

    UpdateConfigurationResponse.struct_class = Types::UpdateConfigurationResponse

    UpdateEc2DeepInspectionConfigurationRequest.add_member(:activate_deep_inspection, Shapes::ShapeRef.new(shape: Boolean, location_name: "activateDeepInspection"))
    UpdateEc2DeepInspectionConfigurationRequest.add_member(:package_paths, Shapes::ShapeRef.new(shape: PathList, location_name: "packagePaths"))
    UpdateEc2DeepInspectionConfigurationRequest.struct_class = Types::UpdateEc2DeepInspectionConfigurationRequest

    UpdateEc2DeepInspectionConfigurationResponse.add_member(:package_paths, Shapes::ShapeRef.new(shape: PathList, location_name: "packagePaths"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:org_package_paths, Shapes::ShapeRef.new(shape: PathList, location_name: "orgPackagePaths"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: Ec2DeepInspectionStatus, location_name: "status"))
    UpdateEc2DeepInspectionConfigurationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "errorMessage"))
    UpdateEc2DeepInspectionConfigurationResponse.struct_class = Types::UpdateEc2DeepInspectionConfigurationResponse

    UpdateEncryptionKeyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyId"))
    UpdateEncryptionKeyRequest.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, required: true, location_name: "scanType"))
    UpdateEncryptionKeyRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    UpdateEncryptionKeyRequest.struct_class = Types::UpdateEncryptionKeyRequest

    UpdateEncryptionKeyResponse.struct_class = Types::UpdateEncryptionKeyResponse

    UpdateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    UpdateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    UpdateFilterRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "filterCriteria"))
    UpdateFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    UpdateFilterRequest.add_member(:filter_arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "filterArn"))
    UpdateFilterRequest.add_member(:reason, Shapes::ShapeRef.new(shape: FilterReason, location_name: "reason"))
    UpdateFilterRequest.struct_class = Types::UpdateFilterRequest

    UpdateFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: FilterArn, required: true, location_name: "arn"))
    UpdateFilterResponse.struct_class = Types::UpdateFilterResponse

    UpdateGitHubIntegrationDetail.add_member(:code, Shapes::ShapeRef.new(shape: GitHubAuthCode, required: true, location_name: "code"))
    UpdateGitHubIntegrationDetail.add_member(:installation_id, Shapes::ShapeRef.new(shape: GitHubInstallationId, required: true, location_name: "installationId"))
    UpdateGitHubIntegrationDetail.struct_class = Types::UpdateGitHubIntegrationDetail

    UpdateGitLabSelfManagedIntegrationDetail.add_member(:auth_code, Shapes::ShapeRef.new(shape: GitLabAuthCode, required: true, location_name: "authCode"))
    UpdateGitLabSelfManagedIntegrationDetail.struct_class = Types::UpdateGitLabSelfManagedIntegrationDetail

    UpdateIntegrationDetails.add_member(:gitlab_self_managed, Shapes::ShapeRef.new(shape: UpdateGitLabSelfManagedIntegrationDetail, location_name: "gitlabSelfManaged"))
    UpdateIntegrationDetails.add_member(:github, Shapes::ShapeRef.new(shape: UpdateGitHubIntegrationDetail, location_name: "github"))
    UpdateIntegrationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateIntegrationDetails.add_member_subclass(:gitlab_self_managed, Types::UpdateIntegrationDetails::GitlabSelfManaged)
    UpdateIntegrationDetails.add_member_subclass(:github, Types::UpdateIntegrationDetails::Github)
    UpdateIntegrationDetails.add_member_subclass(:unknown, Types::UpdateIntegrationDetails::Unknown)
    UpdateIntegrationDetails.struct_class = Types::UpdateIntegrationDetails

    UpdateOrgEc2DeepInspectionConfigurationRequest.add_member(:org_package_paths, Shapes::ShapeRef.new(shape: PathList, required: true, location_name: "orgPackagePaths"))
    UpdateOrgEc2DeepInspectionConfigurationRequest.struct_class = Types::UpdateOrgEc2DeepInspectionConfigurationRequest

    UpdateOrgEc2DeepInspectionConfigurationResponse.struct_class = Types::UpdateOrgEc2DeepInspectionConfigurationResponse

    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: AutoEnable, required: true, location_name: "autoEnable"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    UpdateOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: AutoEnable, required: true, location_name: "autoEnable"))
    UpdateOrganizationConfigurationResponse.struct_class = Types::UpdateOrganizationConfigurationResponse

    Usage.add_member(:type, Shapes::ShapeRef.new(shape: UsageType, location_name: "type"))
    Usage.add_member(:total, Shapes::ShapeRef.new(shape: UsageValue, location_name: "total"))
    Usage.add_member(:estimated_monthly_cost, Shapes::ShapeRef.new(shape: MonthlyCostEstimate, location_name: "estimatedMonthlyCost"))
    Usage.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, location_name: "currency"))
    Usage.struct_class = Types::Usage

    UsageAccountIdList.member = Shapes::ShapeRef.new(shape: UsageAccountId)

    UsageList.member = Shapes::ShapeRef.new(shape: Usage)

    UsageTotal.add_member(:account_id, Shapes::ShapeRef.new(shape: MeteringAccountId, location_name: "accountId"))
    UsageTotal.add_member(:usage, Shapes::ShapeRef.new(shape: UsageList, location_name: "usage"))
    UsageTotal.struct_class = Types::UsageTotal

    UsageTotalList.member = Shapes::ShapeRef.new(shape: UsageTotal)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VulnIdList.member = Shapes::ShapeRef.new(shape: VulnId)

    Vulnerabilities.member = Shapes::ShapeRef.new(shape: Vulnerability)

    Vulnerability.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "id"))
    Vulnerability.add_member(:cwes, Shapes::ShapeRef.new(shape: Cwes, location_name: "cwes"))
    Vulnerability.add_member(:cisa_data, Shapes::ShapeRef.new(shape: CisaData, location_name: "cisaData"))
    Vulnerability.add_member(:source, Shapes::ShapeRef.new(shape: VulnerabilitySource, location_name: "source"))
    Vulnerability.add_member(:description, Shapes::ShapeRef.new(shape: VulnerabilityDescription, location_name: "description"))
    Vulnerability.add_member(:atig_data, Shapes::ShapeRef.new(shape: AtigData, location_name: "atigData"))
    Vulnerability.add_member(:vendor_severity, Shapes::ShapeRef.new(shape: VendorSeverity, location_name: "vendorSeverity"))
    Vulnerability.add_member(:cvss3, Shapes::ShapeRef.new(shape: Cvss3, location_name: "cvss3"))
    Vulnerability.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: RelatedVulnerabilities, location_name: "relatedVulnerabilities"))
    Vulnerability.add_member(:cvss2, Shapes::ShapeRef.new(shape: Cvss2, location_name: "cvss2"))
    Vulnerability.add_member(:vendor_created_at, Shapes::ShapeRef.new(shape: VendorCreatedAt, location_name: "vendorCreatedAt"))
    Vulnerability.add_member(:vendor_updated_at, Shapes::ShapeRef.new(shape: VendorUpdatedAt, location_name: "vendorUpdatedAt"))
    Vulnerability.add_member(:source_url, Shapes::ShapeRef.new(shape: VulnerabilitySourceUrl, location_name: "sourceUrl"))
    Vulnerability.add_member(:reference_urls, Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrls, location_name: "referenceUrls"))
    Vulnerability.add_member(:exploit_observed, Shapes::ShapeRef.new(shape: ExploitObserved, location_name: "exploitObserved"))
    Vulnerability.add_member(:detection_platforms, Shapes::ShapeRef.new(shape: DetectionPlatforms, location_name: "detectionPlatforms"))
    Vulnerability.add_member(:epss, Shapes::ShapeRef.new(shape: Epss, location_name: "epss"))
    Vulnerability.struct_class = Types::Vulnerability

    VulnerabilityIdList.member = Shapes::ShapeRef.new(shape: VulnerabilityId)

    VulnerabilityReferenceUrls.member = Shapes::ShapeRef.new(shape: VulnerabilityReferenceUrl)

    VulnerablePackage.add_member(:name, Shapes::ShapeRef.new(shape: PackageName, required: true, location_name: "name"))
    VulnerablePackage.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location_name: "version"))
    VulnerablePackage.add_member(:source_layer_hash, Shapes::ShapeRef.new(shape: SourceLayerHash, location_name: "sourceLayerHash"))
    VulnerablePackage.add_member(:epoch, Shapes::ShapeRef.new(shape: PackageEpoch, location_name: "epoch"))
    VulnerablePackage.add_member(:release, Shapes::ShapeRef.new(shape: PackageRelease, location_name: "release"))
    VulnerablePackage.add_member(:arch, Shapes::ShapeRef.new(shape: PackageArchitecture, location_name: "arch"))
    VulnerablePackage.add_member(:package_manager, Shapes::ShapeRef.new(shape: PackageManager, location_name: "packageManager"))
    VulnerablePackage.add_member(:file_path, Shapes::ShapeRef.new(shape: FilePath, location_name: "filePath"))
    VulnerablePackage.add_member(:fixed_in_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "fixedInVersion"))
    VulnerablePackage.add_member(:remediation, Shapes::ShapeRef.new(shape: VulnerablePackageRemediation, location_name: "remediation"))
    VulnerablePackage.add_member(:source_lambda_layer_arn, Shapes::ShapeRef.new(shape: LambdaLayerArn, location_name: "sourceLambdaLayerArn"))
    VulnerablePackage.struct_class = Types::VulnerablePackage

    VulnerablePackageList.member = Shapes::ShapeRef.new(shape: VulnerablePackage)

    WeeklySchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, required: true, location_name: "startTime"))
    WeeklySchedule.add_member(:days, Shapes::ShapeRef.new(shape: DaysList, required: true, location_name: "days"))
    WeeklySchedule.struct_class = Types::WeeklySchedule


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-06-08"

      api.metadata = {
        "apiVersion" => "2020-06-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "inspector2",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Inspector2",
        "serviceFullName" => "Inspector2",
        "serviceId" => "Inspector2",
        "signatureVersion" => "v4",
        "signingName" => "inspector2",
        "uid" => "inspector2-2020-06-08",
      }

      api.add_operation(:associate_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMember"
        o.http_method = "POST"
        o.http_request_uri = "/members/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_associate_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/batch/associate"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_disassociate_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/batch/disassociate"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_account_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAccountStatus"
        o.http_method = "POST"
        o.http_request_uri = "/status/batch/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetAccountStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAccountStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_code_snippet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCodeSnippet"
        o.http_method = "POST"
        o.http_request_uri = "/codesnippet/batchget"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCodeSnippetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCodeSnippetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_finding_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFindingDetails"
        o.http_method = "POST"
        o.http_request_uri = "/findings/details/batch/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFindingDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFindingDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_free_trial_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFreeTrialInfo"
        o.http_method = "POST"
        o.http_request_uri = "/freetrialinfo/batchget"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFreeTrialInfoRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFreeTrialInfoResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_get_member_ec2_deep_inspection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetMemberEc2DeepInspectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/ec2deepinspectionstatus/member/batch/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetMemberEc2DeepInspectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetMemberEc2DeepInspectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_update_member_ec2_deep_inspection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateMemberEc2DeepInspectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/ec2deepinspectionstatus/member/batch/update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateMemberEc2DeepInspectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateMemberEc2DeepInspectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_findings_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelFindingsReport"
        o.http_method = "POST"
        o.http_request_uri = "/reporting/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelFindingsReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelFindingsReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_sbom_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSbomExport"
        o.http_method = "POST"
        o.http_request_uri = "/sbomexport/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelSbomExportRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSbomExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_cis_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCisScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-configuration/create"
        o.input = Shapes::ShapeRef.new(shape: CreateCisScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCisScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_code_security_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeSecurityIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/integration/create"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeSecurityIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeSecurityIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/create"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/filters/create"
        o.input = Shapes::ShapeRef.new(shape: CreateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_findings_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFindingsReport"
        o.http_method = "POST"
        o.http_request_uri = "/reporting/create"
        o.input = Shapes::ShapeRef.new(shape: CreateFindingsReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFindingsReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_sbom_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSbomExport"
        o.http_method = "POST"
        o.http_request_uri = "/sbomexport/create"
        o.input = Shapes::ShapeRef.new(shape: CreateSbomExportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSbomExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_cis_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCisScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-configuration/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteCisScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCisScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_code_security_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeSecurityIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/integration/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeSecurityIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCodeSecurityIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFilter"
        o.http_method = "POST"
        o.http_request_uri = "/filters/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/organizationconfiguration/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Disable"
        o.http_method = "POST"
        o.http_request_uri = "/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disable_delegated_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableDelegatedAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/delegatedadminaccounts/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableDelegatedAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableDelegatedAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMember"
        o.http_method = "POST"
        o.http_request_uri = "/members/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:enable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Enable"
        o.http_method = "POST"
        o.http_request_uri = "/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:enable_delegated_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableDelegatedAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/delegatedadminaccounts/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableDelegatedAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableDelegatedAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_cis_scan_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCisScanReport"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan/report/get"
        o.input = Shapes::ShapeRef.new(shape: GetCisScanReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCisScanReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_cis_scan_result_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCisScanResultDetails"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-result/details/get"
        o.input = Shapes::ShapeRef.new(shape: GetCisScanResultDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCisScanResultDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_clusters_for_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClustersForImage"
        o.http_method = "POST"
        o.http_request_uri = "/cluster/get"
        o.input = Shapes::ShapeRef.new(shape: GetClustersForImageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClustersForImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_code_security_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeSecurityIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/integration/get"
        o.input = Shapes::ShapeRef.new(shape: GetCodeSecurityIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeSecurityIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_code_security_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeSecurityScan"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan/get"
        o.input = Shapes::ShapeRef.new(shape: GetCodeSecurityScanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeSecurityScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/get"
        o.input = Shapes::ShapeRef.new(shape: GetCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration/get"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_delegated_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDelegatedAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/delegatedadminaccounts/get"
        o.input = Shapes::ShapeRef.new(shape: GetDelegatedAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDelegatedAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_ec2_deep_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEc2DeepInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ec2deepinspectionconfiguration/get"
        o.input = Shapes::ShapeRef.new(shape: GetEc2DeepInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEc2DeepInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEncryptionKey"
        o.http_method = "GET"
        o.http_request_uri = "/encryptionkey/get"
        o.input = Shapes::ShapeRef.new(shape: GetEncryptionKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEncryptionKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_findings_report_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsReportStatus"
        o.http_method = "POST"
        o.http_request_uri = "/reporting/status/get"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsReportStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsReportStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMember"
        o.http_method = "POST"
        o.http_request_uri = "/members/get"
        o.input = Shapes::ShapeRef.new(shape: GetMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_sbom_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSbomExport"
        o.http_method = "POST"
        o.http_request_uri = "/sbomexport/get"
        o.input = Shapes::ShapeRef.new(shape: GetSbomExportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSbomExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_account_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/accountpermissions/list"
        o.input = Shapes::ShapeRef.new(shape: ListAccountPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cis_scan_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCisScanConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-configuration/list"
        o.input = Shapes::ShapeRef.new(shape: ListCisScanConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCisScanConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cis_scan_results_aggregated_by_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCisScanResultsAggregatedByChecks"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-result/check/list"
        o.input = Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cis_scan_results_aggregated_by_target_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCisScanResultsAggregatedByTargetResource"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-result/resource/list"
        o.input = Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByTargetResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCisScanResultsAggregatedByTargetResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cis_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCisScans"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan/list"
        o.input = Shapes::ShapeRef.new(shape: ListCisScansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCisScansResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_security_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeSecurityIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/integration/list"
        o.input = Shapes::ShapeRef.new(shape: ListCodeSecurityIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeSecurityIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_code_security_scan_configuration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeSecurityScanConfigurationAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/associations/list"
        o.input = Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_code_security_scan_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeSecurityScanConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/list"
        o.input = Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeSecurityScanConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_coverage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoverage"
        o.http_method = "POST"
        o.http_request_uri = "/coverage/list"
        o.input = Shapes::ShapeRef.new(shape: ListCoverageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoverageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_coverage_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoverageStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/coverage/statistics/list"
        o.input = Shapes::ShapeRef.new(shape: ListCoverageStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoverageStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_delegated_admin_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDelegatedAdminAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/delegatedadminaccounts/list"
        o.input = Shapes::ShapeRef.new(shape: ListDelegatedAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDelegatedAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFilters"
        o.http_method = "POST"
        o.http_request_uri = "/filters/list"
        o.input = Shapes::ShapeRef.new(shape: ListFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_finding_aggregations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingAggregations"
        o.http_method = "POST"
        o.http_request_uri = "/findings/aggregation/list"
        o.input = Shapes::ShapeRef.new(shape: ListFindingAggregationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingAggregationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings/list"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "POST"
        o.http_request_uri = "/members/list"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_usage_totals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsageTotals"
        o.http_method = "POST"
        o.http_request_uri = "/usage/list"
        o.input = Shapes::ShapeRef.new(shape: ListUsageTotalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsageTotalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:reset_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetEncryptionKey"
        o.http_method = "PUT"
        o.http_request_uri = "/encryptionkey/reset"
        o.input = Shapes::ShapeRef.new(shape: ResetEncryptionKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetEncryptionKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:search_vulnerabilities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchVulnerabilities"
        o.http_method = "POST"
        o.http_request_uri = "/vulnerabilities/search"
        o.input = Shapes::ShapeRef.new(shape: SearchVulnerabilitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchVulnerabilitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_cis_session_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCisSessionHealth"
        o.http_method = "PUT"
        o.http_request_uri = "/cissession/health/send"
        o.input = Shapes::ShapeRef.new(shape: SendCisSessionHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCisSessionHealthResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_cis_session_telemetry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCisSessionTelemetry"
        o.http_method = "PUT"
        o.http_request_uri = "/cissession/telemetry/send"
        o.input = Shapes::ShapeRef.new(shape: SendCisSessionTelemetryRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCisSessionTelemetryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_cis_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCisSession"
        o.http_method = "PUT"
        o.http_request_uri = "/cissession/start"
        o.input = Shapes::ShapeRef.new(shape: StartCisSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCisSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_code_security_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodeSecurityScan"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan/start"
        o.input = Shapes::ShapeRef.new(shape: StartCodeSecurityScanRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCodeSecurityScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_cis_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCisSession"
        o.http_method = "PUT"
        o.http_request_uri = "/cissession/stop"
        o.input = Shapes::ShapeRef.new(shape: StopCisSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCisSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_cis_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCisScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/cis/scan-configuration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateCisScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCisScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_code_security_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeSecurityIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/integration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeSecurityIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeSecurityIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_code_security_scan_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeSecurityScanConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/codesecurity/scan-configuration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeSecurityScanConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeSecurityScanConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_ec2_deep_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEc2DeepInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ec2deepinspectionconfiguration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateEc2DeepInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEc2DeepInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_encryption_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEncryptionKey"
        o.http_method = "PUT"
        o.http_request_uri = "/encryptionkey/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateEncryptionKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEncryptionKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/filters/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_org_ec2_deep_inspection_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrgEc2DeepInspectionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/ec2deepinspectionconfiguration/org/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrgEc2DeepInspectionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrgEc2DeepInspectionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/organizationconfiguration/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
