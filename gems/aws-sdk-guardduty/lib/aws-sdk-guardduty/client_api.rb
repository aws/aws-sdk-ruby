# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GuardDuty
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptAdministratorInvitationRequest = Shapes::StructureShape.new(name: 'AcceptAdministratorInvitationRequest')
    AcceptAdministratorInvitationResponse = Shapes::StructureShape.new(name: 'AcceptAdministratorInvitationResponse')
    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessControlList = Shapes::StructureShape.new(name: 'AccessControlList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessKey = Shapes::StructureShape.new(name: 'AccessKey')
    AccessKeyDetails = Shapes::StructureShape.new(name: 'AccessKeyDetails')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountDetail = Shapes::StructureShape.new(name: 'AccountDetail')
    AccountDetails = Shapes::ListShape.new(name: 'AccountDetails')
    AccountFreeTrialInfo = Shapes::StructureShape.new(name: 'AccountFreeTrialInfo')
    AccountFreeTrialInfos = Shapes::ListShape.new(name: 'AccountFreeTrialInfos')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    AccountLevelPermissions = Shapes::StructureShape.new(name: 'AccountLevelPermissions')
    AccountStatistics = Shapes::StructureShape.new(name: 'AccountStatistics')
    Action = Shapes::StructureShape.new(name: 'Action')
    Actor = Shapes::StructureShape.new(name: 'Actor')
    ActorIds = Shapes::ListShape.new(name: 'ActorIds')
    ActorProcess = Shapes::StructureShape.new(name: 'ActorProcess')
    Actors = Shapes::ListShape.new(name: 'Actors')
    AdditionalInfo = Shapes::StructureShape.new(name: 'AdditionalInfo')
    AdditionalSequenceTypes = Shapes::ListShape.new(name: 'AdditionalSequenceTypes')
    AddonDetails = Shapes::StructureShape.new(name: 'AddonDetails')
    AdminAccount = Shapes::StructureShape.new(name: 'AdminAccount')
    AdminAccounts = Shapes::ListShape.new(name: 'AdminAccounts')
    AdminStatus = Shapes::StringShape.new(name: 'AdminStatus')
    Administrator = Shapes::StructureShape.new(name: 'Administrator')
    AffectedResources = Shapes::MapShape.new(name: 'AffectedResources')
    AgentDetails = Shapes::StructureShape.new(name: 'AgentDetails')
    Anomaly = Shapes::StructureShape.new(name: 'Anomaly')
    AnomalyObject = Shapes::StructureShape.new(name: 'AnomalyObject')
    AnomalyProfileFeatureObjects = Shapes::ListShape.new(name: 'AnomalyProfileFeatureObjects')
    AnomalyProfileFeatures = Shapes::MapShape.new(name: 'AnomalyProfileFeatures')
    AnomalyProfiles = Shapes::MapShape.new(name: 'AnomalyProfiles')
    AnomalyUnusual = Shapes::StructureShape.new(name: 'AnomalyUnusual')
    AnomalyUnusualBehaviorFeature = Shapes::MapShape.new(name: 'AnomalyUnusualBehaviorFeature')
    ArchiveFindingsRequest = Shapes::StructureShape.new(name: 'ArchiveFindingsRequest')
    ArchiveFindingsResponse = Shapes::StructureShape.new(name: 'ArchiveFindingsResponse')
    AutoEnableMembers = Shapes::StringShape.new(name: 'AutoEnableMembers')
    AutonomousSystem = Shapes::StructureShape.new(name: 'AutonomousSystem')
    AwsApiCallAction = Shapes::StructureShape.new(name: 'AwsApiCallAction')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Behavior = Shapes::MapShape.new(name: 'Behavior')
    BlockPublicAccess = Shapes::StructureShape.new(name: 'BlockPublicAccess')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketLevelPermissions = Shapes::StructureShape.new(name: 'BucketLevelPermissions')
    BucketPolicy = Shapes::StructureShape.new(name: 'BucketPolicy')
    City = Shapes::StructureShape.new(name: 'City')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudTrailConfigurationResult = Shapes::StructureShape.new(name: 'CloudTrailConfigurationResult')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerFindingResource = Shapes::StructureShape.new(name: 'ContainerFindingResource')
    ContainerImageUid = Shapes::StringShape.new(name: 'ContainerImageUid')
    ContainerInstanceDetails = Shapes::StructureShape.new(name: 'ContainerInstanceDetails')
    ContainerUid = Shapes::StringShape.new(name: 'ContainerUid')
    ContainerUids = Shapes::ListShape.new(name: 'ContainerUids')
    Containers = Shapes::ListShape.new(name: 'Containers')
    CountByCoverageStatus = Shapes::MapShape.new(name: 'CountByCoverageStatus')
    CountByResourceType = Shapes::MapShape.new(name: 'CountByResourceType')
    CountBySeverity = Shapes::MapShape.new(name: 'CountBySeverity')
    Country = Shapes::StructureShape.new(name: 'Country')
    CoverageEc2InstanceDetails = Shapes::StructureShape.new(name: 'CoverageEc2InstanceDetails')
    CoverageEcsClusterDetails = Shapes::StructureShape.new(name: 'CoverageEcsClusterDetails')
    CoverageEksClusterDetails = Shapes::StructureShape.new(name: 'CoverageEksClusterDetails')
    CoverageFilterCondition = Shapes::StructureShape.new(name: 'CoverageFilterCondition')
    CoverageFilterCriteria = Shapes::StructureShape.new(name: 'CoverageFilterCriteria')
    CoverageFilterCriterion = Shapes::StructureShape.new(name: 'CoverageFilterCriterion')
    CoverageFilterCriterionKey = Shapes::StringShape.new(name: 'CoverageFilterCriterionKey')
    CoverageFilterCriterionList = Shapes::ListShape.new(name: 'CoverageFilterCriterionList')
    CoverageResource = Shapes::StructureShape.new(name: 'CoverageResource')
    CoverageResourceDetails = Shapes::StructureShape.new(name: 'CoverageResourceDetails')
    CoverageResources = Shapes::ListShape.new(name: 'CoverageResources')
    CoverageSortCriteria = Shapes::StructureShape.new(name: 'CoverageSortCriteria')
    CoverageSortKey = Shapes::StringShape.new(name: 'CoverageSortKey')
    CoverageStatistics = Shapes::StructureShape.new(name: 'CoverageStatistics')
    CoverageStatisticsType = Shapes::StringShape.new(name: 'CoverageStatisticsType')
    CoverageStatisticsTypeList = Shapes::ListShape.new(name: 'CoverageStatisticsTypeList')
    CoverageStatus = Shapes::StringShape.new(name: 'CoverageStatus')
    CreateDetectorRequest = Shapes::StructureShape.new(name: 'CreateDetectorRequest')
    CreateDetectorResponse = Shapes::StructureShape.new(name: 'CreateDetectorResponse')
    CreateFilterRequest = Shapes::StructureShape.new(name: 'CreateFilterRequest')
    CreateFilterResponse = Shapes::StructureShape.new(name: 'CreateFilterResponse')
    CreateIPSetRequest = Shapes::StructureShape.new(name: 'CreateIPSetRequest')
    CreateIPSetResponse = Shapes::StructureShape.new(name: 'CreateIPSetResponse')
    CreateMalwareProtectionPlanRequest = Shapes::StructureShape.new(name: 'CreateMalwareProtectionPlanRequest')
    CreateMalwareProtectionPlanResponse = Shapes::StructureShape.new(name: 'CreateMalwareProtectionPlanResponse')
    CreateMembersRequest = Shapes::StructureShape.new(name: 'CreateMembersRequest')
    CreateMembersResponse = Shapes::StructureShape.new(name: 'CreateMembersResponse')
    CreateProtectedResource = Shapes::StructureShape.new(name: 'CreateProtectedResource')
    CreatePublishingDestinationRequest = Shapes::StructureShape.new(name: 'CreatePublishingDestinationRequest')
    CreatePublishingDestinationResponse = Shapes::StructureShape.new(name: 'CreatePublishingDestinationResponse')
    CreateS3BucketResource = Shapes::StructureShape.new(name: 'CreateS3BucketResource')
    CreateSampleFindingsRequest = Shapes::StructureShape.new(name: 'CreateSampleFindingsRequest')
    CreateSampleFindingsResponse = Shapes::StructureShape.new(name: 'CreateSampleFindingsResponse')
    CreateThreatEntitySetRequest = Shapes::StructureShape.new(name: 'CreateThreatEntitySetRequest')
    CreateThreatEntitySetResponse = Shapes::StructureShape.new(name: 'CreateThreatEntitySetResponse')
    CreateThreatIntelSetRequest = Shapes::StructureShape.new(name: 'CreateThreatIntelSetRequest')
    CreateThreatIntelSetResponse = Shapes::StructureShape.new(name: 'CreateThreatIntelSetResponse')
    CreateTrustedEntitySetRequest = Shapes::StructureShape.new(name: 'CreateTrustedEntitySetRequest')
    CreateTrustedEntitySetResponse = Shapes::StructureShape.new(name: 'CreateTrustedEntitySetResponse')
    Criterion = Shapes::MapShape.new(name: 'Criterion')
    CriterionKey = Shapes::StringShape.new(name: 'CriterionKey')
    DNSLogsConfigurationResult = Shapes::StructureShape.new(name: 'DNSLogsConfigurationResult')
    DataSource = Shapes::StringShape.new(name: 'DataSource')
    DataSourceConfigurations = Shapes::StructureShape.new(name: 'DataSourceConfigurations')
    DataSourceConfigurationsResult = Shapes::StructureShape.new(name: 'DataSourceConfigurationsResult')
    DataSourceFreeTrial = Shapes::StructureShape.new(name: 'DataSourceFreeTrial')
    DataSourceList = Shapes::ListShape.new(name: 'DataSourceList')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourcesFreeTrial = Shapes::StructureShape.new(name: 'DataSourcesFreeTrial')
    DateStatistics = Shapes::StructureShape.new(name: 'DateStatistics')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DefaultServerSideEncryption = Shapes::StructureShape.new(name: 'DefaultServerSideEncryption')
    DeleteDetectorRequest = Shapes::StructureShape.new(name: 'DeleteDetectorRequest')
    DeleteDetectorResponse = Shapes::StructureShape.new(name: 'DeleteDetectorResponse')
    DeleteFilterRequest = Shapes::StructureShape.new(name: 'DeleteFilterRequest')
    DeleteFilterResponse = Shapes::StructureShape.new(name: 'DeleteFilterResponse')
    DeleteIPSetRequest = Shapes::StructureShape.new(name: 'DeleteIPSetRequest')
    DeleteIPSetResponse = Shapes::StructureShape.new(name: 'DeleteIPSetResponse')
    DeleteInvitationsRequest = Shapes::StructureShape.new(name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Shapes::StructureShape.new(name: 'DeleteInvitationsResponse')
    DeleteMalwareProtectionPlanRequest = Shapes::StructureShape.new(name: 'DeleteMalwareProtectionPlanRequest')
    DeleteMembersRequest = Shapes::StructureShape.new(name: 'DeleteMembersRequest')
    DeleteMembersResponse = Shapes::StructureShape.new(name: 'DeleteMembersResponse')
    DeletePublishingDestinationRequest = Shapes::StructureShape.new(name: 'DeletePublishingDestinationRequest')
    DeletePublishingDestinationResponse = Shapes::StructureShape.new(name: 'DeletePublishingDestinationResponse')
    DeleteThreatEntitySetRequest = Shapes::StructureShape.new(name: 'DeleteThreatEntitySetRequest')
    DeleteThreatEntitySetResponse = Shapes::StructureShape.new(name: 'DeleteThreatEntitySetResponse')
    DeleteThreatIntelSetRequest = Shapes::StructureShape.new(name: 'DeleteThreatIntelSetRequest')
    DeleteThreatIntelSetResponse = Shapes::StructureShape.new(name: 'DeleteThreatIntelSetResponse')
    DeleteTrustedEntitySetRequest = Shapes::StructureShape.new(name: 'DeleteTrustedEntitySetRequest')
    DeleteTrustedEntitySetResponse = Shapes::StructureShape.new(name: 'DeleteTrustedEntitySetResponse')
    DescribeMalwareScansRequest = Shapes::StructureShape.new(name: 'DescribeMalwareScansRequest')
    DescribeMalwareScansResponse = Shapes::StructureShape.new(name: 'DescribeMalwareScansResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    DescribePublishingDestinationRequest = Shapes::StructureShape.new(name: 'DescribePublishingDestinationRequest')
    DescribePublishingDestinationResponse = Shapes::StructureShape.new(name: 'DescribePublishingDestinationResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationProperties = Shapes::StructureShape.new(name: 'DestinationProperties')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    Destinations = Shapes::ListShape.new(name: 'Destinations')
    Detection = Shapes::StructureShape.new(name: 'Detection')
    DetectionSource = Shapes::StringShape.new(name: 'DetectionSource')
    DetectorAdditionalConfiguration = Shapes::StructureShape.new(name: 'DetectorAdditionalConfiguration')
    DetectorAdditionalConfigurationResult = Shapes::StructureShape.new(name: 'DetectorAdditionalConfigurationResult')
    DetectorAdditionalConfigurationResults = Shapes::ListShape.new(name: 'DetectorAdditionalConfigurationResults')
    DetectorAdditionalConfigurations = Shapes::ListShape.new(name: 'DetectorAdditionalConfigurations')
    DetectorFeature = Shapes::StringShape.new(name: 'DetectorFeature')
    DetectorFeatureConfiguration = Shapes::StructureShape.new(name: 'DetectorFeatureConfiguration')
    DetectorFeatureConfigurationResult = Shapes::StructureShape.new(name: 'DetectorFeatureConfigurationResult')
    DetectorFeatureConfigurations = Shapes::ListShape.new(name: 'DetectorFeatureConfigurations')
    DetectorFeatureConfigurationsResults = Shapes::ListShape.new(name: 'DetectorFeatureConfigurationsResults')
    DetectorFeatureResult = Shapes::StringShape.new(name: 'DetectorFeatureResult')
    DetectorId = Shapes::StringShape.new(name: 'DetectorId')
    DetectorIds = Shapes::ListShape.new(name: 'DetectorIds')
    DetectorStatus = Shapes::StringShape.new(name: 'DetectorStatus')
    DisableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountResponse')
    DisassociateFromAdministratorAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountRequest')
    DisassociateFromAdministratorAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountResponse')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMembersRequest = Shapes::StructureShape.new(name: 'DisassociateMembersRequest')
    DisassociateMembersResponse = Shapes::StructureShape.new(name: 'DisassociateMembersResponse')
    DnsRequestAction = Shapes::StructureShape.new(name: 'DnsRequestAction')
    DomainDetails = Shapes::StructureShape.new(name: 'DomainDetails')
    Double = Shapes::FloatShape.new(name: 'Double')
    EbsSnapshot = Shapes::StructureShape.new(name: 'EbsSnapshot')
    EbsSnapshotDetails = Shapes::StructureShape.new(name: 'EbsSnapshotDetails')
    EbsSnapshotPreservation = Shapes::StringShape.new(name: 'EbsSnapshotPreservation')
    EbsVolumeDetails = Shapes::StructureShape.new(name: 'EbsVolumeDetails')
    EbsVolumeScanDetails = Shapes::StructureShape.new(name: 'EbsVolumeScanDetails')
    EbsVolumesResult = Shapes::StructureShape.new(name: 'EbsVolumesResult')
    Ec2ImageDetails = Shapes::StructureShape.new(name: 'Ec2ImageDetails')
    Ec2Instance = Shapes::StructureShape.new(name: 'Ec2Instance')
    Ec2InstanceUid = Shapes::StringShape.new(name: 'Ec2InstanceUid')
    Ec2InstanceUids = Shapes::ListShape.new(name: 'Ec2InstanceUids')
    Ec2NetworkInterface = Shapes::StructureShape.new(name: 'Ec2NetworkInterface')
    Ec2NetworkInterfaceUids = Shapes::ListShape.new(name: 'Ec2NetworkInterfaceUids')
    EcsClusterDetails = Shapes::StructureShape.new(name: 'EcsClusterDetails')
    EcsTaskDetails = Shapes::StructureShape.new(name: 'EcsTaskDetails')
    EksCluster = Shapes::StructureShape.new(name: 'EksCluster')
    EksClusterDetails = Shapes::StructureShape.new(name: 'EksClusterDetails')
    Email = Shapes::StringShape.new(name: 'Email')
    EnableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountRequest')
    EnableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountResponse')
    EndpointIds = Shapes::ListShape.new(name: 'EndpointIds')
    Eq = Shapes::ListShape.new(name: 'Eq')
    Equals = Shapes::ListShape.new(name: 'Equals')
    Evidence = Shapes::StructureShape.new(name: 'Evidence')
    ExpectedBucketOwner = Shapes::StringShape.new(name: 'ExpectedBucketOwner')
    FargateDetails = Shapes::StructureShape.new(name: 'FargateDetails')
    FeatureAdditionalConfiguration = Shapes::StringShape.new(name: 'FeatureAdditionalConfiguration')
    FeatureStatus = Shapes::StringShape.new(name: 'FeatureStatus')
    Feedback = Shapes::StringShape.new(name: 'Feedback')
    FilePaths = Shapes::ListShape.new(name: 'FilePaths')
    FilterAction = Shapes::StringShape.new(name: 'FilterAction')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterCriteria = Shapes::StructureShape.new(name: 'FilterCriteria')
    FilterCriterion = Shapes::StructureShape.new(name: 'FilterCriterion')
    FilterCriterionList = Shapes::ListShape.new(name: 'FilterCriterionList')
    FilterDescription = Shapes::StringShape.new(name: 'FilterDescription')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterNames = Shapes::ListShape.new(name: 'FilterNames')
    FilterRank = Shapes::IntegerShape.new(name: 'FilterRank')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingCriteria = Shapes::StructureShape.new(name: 'FindingCriteria')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingIds = Shapes::ListShape.new(name: 'FindingIds')
    FindingPublishingFrequency = Shapes::StringShape.new(name: 'FindingPublishingFrequency')
    FindingResourceType = Shapes::StringShape.new(name: 'FindingResourceType')
    FindingStatisticType = Shapes::StringShape.new(name: 'FindingStatisticType')
    FindingStatisticTypes = Shapes::ListShape.new(name: 'FindingStatisticTypes')
    FindingStatistics = Shapes::StructureShape.new(name: 'FindingStatistics')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingTypeStatistics = Shapes::StructureShape.new(name: 'FindingTypeStatistics')
    FindingTypes = Shapes::ListShape.new(name: 'FindingTypes')
    Findings = Shapes::ListShape.new(name: 'Findings')
    FlagsList = Shapes::ListShape.new(name: 'FlagsList')
    FlowLogsConfigurationResult = Shapes::StructureShape.new(name: 'FlowLogsConfigurationResult')
    FreeTrialFeatureConfigurationResult = Shapes::StructureShape.new(name: 'FreeTrialFeatureConfigurationResult')
    FreeTrialFeatureConfigurationsResults = Shapes::ListShape.new(name: 'FreeTrialFeatureConfigurationsResults')
    FreeTrialFeatureResult = Shapes::StringShape.new(name: 'FreeTrialFeatureResult')
    GeoLocation = Shapes::StructureShape.new(name: 'GeoLocation')
    GetAdministratorAccountRequest = Shapes::StructureShape.new(name: 'GetAdministratorAccountRequest')
    GetAdministratorAccountResponse = Shapes::StructureShape.new(name: 'GetAdministratorAccountResponse')
    GetCoverageStatisticsRequest = Shapes::StructureShape.new(name: 'GetCoverageStatisticsRequest')
    GetCoverageStatisticsResponse = Shapes::StructureShape.new(name: 'GetCoverageStatisticsResponse')
    GetDetectorRequest = Shapes::StructureShape.new(name: 'GetDetectorRequest')
    GetDetectorResponse = Shapes::StructureShape.new(name: 'GetDetectorResponse')
    GetFilterRequest = Shapes::StructureShape.new(name: 'GetFilterRequest')
    GetFilterResponse = Shapes::StructureShape.new(name: 'GetFilterResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetFindingsStatisticsRequest = Shapes::StructureShape.new(name: 'GetFindingsStatisticsRequest')
    GetFindingsStatisticsResponse = Shapes::StructureShape.new(name: 'GetFindingsStatisticsResponse')
    GetIPSetRequest = Shapes::StructureShape.new(name: 'GetIPSetRequest')
    GetIPSetResponse = Shapes::StructureShape.new(name: 'GetIPSetResponse')
    GetInvitationsCountRequest = Shapes::StructureShape.new(name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Shapes::StructureShape.new(name: 'GetInvitationsCountResponse')
    GetMalwareProtectionPlanRequest = Shapes::StructureShape.new(name: 'GetMalwareProtectionPlanRequest')
    GetMalwareProtectionPlanResponse = Shapes::StructureShape.new(name: 'GetMalwareProtectionPlanResponse')
    GetMalwareScanRequest = Shapes::StructureShape.new(name: 'GetMalwareScanRequest')
    GetMalwareScanResponse = Shapes::StructureShape.new(name: 'GetMalwareScanResponse')
    GetMalwareScanResultDetails = Shapes::StructureShape.new(name: 'GetMalwareScanResultDetails')
    GetMalwareScanSettingsRequest = Shapes::StructureShape.new(name: 'GetMalwareScanSettingsRequest')
    GetMalwareScanSettingsResponse = Shapes::StructureShape.new(name: 'GetMalwareScanSettingsResponse')
    GetMasterAccountRequest = Shapes::StructureShape.new(name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Shapes::StructureShape.new(name: 'GetMasterAccountResponse')
    GetMemberDetectorsRequest = Shapes::StructureShape.new(name: 'GetMemberDetectorsRequest')
    GetMemberDetectorsResponse = Shapes::StructureShape.new(name: 'GetMemberDetectorsResponse')
    GetMembersRequest = Shapes::StructureShape.new(name: 'GetMembersRequest')
    GetMembersResponse = Shapes::StructureShape.new(name: 'GetMembersResponse')
    GetOrganizationStatisticsResponse = Shapes::StructureShape.new(name: 'GetOrganizationStatisticsResponse')
    GetRemainingFreeTrialDaysRequest = Shapes::StructureShape.new(name: 'GetRemainingFreeTrialDaysRequest')
    GetRemainingFreeTrialDaysResponse = Shapes::StructureShape.new(name: 'GetRemainingFreeTrialDaysResponse')
    GetThreatEntitySetRequest = Shapes::StructureShape.new(name: 'GetThreatEntitySetRequest')
    GetThreatEntitySetResponse = Shapes::StructureShape.new(name: 'GetThreatEntitySetResponse')
    GetThreatIntelSetRequest = Shapes::StructureShape.new(name: 'GetThreatIntelSetRequest')
    GetThreatIntelSetResponse = Shapes::StructureShape.new(name: 'GetThreatIntelSetResponse')
    GetTrustedEntitySetRequest = Shapes::StructureShape.new(name: 'GetTrustedEntitySetRequest')
    GetTrustedEntitySetResponse = Shapes::StructureShape.new(name: 'GetTrustedEntitySetResponse')
    GetUsageStatisticsRequest = Shapes::StructureShape.new(name: 'GetUsageStatisticsRequest')
    GetUsageStatisticsResponse = Shapes::StructureShape.new(name: 'GetUsageStatisticsResponse')
    GroupByType = Shapes::StringShape.new(name: 'GroupByType')
    GroupedByAccount = Shapes::ListShape.new(name: 'GroupedByAccount')
    GroupedByDate = Shapes::ListShape.new(name: 'GroupedByDate')
    GroupedByFindingType = Shapes::ListShape.new(name: 'GroupedByFindingType')
    GroupedByResource = Shapes::ListShape.new(name: 'GroupedByResource')
    GroupedBySeverity = Shapes::ListShape.new(name: 'GroupedBySeverity')
    Groups = Shapes::ListShape.new(name: 'Groups')
    GuardDutyArn = Shapes::StringShape.new(name: 'GuardDutyArn')
    HighestSeverityThreatDetails = Shapes::StructureShape.new(name: 'HighestSeverityThreatDetails')
    HostPath = Shapes::StructureShape.new(name: 'HostPath')
    IamInstanceProfile = Shapes::StructureShape.new(name: 'IamInstanceProfile')
    ImpersonatedUser = Shapes::StructureShape.new(name: 'ImpersonatedUser')
    IncrementalScanDetails = Shapes::StructureShape.new(name: 'IncrementalScanDetails')
    Indicator = Shapes::StructureShape.new(name: 'Indicator')
    IndicatorTitle = Shapes::StringShape.new(name: 'IndicatorTitle')
    IndicatorType = Shapes::StringShape.new(name: 'IndicatorType')
    IndicatorValueString = Shapes::StringShape.new(name: 'IndicatorValueString')
    IndicatorValues = Shapes::ListShape.new(name: 'IndicatorValues')
    Indicators = Shapes::ListShape.new(name: 'Indicators')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceDetails = Shapes::StructureShape.new(name: 'InstanceDetails')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerValueWithMax = Shapes::IntegerShape.new(name: 'IntegerValueWithMax')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    Invitations = Shapes::ListShape.new(name: 'Invitations')
    InviteMembersRequest = Shapes::StructureShape.new(name: 'InviteMembersRequest')
    InviteMembersResponse = Shapes::StructureShape.new(name: 'InviteMembersResponse')
    IpSetFormat = Shapes::StringShape.new(name: 'IpSetFormat')
    IpSetIds = Shapes::ListShape.new(name: 'IpSetIds')
    IpSetStatus = Shapes::StringShape.new(name: 'IpSetStatus')
    Ipv6Addresses = Shapes::ListShape.new(name: 'Ipv6Addresses')
    Issues = Shapes::ListShape.new(name: 'Issues')
    ItemDetails = Shapes::StructureShape.new(name: 'ItemDetails')
    ItemDetailsList = Shapes::ListShape.new(name: 'ItemDetailsList')
    ItemPath = Shapes::StructureShape.new(name: 'ItemPath')
    ItemPaths = Shapes::ListShape.new(name: 'ItemPaths')
    KubernetesApiCallAction = Shapes::StructureShape.new(name: 'KubernetesApiCallAction')
    KubernetesAuditLogsConfiguration = Shapes::StructureShape.new(name: 'KubernetesAuditLogsConfiguration')
    KubernetesAuditLogsConfigurationResult = Shapes::StructureShape.new(name: 'KubernetesAuditLogsConfigurationResult')
    KubernetesConfiguration = Shapes::StructureShape.new(name: 'KubernetesConfiguration')
    KubernetesConfigurationResult = Shapes::StructureShape.new(name: 'KubernetesConfigurationResult')
    KubernetesDataSourceFreeTrial = Shapes::StructureShape.new(name: 'KubernetesDataSourceFreeTrial')
    KubernetesDetails = Shapes::StructureShape.new(name: 'KubernetesDetails')
    KubernetesPermissionCheckedDetails = Shapes::StructureShape.new(name: 'KubernetesPermissionCheckedDetails')
    KubernetesResourcesTypes = Shapes::StringShape.new(name: 'KubernetesResourcesTypes')
    KubernetesRoleBindingDetails = Shapes::StructureShape.new(name: 'KubernetesRoleBindingDetails')
    KubernetesRoleDetails = Shapes::StructureShape.new(name: 'KubernetesRoleDetails')
    KubernetesUserDetails = Shapes::StructureShape.new(name: 'KubernetesUserDetails')
    KubernetesWorkload = Shapes::StructureShape.new(name: 'KubernetesWorkload')
    KubernetesWorkloadDetails = Shapes::StructureShape.new(name: 'KubernetesWorkloadDetails')
    LambdaDetails = Shapes::StructureShape.new(name: 'LambdaDetails')
    Lineage = Shapes::ListShape.new(name: 'Lineage')
    LineageObject = Shapes::StructureShape.new(name: 'LineageObject')
    ListCoverageRequest = Shapes::StructureShape.new(name: 'ListCoverageRequest')
    ListCoverageResponse = Shapes::StructureShape.new(name: 'ListCoverageResponse')
    ListDetectorsRequest = Shapes::StructureShape.new(name: 'ListDetectorsRequest')
    ListDetectorsResponse = Shapes::StructureShape.new(name: 'ListDetectorsResponse')
    ListFiltersRequest = Shapes::StructureShape.new(name: 'ListFiltersRequest')
    ListFiltersResponse = Shapes::StructureShape.new(name: 'ListFiltersResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListIPSetsRequest = Shapes::StructureShape.new(name: 'ListIPSetsRequest')
    ListIPSetsResponse = Shapes::StructureShape.new(name: 'ListIPSetsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListMalwareProtectionPlansRequest = Shapes::StructureShape.new(name: 'ListMalwareProtectionPlansRequest')
    ListMalwareProtectionPlansResponse = Shapes::StructureShape.new(name: 'ListMalwareProtectionPlansResponse')
    ListMalwareScansCriterionKey = Shapes::StringShape.new(name: 'ListMalwareScansCriterionKey')
    ListMalwareScansFilterCriteria = Shapes::StructureShape.new(name: 'ListMalwareScansFilterCriteria')
    ListMalwareScansFilterCriterion = Shapes::StructureShape.new(name: 'ListMalwareScansFilterCriterion')
    ListMalwareScansFilterCriterionList = Shapes::ListShape.new(name: 'ListMalwareScansFilterCriterionList')
    ListMalwareScansRequest = Shapes::StructureShape.new(name: 'ListMalwareScansRequest')
    ListMalwareScansResponse = Shapes::StructureShape.new(name: 'ListMalwareScansResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListPublishingDestinationsRequest = Shapes::StructureShape.new(name: 'ListPublishingDestinationsRequest')
    ListPublishingDestinationsResponse = Shapes::StructureShape.new(name: 'ListPublishingDestinationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListThreatEntitySetsRequest = Shapes::StructureShape.new(name: 'ListThreatEntitySetsRequest')
    ListThreatEntitySetsResponse = Shapes::StructureShape.new(name: 'ListThreatEntitySetsResponse')
    ListThreatIntelSetsRequest = Shapes::StructureShape.new(name: 'ListThreatIntelSetsRequest')
    ListThreatIntelSetsResponse = Shapes::StructureShape.new(name: 'ListThreatIntelSetsResponse')
    ListTrustedEntitySetsRequest = Shapes::StructureShape.new(name: 'ListTrustedEntitySetsRequest')
    ListTrustedEntitySetsResponse = Shapes::StructureShape.new(name: 'ListTrustedEntitySetsResponse')
    LocalIpDetails = Shapes::StructureShape.new(name: 'LocalIpDetails')
    LocalPortDetails = Shapes::StructureShape.new(name: 'LocalPortDetails')
    Location = Shapes::StringShape.new(name: 'Location')
    LoginAttribute = Shapes::StructureShape.new(name: 'LoginAttribute')
    LoginAttributes = Shapes::ListShape.new(name: 'LoginAttributes')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongValue = Shapes::IntegerShape.new(name: 'LongValue')
    MalwareProtectionConfiguration = Shapes::StructureShape.new(name: 'MalwareProtectionConfiguration')
    MalwareProtectionConfigurationResult = Shapes::StructureShape.new(name: 'MalwareProtectionConfigurationResult')
    MalwareProtectionDataSourceFreeTrial = Shapes::StructureShape.new(name: 'MalwareProtectionDataSourceFreeTrial')
    MalwareProtectionFindingsScanConfiguration = Shapes::StructureShape.new(name: 'MalwareProtectionFindingsScanConfiguration')
    MalwareProtectionPlanActions = Shapes::StructureShape.new(name: 'MalwareProtectionPlanActions')
    MalwareProtectionPlanObjectPrefixesList = Shapes::ListShape.new(name: 'MalwareProtectionPlanObjectPrefixesList')
    MalwareProtectionPlanStatus = Shapes::StringShape.new(name: 'MalwareProtectionPlanStatus')
    MalwareProtectionPlanStatusReason = Shapes::StructureShape.new(name: 'MalwareProtectionPlanStatusReason')
    MalwareProtectionPlanStatusReasonsList = Shapes::ListShape.new(name: 'MalwareProtectionPlanStatusReasonsList')
    MalwareProtectionPlanSummary = Shapes::StructureShape.new(name: 'MalwareProtectionPlanSummary')
    MalwareProtectionPlanTaggingAction = Shapes::StructureShape.new(name: 'MalwareProtectionPlanTaggingAction')
    MalwareProtectionPlanTaggingActionStatus = Shapes::StringShape.new(name: 'MalwareProtectionPlanTaggingActionStatus')
    MalwareProtectionPlansSummary = Shapes::ListShape.new(name: 'MalwareProtectionPlansSummary')
    MalwareProtectionResourceType = Shapes::StringShape.new(name: 'MalwareProtectionResourceType')
    MalwareProtectionScanStatus = Shapes::StringShape.new(name: 'MalwareProtectionScanStatus')
    MalwareProtectionScanType = Shapes::StringShape.new(name: 'MalwareProtectionScanType')
    MalwareScan = Shapes::StructureShape.new(name: 'MalwareScan')
    MalwareScanDetails = Shapes::StructureShape.new(name: 'MalwareScanDetails')
    MalwareScans = Shapes::ListShape.new(name: 'MalwareScans')
    ManagementType = Shapes::StringShape.new(name: 'ManagementType')
    MapEquals = Shapes::ListShape.new(name: 'MapEquals')
    Master = Shapes::StructureShape.new(name: 'Master')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResults100 = Shapes::IntegerShape.new(name: 'MaxResults100')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberAdditionalConfiguration = Shapes::StructureShape.new(name: 'MemberAdditionalConfiguration')
    MemberAdditionalConfigurationResult = Shapes::StructureShape.new(name: 'MemberAdditionalConfigurationResult')
    MemberAdditionalConfigurationResults = Shapes::ListShape.new(name: 'MemberAdditionalConfigurationResults')
    MemberAdditionalConfigurations = Shapes::ListShape.new(name: 'MemberAdditionalConfigurations')
    MemberDataSourceConfiguration = Shapes::StructureShape.new(name: 'MemberDataSourceConfiguration')
    MemberDataSourceConfigurations = Shapes::ListShape.new(name: 'MemberDataSourceConfigurations')
    MemberFeaturesConfiguration = Shapes::StructureShape.new(name: 'MemberFeaturesConfiguration')
    MemberFeaturesConfigurationResult = Shapes::StructureShape.new(name: 'MemberFeaturesConfigurationResult')
    MemberFeaturesConfigurations = Shapes::ListShape.new(name: 'MemberFeaturesConfigurations')
    MemberFeaturesConfigurationsResults = Shapes::ListShape.new(name: 'MemberFeaturesConfigurationsResults')
    Members = Shapes::ListShape.new(name: 'Members')
    MemoryRegionsList = Shapes::ListShape.new(name: 'MemoryRegionsList')
    MfaStatus = Shapes::StringShape.new(name: 'MfaStatus')
    Name = Shapes::StringShape.new(name: 'Name')
    Neq = Shapes::ListShape.new(name: 'Neq')
    NetworkConnection = Shapes::StructureShape.new(name: 'NetworkConnection')
    NetworkConnectionAction = Shapes::StructureShape.new(name: 'NetworkConnectionAction')
    NetworkDirection = Shapes::StringShape.new(name: 'NetworkDirection')
    NetworkEndpoint = Shapes::StructureShape.new(name: 'NetworkEndpoint')
    NetworkEndpoints = Shapes::ListShape.new(name: 'NetworkEndpoints')
    NetworkGeoLocation = Shapes::StructureShape.new(name: 'NetworkGeoLocation')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NotEquals = Shapes::ListShape.new(name: 'NotEquals')
    ObservationTexts = Shapes::ListShape.new(name: 'ObservationTexts')
    Observations = Shapes::StructureShape.new(name: 'Observations')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    OrgFeature = Shapes::StringShape.new(name: 'OrgFeature')
    OrgFeatureAdditionalConfiguration = Shapes::StringShape.new(name: 'OrgFeatureAdditionalConfiguration')
    OrgFeatureStatus = Shapes::StringShape.new(name: 'OrgFeatureStatus')
    Organization = Shapes::StructureShape.new(name: 'Organization')
    OrganizationAdditionalConfiguration = Shapes::StructureShape.new(name: 'OrganizationAdditionalConfiguration')
    OrganizationAdditionalConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationAdditionalConfigurationResult')
    OrganizationAdditionalConfigurationResults = Shapes::ListShape.new(name: 'OrganizationAdditionalConfigurationResults')
    OrganizationAdditionalConfigurations = Shapes::ListShape.new(name: 'OrganizationAdditionalConfigurations')
    OrganizationDataSourceConfigurations = Shapes::StructureShape.new(name: 'OrganizationDataSourceConfigurations')
    OrganizationDataSourceConfigurationsResult = Shapes::StructureShape.new(name: 'OrganizationDataSourceConfigurationsResult')
    OrganizationDetails = Shapes::StructureShape.new(name: 'OrganizationDetails')
    OrganizationEbsVolumes = Shapes::StructureShape.new(name: 'OrganizationEbsVolumes')
    OrganizationEbsVolumesResult = Shapes::StructureShape.new(name: 'OrganizationEbsVolumesResult')
    OrganizationFeatureConfiguration = Shapes::StructureShape.new(name: 'OrganizationFeatureConfiguration')
    OrganizationFeatureConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationFeatureConfigurationResult')
    OrganizationFeatureStatistics = Shapes::StructureShape.new(name: 'OrganizationFeatureStatistics')
    OrganizationFeatureStatisticsAdditionalConfiguration = Shapes::StructureShape.new(name: 'OrganizationFeatureStatisticsAdditionalConfiguration')
    OrganizationFeatureStatisticsAdditionalConfigurations = Shapes::ListShape.new(name: 'OrganizationFeatureStatisticsAdditionalConfigurations')
    OrganizationFeatureStatisticsResults = Shapes::ListShape.new(name: 'OrganizationFeatureStatisticsResults')
    OrganizationFeaturesConfigurations = Shapes::ListShape.new(name: 'OrganizationFeaturesConfigurations')
    OrganizationFeaturesConfigurationsResults = Shapes::ListShape.new(name: 'OrganizationFeaturesConfigurationsResults')
    OrganizationKubernetesAuditLogsConfiguration = Shapes::StructureShape.new(name: 'OrganizationKubernetesAuditLogsConfiguration')
    OrganizationKubernetesAuditLogsConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationKubernetesAuditLogsConfigurationResult')
    OrganizationKubernetesConfiguration = Shapes::StructureShape.new(name: 'OrganizationKubernetesConfiguration')
    OrganizationKubernetesConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationKubernetesConfigurationResult')
    OrganizationMalwareProtectionConfiguration = Shapes::StructureShape.new(name: 'OrganizationMalwareProtectionConfiguration')
    OrganizationMalwareProtectionConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationMalwareProtectionConfigurationResult')
    OrganizationS3LogsConfiguration = Shapes::StructureShape.new(name: 'OrganizationS3LogsConfiguration')
    OrganizationS3LogsConfigurationResult = Shapes::StructureShape.new(name: 'OrganizationS3LogsConfigurationResult')
    OrganizationScanEc2InstanceWithFindings = Shapes::StructureShape.new(name: 'OrganizationScanEc2InstanceWithFindings')
    OrganizationScanEc2InstanceWithFindingsResult = Shapes::StructureShape.new(name: 'OrganizationScanEc2InstanceWithFindingsResult')
    OrganizationStatistics = Shapes::StructureShape.new(name: 'OrganizationStatistics')
    Owner = Shapes::StructureShape.new(name: 'Owner')
    PermissionConfiguration = Shapes::StructureShape.new(name: 'PermissionConfiguration')
    PortProbeAction = Shapes::StructureShape.new(name: 'PortProbeAction')
    PortProbeDetail = Shapes::StructureShape.new(name: 'PortProbeDetail')
    PortProbeDetails = Shapes::ListShape.new(name: 'PortProbeDetails')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    PrivateIpAddressDetails = Shapes::StructureShape.new(name: 'PrivateIpAddressDetails')
    PrivateIpAddresses = Shapes::ListShape.new(name: 'PrivateIpAddresses')
    ProcessDetails = Shapes::StructureShape.new(name: 'ProcessDetails')
    ProcessName = Shapes::StringShape.new(name: 'ProcessName')
    ProcessPath = Shapes::StringShape.new(name: 'ProcessPath')
    ProcessSha256 = Shapes::StringShape.new(name: 'ProcessSha256')
    ProductCode = Shapes::StructureShape.new(name: 'ProductCode')
    ProductCodes = Shapes::ListShape.new(name: 'ProductCodes')
    ProfileSubtype = Shapes::StringShape.new(name: 'ProfileSubtype')
    ProfileType = Shapes::StringShape.new(name: 'ProfileType')
    PublicAccess = Shapes::StructureShape.new(name: 'PublicAccess')
    PublicAccessConfiguration = Shapes::StructureShape.new(name: 'PublicAccessConfiguration')
    PublicAccessStatus = Shapes::StringShape.new(name: 'PublicAccessStatus')
    PublicAclIgnoreBehavior = Shapes::StringShape.new(name: 'PublicAclIgnoreBehavior')
    PublicBucketRestrictBehavior = Shapes::StringShape.new(name: 'PublicBucketRestrictBehavior')
    PublishingStatus = Shapes::StringShape.new(name: 'PublishingStatus')
    RdsDbInstanceDetails = Shapes::StructureShape.new(name: 'RdsDbInstanceDetails')
    RdsDbUserDetails = Shapes::StructureShape.new(name: 'RdsDbUserDetails')
    RdsLimitlessDbDetails = Shapes::StructureShape.new(name: 'RdsLimitlessDbDetails')
    RdsLoginAttemptAction = Shapes::StructureShape.new(name: 'RdsLoginAttemptAction')
    RecoveryPoint = Shapes::StructureShape.new(name: 'RecoveryPoint')
    RecoveryPointDetails = Shapes::StructureShape.new(name: 'RecoveryPointDetails')
    RemoteAccountDetails = Shapes::StructureShape.new(name: 'RemoteAccountDetails')
    RemoteIpDetails = Shapes::StructureShape.new(name: 'RemoteIpDetails')
    RemotePortDetails = Shapes::StructureShape.new(name: 'RemotePortDetails')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceData = Shapes::StructureShape.new(name: 'ResourceData')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceStatistics = Shapes::StructureShape.new(name: 'ResourceStatistics')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceUids = Shapes::ListShape.new(name: 'ResourceUids')
    ResourceV2 = Shapes::StructureShape.new(name: 'ResourceV2')
    Resources = Shapes::ListShape.new(name: 'Resources')
    RuntimeContext = Shapes::StructureShape.new(name: 'RuntimeContext')
    RuntimeDetails = Shapes::StructureShape.new(name: 'RuntimeDetails')
    S3Bucket = Shapes::StructureShape.new(name: 'S3Bucket')
    S3BucketDetail = Shapes::StructureShape.new(name: 'S3BucketDetail')
    S3BucketDetails = Shapes::ListShape.new(name: 'S3BucketDetails')
    S3LogsConfiguration = Shapes::StructureShape.new(name: 'S3LogsConfiguration')
    S3LogsConfigurationResult = Shapes::StructureShape.new(name: 'S3LogsConfigurationResult')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectDetail = Shapes::StructureShape.new(name: 'S3ObjectDetail')
    S3ObjectDetails = Shapes::ListShape.new(name: 'S3ObjectDetails')
    S3ObjectForSendObjectMalwareScan = Shapes::StructureShape.new(name: 'S3ObjectForSendObjectMalwareScan')
    S3ObjectUids = Shapes::ListShape.new(name: 'S3ObjectUids')
    Scan = Shapes::StructureShape.new(name: 'Scan')
    ScanCategory = Shapes::StringShape.new(name: 'ScanCategory')
    ScanCondition = Shapes::StructureShape.new(name: 'ScanCondition')
    ScanConditionPair = Shapes::StructureShape.new(name: 'ScanConditionPair')
    ScanConfiguration = Shapes::StructureShape.new(name: 'ScanConfiguration')
    ScanConfigurationRecoveryPoint = Shapes::StructureShape.new(name: 'ScanConfigurationRecoveryPoint')
    ScanCriterion = Shapes::MapShape.new(name: 'ScanCriterion')
    ScanCriterionKey = Shapes::StringShape.new(name: 'ScanCriterionKey')
    ScanDetections = Shapes::StructureShape.new(name: 'ScanDetections')
    ScanEc2InstanceWithFindings = Shapes::StructureShape.new(name: 'ScanEc2InstanceWithFindings')
    ScanEc2InstanceWithFindingsResult = Shapes::StructureShape.new(name: 'ScanEc2InstanceWithFindingsResult')
    ScanFilePath = Shapes::StructureShape.new(name: 'ScanFilePath')
    ScanResourceCriteria = Shapes::StructureShape.new(name: 'ScanResourceCriteria')
    ScanResult = Shapes::StringShape.new(name: 'ScanResult')
    ScanResultDetails = Shapes::StructureShape.new(name: 'ScanResultDetails')
    ScanResultStatus = Shapes::StringShape.new(name: 'ScanResultStatus')
    ScanResultThreat = Shapes::StructureShape.new(name: 'ScanResultThreat')
    ScanResultThreats = Shapes::ListShape.new(name: 'ScanResultThreats')
    ScanStatus = Shapes::StringShape.new(name: 'ScanStatus')
    ScanStatusReason = Shapes::StringShape.new(name: 'ScanStatusReason')
    ScanThreatName = Shapes::StructureShape.new(name: 'ScanThreatName')
    ScanThreatNames = Shapes::ListShape.new(name: 'ScanThreatNames')
    ScanType = Shapes::StringShape.new(name: 'ScanType')
    ScannedItemCount = Shapes::StructureShape.new(name: 'ScannedItemCount')
    ScannedResource = Shapes::StructureShape.new(name: 'ScannedResource')
    ScannedResourceDetails = Shapes::StructureShape.new(name: 'ScannedResourceDetails')
    ScannedResources = Shapes::ListShape.new(name: 'ScannedResources')
    Scans = Shapes::ListShape.new(name: 'Scans')
    SecurityContext = Shapes::StructureShape.new(name: 'SecurityContext')
    SecurityGroup = Shapes::StructureShape.new(name: 'SecurityGroup')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SendObjectMalwareScanRequest = Shapes::StructureShape.new(name: 'SendObjectMalwareScanRequest')
    SendObjectMalwareScanResponse = Shapes::StructureShape.new(name: 'SendObjectMalwareScanResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    Sequence = Shapes::StructureShape.new(name: 'Sequence')
    SequenceDescription = Shapes::StringShape.new(name: 'SequenceDescription')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceAdditionalInfo = Shapes::StructureShape.new(name: 'ServiceAdditionalInfo')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionNameList = Shapes::ListShape.new(name: 'SessionNameList')
    SeverityStatistics = Shapes::StructureShape.new(name: 'SeverityStatistics')
    Signal = Shapes::StructureShape.new(name: 'Signal')
    SignalDescription = Shapes::StringShape.new(name: 'SignalDescription')
    SignalType = Shapes::StringShape.new(name: 'SignalType')
    Signals = Shapes::ListShape.new(name: 'Signals')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    SourceIps = Shapes::ListShape.new(name: 'SourceIps')
    Sources = Shapes::ListShape.new(name: 'Sources')
    StartMalwareScanConfiguration = Shapes::StructureShape.new(name: 'StartMalwareScanConfiguration')
    StartMalwareScanRequest = Shapes::StructureShape.new(name: 'StartMalwareScanRequest')
    StartMalwareScanResponse = Shapes::StructureShape.new(name: 'StartMalwareScanResponse')
    StartMonitoringMembersRequest = Shapes::StructureShape.new(name: 'StartMonitoringMembersRequest')
    StartMonitoringMembersResponse = Shapes::StructureShape.new(name: 'StartMonitoringMembersResponse')
    StopMonitoringMembersRequest = Shapes::StructureShape.new(name: 'StopMonitoringMembersRequest')
    StopMonitoringMembersResponse = Shapes::StructureShape.new(name: 'StopMonitoringMembersResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    Threat = Shapes::StructureShape.new(name: 'Threat')
    ThreatDetectedByName = Shapes::StructureShape.new(name: 'ThreatDetectedByName')
    ThreatEntitySetFormat = Shapes::StringShape.new(name: 'ThreatEntitySetFormat')
    ThreatEntitySetIds = Shapes::ListShape.new(name: 'ThreatEntitySetIds')
    ThreatEntitySetStatus = Shapes::StringShape.new(name: 'ThreatEntitySetStatus')
    ThreatIntelSetFormat = Shapes::StringShape.new(name: 'ThreatIntelSetFormat')
    ThreatIntelSetIds = Shapes::ListShape.new(name: 'ThreatIntelSetIds')
    ThreatIntelSetStatus = Shapes::StringShape.new(name: 'ThreatIntelSetStatus')
    ThreatIntelligenceDetail = Shapes::StructureShape.new(name: 'ThreatIntelligenceDetail')
    ThreatIntelligenceDetails = Shapes::ListShape.new(name: 'ThreatIntelligenceDetails')
    ThreatNames = Shapes::ListShape.new(name: 'ThreatNames')
    Threats = Shapes::ListShape.new(name: 'Threats')
    ThreatsDetectedItemCount = Shapes::StructureShape.new(name: 'ThreatsDetectedItemCount')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Total = Shapes::StructureShape.new(name: 'Total')
    TriggerDetails = Shapes::StructureShape.new(name: 'TriggerDetails')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    TrustedEntitySetFormat = Shapes::StringShape.new(name: 'TrustedEntitySetFormat')
    TrustedEntitySetIds = Shapes::ListShape.new(name: 'TrustedEntitySetIds')
    TrustedEntitySetStatus = Shapes::StringShape.new(name: 'TrustedEntitySetStatus')
    UnarchiveFindingsRequest = Shapes::StructureShape.new(name: 'UnarchiveFindingsRequest')
    UnarchiveFindingsResponse = Shapes::StructureShape.new(name: 'UnarchiveFindingsResponse')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UnprocessedAccounts = Shapes::ListShape.new(name: 'UnprocessedAccounts')
    UnprocessedDataSourcesResult = Shapes::StructureShape.new(name: 'UnprocessedDataSourcesResult')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDetectorRequest = Shapes::StructureShape.new(name: 'UpdateDetectorRequest')
    UpdateDetectorResponse = Shapes::StructureShape.new(name: 'UpdateDetectorResponse')
    UpdateFilterRequest = Shapes::StructureShape.new(name: 'UpdateFilterRequest')
    UpdateFilterResponse = Shapes::StructureShape.new(name: 'UpdateFilterResponse')
    UpdateFindingsFeedbackRequest = Shapes::StructureShape.new(name: 'UpdateFindingsFeedbackRequest')
    UpdateFindingsFeedbackResponse = Shapes::StructureShape.new(name: 'UpdateFindingsFeedbackResponse')
    UpdateIPSetRequest = Shapes::StructureShape.new(name: 'UpdateIPSetRequest')
    UpdateIPSetResponse = Shapes::StructureShape.new(name: 'UpdateIPSetResponse')
    UpdateMalwareProtectionPlanRequest = Shapes::StructureShape.new(name: 'UpdateMalwareProtectionPlanRequest')
    UpdateMalwareScanSettingsRequest = Shapes::StructureShape.new(name: 'UpdateMalwareScanSettingsRequest')
    UpdateMalwareScanSettingsResponse = Shapes::StructureShape.new(name: 'UpdateMalwareScanSettingsResponse')
    UpdateMemberDetectorsRequest = Shapes::StructureShape.new(name: 'UpdateMemberDetectorsRequest')
    UpdateMemberDetectorsResponse = Shapes::StructureShape.new(name: 'UpdateMemberDetectorsResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationResponse')
    UpdateProtectedResource = Shapes::StructureShape.new(name: 'UpdateProtectedResource')
    UpdatePublishingDestinationRequest = Shapes::StructureShape.new(name: 'UpdatePublishingDestinationRequest')
    UpdatePublishingDestinationResponse = Shapes::StructureShape.new(name: 'UpdatePublishingDestinationResponse')
    UpdateS3BucketResource = Shapes::StructureShape.new(name: 'UpdateS3BucketResource')
    UpdateThreatEntitySetRequest = Shapes::StructureShape.new(name: 'UpdateThreatEntitySetRequest')
    UpdateThreatEntitySetResponse = Shapes::StructureShape.new(name: 'UpdateThreatEntitySetResponse')
    UpdateThreatIntelSetRequest = Shapes::StructureShape.new(name: 'UpdateThreatIntelSetRequest')
    UpdateThreatIntelSetResponse = Shapes::StructureShape.new(name: 'UpdateThreatIntelSetResponse')
    UpdateTrustedEntitySetRequest = Shapes::StructureShape.new(name: 'UpdateTrustedEntitySetRequest')
    UpdateTrustedEntitySetResponse = Shapes::StructureShape.new(name: 'UpdateTrustedEntitySetResponse')
    UsageAccountResult = Shapes::StructureShape.new(name: 'UsageAccountResult')
    UsageAccountResultList = Shapes::ListShape.new(name: 'UsageAccountResultList')
    UsageCriteria = Shapes::StructureShape.new(name: 'UsageCriteria')
    UsageDataSourceResult = Shapes::StructureShape.new(name: 'UsageDataSourceResult')
    UsageDataSourceResultList = Shapes::ListShape.new(name: 'UsageDataSourceResultList')
    UsageFeature = Shapes::StringShape.new(name: 'UsageFeature')
    UsageFeatureList = Shapes::ListShape.new(name: 'UsageFeatureList')
    UsageFeatureResult = Shapes::StructureShape.new(name: 'UsageFeatureResult')
    UsageFeatureResultList = Shapes::ListShape.new(name: 'UsageFeatureResultList')
    UsageResourceResult = Shapes::StructureShape.new(name: 'UsageResourceResult')
    UsageResourceResultList = Shapes::ListShape.new(name: 'UsageResourceResultList')
    UsageStatisticType = Shapes::StringShape.new(name: 'UsageStatisticType')
    UsageStatistics = Shapes::StructureShape.new(name: 'UsageStatistics')
    UsageTopAccountResult = Shapes::StructureShape.new(name: 'UsageTopAccountResult')
    UsageTopAccountsByFeatureList = Shapes::ListShape.new(name: 'UsageTopAccountsByFeatureList')
    UsageTopAccountsResult = Shapes::StructureShape.new(name: 'UsageTopAccountsResult')
    UsageTopAccountsResultList = Shapes::ListShape.new(name: 'UsageTopAccountsResultList')
    User = Shapes::StructureShape.new(name: 'User')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeDetail = Shapes::StructureShape.new(name: 'VolumeDetail')
    VolumeDetails = Shapes::ListShape.new(name: 'VolumeDetails')
    VolumeMount = Shapes::StructureShape.new(name: 'VolumeMount')
    VolumeMounts = Shapes::ListShape.new(name: 'VolumeMounts')
    Volumes = Shapes::ListShape.new(name: 'Volumes')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')

    AcceptAdministratorInvitationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    AcceptAdministratorInvitationRequest.add_member(:administrator_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "administratorId"))
    AcceptAdministratorInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "invitationId"))
    AcceptAdministratorInvitationRequest.struct_class = Types::AcceptAdministratorInvitationRequest

    AcceptAdministratorInvitationResponse.struct_class = Types::AcceptAdministratorInvitationResponse

    AcceptInvitationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    AcceptInvitationRequest.add_member(:master_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "masterId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "invitationId"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessControlList.add_member(:allows_public_read_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowsPublicReadAccess"))
    AccessControlList.add_member(:allows_public_write_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowsPublicWriteAccess"))
    AccessControlList.struct_class = Types::AccessControlList

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "__type"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessKey.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "principalId"))
    AccessKey.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    AccessKey.add_member(:user_type, Shapes::ShapeRef.new(shape: String, location_name: "userType"))
    AccessKey.struct_class = Types::AccessKey

    AccessKeyDetails.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, location_name: "accessKeyId"))
    AccessKeyDetails.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "principalId"))
    AccessKeyDetails.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    AccessKeyDetails.add_member(:user_type, Shapes::ShapeRef.new(shape: String, location_name: "userType"))
    AccessKeyDetails.struct_class = Types::AccessKeyDetails

    Account.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "account"))
    Account.struct_class = Types::Account

    AccountDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountDetail.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    AccountDetail.struct_class = Types::AccountDetail

    AccountDetails.member = Shapes::ShapeRef.new(shape: AccountDetail)

    AccountFreeTrialInfo.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    AccountFreeTrialInfo.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourcesFreeTrial, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    AccountFreeTrialInfo.add_member(:features, Shapes::ShapeRef.new(shape: FreeTrialFeatureConfigurationsResults, location_name: "features"))
    AccountFreeTrialInfo.struct_class = Types::AccountFreeTrialInfo

    AccountFreeTrialInfos.member = Shapes::ShapeRef.new(shape: AccountFreeTrialInfo)

    AccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountLevelPermissions.add_member(:block_public_access, Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: "blockPublicAccess"))
    AccountLevelPermissions.struct_class = Types::AccountLevelPermissions

    AccountStatistics.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    AccountStatistics.add_member(:last_generated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastGeneratedAt"))
    AccountStatistics.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    AccountStatistics.struct_class = Types::AccountStatistics

    Action.add_member(:action_type, Shapes::ShapeRef.new(shape: String, location_name: "actionType"))
    Action.add_member(:aws_api_call_action, Shapes::ShapeRef.new(shape: AwsApiCallAction, location_name: "awsApiCallAction"))
    Action.add_member(:dns_request_action, Shapes::ShapeRef.new(shape: DnsRequestAction, location_name: "dnsRequestAction"))
    Action.add_member(:network_connection_action, Shapes::ShapeRef.new(shape: NetworkConnectionAction, location_name: "networkConnectionAction"))
    Action.add_member(:port_probe_action, Shapes::ShapeRef.new(shape: PortProbeAction, location_name: "portProbeAction"))
    Action.add_member(:kubernetes_api_call_action, Shapes::ShapeRef.new(shape: KubernetesApiCallAction, location_name: "kubernetesApiCallAction"))
    Action.add_member(:rds_login_attempt_action, Shapes::ShapeRef.new(shape: RdsLoginAttemptAction, location_name: "rdsLoginAttemptAction"))
    Action.add_member(:kubernetes_permission_checked_details, Shapes::ShapeRef.new(shape: KubernetesPermissionCheckedDetails, location_name: "kubernetesPermissionCheckedDetails"))
    Action.add_member(:kubernetes_role_binding_details, Shapes::ShapeRef.new(shape: KubernetesRoleBindingDetails, location_name: "kubernetesRoleBindingDetails"))
    Action.add_member(:kubernetes_role_details, Shapes::ShapeRef.new(shape: KubernetesRoleDetails, location_name: "kubernetesRoleDetails"))
    Action.struct_class = Types::Action

    Actor.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Actor.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "user"))
    Actor.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "session"))
    Actor.add_member(:process, Shapes::ShapeRef.new(shape: ActorProcess, location_name: "process"))
    Actor.struct_class = Types::Actor

    ActorIds.member = Shapes::ShapeRef.new(shape: String)

    ActorProcess.add_member(:name, Shapes::ShapeRef.new(shape: ProcessName, required: true, location_name: "name"))
    ActorProcess.add_member(:path, Shapes::ShapeRef.new(shape: ProcessPath, required: true, location_name: "path"))
    ActorProcess.add_member(:sha_256, Shapes::ShapeRef.new(shape: ProcessSha256, location_name: "sha256"))
    ActorProcess.struct_class = Types::ActorProcess

    Actors.member = Shapes::ShapeRef.new(shape: Actor)

    AdditionalInfo.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "versionId"))
    AdditionalInfo.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deviceName"))
    AdditionalInfo.struct_class = Types::AdditionalInfo

    AdditionalSequenceTypes.member = Shapes::ShapeRef.new(shape: FindingType)

    AddonDetails.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    AddonDetails.add_member(:addon_status, Shapes::ShapeRef.new(shape: String, location_name: "addonStatus"))
    AddonDetails.struct_class = Types::AddonDetails

    AdminAccount.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: String, location_name: "adminAccountId"))
    AdminAccount.add_member(:admin_status, Shapes::ShapeRef.new(shape: AdminStatus, location_name: "adminStatus"))
    AdminAccount.struct_class = Types::AdminAccount

    AdminAccounts.member = Shapes::ShapeRef.new(shape: AdminAccount)

    Administrator.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Administrator.add_member(:invitation_id, Shapes::ShapeRef.new(shape: String, location_name: "invitationId"))
    Administrator.add_member(:relationship_status, Shapes::ShapeRef.new(shape: String, location_name: "relationshipStatus"))
    Administrator.add_member(:invited_at, Shapes::ShapeRef.new(shape: String, location_name: "invitedAt"))
    Administrator.struct_class = Types::Administrator

    AffectedResources.key = Shapes::ShapeRef.new(shape: String)
    AffectedResources.value = Shapes::ShapeRef.new(shape: String)

    AgentDetails.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AgentDetails.struct_class = Types::AgentDetails

    Anomaly.add_member(:profiles, Shapes::ShapeRef.new(shape: AnomalyProfiles, location_name: "profiles"))
    Anomaly.add_member(:unusual, Shapes::ShapeRef.new(shape: AnomalyUnusual, location_name: "unusual"))
    Anomaly.struct_class = Types::Anomaly

    AnomalyObject.add_member(:profile_type, Shapes::ShapeRef.new(shape: ProfileType, location_name: "profileType"))
    AnomalyObject.add_member(:profile_subtype, Shapes::ShapeRef.new(shape: ProfileSubtype, location_name: "profileSubtype"))
    AnomalyObject.add_member(:observations, Shapes::ShapeRef.new(shape: Observations, location_name: "observations"))
    AnomalyObject.struct_class = Types::AnomalyObject

    AnomalyProfileFeatureObjects.member = Shapes::ShapeRef.new(shape: AnomalyObject)

    AnomalyProfileFeatures.key = Shapes::ShapeRef.new(shape: String)
    AnomalyProfileFeatures.value = Shapes::ShapeRef.new(shape: AnomalyProfileFeatureObjects)

    AnomalyProfiles.key = Shapes::ShapeRef.new(shape: String)
    AnomalyProfiles.value = Shapes::ShapeRef.new(shape: AnomalyProfileFeatures)

    AnomalyUnusual.add_member(:behavior, Shapes::ShapeRef.new(shape: Behavior, location_name: "behavior"))
    AnomalyUnusual.struct_class = Types::AnomalyUnusual

    AnomalyUnusualBehaviorFeature.key = Shapes::ShapeRef.new(shape: String)
    AnomalyUnusualBehaviorFeature.value = Shapes::ShapeRef.new(shape: AnomalyObject)

    ArchiveFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ArchiveFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, required: true, location_name: "findingIds"))
    ArchiveFindingsRequest.struct_class = Types::ArchiveFindingsRequest

    ArchiveFindingsResponse.struct_class = Types::ArchiveFindingsResponse

    AutonomousSystem.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AutonomousSystem.add_member(:number, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "number"))
    AutonomousSystem.struct_class = Types::AutonomousSystem

    AwsApiCallAction.add_member(:api, Shapes::ShapeRef.new(shape: String, location_name: "api"))
    AwsApiCallAction.add_member(:caller_type, Shapes::ShapeRef.new(shape: String, location_name: "callerType"))
    AwsApiCallAction.add_member(:domain_details, Shapes::ShapeRef.new(shape: DomainDetails, location_name: "domainDetails"))
    AwsApiCallAction.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    AwsApiCallAction.add_member(:user_agent, Shapes::ShapeRef.new(shape: String, location_name: "userAgent"))
    AwsApiCallAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    AwsApiCallAction.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    AwsApiCallAction.add_member(:remote_account_details, Shapes::ShapeRef.new(shape: RemoteAccountDetails, location_name: "remoteAccountDetails"))
    AwsApiCallAction.add_member(:affected_resources, Shapes::ShapeRef.new(shape: AffectedResources, location_name: "affectedResources"))
    AwsApiCallAction.struct_class = Types::AwsApiCallAction

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "__type"))
    BadRequestException.struct_class = Types::BadRequestException

    Behavior.key = Shapes::ShapeRef.new(shape: String)
    Behavior.value = Shapes::ShapeRef.new(shape: AnomalyUnusualBehaviorFeature)

    BlockPublicAccess.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignorePublicAcls"))
    BlockPublicAccess.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: Boolean, location_name: "restrictPublicBuckets"))
    BlockPublicAccess.add_member(:block_public_acls, Shapes::ShapeRef.new(shape: Boolean, location_name: "blockPublicAcls"))
    BlockPublicAccess.add_member(:block_public_policy, Shapes::ShapeRef.new(shape: Boolean, location_name: "blockPublicPolicy"))
    BlockPublicAccess.struct_class = Types::BlockPublicAccess

    BucketLevelPermissions.add_member(:access_control_list, Shapes::ShapeRef.new(shape: AccessControlList, location_name: "accessControlList"))
    BucketLevelPermissions.add_member(:bucket_policy, Shapes::ShapeRef.new(shape: BucketPolicy, location_name: "bucketPolicy"))
    BucketLevelPermissions.add_member(:block_public_access, Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: "blockPublicAccess"))
    BucketLevelPermissions.struct_class = Types::BucketLevelPermissions

    BucketPolicy.add_member(:allows_public_read_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowsPublicReadAccess"))
    BucketPolicy.add_member(:allows_public_write_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowsPublicWriteAccess"))
    BucketPolicy.struct_class = Types::BucketPolicy

    City.add_member(:city_name, Shapes::ShapeRef.new(shape: String, location_name: "cityName"))
    City.struct_class = Types::City

    CloudTrailConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    CloudTrailConfigurationResult.struct_class = Types::CloudTrailConfigurationResult

    Condition.add_member(:eq, Shapes::ShapeRef.new(shape: Eq, deprecated: true, location_name: "eq"))
    Condition.add_member(:neq, Shapes::ShapeRef.new(shape: Neq, deprecated: true, location_name: "neq"))
    Condition.add_member(:gt, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "gt"))
    Condition.add_member(:gte, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "gte"))
    Condition.add_member(:lt, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "lt"))
    Condition.add_member(:lte, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "lte"))
    Condition.add_member(:equals, Shapes::ShapeRef.new(shape: Equals, location_name: "equals"))
    Condition.add_member(:not_equals, Shapes::ShapeRef.new(shape: NotEquals, location_name: "notEquals"))
    Condition.add_member(:greater_than, Shapes::ShapeRef.new(shape: Long, location_name: "greaterThan"))
    Condition.add_member(:greater_than_or_equal, Shapes::ShapeRef.new(shape: Long, location_name: "greaterThanOrEqual"))
    Condition.add_member(:less_than, Shapes::ShapeRef.new(shape: Long, location_name: "lessThan"))
    Condition.add_member(:less_than_or_equal, Shapes::ShapeRef.new(shape: Long, location_name: "lessThanOrEqual"))
    Condition.struct_class = Types::Condition

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "__type"))
    ConflictException.struct_class = Types::ConflictException

    Container.add_member(:container_runtime, Shapes::ShapeRef.new(shape: String, location_name: "containerRuntime"))
    Container.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Container.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Container.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    Container.add_member(:image_prefix, Shapes::ShapeRef.new(shape: String, location_name: "imagePrefix"))
    Container.add_member(:volume_mounts, Shapes::ShapeRef.new(shape: VolumeMounts, location_name: "volumeMounts"))
    Container.add_member(:security_context, Shapes::ShapeRef.new(shape: SecurityContext, location_name: "securityContext"))
    Container.struct_class = Types::Container

    ContainerFindingResource.add_member(:image, Shapes::ShapeRef.new(shape: String, required: true, location_name: "image"))
    ContainerFindingResource.add_member(:image_uid, Shapes::ShapeRef.new(shape: ContainerImageUid, location_name: "imageUid"))
    ContainerFindingResource.struct_class = Types::ContainerFindingResource

    ContainerInstanceDetails.add_member(:covered_container_instances, Shapes::ShapeRef.new(shape: Long, location_name: "coveredContainerInstances"))
    ContainerInstanceDetails.add_member(:compatible_container_instances, Shapes::ShapeRef.new(shape: Long, location_name: "compatibleContainerInstances"))
    ContainerInstanceDetails.struct_class = Types::ContainerInstanceDetails

    ContainerUids.member = Shapes::ShapeRef.new(shape: ContainerUid)

    Containers.member = Shapes::ShapeRef.new(shape: Container)

    CountByCoverageStatus.key = Shapes::ShapeRef.new(shape: CoverageStatus)
    CountByCoverageStatus.value = Shapes::ShapeRef.new(shape: Long)

    CountByResourceType.key = Shapes::ShapeRef.new(shape: ResourceType)
    CountByResourceType.value = Shapes::ShapeRef.new(shape: Long)

    CountBySeverity.key = Shapes::ShapeRef.new(shape: String)
    CountBySeverity.value = Shapes::ShapeRef.new(shape: Integer)

    Country.add_member(:country_code, Shapes::ShapeRef.new(shape: String, location_name: "countryCode"))
    Country.add_member(:country_name, Shapes::ShapeRef.new(shape: String, location_name: "countryName"))
    Country.struct_class = Types::Country

    CoverageEc2InstanceDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    CoverageEc2InstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    CoverageEc2InstanceDetails.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    CoverageEc2InstanceDetails.add_member(:agent_details, Shapes::ShapeRef.new(shape: AgentDetails, location_name: "agentDetails"))
    CoverageEc2InstanceDetails.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, location_name: "managementType"))
    CoverageEc2InstanceDetails.struct_class = Types::CoverageEc2InstanceDetails

    CoverageEcsClusterDetails.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CoverageEcsClusterDetails.add_member(:fargate_details, Shapes::ShapeRef.new(shape: FargateDetails, location_name: "fargateDetails"))
    CoverageEcsClusterDetails.add_member(:container_instance_details, Shapes::ShapeRef.new(shape: ContainerInstanceDetails, location_name: "containerInstanceDetails"))
    CoverageEcsClusterDetails.struct_class = Types::CoverageEcsClusterDetails

    CoverageEksClusterDetails.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CoverageEksClusterDetails.add_member(:covered_nodes, Shapes::ShapeRef.new(shape: Long, location_name: "coveredNodes"))
    CoverageEksClusterDetails.add_member(:compatible_nodes, Shapes::ShapeRef.new(shape: Long, location_name: "compatibleNodes"))
    CoverageEksClusterDetails.add_member(:addon_details, Shapes::ShapeRef.new(shape: AddonDetails, location_name: "addonDetails"))
    CoverageEksClusterDetails.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, location_name: "managementType"))
    CoverageEksClusterDetails.struct_class = Types::CoverageEksClusterDetails

    CoverageFilterCondition.add_member(:equals, Shapes::ShapeRef.new(shape: Equals, location_name: "equals"))
    CoverageFilterCondition.add_member(:not_equals, Shapes::ShapeRef.new(shape: NotEquals, location_name: "notEquals"))
    CoverageFilterCondition.struct_class = Types::CoverageFilterCondition

    CoverageFilterCriteria.add_member(:filter_criterion, Shapes::ShapeRef.new(shape: CoverageFilterCriterionList, location_name: "filterCriterion"))
    CoverageFilterCriteria.struct_class = Types::CoverageFilterCriteria

    CoverageFilterCriterion.add_member(:criterion_key, Shapes::ShapeRef.new(shape: CoverageFilterCriterionKey, location_name: "criterionKey"))
    CoverageFilterCriterion.add_member(:filter_condition, Shapes::ShapeRef.new(shape: CoverageFilterCondition, location_name: "filterCondition"))
    CoverageFilterCriterion.struct_class = Types::CoverageFilterCriterion

    CoverageFilterCriterionList.member = Shapes::ShapeRef.new(shape: CoverageFilterCriterion)

    CoverageResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    CoverageResource.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    CoverageResource.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    CoverageResource.add_member(:resource_details, Shapes::ShapeRef.new(shape: CoverageResourceDetails, location_name: "resourceDetails"))
    CoverageResource.add_member(:coverage_status, Shapes::ShapeRef.new(shape: CoverageStatus, location_name: "coverageStatus"))
    CoverageResource.add_member(:issue, Shapes::ShapeRef.new(shape: String, location_name: "issue"))
    CoverageResource.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    CoverageResource.struct_class = Types::CoverageResource

    CoverageResourceDetails.add_member(:eks_cluster_details, Shapes::ShapeRef.new(shape: CoverageEksClusterDetails, location_name: "eksClusterDetails"))
    CoverageResourceDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    CoverageResourceDetails.add_member(:ecs_cluster_details, Shapes::ShapeRef.new(shape: CoverageEcsClusterDetails, location_name: "ecsClusterDetails"))
    CoverageResourceDetails.add_member(:ec2_instance_details, Shapes::ShapeRef.new(shape: CoverageEc2InstanceDetails, location_name: "ec2InstanceDetails"))
    CoverageResourceDetails.struct_class = Types::CoverageResourceDetails

    CoverageResources.member = Shapes::ShapeRef.new(shape: CoverageResource)

    CoverageSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: CoverageSortKey, location_name: "attributeName"))
    CoverageSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    CoverageSortCriteria.struct_class = Types::CoverageSortCriteria

    CoverageStatistics.add_member(:count_by_resource_type, Shapes::ShapeRef.new(shape: CountByResourceType, location_name: "countByResourceType"))
    CoverageStatistics.add_member(:count_by_coverage_status, Shapes::ShapeRef.new(shape: CountByCoverageStatus, location_name: "countByCoverageStatus"))
    CoverageStatistics.struct_class = Types::CoverageStatistics

    CoverageStatisticsTypeList.member = Shapes::ShapeRef.new(shape: CoverageStatisticsType)

    CreateDetectorRequest.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enable"))
    CreateDetectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDetectorRequest.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    CreateDetectorRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigurations, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    CreateDetectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDetectorRequest.add_member(:features, Shapes::ShapeRef.new(shape: DetectorFeatureConfigurations, location_name: "features"))
    CreateDetectorRequest.struct_class = Types::CreateDetectorRequest

    CreateDetectorResponse.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    CreateDetectorResponse.add_member(:unprocessed_data_sources, Shapes::ShapeRef.new(shape: UnprocessedDataSourcesResult, location_name: "unprocessedDataSources"))
    CreateDetectorResponse.struct_class = Types::CreateDetectorResponse

    CreateFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    CreateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    CreateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    CreateFilterRequest.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    CreateFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, required: true, location_name: "findingCriteria"))
    CreateFilterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateFilterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFilterRequest.struct_class = Types::CreateFilterRequest

    CreateFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    CreateFilterResponse.struct_class = Types::CreateFilterResponse

    CreateIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateIPSetRequest.add_member(:format, Shapes::ShapeRef.new(shape: IpSetFormat, required: true, location_name: "format"))
    CreateIPSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    CreateIPSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "activate"))
    CreateIPSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIPSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIPSetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    CreateIPSetRequest.struct_class = Types::CreateIPSetRequest

    CreateIPSetResponse.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ipSetId"))
    CreateIPSetResponse.struct_class = Types::CreateIPSetResponse

    CreateMalwareProtectionPlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMalwareProtectionPlanRequest.add_member(:role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "role"))
    CreateMalwareProtectionPlanRequest.add_member(:protected_resource, Shapes::ShapeRef.new(shape: CreateProtectedResource, required: true, location_name: "protectedResource"))
    CreateMalwareProtectionPlanRequest.add_member(:actions, Shapes::ShapeRef.new(shape: MalwareProtectionPlanActions, location_name: "actions"))
    CreateMalwareProtectionPlanRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMalwareProtectionPlanRequest.struct_class = Types::CreateMalwareProtectionPlanRequest

    CreateMalwareProtectionPlanResponse.add_member(:malware_protection_plan_id, Shapes::ShapeRef.new(shape: String, location_name: "malwareProtectionPlanId"))
    CreateMalwareProtectionPlanResponse.struct_class = Types::CreateMalwareProtectionPlanResponse

    CreateMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateMembersRequest.add_member(:account_details, Shapes::ShapeRef.new(shape: AccountDetails, required: true, location_name: "accountDetails"))
    CreateMembersRequest.struct_class = Types::CreateMembersRequest

    CreateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    CreateMembersResponse.struct_class = Types::CreateMembersResponse

    CreateProtectedResource.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: CreateS3BucketResource, location_name: "s3Bucket"))
    CreateProtectedResource.struct_class = Types::CreateProtectedResource

    CreatePublishingDestinationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreatePublishingDestinationRequest.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, required: true, location_name: "destinationType"))
    CreatePublishingDestinationRequest.add_member(:destination_properties, Shapes::ShapeRef.new(shape: DestinationProperties, required: true, location_name: "destinationProperties"))
    CreatePublishingDestinationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePublishingDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePublishingDestinationRequest.struct_class = Types::CreatePublishingDestinationRequest

    CreatePublishingDestinationResponse.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationId"))
    CreatePublishingDestinationResponse.struct_class = Types::CreatePublishingDestinationResponse

    CreateS3BucketResource.add_member(:bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "bucketName"))
    CreateS3BucketResource.add_member(:object_prefixes, Shapes::ShapeRef.new(shape: MalwareProtectionPlanObjectPrefixesList, location_name: "objectPrefixes"))
    CreateS3BucketResource.struct_class = Types::CreateS3BucketResource

    CreateSampleFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateSampleFindingsRequest.add_member(:finding_types, Shapes::ShapeRef.new(shape: FindingTypes, location_name: "findingTypes"))
    CreateSampleFindingsRequest.struct_class = Types::CreateSampleFindingsRequest

    CreateSampleFindingsResponse.struct_class = Types::CreateSampleFindingsResponse

    CreateThreatEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateThreatEntitySetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateThreatEntitySetRequest.add_member(:format, Shapes::ShapeRef.new(shape: ThreatEntitySetFormat, required: true, location_name: "format"))
    CreateThreatEntitySetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    CreateThreatEntitySetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    CreateThreatEntitySetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "activate"))
    CreateThreatEntitySetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateThreatEntitySetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateThreatEntitySetRequest.struct_class = Types::CreateThreatEntitySetRequest

    CreateThreatEntitySetResponse.add_member(:threat_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatEntitySetId"))
    CreateThreatEntitySetResponse.struct_class = Types::CreateThreatEntitySetResponse

    CreateThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateThreatIntelSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateThreatIntelSetRequest.add_member(:format, Shapes::ShapeRef.new(shape: ThreatIntelSetFormat, required: true, location_name: "format"))
    CreateThreatIntelSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    CreateThreatIntelSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "activate"))
    CreateThreatIntelSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateThreatIntelSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateThreatIntelSetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    CreateThreatIntelSetRequest.struct_class = Types::CreateThreatIntelSetRequest

    CreateThreatIntelSetResponse.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatIntelSetId"))
    CreateThreatIntelSetResponse.struct_class = Types::CreateThreatIntelSetResponse

    CreateTrustedEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    CreateTrustedEntitySetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateTrustedEntitySetRequest.add_member(:format, Shapes::ShapeRef.new(shape: TrustedEntitySetFormat, required: true, location_name: "format"))
    CreateTrustedEntitySetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    CreateTrustedEntitySetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    CreateTrustedEntitySetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "activate"))
    CreateTrustedEntitySetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateTrustedEntitySetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTrustedEntitySetRequest.struct_class = Types::CreateTrustedEntitySetRequest

    CreateTrustedEntitySetResponse.add_member(:trusted_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "trustedEntitySetId"))
    CreateTrustedEntitySetResponse.struct_class = Types::CreateTrustedEntitySetResponse

    Criterion.key = Shapes::ShapeRef.new(shape: String)
    Criterion.value = Shapes::ShapeRef.new(shape: Condition)

    DNSLogsConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    DNSLogsConfigurationResult.struct_class = Types::DNSLogsConfigurationResult

    DataSourceConfigurations.add_member(:s3_logs, Shapes::ShapeRef.new(shape: S3LogsConfiguration, location_name: "s3Logs"))
    DataSourceConfigurations.add_member(:kubernetes, Shapes::ShapeRef.new(shape: KubernetesConfiguration, location_name: "kubernetes"))
    DataSourceConfigurations.add_member(:malware_protection, Shapes::ShapeRef.new(shape: MalwareProtectionConfiguration, location_name: "malwareProtection"))
    DataSourceConfigurations.struct_class = Types::DataSourceConfigurations

    DataSourceConfigurationsResult.add_member(:cloud_trail, Shapes::ShapeRef.new(shape: CloudTrailConfigurationResult, required: true, location_name: "cloudTrail"))
    DataSourceConfigurationsResult.add_member(:dns_logs, Shapes::ShapeRef.new(shape: DNSLogsConfigurationResult, required: true, location_name: "dnsLogs"))
    DataSourceConfigurationsResult.add_member(:flow_logs, Shapes::ShapeRef.new(shape: FlowLogsConfigurationResult, required: true, location_name: "flowLogs"))
    DataSourceConfigurationsResult.add_member(:s3_logs, Shapes::ShapeRef.new(shape: S3LogsConfigurationResult, required: true, location_name: "s3Logs"))
    DataSourceConfigurationsResult.add_member(:kubernetes, Shapes::ShapeRef.new(shape: KubernetesConfigurationResult, location_name: "kubernetes"))
    DataSourceConfigurationsResult.add_member(:malware_protection, Shapes::ShapeRef.new(shape: MalwareProtectionConfigurationResult, location_name: "malwareProtection"))
    DataSourceConfigurationsResult.struct_class = Types::DataSourceConfigurationsResult

    DataSourceFreeTrial.add_member(:free_trial_days_remaining, Shapes::ShapeRef.new(shape: Integer, location_name: "freeTrialDaysRemaining"))
    DataSourceFreeTrial.struct_class = Types::DataSourceFreeTrial

    DataSourceList.member = Shapes::ShapeRef.new(shape: DataSource)

    DataSourcesFreeTrial.add_member(:cloud_trail, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "cloudTrail"))
    DataSourcesFreeTrial.add_member(:dns_logs, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "dnsLogs"))
    DataSourcesFreeTrial.add_member(:flow_logs, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "flowLogs"))
    DataSourcesFreeTrial.add_member(:s3_logs, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "s3Logs"))
    DataSourcesFreeTrial.add_member(:kubernetes, Shapes::ShapeRef.new(shape: KubernetesDataSourceFreeTrial, location_name: "kubernetes"))
    DataSourcesFreeTrial.add_member(:malware_protection, Shapes::ShapeRef.new(shape: MalwareProtectionDataSourceFreeTrial, location_name: "malwareProtection"))
    DataSourcesFreeTrial.struct_class = Types::DataSourcesFreeTrial

    DateStatistics.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "date"))
    DateStatistics.add_member(:last_generated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastGeneratedAt"))
    DateStatistics.add_member(:severity, Shapes::ShapeRef.new(shape: Double, location_name: "severity"))
    DateStatistics.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    DateStatistics.struct_class = Types::DateStatistics

    DeclineInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    DeclineInvitationsRequest.struct_class = Types::DeclineInvitationsRequest

    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    DeclineInvitationsResponse.struct_class = Types::DeclineInvitationsResponse

    DefaultServerSideEncryption.add_member(:encryption_type, Shapes::ShapeRef.new(shape: String, location_name: "encryptionType"))
    DefaultServerSideEncryption.add_member(:kms_master_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsMasterKeyArn"))
    DefaultServerSideEncryption.struct_class = Types::DefaultServerSideEncryption

    DeleteDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteDetectorRequest.struct_class = Types::DeleteDetectorRequest

    DeleteDetectorResponse.struct_class = Types::DeleteDetectorResponse

    DeleteFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "filterName"))
    DeleteFilterRequest.struct_class = Types::DeleteFilterRequest

    DeleteFilterResponse.struct_class = Types::DeleteFilterResponse

    DeleteIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ipSetId"))
    DeleteIPSetRequest.struct_class = Types::DeleteIPSetRequest

    DeleteIPSetResponse.struct_class = Types::DeleteIPSetResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "malwareProtectionPlanId"))
    DeleteMalwareProtectionPlanRequest.struct_class = Types::DeleteMalwareProtectionPlanRequest

    DeleteMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    DeleteMembersRequest.struct_class = Types::DeleteMembersRequest

    DeleteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    DeleteMembersResponse.struct_class = Types::DeleteMembersResponse

    DeletePublishingDestinationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeletePublishingDestinationRequest.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "destinationId"))
    DeletePublishingDestinationRequest.struct_class = Types::DeletePublishingDestinationRequest

    DeletePublishingDestinationResponse.struct_class = Types::DeletePublishingDestinationResponse

    DeleteThreatEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteThreatEntitySetRequest.add_member(:threat_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatEntitySetId"))
    DeleteThreatEntitySetRequest.struct_class = Types::DeleteThreatEntitySetRequest

    DeleteThreatEntitySetResponse.struct_class = Types::DeleteThreatEntitySetResponse

    DeleteThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatIntelSetId"))
    DeleteThreatIntelSetRequest.struct_class = Types::DeleteThreatIntelSetRequest

    DeleteThreatIntelSetResponse.struct_class = Types::DeleteThreatIntelSetResponse

    DeleteTrustedEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DeleteTrustedEntitySetRequest.add_member(:trusted_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "trustedEntitySetId"))
    DeleteTrustedEntitySetRequest.struct_class = Types::DeleteTrustedEntitySetRequest

    DeleteTrustedEntitySetResponse.struct_class = Types::DeleteTrustedEntitySetResponse

    DescribeMalwareScansRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DescribeMalwareScansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeMalwareScansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IntegerValueWithMax, location_name: "maxResults"))
    DescribeMalwareScansRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: FilterCriteria, location_name: "filterCriteria"))
    DescribeMalwareScansRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    DescribeMalwareScansRequest.struct_class = Types::DescribeMalwareScansRequest

    DescribeMalwareScansResponse.add_member(:scans, Shapes::ShapeRef.new(shape: Scans, required: true, location_name: "scans"))
    DescribeMalwareScansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeMalwareScansResponse.struct_class = Types::DescribeMalwareScansResponse

    DescribeOrganizationConfigurationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DescribeOrganizationConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeOrganizationConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    DescribeOrganizationConfigurationRequest.struct_class = Types::DescribeOrganizationConfigurationRequest

    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "autoEnable", metadata: {"deprecatedMessage" => "This field is deprecated, use AutoEnableOrganizationMembers instead"}))
    DescribeOrganizationConfigurationResponse.add_member(:member_account_limit_reached, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "memberAccountLimitReached"))
    DescribeOrganizationConfigurationResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: OrganizationDataSourceConfigurationsResult, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    DescribeOrganizationConfigurationResponse.add_member(:features, Shapes::ShapeRef.new(shape: OrganizationFeaturesConfigurationsResults, location_name: "features"))
    DescribeOrganizationConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable_organization_members, Shapes::ShapeRef.new(shape: AutoEnableMembers, location_name: "autoEnableOrganizationMembers"))
    DescribeOrganizationConfigurationResponse.struct_class = Types::DescribeOrganizationConfigurationResponse

    DescribePublishingDestinationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DescribePublishingDestinationRequest.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "destinationId"))
    DescribePublishingDestinationRequest.struct_class = Types::DescribePublishingDestinationRequest

    DescribePublishingDestinationResponse.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationId"))
    DescribePublishingDestinationResponse.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, required: true, location_name: "destinationType"))
    DescribePublishingDestinationResponse.add_member(:status, Shapes::ShapeRef.new(shape: PublishingStatus, required: true, location_name: "status"))
    DescribePublishingDestinationResponse.add_member(:publishing_failure_start_timestamp, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "publishingFailureStartTimestamp"))
    DescribePublishingDestinationResponse.add_member(:destination_properties, Shapes::ShapeRef.new(shape: DestinationProperties, required: true, location_name: "destinationProperties"))
    DescribePublishingDestinationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribePublishingDestinationResponse.struct_class = Types::DescribePublishingDestinationResponse

    Destination.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationId"))
    Destination.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, required: true, location_name: "destinationType"))
    Destination.add_member(:status, Shapes::ShapeRef.new(shape: PublishingStatus, required: true, location_name: "status"))
    Destination.struct_class = Types::Destination

    DestinationProperties.add_member(:destination_arn, Shapes::ShapeRef.new(shape: String, location_name: "destinationArn"))
    DestinationProperties.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyArn"))
    DestinationProperties.struct_class = Types::DestinationProperties

    Destinations.member = Shapes::ShapeRef.new(shape: Destination)

    Detection.add_member(:anomaly, Shapes::ShapeRef.new(shape: Anomaly, location_name: "anomaly"))
    Detection.add_member(:sequence, Shapes::ShapeRef.new(shape: Sequence, location_name: "sequence"))
    Detection.struct_class = Types::Detection

    DetectorAdditionalConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: FeatureAdditionalConfiguration, location_name: "name"))
    DetectorAdditionalConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    DetectorAdditionalConfiguration.struct_class = Types::DetectorAdditionalConfiguration

    DetectorAdditionalConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: FeatureAdditionalConfiguration, location_name: "name"))
    DetectorAdditionalConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    DetectorAdditionalConfigurationResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DetectorAdditionalConfigurationResult.struct_class = Types::DetectorAdditionalConfigurationResult

    DetectorAdditionalConfigurationResults.member = Shapes::ShapeRef.new(shape: DetectorAdditionalConfigurationResult)

    DetectorAdditionalConfigurations.member = Shapes::ShapeRef.new(shape: DetectorAdditionalConfiguration)

    DetectorFeatureConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DetectorFeature, location_name: "name"))
    DetectorFeatureConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    DetectorFeatureConfiguration.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: DetectorAdditionalConfigurations, location_name: "additionalConfiguration"))
    DetectorFeatureConfiguration.struct_class = Types::DetectorFeatureConfiguration

    DetectorFeatureConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: DetectorFeatureResult, location_name: "name"))
    DetectorFeatureConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    DetectorFeatureConfigurationResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DetectorFeatureConfigurationResult.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: DetectorAdditionalConfigurationResults, location_name: "additionalConfiguration"))
    DetectorFeatureConfigurationResult.struct_class = Types::DetectorFeatureConfigurationResult

    DetectorFeatureConfigurations.member = Shapes::ShapeRef.new(shape: DetectorFeatureConfiguration)

    DetectorFeatureConfigurationsResults.member = Shapes::ShapeRef.new(shape: DetectorFeatureConfigurationResult)

    DetectorIds.member = Shapes::ShapeRef.new(shape: DetectorId)

    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "adminAccountId"))
    DisableOrganizationAdminAccountRequest.struct_class = Types::DisableOrganizationAdminAccountRequest

    DisableOrganizationAdminAccountResponse.struct_class = Types::DisableOrganizationAdminAccountResponse

    DisassociateFromAdministratorAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DisassociateFromAdministratorAccountRequest.struct_class = Types::DisassociateFromAdministratorAccountRequest

    DisassociateFromAdministratorAccountResponse.struct_class = Types::DisassociateFromAdministratorAccountResponse

    DisassociateFromMasterAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    DisassociateMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    DisassociateMembersRequest.struct_class = Types::DisassociateMembersRequest

    DisassociateMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    DisassociateMembersResponse.struct_class = Types::DisassociateMembersResponse

    DnsRequestAction.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    DnsRequestAction.add_member(:protocol, Shapes::ShapeRef.new(shape: String, location_name: "protocol"))
    DnsRequestAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "blocked"))
    DnsRequestAction.add_member(:domain_with_suffix, Shapes::ShapeRef.new(shape: String, location_name: "domainWithSuffix"))
    DnsRequestAction.add_member(:vpc_owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "vpcOwnerAccountId"))
    DnsRequestAction.struct_class = Types::DnsRequestAction

    DomainDetails.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    DomainDetails.struct_class = Types::DomainDetails

    EbsSnapshot.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deviceName"))
    EbsSnapshot.struct_class = Types::EbsSnapshot

    EbsSnapshotDetails.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotArn"))
    EbsSnapshotDetails.struct_class = Types::EbsSnapshotDetails

    EbsVolumeDetails.add_member(:scanned_volume_details, Shapes::ShapeRef.new(shape: VolumeDetails, location_name: "scannedVolumeDetails"))
    EbsVolumeDetails.add_member(:skipped_volume_details, Shapes::ShapeRef.new(shape: VolumeDetails, location_name: "skippedVolumeDetails"))
    EbsVolumeDetails.struct_class = Types::EbsVolumeDetails

    EbsVolumeScanDetails.add_member(:scan_id, Shapes::ShapeRef.new(shape: String, location_name: "scanId"))
    EbsVolumeScanDetails.add_member(:scan_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanStartedAt"))
    EbsVolumeScanDetails.add_member(:scan_completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanCompletedAt"))
    EbsVolumeScanDetails.add_member(:trigger_finding_id, Shapes::ShapeRef.new(shape: String, location_name: "triggerFindingId"))
    EbsVolumeScanDetails.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    EbsVolumeScanDetails.add_member(:scan_detections, Shapes::ShapeRef.new(shape: ScanDetections, location_name: "scanDetections"))
    EbsVolumeScanDetails.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, location_name: "scanType"))
    EbsVolumeScanDetails.struct_class = Types::EbsVolumeScanDetails

    EbsVolumesResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    EbsVolumesResult.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    EbsVolumesResult.struct_class = Types::EbsVolumesResult

    Ec2ImageDetails.add_member(:image_arn, Shapes::ShapeRef.new(shape: String, location_name: "imageArn"))
    Ec2ImageDetails.struct_class = Types::Ec2ImageDetails

    Ec2Instance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    Ec2Instance.add_member(:image_description, Shapes::ShapeRef.new(shape: String, location_name: "imageDescription"))
    Ec2Instance.add_member(:instance_state, Shapes::ShapeRef.new(shape: String, location_name: "instanceState"))
    Ec2Instance.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: IamInstanceProfile, location_name: "IamInstanceProfile"))
    Ec2Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    Ec2Instance.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: String, location_name: "outpostArn"))
    Ec2Instance.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    Ec2Instance.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodes, location_name: "productCodes"))
    Ec2Instance.add_member(:ec2_network_interface_uids, Shapes::ShapeRef.new(shape: Ec2NetworkInterfaceUids, location_name: "ec2NetworkInterfaceUids"))
    Ec2Instance.struct_class = Types::Ec2Instance

    Ec2InstanceUids.member = Shapes::ShapeRef.new(shape: Ec2InstanceUid)

    Ec2NetworkInterface.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "ipv6Addresses"))
    Ec2NetworkInterface.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: "privateIpAddresses"))
    Ec2NetworkInterface.add_member(:public_ip, Shapes::ShapeRef.new(shape: String, location_name: "publicIp"))
    Ec2NetworkInterface.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    Ec2NetworkInterface.add_member(:sub_net_id, Shapes::ShapeRef.new(shape: String, location_name: "subNetId"))
    Ec2NetworkInterface.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    Ec2NetworkInterface.struct_class = Types::Ec2NetworkInterface

    Ec2NetworkInterfaceUids.member = Shapes::ShapeRef.new(shape: String)

    EcsClusterDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EcsClusterDetails.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    EcsClusterDetails.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    EcsClusterDetails.add_member(:active_services_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeServicesCount"))
    EcsClusterDetails.add_member(:registered_container_instances_count, Shapes::ShapeRef.new(shape: Integer, location_name: "registeredContainerInstancesCount"))
    EcsClusterDetails.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTasksCount"))
    EcsClusterDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EcsClusterDetails.add_member(:task_details, Shapes::ShapeRef.new(shape: EcsTaskDetails, location_name: "taskDetails"))
    EcsClusterDetails.struct_class = Types::EcsClusterDetails

    EcsTaskDetails.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    EcsTaskDetails.add_member(:definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "definitionArn"))
    EcsTaskDetails.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    EcsTaskDetails.add_member(:task_created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EcsTaskDetails.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    EcsTaskDetails.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    EcsTaskDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EcsTaskDetails.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    EcsTaskDetails.add_member(:containers, Shapes::ShapeRef.new(shape: Containers, location_name: "containers"))
    EcsTaskDetails.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    EcsTaskDetails.add_member(:launch_type, Shapes::ShapeRef.new(shape: String, location_name: "launchType"))
    EcsTaskDetails.struct_class = Types::EcsTaskDetails

    EksCluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    EksCluster.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EksCluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    EksCluster.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    EksCluster.add_member(:ec2_instance_uids, Shapes::ShapeRef.new(shape: Ec2InstanceUids, location_name: "ec2InstanceUids"))
    EksCluster.struct_class = Types::EksCluster

    EksClusterDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EksClusterDetails.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    EksClusterDetails.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    EksClusterDetails.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    EksClusterDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EksClusterDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EksClusterDetails.struct_class = Types::EksClusterDetails

    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "adminAccountId"))
    EnableOrganizationAdminAccountRequest.struct_class = Types::EnableOrganizationAdminAccountRequest

    EnableOrganizationAdminAccountResponse.struct_class = Types::EnableOrganizationAdminAccountResponse

    EndpointIds.member = Shapes::ShapeRef.new(shape: String)

    Eq.member = Shapes::ShapeRef.new(shape: String)

    Equals.member = Shapes::ShapeRef.new(shape: String)

    Evidence.add_member(:threat_intelligence_details, Shapes::ShapeRef.new(shape: ThreatIntelligenceDetails, location_name: "threatIntelligenceDetails"))
    Evidence.struct_class = Types::Evidence

    FargateDetails.add_member(:issues, Shapes::ShapeRef.new(shape: Issues, location_name: "issues"))
    FargateDetails.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, location_name: "managementType"))
    FargateDetails.struct_class = Types::FargateDetails

    FilePaths.member = Shapes::ShapeRef.new(shape: ScanFilePath)

    FilterCondition.add_member(:equals_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "equalsValue"))
    FilterCondition.add_member(:greater_than, Shapes::ShapeRef.new(shape: LongValue, location_name: "greaterThan"))
    FilterCondition.add_member(:less_than, Shapes::ShapeRef.new(shape: LongValue, location_name: "lessThan"))
    FilterCondition.struct_class = Types::FilterCondition

    FilterCriteria.add_member(:filter_criterion, Shapes::ShapeRef.new(shape: FilterCriterionList, location_name: "filterCriterion"))
    FilterCriteria.struct_class = Types::FilterCriteria

    FilterCriterion.add_member(:criterion_key, Shapes::ShapeRef.new(shape: CriterionKey, location_name: "criterionKey"))
    FilterCriterion.add_member(:filter_condition, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "filterCondition"))
    FilterCriterion.struct_class = Types::FilterCriterion

    FilterCriterionList.member = Shapes::ShapeRef.new(shape: FilterCriterion)

    FilterNames.member = Shapes::ShapeRef.new(shape: FilterName)

    Finding.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    Finding.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    Finding.add_member(:confidence, Shapes::ShapeRef.new(shape: Double, location_name: "confidence"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdAt"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Finding.add_member(:partition, Shapes::ShapeRef.new(shape: String, location_name: "partition"))
    Finding.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    Finding.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    Finding.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    Finding.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "severity"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    Finding.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, required: true, location_name: "type"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: String, required: true, location_name: "updatedAt"))
    Finding.add_member(:associated_attack_sequence_arn, Shapes::ShapeRef.new(shape: String, location_name: "associatedAttackSequenceArn"))
    Finding.struct_class = Types::Finding

    FindingCriteria.add_member(:criterion, Shapes::ShapeRef.new(shape: Criterion, location_name: "criterion"))
    FindingCriteria.struct_class = Types::FindingCriteria

    FindingIds.member = Shapes::ShapeRef.new(shape: FindingId)

    FindingStatisticTypes.member = Shapes::ShapeRef.new(shape: FindingStatisticType)

    FindingStatistics.add_member(:count_by_severity, Shapes::ShapeRef.new(shape: CountBySeverity, deprecated: true, location_name: "countBySeverity", metadata: {"deprecatedMessage" => "This parameter is deprecated. Please set GroupBy to 'SEVERITY' to return GroupedBySeverity instead."}))
    FindingStatistics.add_member(:grouped_by_account, Shapes::ShapeRef.new(shape: GroupedByAccount, location_name: "groupedByAccount"))
    FindingStatistics.add_member(:grouped_by_date, Shapes::ShapeRef.new(shape: GroupedByDate, location_name: "groupedByDate"))
    FindingStatistics.add_member(:grouped_by_finding_type, Shapes::ShapeRef.new(shape: GroupedByFindingType, location_name: "groupedByFindingType"))
    FindingStatistics.add_member(:grouped_by_resource, Shapes::ShapeRef.new(shape: GroupedByResource, location_name: "groupedByResource"))
    FindingStatistics.add_member(:grouped_by_severity, Shapes::ShapeRef.new(shape: GroupedBySeverity, location_name: "groupedBySeverity"))
    FindingStatistics.struct_class = Types::FindingStatistics

    FindingTypeStatistics.add_member(:finding_type, Shapes::ShapeRef.new(shape: String, location_name: "findingType"))
    FindingTypeStatistics.add_member(:last_generated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastGeneratedAt"))
    FindingTypeStatistics.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    FindingTypeStatistics.struct_class = Types::FindingTypeStatistics

    FindingTypes.member = Shapes::ShapeRef.new(shape: FindingType)

    Findings.member = Shapes::ShapeRef.new(shape: Finding)

    FlagsList.member = Shapes::ShapeRef.new(shape: String)

    FlowLogsConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    FlowLogsConfigurationResult.struct_class = Types::FlowLogsConfigurationResult

    FreeTrialFeatureConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: FreeTrialFeatureResult, location_name: "name"))
    FreeTrialFeatureConfigurationResult.add_member(:free_trial_days_remaining, Shapes::ShapeRef.new(shape: Integer, location_name: "freeTrialDaysRemaining"))
    FreeTrialFeatureConfigurationResult.struct_class = Types::FreeTrialFeatureConfigurationResult

    FreeTrialFeatureConfigurationsResults.member = Shapes::ShapeRef.new(shape: FreeTrialFeatureConfigurationResult)

    GeoLocation.add_member(:lat, Shapes::ShapeRef.new(shape: Double, location_name: "lat"))
    GeoLocation.add_member(:lon, Shapes::ShapeRef.new(shape: Double, location_name: "lon"))
    GeoLocation.struct_class = Types::GeoLocation

    GetAdministratorAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetAdministratorAccountRequest.struct_class = Types::GetAdministratorAccountRequest

    GetAdministratorAccountResponse.add_member(:administrator, Shapes::ShapeRef.new(shape: Administrator, required: true, location_name: "administrator"))
    GetAdministratorAccountResponse.struct_class = Types::GetAdministratorAccountResponse

    GetCoverageStatisticsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetCoverageStatisticsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: "filterCriteria"))
    GetCoverageStatisticsRequest.add_member(:statistics_type, Shapes::ShapeRef.new(shape: CoverageStatisticsTypeList, required: true, location_name: "statisticsType"))
    GetCoverageStatisticsRequest.struct_class = Types::GetCoverageStatisticsRequest

    GetCoverageStatisticsResponse.add_member(:coverage_statistics, Shapes::ShapeRef.new(shape: CoverageStatistics, location_name: "coverageStatistics"))
    GetCoverageStatisticsResponse.struct_class = Types::GetCoverageStatisticsResponse

    GetDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetDetectorRequest.struct_class = Types::GetDetectorRequest

    GetDetectorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: String, location_name: "createdAt"))
    GetDetectorResponse.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    GetDetectorResponse.add_member(:service_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceRole"))
    GetDetectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: DetectorStatus, required: true, location_name: "status"))
    GetDetectorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: String, location_name: "updatedAt"))
    GetDetectorResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigurationsResult, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    GetDetectorResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDetectorResponse.add_member(:features, Shapes::ShapeRef.new(shape: DetectorFeatureConfigurationsResults, location_name: "features"))
    GetDetectorResponse.struct_class = Types::GetDetectorResponse

    GetFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "filterName"))
    GetFilterRequest.struct_class = Types::GetFilterRequest

    GetFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    GetFilterResponse.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    GetFilterResponse.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, required: true, location_name: "action"))
    GetFilterResponse.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    GetFilterResponse.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, required: true, location_name: "findingCriteria"))
    GetFilterResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFilterResponse.struct_class = Types::GetFilterResponse

    GetFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, required: true, location_name: "findingIds"))
    GetFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, required: true, location_name: "findings"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetFindingsStatisticsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetFindingsStatisticsRequest.add_member(:finding_statistic_types, Shapes::ShapeRef.new(shape: FindingStatisticTypes, deprecated: true, location_name: "findingStatisticTypes", metadata: {"deprecatedMessage" => "This parameter is deprecated, please use GroupBy instead"}))
    GetFindingsStatisticsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    GetFindingsStatisticsRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupByType, location_name: "groupBy"))
    GetFindingsStatisticsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    GetFindingsStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults100, location_name: "maxResults"))
    GetFindingsStatisticsRequest.struct_class = Types::GetFindingsStatisticsRequest

    GetFindingsStatisticsResponse.add_member(:finding_statistics, Shapes::ShapeRef.new(shape: FindingStatistics, required: true, location_name: "findingStatistics"))
    GetFindingsStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetFindingsStatisticsResponse.struct_class = Types::GetFindingsStatisticsResponse

    GetIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ipSetId"))
    GetIPSetRequest.struct_class = Types::GetIPSetRequest

    GetIPSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetIPSetResponse.add_member(:format, Shapes::ShapeRef.new(shape: IpSetFormat, required: true, location_name: "format"))
    GetIPSetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    GetIPSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: IpSetStatus, required: true, location_name: "status"))
    GetIPSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetIPSetResponse.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    GetIPSetResponse.struct_class = Types::GetIPSetResponse

    GetInvitationsCountRequest.struct_class = Types::GetInvitationsCountRequest

    GetInvitationsCountResponse.add_member(:invitations_count, Shapes::ShapeRef.new(shape: Integer, location_name: "invitationsCount"))
    GetInvitationsCountResponse.struct_class = Types::GetInvitationsCountResponse

    GetMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "malwareProtectionPlanId"))
    GetMalwareProtectionPlanRequest.struct_class = Types::GetMalwareProtectionPlanRequest

    GetMalwareProtectionPlanResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    GetMalwareProtectionPlanResponse.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    GetMalwareProtectionPlanResponse.add_member(:protected_resource, Shapes::ShapeRef.new(shape: CreateProtectedResource, location_name: "protectedResource"))
    GetMalwareProtectionPlanResponse.add_member(:actions, Shapes::ShapeRef.new(shape: MalwareProtectionPlanActions, location_name: "actions"))
    GetMalwareProtectionPlanResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetMalwareProtectionPlanResponse.add_member(:status, Shapes::ShapeRef.new(shape: MalwareProtectionPlanStatus, location_name: "status"))
    GetMalwareProtectionPlanResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: MalwareProtectionPlanStatusReasonsList, location_name: "statusReasons"))
    GetMalwareProtectionPlanResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMalwareProtectionPlanResponse.struct_class = Types::GetMalwareProtectionPlanResponse

    GetMalwareScanRequest.add_member(:scan_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "scanId"))
    GetMalwareScanRequest.struct_class = Types::GetMalwareScanRequest

    GetMalwareScanResponse.add_member(:scan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scanId"))
    GetMalwareScanResponse.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    GetMalwareScanResponse.add_member(:admin_detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "adminDetectorId"))
    GetMalwareScanResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn"))
    GetMalwareScanResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: MalwareProtectionResourceType, location_name: "resourceType"))
    GetMalwareScanResponse.add_member(:scanned_resources_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "scannedResourcesCount"))
    GetMalwareScanResponse.add_member(:skipped_resources_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "skippedResourcesCount"))
    GetMalwareScanResponse.add_member(:failed_resources_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "failedResourcesCount"))
    GetMalwareScanResponse.add_member(:scanned_resources, Shapes::ShapeRef.new(shape: ScannedResources, location_name: "scannedResources"))
    GetMalwareScanResponse.add_member(:scan_configuration, Shapes::ShapeRef.new(shape: ScanConfiguration, location_name: "scanConfiguration"))
    GetMalwareScanResponse.add_member(:scan_category, Shapes::ShapeRef.new(shape: ScanCategory, location_name: "scanCategory"))
    GetMalwareScanResponse.add_member(:scan_status, Shapes::ShapeRef.new(shape: MalwareProtectionScanStatus, location_name: "scanStatus"))
    GetMalwareScanResponse.add_member(:scan_status_reason, Shapes::ShapeRef.new(shape: ScanStatusReason, location_name: "scanStatusReason"))
    GetMalwareScanResponse.add_member(:scan_type, Shapes::ShapeRef.new(shape: MalwareProtectionScanType, location_name: "scanType"))
    GetMalwareScanResponse.add_member(:scan_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanStartedAt"))
    GetMalwareScanResponse.add_member(:scan_completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanCompletedAt"))
    GetMalwareScanResponse.add_member(:scan_result_details, Shapes::ShapeRef.new(shape: GetMalwareScanResultDetails, location_name: "scanResultDetails"))
    GetMalwareScanResponse.struct_class = Types::GetMalwareScanResponse

    GetMalwareScanResultDetails.add_member(:scan_result_status, Shapes::ShapeRef.new(shape: ScanResultStatus, location_name: "scanResultStatus"))
    GetMalwareScanResultDetails.add_member(:skipped_file_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "skippedFileCount"))
    GetMalwareScanResultDetails.add_member(:failed_file_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "failedFileCount"))
    GetMalwareScanResultDetails.add_member(:threat_found_file_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "threatFoundFileCount"))
    GetMalwareScanResultDetails.add_member(:total_file_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "totalFileCount"))
    GetMalwareScanResultDetails.add_member(:total_bytes, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "totalBytes"))
    GetMalwareScanResultDetails.add_member(:unique_threat_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "uniqueThreatCount"))
    GetMalwareScanResultDetails.add_member(:threats, Shapes::ShapeRef.new(shape: ScanResultThreats, location_name: "threats"))
    GetMalwareScanResultDetails.struct_class = Types::GetMalwareScanResultDetails

    GetMalwareScanSettingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetMalwareScanSettingsRequest.struct_class = Types::GetMalwareScanSettingsRequest

    GetMalwareScanSettingsResponse.add_member(:scan_resource_criteria, Shapes::ShapeRef.new(shape: ScanResourceCriteria, location_name: "scanResourceCriteria"))
    GetMalwareScanSettingsResponse.add_member(:ebs_snapshot_preservation, Shapes::ShapeRef.new(shape: EbsSnapshotPreservation, location_name: "ebsSnapshotPreservation"))
    GetMalwareScanSettingsResponse.struct_class = Types::GetMalwareScanSettingsResponse

    GetMasterAccountRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetMasterAccountRequest.struct_class = Types::GetMasterAccountRequest

    GetMasterAccountResponse.add_member(:master, Shapes::ShapeRef.new(shape: Master, required: true, location_name: "master"))
    GetMasterAccountResponse.struct_class = Types::GetMasterAccountResponse

    GetMemberDetectorsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetMemberDetectorsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    GetMemberDetectorsRequest.struct_class = Types::GetMemberDetectorsRequest

    GetMemberDetectorsResponse.add_member(:member_data_source_configurations, Shapes::ShapeRef.new(shape: MemberDataSourceConfigurations, required: true, location_name: "members"))
    GetMemberDetectorsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    GetMemberDetectorsResponse.struct_class = Types::GetMemberDetectorsResponse

    GetMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    GetMembersRequest.struct_class = Types::GetMembersRequest

    GetMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: Members, required: true, location_name: "members"))
    GetMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    GetMembersResponse.struct_class = Types::GetMembersResponse

    GetOrganizationStatisticsResponse.add_member(:organization_details, Shapes::ShapeRef.new(shape: OrganizationDetails, location_name: "organizationDetails"))
    GetOrganizationStatisticsResponse.struct_class = Types::GetOrganizationStatisticsResponse

    GetRemainingFreeTrialDaysRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetRemainingFreeTrialDaysRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    GetRemainingFreeTrialDaysRequest.struct_class = Types::GetRemainingFreeTrialDaysRequest

    GetRemainingFreeTrialDaysResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountFreeTrialInfos, location_name: "accounts"))
    GetRemainingFreeTrialDaysResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, location_name: "unprocessedAccounts"))
    GetRemainingFreeTrialDaysResponse.struct_class = Types::GetRemainingFreeTrialDaysResponse

    GetThreatEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetThreatEntitySetRequest.add_member(:threat_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatEntitySetId"))
    GetThreatEntitySetRequest.struct_class = Types::GetThreatEntitySetRequest

    GetThreatEntitySetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetThreatEntitySetResponse.add_member(:format, Shapes::ShapeRef.new(shape: ThreatEntitySetFormat, required: true, location_name: "format"))
    GetThreatEntitySetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    GetThreatEntitySetResponse.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    GetThreatEntitySetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ThreatEntitySetStatus, required: true, location_name: "status"))
    GetThreatEntitySetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetThreatEntitySetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetThreatEntitySetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetThreatEntitySetResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    GetThreatEntitySetResponse.struct_class = Types::GetThreatEntitySetResponse

    GetThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatIntelSetId"))
    GetThreatIntelSetRequest.struct_class = Types::GetThreatIntelSetRequest

    GetThreatIntelSetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetThreatIntelSetResponse.add_member(:format, Shapes::ShapeRef.new(shape: ThreatIntelSetFormat, required: true, location_name: "format"))
    GetThreatIntelSetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    GetThreatIntelSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ThreatIntelSetStatus, required: true, location_name: "status"))
    GetThreatIntelSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetThreatIntelSetResponse.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    GetThreatIntelSetResponse.struct_class = Types::GetThreatIntelSetResponse

    GetTrustedEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetTrustedEntitySetRequest.add_member(:trusted_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "trustedEntitySetId"))
    GetTrustedEntitySetRequest.struct_class = Types::GetTrustedEntitySetRequest

    GetTrustedEntitySetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    GetTrustedEntitySetResponse.add_member(:format, Shapes::ShapeRef.new(shape: TrustedEntitySetFormat, required: true, location_name: "format"))
    GetTrustedEntitySetResponse.add_member(:location, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "location"))
    GetTrustedEntitySetResponse.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    GetTrustedEntitySetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TrustedEntitySetStatus, required: true, location_name: "status"))
    GetTrustedEntitySetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTrustedEntitySetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetTrustedEntitySetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetTrustedEntitySetResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: String, location_name: "errorDetails"))
    GetTrustedEntitySetResponse.struct_class = Types::GetTrustedEntitySetResponse

    GetUsageStatisticsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    GetUsageStatisticsRequest.add_member(:usage_statistic_type, Shapes::ShapeRef.new(shape: UsageStatisticType, required: true, location_name: "usageStatisticsType"))
    GetUsageStatisticsRequest.add_member(:usage_criteria, Shapes::ShapeRef.new(shape: UsageCriteria, required: true, location_name: "usageCriteria"))
    GetUsageStatisticsRequest.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    GetUsageStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetUsageStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetUsageStatisticsRequest.struct_class = Types::GetUsageStatisticsRequest

    GetUsageStatisticsResponse.add_member(:usage_statistics, Shapes::ShapeRef.new(shape: UsageStatistics, location_name: "usageStatistics"))
    GetUsageStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetUsageStatisticsResponse.struct_class = Types::GetUsageStatisticsResponse

    GroupedByAccount.member = Shapes::ShapeRef.new(shape: AccountStatistics)

    GroupedByDate.member = Shapes::ShapeRef.new(shape: DateStatistics)

    GroupedByFindingType.member = Shapes::ShapeRef.new(shape: FindingTypeStatistics)

    GroupedByResource.member = Shapes::ShapeRef.new(shape: ResourceStatistics)

    GroupedBySeverity.member = Shapes::ShapeRef.new(shape: SeverityStatistics)

    Groups.member = Shapes::ShapeRef.new(shape: String)

    HighestSeverityThreatDetails.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "severity"))
    HighestSeverityThreatDetails.add_member(:threat_name, Shapes::ShapeRef.new(shape: String, location_name: "threatName"))
    HighestSeverityThreatDetails.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    HighestSeverityThreatDetails.struct_class = Types::HighestSeverityThreatDetails

    HostPath.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HostPath.struct_class = Types::HostPath

    IamInstanceProfile.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    IamInstanceProfile.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    IamInstanceProfile.struct_class = Types::IamInstanceProfile

    ImpersonatedUser.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    ImpersonatedUser.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "groups"))
    ImpersonatedUser.struct_class = Types::ImpersonatedUser

    IncrementalScanDetails.add_member(:baseline_resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "baselineResourceArn"))
    IncrementalScanDetails.struct_class = Types::IncrementalScanDetails

    Indicator.add_member(:key, Shapes::ShapeRef.new(shape: IndicatorType, required: true, location_name: "key"))
    Indicator.add_member(:values, Shapes::ShapeRef.new(shape: IndicatorValues, location_name: "values"))
    Indicator.add_member(:title, Shapes::ShapeRef.new(shape: IndicatorTitle, location_name: "title"))
    Indicator.struct_class = Types::Indicator

    IndicatorValues.member = Shapes::ShapeRef.new(shape: IndicatorValueString)

    Indicators.member = Shapes::ShapeRef.new(shape: Indicator)

    InstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    InstanceDetails.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: IamInstanceProfile, location_name: "iamInstanceProfile"))
    InstanceDetails.add_member(:image_description, Shapes::ShapeRef.new(shape: String, location_name: "imageDescription"))
    InstanceDetails.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "imageId"))
    InstanceDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    InstanceDetails.add_member(:instance_state, Shapes::ShapeRef.new(shape: String, location_name: "instanceState"))
    InstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    InstanceDetails.add_member(:outpost_arn, Shapes::ShapeRef.new(shape: String, location_name: "outpostArn"))
    InstanceDetails.add_member(:launch_time, Shapes::ShapeRef.new(shape: String, location_name: "launchTime"))
    InstanceDetails.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    InstanceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    InstanceDetails.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodes, location_name: "productCodes"))
    InstanceDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InstanceDetails.struct_class = Types::InstanceDetails

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "__type"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    Invitation.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: String, location_name: "invitationId"))
    Invitation.add_member(:relationship_status, Shapes::ShapeRef.new(shape: String, location_name: "relationshipStatus"))
    Invitation.add_member(:invited_at, Shapes::ShapeRef.new(shape: String, location_name: "invitedAt"))
    Invitation.struct_class = Types::Invitation

    Invitations.member = Shapes::ShapeRef.new(shape: Invitation)

    InviteMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    InviteMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    InviteMembersRequest.add_member(:disable_email_notification, Shapes::ShapeRef.new(shape: Boolean, location_name: "disableEmailNotification"))
    InviteMembersRequest.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InviteMembersRequest.struct_class = Types::InviteMembersRequest

    InviteMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    InviteMembersResponse.struct_class = Types::InviteMembersResponse

    IpSetIds.member = Shapes::ShapeRef.new(shape: String)

    Ipv6Addresses.member = Shapes::ShapeRef.new(shape: String)

    Issues.member = Shapes::ShapeRef.new(shape: String)

    ItemDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn"))
    ItemDetails.add_member(:item_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "itemPath"))
    ItemDetails.add_member(:hash, Shapes::ShapeRef.new(shape: String, location_name: "hash"))
    ItemDetails.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfo, location_name: "additionalInfo"))
    ItemDetails.struct_class = Types::ItemDetails

    ItemDetailsList.member = Shapes::ShapeRef.new(shape: ItemDetails)

    ItemPath.add_member(:nested_item_path, Shapes::ShapeRef.new(shape: String, location_name: "nestedItemPath"))
    ItemPath.add_member(:hash, Shapes::ShapeRef.new(shape: String, location_name: "hash"))
    ItemPath.struct_class = Types::ItemPath

    ItemPaths.member = Shapes::ShapeRef.new(shape: ItemPath)

    KubernetesApiCallAction.add_member(:request_uri, Shapes::ShapeRef.new(shape: String, location_name: "requestUri"))
    KubernetesApiCallAction.add_member(:verb, Shapes::ShapeRef.new(shape: String, location_name: "verb"))
    KubernetesApiCallAction.add_member(:source_ips, Shapes::ShapeRef.new(shape: SourceIps, location_name: "sourceIPs"))
    KubernetesApiCallAction.add_member(:user_agent, Shapes::ShapeRef.new(shape: String, location_name: "userAgent"))
    KubernetesApiCallAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    KubernetesApiCallAction.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "statusCode"))
    KubernetesApiCallAction.add_member(:parameters, Shapes::ShapeRef.new(shape: String, location_name: "parameters"))
    KubernetesApiCallAction.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    KubernetesApiCallAction.add_member(:subresource, Shapes::ShapeRef.new(shape: String, location_name: "subresource"))
    KubernetesApiCallAction.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    KubernetesApiCallAction.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    KubernetesApiCallAction.struct_class = Types::KubernetesApiCallAction

    KubernetesAuditLogsConfiguration.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enable"))
    KubernetesAuditLogsConfiguration.struct_class = Types::KubernetesAuditLogsConfiguration

    KubernetesAuditLogsConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    KubernetesAuditLogsConfigurationResult.struct_class = Types::KubernetesAuditLogsConfigurationResult

    KubernetesConfiguration.add_member(:audit_logs, Shapes::ShapeRef.new(shape: KubernetesAuditLogsConfiguration, required: true, location_name: "auditLogs"))
    KubernetesConfiguration.struct_class = Types::KubernetesConfiguration

    KubernetesConfigurationResult.add_member(:audit_logs, Shapes::ShapeRef.new(shape: KubernetesAuditLogsConfigurationResult, required: true, location_name: "auditLogs"))
    KubernetesConfigurationResult.struct_class = Types::KubernetesConfigurationResult

    KubernetesDataSourceFreeTrial.add_member(:audit_logs, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "auditLogs"))
    KubernetesDataSourceFreeTrial.struct_class = Types::KubernetesDataSourceFreeTrial

    KubernetesDetails.add_member(:kubernetes_user_details, Shapes::ShapeRef.new(shape: KubernetesUserDetails, location_name: "kubernetesUserDetails"))
    KubernetesDetails.add_member(:kubernetes_workload_details, Shapes::ShapeRef.new(shape: KubernetesWorkloadDetails, location_name: "kubernetesWorkloadDetails"))
    KubernetesDetails.struct_class = Types::KubernetesDetails

    KubernetesPermissionCheckedDetails.add_member(:verb, Shapes::ShapeRef.new(shape: String, location_name: "verb"))
    KubernetesPermissionCheckedDetails.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    KubernetesPermissionCheckedDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    KubernetesPermissionCheckedDetails.add_member(:allowed, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowed"))
    KubernetesPermissionCheckedDetails.struct_class = Types::KubernetesPermissionCheckedDetails

    KubernetesRoleBindingDetails.add_member(:kind, Shapes::ShapeRef.new(shape: String, location_name: "kind"))
    KubernetesRoleBindingDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KubernetesRoleBindingDetails.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    KubernetesRoleBindingDetails.add_member(:role_ref_name, Shapes::ShapeRef.new(shape: String, location_name: "roleRefName"))
    KubernetesRoleBindingDetails.add_member(:role_ref_kind, Shapes::ShapeRef.new(shape: String, location_name: "roleRefKind"))
    KubernetesRoleBindingDetails.struct_class = Types::KubernetesRoleBindingDetails

    KubernetesRoleDetails.add_member(:kind, Shapes::ShapeRef.new(shape: String, location_name: "kind"))
    KubernetesRoleDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KubernetesRoleDetails.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    KubernetesRoleDetails.struct_class = Types::KubernetesRoleDetails

    KubernetesUserDetails.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    KubernetesUserDetails.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    KubernetesUserDetails.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "groups"))
    KubernetesUserDetails.add_member(:session_name, Shapes::ShapeRef.new(shape: SessionNameList, location_name: "sessionName"))
    KubernetesUserDetails.add_member(:impersonated_user, Shapes::ShapeRef.new(shape: ImpersonatedUser, location_name: "impersonatedUser"))
    KubernetesUserDetails.struct_class = Types::KubernetesUserDetails

    KubernetesWorkload.add_member(:container_uids, Shapes::ShapeRef.new(shape: ContainerUids, location_name: "containerUids"))
    KubernetesWorkload.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    KubernetesWorkload.add_member(:kubernetes_resources_types, Shapes::ShapeRef.new(shape: KubernetesResourcesTypes, location_name: "type"))
    KubernetesWorkload.struct_class = Types::KubernetesWorkload

    KubernetesWorkloadDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KubernetesWorkloadDetails.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    KubernetesWorkloadDetails.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    KubernetesWorkloadDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    KubernetesWorkloadDetails.add_member(:host_network, Shapes::ShapeRef.new(shape: Boolean, location_name: "hostNetwork"))
    KubernetesWorkloadDetails.add_member(:containers, Shapes::ShapeRef.new(shape: Containers, location_name: "containers"))
    KubernetesWorkloadDetails.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    KubernetesWorkloadDetails.add_member(:service_account_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccountName"))
    KubernetesWorkloadDetails.add_member(:host_ipc, Shapes::ShapeRef.new(shape: Boolean, location_name: "hostIPC"))
    KubernetesWorkloadDetails.add_member(:host_pid, Shapes::ShapeRef.new(shape: Boolean, location_name: "hostPID"))
    KubernetesWorkloadDetails.struct_class = Types::KubernetesWorkloadDetails

    LambdaDetails.add_member(:function_arn, Shapes::ShapeRef.new(shape: String, location_name: "functionArn"))
    LambdaDetails.add_member(:function_name, Shapes::ShapeRef.new(shape: String, location_name: "functionName"))
    LambdaDetails.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    LambdaDetails.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedAt"))
    LambdaDetails.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    LambdaDetails.add_member(:function_version, Shapes::ShapeRef.new(shape: String, location_name: "functionVersion"))
    LambdaDetails.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    LambdaDetails.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    LambdaDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    LambdaDetails.struct_class = Types::LambdaDetails

    Lineage.member = Shapes::ShapeRef.new(shape: LineageObject)

    LineageObject.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    LineageObject.add_member(:namespace_pid, Shapes::ShapeRef.new(shape: Integer, location_name: "namespacePid"))
    LineageObject.add_member(:user_id, Shapes::ShapeRef.new(shape: Integer, location_name: "userId"))
    LineageObject.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    LineageObject.add_member(:pid, Shapes::ShapeRef.new(shape: Integer, location_name: "pid"))
    LineageObject.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "uuid"))
    LineageObject.add_member(:executable_path, Shapes::ShapeRef.new(shape: String, location_name: "executablePath"))
    LineageObject.add_member(:euid, Shapes::ShapeRef.new(shape: Integer, location_name: "euid"))
    LineageObject.add_member(:parent_uuid, Shapes::ShapeRef.new(shape: String, location_name: "parentUuid"))
    LineageObject.struct_class = Types::LineageObject

    ListCoverageRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListCoverageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCoverageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCoverageRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: CoverageFilterCriteria, location_name: "filterCriteria"))
    ListCoverageRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: CoverageSortCriteria, location_name: "sortCriteria"))
    ListCoverageRequest.struct_class = Types::ListCoverageRequest

    ListCoverageResponse.add_member(:resources, Shapes::ShapeRef.new(shape: CoverageResources, required: true, location_name: "resources"))
    ListCoverageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCoverageResponse.struct_class = Types::ListCoverageResponse

    ListDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDetectorsRequest.struct_class = Types::ListDetectorsRequest

    ListDetectorsResponse.add_member(:detector_ids, Shapes::ShapeRef.new(shape: DetectorIds, required: true, location_name: "detectorIds"))
    ListDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDetectorsResponse.struct_class = Types::ListDetectorsResponse

    ListFiltersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFiltersRequest.struct_class = Types::ListFiltersRequest

    ListFiltersResponse.add_member(:filter_names, Shapes::ShapeRef.new(shape: FilterNames, required: true, location_name: "filterNames"))
    ListFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFiltersResponse.struct_class = Types::ListFiltersResponse

    ListFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListFindingsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    ListFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, required: true, location_name: "findingIds"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListIPSetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListIPSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIPSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListIPSetsRequest.struct_class = Types::ListIPSetsRequest

    ListIPSetsResponse.add_member(:ip_set_ids, Shapes::ShapeRef.new(shape: IpSetIds, required: true, location_name: "ipSetIds"))
    ListIPSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIPSetsResponse.struct_class = Types::ListIPSetsResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: Invitations, location_name: "invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListMalwareProtectionPlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMalwareProtectionPlansRequest.struct_class = Types::ListMalwareProtectionPlansRequest

    ListMalwareProtectionPlansResponse.add_member(:malware_protection_plans, Shapes::ShapeRef.new(shape: MalwareProtectionPlansSummary, location_name: "malwareProtectionPlans"))
    ListMalwareProtectionPlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMalwareProtectionPlansResponse.struct_class = Types::ListMalwareProtectionPlansResponse

    ListMalwareScansFilterCriteria.add_member(:list_malware_scans_filter_criterion, Shapes::ShapeRef.new(shape: ListMalwareScansFilterCriterionList, location_name: "filterCriterion"))
    ListMalwareScansFilterCriteria.struct_class = Types::ListMalwareScansFilterCriteria

    ListMalwareScansFilterCriterion.add_member(:list_malware_scans_criterion_key, Shapes::ShapeRef.new(shape: ListMalwareScansCriterionKey, location_name: "criterionKey"))
    ListMalwareScansFilterCriterion.add_member(:filter_condition, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "filterCondition"))
    ListMalwareScansFilterCriterion.struct_class = Types::ListMalwareScansFilterCriterion

    ListMalwareScansFilterCriterionList.member = Shapes::ShapeRef.new(shape: ListMalwareScansFilterCriterion)

    ListMalwareScansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMalwareScansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMalwareScansRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ListMalwareScansFilterCriteria, location_name: "filterCriteria"))
    ListMalwareScansRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    ListMalwareScansRequest.struct_class = Types::ListMalwareScansRequest

    ListMalwareScansResponse.add_member(:scans, Shapes::ShapeRef.new(shape: MalwareScans, required: true, location_name: "scans"))
    ListMalwareScansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMalwareScansResponse.struct_class = Types::ListMalwareScansResponse

    ListMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "onlyAssociated"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListOrganizationAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListOrganizationAdminAccountsRequest.struct_class = Types::ListOrganizationAdminAccountsRequest

    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: AdminAccounts, location_name: "adminAccounts"))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOrganizationAdminAccountsResponse.struct_class = Types::ListOrganizationAdminAccountsResponse

    ListPublishingDestinationsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListPublishingDestinationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPublishingDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListPublishingDestinationsRequest.struct_class = Types::ListPublishingDestinationsRequest

    ListPublishingDestinationsResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, required: true, location_name: "destinations"))
    ListPublishingDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPublishingDestinationsResponse.struct_class = Types::ListPublishingDestinationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GuardDutyArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListThreatEntitySetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListThreatEntitySetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListThreatEntitySetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListThreatEntitySetsRequest.struct_class = Types::ListThreatEntitySetsRequest

    ListThreatEntitySetsResponse.add_member(:threat_entity_set_ids, Shapes::ShapeRef.new(shape: ThreatEntitySetIds, required: true, location_name: "threatEntitySetIds"))
    ListThreatEntitySetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListThreatEntitySetsResponse.struct_class = Types::ListThreatEntitySetsResponse

    ListThreatIntelSetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListThreatIntelSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListThreatIntelSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListThreatIntelSetsRequest.struct_class = Types::ListThreatIntelSetsRequest

    ListThreatIntelSetsResponse.add_member(:threat_intel_set_ids, Shapes::ShapeRef.new(shape: ThreatIntelSetIds, required: true, location_name: "threatIntelSetIds"))
    ListThreatIntelSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListThreatIntelSetsResponse.struct_class = Types::ListThreatIntelSetsResponse

    ListTrustedEntitySetsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    ListTrustedEntitySetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTrustedEntitySetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListTrustedEntitySetsRequest.struct_class = Types::ListTrustedEntitySetsRequest

    ListTrustedEntitySetsResponse.add_member(:trusted_entity_set_ids, Shapes::ShapeRef.new(shape: TrustedEntitySetIds, required: true, location_name: "trustedEntitySetIds"))
    ListTrustedEntitySetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTrustedEntitySetsResponse.struct_class = Types::ListTrustedEntitySetsResponse

    LocalIpDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "ipAddressV4"))
    LocalIpDetails.add_member(:ip_address_v6, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "ipAddressV6"))
    LocalIpDetails.struct_class = Types::LocalIpDetails

    LocalPortDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    LocalPortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: String, location_name: "portName"))
    LocalPortDetails.struct_class = Types::LocalPortDetails

    LoginAttribute.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    LoginAttribute.add_member(:application, Shapes::ShapeRef.new(shape: String, location_name: "application"))
    LoginAttribute.add_member(:failed_login_attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "failedLoginAttempts"))
    LoginAttribute.add_member(:successful_login_attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "successfulLoginAttempts"))
    LoginAttribute.struct_class = Types::LoginAttribute

    LoginAttributes.member = Shapes::ShapeRef.new(shape: LoginAttribute)

    MalwareProtectionConfiguration.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: ScanEc2InstanceWithFindings, location_name: "scanEc2InstanceWithFindings"))
    MalwareProtectionConfiguration.struct_class = Types::MalwareProtectionConfiguration

    MalwareProtectionConfigurationResult.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: ScanEc2InstanceWithFindingsResult, location_name: "scanEc2InstanceWithFindings"))
    MalwareProtectionConfigurationResult.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "serviceRole"))
    MalwareProtectionConfigurationResult.struct_class = Types::MalwareProtectionConfigurationResult

    MalwareProtectionDataSourceFreeTrial.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: DataSourceFreeTrial, location_name: "scanEc2InstanceWithFindings"))
    MalwareProtectionDataSourceFreeTrial.struct_class = Types::MalwareProtectionDataSourceFreeTrial

    MalwareProtectionFindingsScanConfiguration.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "triggerType"))
    MalwareProtectionFindingsScanConfiguration.add_member(:incremental_scan_details, Shapes::ShapeRef.new(shape: IncrementalScanDetails, location_name: "incrementalScanDetails"))
    MalwareProtectionFindingsScanConfiguration.struct_class = Types::MalwareProtectionFindingsScanConfiguration

    MalwareProtectionPlanActions.add_member(:tagging, Shapes::ShapeRef.new(shape: MalwareProtectionPlanTaggingAction, location_name: "tagging"))
    MalwareProtectionPlanActions.struct_class = Types::MalwareProtectionPlanActions

    MalwareProtectionPlanObjectPrefixesList.member = Shapes::ShapeRef.new(shape: String)

    MalwareProtectionPlanStatusReason.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    MalwareProtectionPlanStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    MalwareProtectionPlanStatusReason.struct_class = Types::MalwareProtectionPlanStatusReason

    MalwareProtectionPlanStatusReasonsList.member = Shapes::ShapeRef.new(shape: MalwareProtectionPlanStatusReason)

    MalwareProtectionPlanSummary.add_member(:malware_protection_plan_id, Shapes::ShapeRef.new(shape: String, location_name: "malwareProtectionPlanId"))
    MalwareProtectionPlanSummary.struct_class = Types::MalwareProtectionPlanSummary

    MalwareProtectionPlanTaggingAction.add_member(:status, Shapes::ShapeRef.new(shape: MalwareProtectionPlanTaggingActionStatus, location_name: "status"))
    MalwareProtectionPlanTaggingAction.struct_class = Types::MalwareProtectionPlanTaggingAction

    MalwareProtectionPlansSummary.member = Shapes::ShapeRef.new(shape: MalwareProtectionPlanSummary)

    MalwareScan.add_member(:resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn"))
    MalwareScan.add_member(:resource_type, Shapes::ShapeRef.new(shape: MalwareProtectionResourceType, location_name: "resourceType"))
    MalwareScan.add_member(:scan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scanId"))
    MalwareScan.add_member(:scan_status, Shapes::ShapeRef.new(shape: MalwareProtectionScanStatus, location_name: "scanStatus"))
    MalwareScan.add_member(:scan_result_status, Shapes::ShapeRef.new(shape: ScanResultStatus, location_name: "scanResultStatus"))
    MalwareScan.add_member(:scan_type, Shapes::ShapeRef.new(shape: MalwareProtectionScanType, location_name: "scanType"))
    MalwareScan.add_member(:scan_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanStartedAt"))
    MalwareScan.add_member(:scan_completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanCompletedAt"))
    MalwareScan.struct_class = Types::MalwareScan

    MalwareScanDetails.add_member(:threats, Shapes::ShapeRef.new(shape: Threats, location_name: "threats"))
    MalwareScanDetails.add_member(:scan_id, Shapes::ShapeRef.new(shape: String, location_name: "scanId"))
    MalwareScanDetails.add_member(:scan_type, Shapes::ShapeRef.new(shape: MalwareProtectionScanType, location_name: "scanType"))
    MalwareScanDetails.add_member(:scan_category, Shapes::ShapeRef.new(shape: ScanCategory, location_name: "scanCategory"))
    MalwareScanDetails.add_member(:scan_configuration, Shapes::ShapeRef.new(shape: MalwareProtectionFindingsScanConfiguration, location_name: "scanConfiguration"))
    MalwareScanDetails.add_member(:unique_threat_count, Shapes::ShapeRef.new(shape: Integer, location_name: "uniqueThreatCount"))
    MalwareScanDetails.struct_class = Types::MalwareScanDetails

    MalwareScans.member = Shapes::ShapeRef.new(shape: MalwareScan)

    MapEquals.member = Shapes::ShapeRef.new(shape: ScanConditionPair)

    Master.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Master.add_member(:invitation_id, Shapes::ShapeRef.new(shape: String, location_name: "invitationId"))
    Master.add_member(:relationship_status, Shapes::ShapeRef.new(shape: String, location_name: "relationshipStatus"))
    Master.add_member(:invited_at, Shapes::ShapeRef.new(shape: String, location_name: "invitedAt"))
    Master.struct_class = Types::Master

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    Member.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    Member.add_member(:master_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "masterId"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "email"))
    Member.add_member(:relationship_status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "relationshipStatus"))
    Member.add_member(:invited_at, Shapes::ShapeRef.new(shape: String, location_name: "invitedAt"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: String, required: true, location_name: "updatedAt"))
    Member.add_member(:administrator_id, Shapes::ShapeRef.new(shape: String, location_name: "administratorId"))
    Member.struct_class = Types::Member

    MemberAdditionalConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeatureAdditionalConfiguration, location_name: "name"))
    MemberAdditionalConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    MemberAdditionalConfiguration.struct_class = Types::MemberAdditionalConfiguration

    MemberAdditionalConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeatureAdditionalConfiguration, location_name: "name"))
    MemberAdditionalConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    MemberAdditionalConfigurationResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    MemberAdditionalConfigurationResult.struct_class = Types::MemberAdditionalConfigurationResult

    MemberAdditionalConfigurationResults.member = Shapes::ShapeRef.new(shape: MemberAdditionalConfigurationResult)

    MemberAdditionalConfigurations.member = Shapes::ShapeRef.new(shape: MemberAdditionalConfiguration)

    MemberDataSourceConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    MemberDataSourceConfiguration.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigurationsResult, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    MemberDataSourceConfiguration.add_member(:features, Shapes::ShapeRef.new(shape: MemberFeaturesConfigurationsResults, location_name: "features"))
    MemberDataSourceConfiguration.struct_class = Types::MemberDataSourceConfiguration

    MemberDataSourceConfigurations.member = Shapes::ShapeRef.new(shape: MemberDataSourceConfiguration)

    MemberFeaturesConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeature, location_name: "name"))
    MemberFeaturesConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    MemberFeaturesConfiguration.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: MemberAdditionalConfigurations, location_name: "additionalConfiguration"))
    MemberFeaturesConfiguration.struct_class = Types::MemberFeaturesConfiguration

    MemberFeaturesConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeature, location_name: "name"))
    MemberFeaturesConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "status"))
    MemberFeaturesConfigurationResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    MemberFeaturesConfigurationResult.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: MemberAdditionalConfigurationResults, location_name: "additionalConfiguration"))
    MemberFeaturesConfigurationResult.struct_class = Types::MemberFeaturesConfigurationResult

    MemberFeaturesConfigurations.member = Shapes::ShapeRef.new(shape: MemberFeaturesConfiguration)

    MemberFeaturesConfigurationsResults.member = Shapes::ShapeRef.new(shape: MemberFeaturesConfigurationResult)

    Members.member = Shapes::ShapeRef.new(shape: Member)

    MemoryRegionsList.member = Shapes::ShapeRef.new(shape: String)

    Neq.member = Shapes::ShapeRef.new(shape: String)

    NetworkConnection.add_member(:direction, Shapes::ShapeRef.new(shape: NetworkDirection, required: true, location_name: "direction"))
    NetworkConnection.struct_class = Types::NetworkConnection

    NetworkConnectionAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "blocked"))
    NetworkConnectionAction.add_member(:connection_direction, Shapes::ShapeRef.new(shape: String, location_name: "connectionDirection"))
    NetworkConnectionAction.add_member(:local_port_details, Shapes::ShapeRef.new(shape: LocalPortDetails, location_name: "localPortDetails"))
    NetworkConnectionAction.add_member(:protocol, Shapes::ShapeRef.new(shape: String, location_name: "protocol"))
    NetworkConnectionAction.add_member(:local_ip_details, Shapes::ShapeRef.new(shape: LocalIpDetails, location_name: "localIpDetails"))
    NetworkConnectionAction.add_member(:local_network_interface, Shapes::ShapeRef.new(shape: String, location_name: "localNetworkInterface"))
    NetworkConnectionAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    NetworkConnectionAction.add_member(:remote_port_details, Shapes::ShapeRef.new(shape: RemotePortDetails, location_name: "remotePortDetails"))
    NetworkConnectionAction.struct_class = Types::NetworkConnectionAction

    NetworkEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    NetworkEndpoint.add_member(:ip, Shapes::ShapeRef.new(shape: String, location_name: "ip"))
    NetworkEndpoint.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    NetworkEndpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    NetworkEndpoint.add_member(:location, Shapes::ShapeRef.new(shape: NetworkGeoLocation, location_name: "location"))
    NetworkEndpoint.add_member(:autonomous_system, Shapes::ShapeRef.new(shape: AutonomousSystem, location_name: "autonomousSystem"))
    NetworkEndpoint.add_member(:connection, Shapes::ShapeRef.new(shape: NetworkConnection, location_name: "connection"))
    NetworkEndpoint.struct_class = Types::NetworkEndpoint

    NetworkEndpoints.member = Shapes::ShapeRef.new(shape: NetworkEndpoint)

    NetworkGeoLocation.add_member(:city, Shapes::ShapeRef.new(shape: String, required: true, location_name: "city"))
    NetworkGeoLocation.add_member(:country, Shapes::ShapeRef.new(shape: String, required: true, location_name: "country"))
    NetworkGeoLocation.add_member(:latitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "lat"))
    NetworkGeoLocation.add_member(:longitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "lon"))
    NetworkGeoLocation.struct_class = Types::NetworkGeoLocation

    NetworkInterface.add_member(:ipv_6_addresses, Shapes::ShapeRef.new(shape: Ipv6Addresses, location_name: "ipv6Addresses"))
    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: String, location_name: "networkInterfaceId"))
    NetworkInterface.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "privateDnsName"))
    NetworkInterface.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "privateIpAddress"))
    NetworkInterface.add_member(:private_ip_addresses, Shapes::ShapeRef.new(shape: PrivateIpAddresses, location_name: "privateIpAddresses"))
    NetworkInterface.add_member(:public_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "publicDnsName"))
    NetworkInterface.add_member(:public_ip, Shapes::ShapeRef.new(shape: String, location_name: "publicIp"))
    NetworkInterface.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    NetworkInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "subnetId"))
    NetworkInterface.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NotEquals.member = Shapes::ShapeRef.new(shape: String)

    ObservationTexts.member = Shapes::ShapeRef.new(shape: String)

    Observations.add_member(:text, Shapes::ShapeRef.new(shape: ObservationTexts, location_name: "text"))
    Observations.struct_class = Types::Observations

    Organization.add_member(:asn, Shapes::ShapeRef.new(shape: String, location_name: "asn"))
    Organization.add_member(:asn_org, Shapes::ShapeRef.new(shape: String, location_name: "asnOrg"))
    Organization.add_member(:isp, Shapes::ShapeRef.new(shape: String, location_name: "isp"))
    Organization.add_member(:org, Shapes::ShapeRef.new(shape: String, location_name: "org"))
    Organization.struct_class = Types::Organization

    OrganizationAdditionalConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeatureAdditionalConfiguration, location_name: "name"))
    OrganizationAdditionalConfiguration.add_member(:auto_enable, Shapes::ShapeRef.new(shape: OrgFeatureStatus, location_name: "autoEnable"))
    OrganizationAdditionalConfiguration.struct_class = Types::OrganizationAdditionalConfiguration

    OrganizationAdditionalConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeatureAdditionalConfiguration, location_name: "name"))
    OrganizationAdditionalConfigurationResult.add_member(:auto_enable, Shapes::ShapeRef.new(shape: OrgFeatureStatus, location_name: "autoEnable"))
    OrganizationAdditionalConfigurationResult.struct_class = Types::OrganizationAdditionalConfigurationResult

    OrganizationAdditionalConfigurationResults.member = Shapes::ShapeRef.new(shape: OrganizationAdditionalConfigurationResult)

    OrganizationAdditionalConfigurations.member = Shapes::ShapeRef.new(shape: OrganizationAdditionalConfiguration)

    OrganizationDataSourceConfigurations.add_member(:s3_logs, Shapes::ShapeRef.new(shape: OrganizationS3LogsConfiguration, location_name: "s3Logs"))
    OrganizationDataSourceConfigurations.add_member(:kubernetes, Shapes::ShapeRef.new(shape: OrganizationKubernetesConfiguration, location_name: "kubernetes"))
    OrganizationDataSourceConfigurations.add_member(:malware_protection, Shapes::ShapeRef.new(shape: OrganizationMalwareProtectionConfiguration, location_name: "malwareProtection"))
    OrganizationDataSourceConfigurations.struct_class = Types::OrganizationDataSourceConfigurations

    OrganizationDataSourceConfigurationsResult.add_member(:s3_logs, Shapes::ShapeRef.new(shape: OrganizationS3LogsConfigurationResult, required: true, location_name: "s3Logs"))
    OrganizationDataSourceConfigurationsResult.add_member(:kubernetes, Shapes::ShapeRef.new(shape: OrganizationKubernetesConfigurationResult, location_name: "kubernetes"))
    OrganizationDataSourceConfigurationsResult.add_member(:malware_protection, Shapes::ShapeRef.new(shape: OrganizationMalwareProtectionConfigurationResult, location_name: "malwareProtection"))
    OrganizationDataSourceConfigurationsResult.struct_class = Types::OrganizationDataSourceConfigurationsResult

    OrganizationDetails.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    OrganizationDetails.add_member(:organization_statistics, Shapes::ShapeRef.new(shape: OrganizationStatistics, location_name: "organizationStatistics"))
    OrganizationDetails.struct_class = Types::OrganizationDetails

    OrganizationEbsVolumes.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoEnable"))
    OrganizationEbsVolumes.struct_class = Types::OrganizationEbsVolumes

    OrganizationEbsVolumesResult.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoEnable"))
    OrganizationEbsVolumesResult.struct_class = Types::OrganizationEbsVolumesResult

    OrganizationFeatureConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeature, location_name: "name"))
    OrganizationFeatureConfiguration.add_member(:auto_enable, Shapes::ShapeRef.new(shape: OrgFeatureStatus, location_name: "autoEnable"))
    OrganizationFeatureConfiguration.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: OrganizationAdditionalConfigurations, location_name: "additionalConfiguration"))
    OrganizationFeatureConfiguration.struct_class = Types::OrganizationFeatureConfiguration

    OrganizationFeatureConfigurationResult.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeature, location_name: "name"))
    OrganizationFeatureConfigurationResult.add_member(:auto_enable, Shapes::ShapeRef.new(shape: OrgFeatureStatus, location_name: "autoEnable"))
    OrganizationFeatureConfigurationResult.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: OrganizationAdditionalConfigurationResults, location_name: "additionalConfiguration"))
    OrganizationFeatureConfigurationResult.struct_class = Types::OrganizationFeatureConfigurationResult

    OrganizationFeatureStatistics.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeature, location_name: "name"))
    OrganizationFeatureStatistics.add_member(:enabled_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "enabledAccountsCount"))
    OrganizationFeatureStatistics.add_member(:additional_configuration, Shapes::ShapeRef.new(shape: OrganizationFeatureStatisticsAdditionalConfigurations, location_name: "additionalConfiguration"))
    OrganizationFeatureStatistics.struct_class = Types::OrganizationFeatureStatistics

    OrganizationFeatureStatisticsAdditionalConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: OrgFeatureAdditionalConfiguration, location_name: "name"))
    OrganizationFeatureStatisticsAdditionalConfiguration.add_member(:enabled_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "enabledAccountsCount"))
    OrganizationFeatureStatisticsAdditionalConfiguration.struct_class = Types::OrganizationFeatureStatisticsAdditionalConfiguration

    OrganizationFeatureStatisticsAdditionalConfigurations.member = Shapes::ShapeRef.new(shape: OrganizationFeatureStatisticsAdditionalConfiguration)

    OrganizationFeatureStatisticsResults.member = Shapes::ShapeRef.new(shape: OrganizationFeatureStatistics)

    OrganizationFeaturesConfigurations.member = Shapes::ShapeRef.new(shape: OrganizationFeatureConfiguration)

    OrganizationFeaturesConfigurationsResults.member = Shapes::ShapeRef.new(shape: OrganizationFeatureConfigurationResult)

    OrganizationKubernetesAuditLogsConfiguration.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoEnable"))
    OrganizationKubernetesAuditLogsConfiguration.struct_class = Types::OrganizationKubernetesAuditLogsConfiguration

    OrganizationKubernetesAuditLogsConfigurationResult.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoEnable"))
    OrganizationKubernetesAuditLogsConfigurationResult.struct_class = Types::OrganizationKubernetesAuditLogsConfigurationResult

    OrganizationKubernetesConfiguration.add_member(:audit_logs, Shapes::ShapeRef.new(shape: OrganizationKubernetesAuditLogsConfiguration, required: true, location_name: "auditLogs"))
    OrganizationKubernetesConfiguration.struct_class = Types::OrganizationKubernetesConfiguration

    OrganizationKubernetesConfigurationResult.add_member(:audit_logs, Shapes::ShapeRef.new(shape: OrganizationKubernetesAuditLogsConfigurationResult, required: true, location_name: "auditLogs"))
    OrganizationKubernetesConfigurationResult.struct_class = Types::OrganizationKubernetesConfigurationResult

    OrganizationMalwareProtectionConfiguration.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: OrganizationScanEc2InstanceWithFindings, location_name: "scanEc2InstanceWithFindings"))
    OrganizationMalwareProtectionConfiguration.struct_class = Types::OrganizationMalwareProtectionConfiguration

    OrganizationMalwareProtectionConfigurationResult.add_member(:scan_ec2_instance_with_findings, Shapes::ShapeRef.new(shape: OrganizationScanEc2InstanceWithFindingsResult, location_name: "scanEc2InstanceWithFindings"))
    OrganizationMalwareProtectionConfigurationResult.struct_class = Types::OrganizationMalwareProtectionConfigurationResult

    OrganizationS3LogsConfiguration.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoEnable"))
    OrganizationS3LogsConfiguration.struct_class = Types::OrganizationS3LogsConfiguration

    OrganizationS3LogsConfigurationResult.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoEnable"))
    OrganizationS3LogsConfigurationResult.struct_class = Types::OrganizationS3LogsConfigurationResult

    OrganizationScanEc2InstanceWithFindings.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: OrganizationEbsVolumes, location_name: "ebsVolumes"))
    OrganizationScanEc2InstanceWithFindings.struct_class = Types::OrganizationScanEc2InstanceWithFindings

    OrganizationScanEc2InstanceWithFindingsResult.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: OrganizationEbsVolumesResult, location_name: "ebsVolumes"))
    OrganizationScanEc2InstanceWithFindingsResult.struct_class = Types::OrganizationScanEc2InstanceWithFindingsResult

    OrganizationStatistics.add_member(:total_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "totalAccountsCount"))
    OrganizationStatistics.add_member(:member_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "memberAccountsCount"))
    OrganizationStatistics.add_member(:active_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeAccountsCount"))
    OrganizationStatistics.add_member(:enabled_accounts_count, Shapes::ShapeRef.new(shape: Integer, location_name: "enabledAccountsCount"))
    OrganizationStatistics.add_member(:count_by_feature, Shapes::ShapeRef.new(shape: OrganizationFeatureStatisticsResults, location_name: "countByFeature"))
    OrganizationStatistics.struct_class = Types::OrganizationStatistics

    Owner.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Owner.struct_class = Types::Owner

    PermissionConfiguration.add_member(:bucket_level_permissions, Shapes::ShapeRef.new(shape: BucketLevelPermissions, location_name: "bucketLevelPermissions"))
    PermissionConfiguration.add_member(:account_level_permissions, Shapes::ShapeRef.new(shape: AccountLevelPermissions, location_name: "accountLevelPermissions"))
    PermissionConfiguration.struct_class = Types::PermissionConfiguration

    PortProbeAction.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "blocked"))
    PortProbeAction.add_member(:port_probe_details, Shapes::ShapeRef.new(shape: PortProbeDetails, location_name: "portProbeDetails"))
    PortProbeAction.struct_class = Types::PortProbeAction

    PortProbeDetail.add_member(:local_port_details, Shapes::ShapeRef.new(shape: LocalPortDetails, location_name: "localPortDetails"))
    PortProbeDetail.add_member(:local_ip_details, Shapes::ShapeRef.new(shape: LocalIpDetails, location_name: "localIpDetails"))
    PortProbeDetail.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    PortProbeDetail.struct_class = Types::PortProbeDetail

    PortProbeDetails.member = Shapes::ShapeRef.new(shape: PortProbeDetail)

    PrivateIpAddressDetails.add_member(:private_dns_name, Shapes::ShapeRef.new(shape: String, location_name: "privateDnsName"))
    PrivateIpAddressDetails.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "privateIpAddress"))
    PrivateIpAddressDetails.struct_class = Types::PrivateIpAddressDetails

    PrivateIpAddresses.member = Shapes::ShapeRef.new(shape: PrivateIpAddressDetails)

    ProcessDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ProcessDetails.add_member(:executable_path, Shapes::ShapeRef.new(shape: String, location_name: "executablePath"))
    ProcessDetails.add_member(:executable_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "executableSha256"))
    ProcessDetails.add_member(:namespace_pid, Shapes::ShapeRef.new(shape: Integer, location_name: "namespacePid"))
    ProcessDetails.add_member(:pwd, Shapes::ShapeRef.new(shape: String, location_name: "pwd"))
    ProcessDetails.add_member(:pid, Shapes::ShapeRef.new(shape: Integer, location_name: "pid"))
    ProcessDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ProcessDetails.add_member(:uuid, Shapes::ShapeRef.new(shape: String, location_name: "uuid"))
    ProcessDetails.add_member(:parent_uuid, Shapes::ShapeRef.new(shape: String, location_name: "parentUuid"))
    ProcessDetails.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ProcessDetails.add_member(:user_id, Shapes::ShapeRef.new(shape: Integer, location_name: "userId"))
    ProcessDetails.add_member(:euid, Shapes::ShapeRef.new(shape: Integer, location_name: "euid"))
    ProcessDetails.add_member(:lineage, Shapes::ShapeRef.new(shape: Lineage, location_name: "lineage"))
    ProcessDetails.struct_class = Types::ProcessDetails

    ProductCode.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "productCodeId"))
    ProductCode.add_member(:product_type, Shapes::ShapeRef.new(shape: String, location_name: "productCodeType"))
    ProductCode.struct_class = Types::ProductCode

    ProductCodes.member = Shapes::ShapeRef.new(shape: ProductCode)

    PublicAccess.add_member(:permission_configuration, Shapes::ShapeRef.new(shape: PermissionConfiguration, location_name: "permissionConfiguration"))
    PublicAccess.add_member(:effective_permission, Shapes::ShapeRef.new(shape: String, location_name: "effectivePermission"))
    PublicAccess.struct_class = Types::PublicAccess

    PublicAccessConfiguration.add_member(:public_acl_access, Shapes::ShapeRef.new(shape: PublicAccessStatus, location_name: "publicAclAccess"))
    PublicAccessConfiguration.add_member(:public_policy_access, Shapes::ShapeRef.new(shape: PublicAccessStatus, location_name: "publicPolicyAccess"))
    PublicAccessConfiguration.add_member(:public_acl_ignore_behavior, Shapes::ShapeRef.new(shape: PublicAclIgnoreBehavior, location_name: "publicAclIgnoreBehavior"))
    PublicAccessConfiguration.add_member(:public_bucket_restrict_behavior, Shapes::ShapeRef.new(shape: PublicBucketRestrictBehavior, location_name: "publicBucketRestrictBehavior"))
    PublicAccessConfiguration.struct_class = Types::PublicAccessConfiguration

    RdsDbInstanceDetails.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "dbInstanceIdentifier"))
    RdsDbInstanceDetails.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "engine"))
    RdsDbInstanceDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "engineVersion"))
    RdsDbInstanceDetails.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "dbClusterIdentifier"))
    RdsDbInstanceDetails.add_member(:db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "dbInstanceArn"))
    RdsDbInstanceDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RdsDbInstanceDetails.struct_class = Types::RdsDbInstanceDetails

    RdsDbUserDetails.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    RdsDbUserDetails.add_member(:application, Shapes::ShapeRef.new(shape: String, location_name: "application"))
    RdsDbUserDetails.add_member(:database, Shapes::ShapeRef.new(shape: String, location_name: "database"))
    RdsDbUserDetails.add_member(:ssl, Shapes::ShapeRef.new(shape: String, location_name: "ssl"))
    RdsDbUserDetails.add_member(:auth_method, Shapes::ShapeRef.new(shape: String, location_name: "authMethod"))
    RdsDbUserDetails.struct_class = Types::RdsDbUserDetails

    RdsLimitlessDbDetails.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: String, location_name: "dbShardGroupIdentifier"))
    RdsLimitlessDbDetails.add_member(:db_shard_group_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "dbShardGroupResourceId"))
    RdsLimitlessDbDetails.add_member(:db_shard_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "dbShardGroupArn"))
    RdsLimitlessDbDetails.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "engine"))
    RdsLimitlessDbDetails.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "engineVersion"))
    RdsLimitlessDbDetails.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "dbClusterIdentifier"))
    RdsLimitlessDbDetails.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RdsLimitlessDbDetails.struct_class = Types::RdsLimitlessDbDetails

    RdsLoginAttemptAction.add_member(:remote_ip_details, Shapes::ShapeRef.new(shape: RemoteIpDetails, location_name: "remoteIpDetails"))
    RdsLoginAttemptAction.add_member(:login_attributes, Shapes::ShapeRef.new(shape: LoginAttributes, location_name: "LoginAttributes"))
    RdsLoginAttemptAction.struct_class = Types::RdsLoginAttemptAction

    RecoveryPoint.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "backupVaultName"))
    RecoveryPoint.struct_class = Types::RecoveryPoint

    RecoveryPointDetails.add_member(:recovery_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "recoveryPointArn"))
    RecoveryPointDetails.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: String, location_name: "backupVaultName"))
    RecoveryPointDetails.struct_class = Types::RecoveryPointDetails

    RemoteAccountDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    RemoteAccountDetails.add_member(:affiliated, Shapes::ShapeRef.new(shape: Boolean, location_name: "affiliated"))
    RemoteAccountDetails.struct_class = Types::RemoteAccountDetails

    RemoteIpDetails.add_member(:city, Shapes::ShapeRef.new(shape: City, location_name: "city"))
    RemoteIpDetails.add_member(:country, Shapes::ShapeRef.new(shape: Country, location_name: "country"))
    RemoteIpDetails.add_member(:geo_location, Shapes::ShapeRef.new(shape: GeoLocation, location_name: "geoLocation"))
    RemoteIpDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "ipAddressV4"))
    RemoteIpDetails.add_member(:ip_address_v6, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "ipAddressV6"))
    RemoteIpDetails.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "organization"))
    RemoteIpDetails.struct_class = Types::RemoteIpDetails

    RemotePortDetails.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    RemotePortDetails.add_member(:port_name, Shapes::ShapeRef.new(shape: String, location_name: "portName"))
    RemotePortDetails.struct_class = Types::RemotePortDetails

    Resource.add_member(:access_key_details, Shapes::ShapeRef.new(shape: AccessKeyDetails, location_name: "accessKeyDetails"))
    Resource.add_member(:s3_bucket_details, Shapes::ShapeRef.new(shape: S3BucketDetails, location_name: "s3BucketDetails"))
    Resource.add_member(:instance_details, Shapes::ShapeRef.new(shape: InstanceDetails, location_name: "instanceDetails"))
    Resource.add_member(:eks_cluster_details, Shapes::ShapeRef.new(shape: EksClusterDetails, location_name: "eksClusterDetails"))
    Resource.add_member(:kubernetes_details, Shapes::ShapeRef.new(shape: KubernetesDetails, location_name: "kubernetesDetails"))
    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    Resource.add_member(:ebs_volume_details, Shapes::ShapeRef.new(shape: EbsVolumeDetails, location_name: "ebsVolumeDetails"))
    Resource.add_member(:ecs_cluster_details, Shapes::ShapeRef.new(shape: EcsClusterDetails, location_name: "ecsClusterDetails"))
    Resource.add_member(:container_details, Shapes::ShapeRef.new(shape: Container, location_name: "containerDetails"))
    Resource.add_member(:rds_db_instance_details, Shapes::ShapeRef.new(shape: RdsDbInstanceDetails, location_name: "rdsDbInstanceDetails"))
    Resource.add_member(:rds_limitless_db_details, Shapes::ShapeRef.new(shape: RdsLimitlessDbDetails, location_name: "rdsLimitlessDbDetails"))
    Resource.add_member(:rds_db_user_details, Shapes::ShapeRef.new(shape: RdsDbUserDetails, location_name: "rdsDbUserDetails"))
    Resource.add_member(:lambda_details, Shapes::ShapeRef.new(shape: LambdaDetails, location_name: "lambdaDetails"))
    Resource.add_member(:ebs_snapshot_details, Shapes::ShapeRef.new(shape: EbsSnapshotDetails, location_name: "ebsSnapshotDetails"))
    Resource.add_member(:ec2_image_details, Shapes::ShapeRef.new(shape: Ec2ImageDetails, location_name: "ec2ImageDetails"))
    Resource.add_member(:recovery_point_details, Shapes::ShapeRef.new(shape: RecoveryPointDetails, location_name: "recoveryPointDetails"))
    Resource.struct_class = Types::Resource

    ResourceData.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    ResourceData.add_member(:ec2_instance, Shapes::ShapeRef.new(shape: Ec2Instance, location_name: "ec2Instance"))
    ResourceData.add_member(:access_key, Shapes::ShapeRef.new(shape: AccessKey, location_name: "accessKey"))
    ResourceData.add_member(:ec2_network_interface, Shapes::ShapeRef.new(shape: Ec2NetworkInterface, location_name: "ec2NetworkInterface"))
    ResourceData.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "s3Object"))
    ResourceData.add_member(:eks_cluster, Shapes::ShapeRef.new(shape: EksCluster, location_name: "eksCluster"))
    ResourceData.add_member(:kubernetes_workload, Shapes::ShapeRef.new(shape: KubernetesWorkload, location_name: "kubernetesWorkload"))
    ResourceData.add_member(:container, Shapes::ShapeRef.new(shape: ContainerFindingResource, location_name: "container"))
    ResourceData.struct_class = Types::ResourceData

    ResourceDetails.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "instanceArn"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "__type"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceStatistics.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    ResourceStatistics.add_member(:last_generated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastGeneratedAt"))
    ResourceStatistics.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceStatistics.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceStatistics.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    ResourceStatistics.struct_class = Types::ResourceStatistics

    ResourceUids.member = Shapes::ShapeRef.new(shape: String)

    ResourceV2.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    ResourceV2.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResourceV2.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    ResourceV2.add_member(:resource_type, Shapes::ShapeRef.new(shape: FindingResourceType, required: true, location_name: "resourceType"))
    ResourceV2.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    ResourceV2.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    ResourceV2.add_member(:cloud_partition, Shapes::ShapeRef.new(shape: String, location_name: "cloudPartition"))
    ResourceV2.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ResourceV2.add_member(:data, Shapes::ShapeRef.new(shape: ResourceData, location_name: "data"))
    ResourceV2.struct_class = Types::ResourceV2

    Resources.member = Shapes::ShapeRef.new(shape: ResourceV2)

    RuntimeContext.add_member(:modifying_process, Shapes::ShapeRef.new(shape: ProcessDetails, location_name: "modifyingProcess"))
    RuntimeContext.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    RuntimeContext.add_member(:script_path, Shapes::ShapeRef.new(shape: String, location_name: "scriptPath"))
    RuntimeContext.add_member(:library_path, Shapes::ShapeRef.new(shape: String, location_name: "libraryPath"))
    RuntimeContext.add_member(:ld_preload_value, Shapes::ShapeRef.new(shape: String, location_name: "ldPreloadValue"))
    RuntimeContext.add_member(:socket_path, Shapes::ShapeRef.new(shape: String, location_name: "socketPath"))
    RuntimeContext.add_member(:runc_binary_path, Shapes::ShapeRef.new(shape: String, location_name: "runcBinaryPath"))
    RuntimeContext.add_member(:release_agent_path, Shapes::ShapeRef.new(shape: String, location_name: "releaseAgentPath"))
    RuntimeContext.add_member(:mount_source, Shapes::ShapeRef.new(shape: String, location_name: "mountSource"))
    RuntimeContext.add_member(:mount_target, Shapes::ShapeRef.new(shape: String, location_name: "mountTarget"))
    RuntimeContext.add_member(:file_system_type, Shapes::ShapeRef.new(shape: String, location_name: "fileSystemType"))
    RuntimeContext.add_member(:flags, Shapes::ShapeRef.new(shape: FlagsList, location_name: "flags"))
    RuntimeContext.add_member(:module_name, Shapes::ShapeRef.new(shape: String, location_name: "moduleName"))
    RuntimeContext.add_member(:module_file_path, Shapes::ShapeRef.new(shape: String, location_name: "moduleFilePath"))
    RuntimeContext.add_member(:module_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "moduleSha256"))
    RuntimeContext.add_member(:shell_history_file_path, Shapes::ShapeRef.new(shape: String, location_name: "shellHistoryFilePath"))
    RuntimeContext.add_member(:target_process, Shapes::ShapeRef.new(shape: ProcessDetails, location_name: "targetProcess"))
    RuntimeContext.add_member(:address_family, Shapes::ShapeRef.new(shape: String, location_name: "addressFamily"))
    RuntimeContext.add_member(:iana_protocol_number, Shapes::ShapeRef.new(shape: Integer, location_name: "ianaProtocolNumber"))
    RuntimeContext.add_member(:memory_regions, Shapes::ShapeRef.new(shape: MemoryRegionsList, location_name: "memoryRegions"))
    RuntimeContext.add_member(:tool_name, Shapes::ShapeRef.new(shape: String, location_name: "toolName"))
    RuntimeContext.add_member(:tool_category, Shapes::ShapeRef.new(shape: String, location_name: "toolCategory"))
    RuntimeContext.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    RuntimeContext.add_member(:command_line_example, Shapes::ShapeRef.new(shape: String, location_name: "commandLineExample"))
    RuntimeContext.add_member(:threat_file_path, Shapes::ShapeRef.new(shape: String, location_name: "threatFilePath"))
    RuntimeContext.struct_class = Types::RuntimeContext

    RuntimeDetails.add_member(:process, Shapes::ShapeRef.new(shape: ProcessDetails, location_name: "process"))
    RuntimeDetails.add_member(:context, Shapes::ShapeRef.new(shape: RuntimeContext, location_name: "context"))
    RuntimeDetails.struct_class = Types::RuntimeDetails

    S3Bucket.add_member(:owner_id, Shapes::ShapeRef.new(shape: String, location_name: "ownerId"))
    S3Bucket.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    S3Bucket.add_member(:encryption_type, Shapes::ShapeRef.new(shape: String, location_name: "encryptionType"))
    S3Bucket.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "encryptionKeyArn"))
    S3Bucket.add_member(:effective_permission, Shapes::ShapeRef.new(shape: String, location_name: "effectivePermission"))
    S3Bucket.add_member(:public_read_access, Shapes::ShapeRef.new(shape: PublicAccessStatus, location_name: "publicReadAccess"))
    S3Bucket.add_member(:public_write_access, Shapes::ShapeRef.new(shape: PublicAccessStatus, location_name: "publicWriteAccess"))
    S3Bucket.add_member(:account_public_access, Shapes::ShapeRef.new(shape: PublicAccessConfiguration, location_name: "accountPublicAccess"))
    S3Bucket.add_member(:bucket_public_access, Shapes::ShapeRef.new(shape: PublicAccessConfiguration, location_name: "bucketPublicAccess"))
    S3Bucket.add_member(:s3_object_uids, Shapes::ShapeRef.new(shape: S3ObjectUids, location_name: "s3ObjectUids"))
    S3Bucket.struct_class = Types::S3Bucket

    S3BucketDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    S3BucketDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    S3BucketDetail.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    S3BucketDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    S3BucketDetail.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "owner"))
    S3BucketDetail.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    S3BucketDetail.add_member(:default_server_side_encryption, Shapes::ShapeRef.new(shape: DefaultServerSideEncryption, location_name: "defaultServerSideEncryption"))
    S3BucketDetail.add_member(:public_access, Shapes::ShapeRef.new(shape: PublicAccess, location_name: "publicAccess"))
    S3BucketDetail.add_member(:s3_object_details, Shapes::ShapeRef.new(shape: S3ObjectDetails, location_name: "s3ObjectDetails"))
    S3BucketDetail.struct_class = Types::S3BucketDetail

    S3BucketDetails.member = Shapes::ShapeRef.new(shape: S3BucketDetail)

    S3LogsConfiguration.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enable"))
    S3LogsConfiguration.struct_class = Types::S3LogsConfiguration

    S3LogsConfigurationResult.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, required: true, location_name: "status"))
    S3LogsConfigurationResult.struct_class = Types::S3LogsConfigurationResult

    S3Object.add_member(:etag, Shapes::ShapeRef.new(shape: String, location_name: "eTag"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    S3Object.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "versionId"))
    S3Object.struct_class = Types::S3Object

    S3ObjectDetail.add_member(:object_arn, Shapes::ShapeRef.new(shape: String, location_name: "objectArn"))
    S3ObjectDetail.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    S3ObjectDetail.add_member(:etag, Shapes::ShapeRef.new(shape: String, location_name: "eTag"))
    S3ObjectDetail.add_member(:hash, Shapes::ShapeRef.new(shape: String, location_name: "hash"))
    S3ObjectDetail.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "versionId"))
    S3ObjectDetail.struct_class = Types::S3ObjectDetail

    S3ObjectDetails.member = Shapes::ShapeRef.new(shape: S3ObjectDetail)

    S3ObjectForSendObjectMalwareScan.add_member(:bucket, Shapes::ShapeRef.new(shape: String, location_name: "bucket"))
    S3ObjectForSendObjectMalwareScan.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    S3ObjectForSendObjectMalwareScan.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "versionId"))
    S3ObjectForSendObjectMalwareScan.struct_class = Types::S3ObjectForSendObjectMalwareScan

    S3ObjectUids.member = Shapes::ShapeRef.new(shape: String)

    Scan.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    Scan.add_member(:admin_detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "adminDetectorId"))
    Scan.add_member(:scan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scanId"))
    Scan.add_member(:scan_status, Shapes::ShapeRef.new(shape: ScanStatus, location_name: "scanStatus"))
    Scan.add_member(:failure_reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "failureReason"))
    Scan.add_member(:scan_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanStartTime"))
    Scan.add_member(:scan_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scanEndTime"))
    Scan.add_member(:trigger_details, Shapes::ShapeRef.new(shape: TriggerDetails, location_name: "triggerDetails"))
    Scan.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "resourceDetails"))
    Scan.add_member(:scan_result_details, Shapes::ShapeRef.new(shape: ScanResultDetails, location_name: "scanResultDetails"))
    Scan.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Scan.add_member(:total_bytes, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "totalBytes"))
    Scan.add_member(:file_count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "fileCount"))
    Scan.add_member(:attached_volumes, Shapes::ShapeRef.new(shape: VolumeDetails, location_name: "attachedVolumes"))
    Scan.add_member(:scan_type, Shapes::ShapeRef.new(shape: ScanType, location_name: "scanType"))
    Scan.struct_class = Types::Scan

    ScanCondition.add_member(:map_equals, Shapes::ShapeRef.new(shape: MapEquals, required: true, location_name: "mapEquals"))
    ScanCondition.struct_class = Types::ScanCondition

    ScanConditionPair.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    ScanConditionPair.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    ScanConditionPair.struct_class = Types::ScanConditionPair

    ScanConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "role"))
    ScanConfiguration.add_member(:trigger_details, Shapes::ShapeRef.new(shape: TriggerDetails, location_name: "triggerDetails"))
    ScanConfiguration.add_member(:incremental_scan_details, Shapes::ShapeRef.new(shape: IncrementalScanDetails, location_name: "incrementalScanDetails"))
    ScanConfiguration.add_member(:recovery_point, Shapes::ShapeRef.new(shape: ScanConfigurationRecoveryPoint, location_name: "recoveryPoint"))
    ScanConfiguration.struct_class = Types::ScanConfiguration

    ScanConfigurationRecoveryPoint.add_member(:backup_vault_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "backupVaultName"))
    ScanConfigurationRecoveryPoint.struct_class = Types::ScanConfigurationRecoveryPoint

    ScanCriterion.key = Shapes::ShapeRef.new(shape: ScanCriterionKey)
    ScanCriterion.value = Shapes::ShapeRef.new(shape: ScanCondition)

    ScanDetections.add_member(:scanned_item_count, Shapes::ShapeRef.new(shape: ScannedItemCount, location_name: "scannedItemCount"))
    ScanDetections.add_member(:threats_detected_item_count, Shapes::ShapeRef.new(shape: ThreatsDetectedItemCount, location_name: "threatsDetectedItemCount"))
    ScanDetections.add_member(:highest_severity_threat_details, Shapes::ShapeRef.new(shape: HighestSeverityThreatDetails, location_name: "highestSeverityThreatDetails"))
    ScanDetections.add_member(:threat_detected_by_name, Shapes::ShapeRef.new(shape: ThreatDetectedByName, location_name: "threatDetectedByName"))
    ScanDetections.struct_class = Types::ScanDetections

    ScanEc2InstanceWithFindings.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: Boolean, location_name: "ebsVolumes"))
    ScanEc2InstanceWithFindings.struct_class = Types::ScanEc2InstanceWithFindings

    ScanEc2InstanceWithFindingsResult.add_member(:ebs_volumes, Shapes::ShapeRef.new(shape: EbsVolumesResult, location_name: "ebsVolumes"))
    ScanEc2InstanceWithFindingsResult.struct_class = Types::ScanEc2InstanceWithFindingsResult

    ScanFilePath.add_member(:file_path, Shapes::ShapeRef.new(shape: String, location_name: "filePath"))
    ScanFilePath.add_member(:volume_arn, Shapes::ShapeRef.new(shape: String, location_name: "volumeArn"))
    ScanFilePath.add_member(:hash, Shapes::ShapeRef.new(shape: String, location_name: "hash"))
    ScanFilePath.add_member(:file_name, Shapes::ShapeRef.new(shape: String, location_name: "fileName"))
    ScanFilePath.struct_class = Types::ScanFilePath

    ScanResourceCriteria.add_member(:include, Shapes::ShapeRef.new(shape: ScanCriterion, location_name: "include"))
    ScanResourceCriteria.add_member(:exclude, Shapes::ShapeRef.new(shape: ScanCriterion, location_name: "exclude"))
    ScanResourceCriteria.struct_class = Types::ScanResourceCriteria

    ScanResultDetails.add_member(:scan_result, Shapes::ShapeRef.new(shape: ScanResult, location_name: "scanResult"))
    ScanResultDetails.struct_class = Types::ScanResultDetails

    ScanResultThreat.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ScanResultThreat.add_member(:source, Shapes::ShapeRef.new(shape: DetectionSource, location_name: "source"))
    ScanResultThreat.add_member(:count, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "count"))
    ScanResultThreat.add_member(:hash, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "hash"))
    ScanResultThreat.add_member(:item_details, Shapes::ShapeRef.new(shape: ItemDetailsList, location_name: "itemDetails"))
    ScanResultThreat.struct_class = Types::ScanResultThreat

    ScanResultThreats.member = Shapes::ShapeRef.new(shape: ScanResultThreat)

    ScanThreatName.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ScanThreatName.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "severity"))
    ScanThreatName.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "itemCount"))
    ScanThreatName.add_member(:file_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "filePaths"))
    ScanThreatName.struct_class = Types::ScanThreatName

    ScanThreatNames.member = Shapes::ShapeRef.new(shape: ScanThreatName)

    ScannedItemCount.add_member(:total_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "totalGb"))
    ScannedItemCount.add_member(:files, Shapes::ShapeRef.new(shape: Integer, location_name: "files"))
    ScannedItemCount.add_member(:volumes, Shapes::ShapeRef.new(shape: Integer, location_name: "volumes"))
    ScannedItemCount.struct_class = Types::ScannedItemCount

    ScannedResource.add_member(:scanned_resource_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scannedResourceArn"))
    ScannedResource.add_member(:scanned_resource_type, Shapes::ShapeRef.new(shape: MalwareProtectionResourceType, location_name: "scannedResourceType"))
    ScannedResource.add_member(:scanned_resource_status, Shapes::ShapeRef.new(shape: MalwareProtectionScanStatus, location_name: "scannedResourceStatus"))
    ScannedResource.add_member(:scan_status_reason, Shapes::ShapeRef.new(shape: ScanStatusReason, location_name: "scanStatusReason"))
    ScannedResource.add_member(:resource_details, Shapes::ShapeRef.new(shape: ScannedResourceDetails, location_name: "resourceDetails"))
    ScannedResource.struct_class = Types::ScannedResource

    ScannedResourceDetails.add_member(:ebs_volume, Shapes::ShapeRef.new(shape: VolumeDetail, location_name: "ebsVolume"))
    ScannedResourceDetails.add_member(:ebs_snapshot, Shapes::ShapeRef.new(shape: EbsSnapshot, location_name: "ebsSnapshot"))
    ScannedResourceDetails.struct_class = Types::ScannedResourceDetails

    ScannedResources.member = Shapes::ShapeRef.new(shape: ScannedResource)

    Scans.member = Shapes::ShapeRef.new(shape: Scan)

    SecurityContext.add_member(:privileged, Shapes::ShapeRef.new(shape: Boolean, location_name: "privileged"))
    SecurityContext.add_member(:allow_privilege_escalation, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowPrivilegeEscalation"))
    SecurityContext.struct_class = Types::SecurityContext

    SecurityGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: String, location_name: "groupId"))
    SecurityGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    SecurityGroup.struct_class = Types::SecurityGroup

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    SendObjectMalwareScanRequest.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3ObjectForSendObjectMalwareScan, location_name: "s3Object"))
    SendObjectMalwareScanRequest.struct_class = Types::SendObjectMalwareScanRequest

    SendObjectMalwareScanResponse.struct_class = Types::SendObjectMalwareScanResponse

    Sequence.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    Sequence.add_member(:description, Shapes::ShapeRef.new(shape: SequenceDescription, required: true, location_name: "description"))
    Sequence.add_member(:actors, Shapes::ShapeRef.new(shape: Actors, location_name: "actors"))
    Sequence.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    Sequence.add_member(:endpoints, Shapes::ShapeRef.new(shape: NetworkEndpoints, location_name: "endpoints"))
    Sequence.add_member(:signals, Shapes::ShapeRef.new(shape: Signals, required: true, location_name: "signals"))
    Sequence.add_member(:sequence_indicators, Shapes::ShapeRef.new(shape: Indicators, location_name: "sequenceIndicators"))
    Sequence.add_member(:additional_sequence_types, Shapes::ShapeRef.new(shape: AdditionalSequenceTypes, location_name: "additionalSequenceTypes"))
    Sequence.struct_class = Types::Sequence

    Service.add_member(:action, Shapes::ShapeRef.new(shape: Action, location_name: "action"))
    Service.add_member(:evidence, Shapes::ShapeRef.new(shape: Evidence, location_name: "evidence"))
    Service.add_member(:archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "archived"))
    Service.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    Service.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, location_name: "detectorId"))
    Service.add_member(:event_first_seen, Shapes::ShapeRef.new(shape: String, location_name: "eventFirstSeen"))
    Service.add_member(:event_last_seen, Shapes::ShapeRef.new(shape: String, location_name: "eventLastSeen"))
    Service.add_member(:resource_role, Shapes::ShapeRef.new(shape: String, location_name: "resourceRole"))
    Service.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    Service.add_member(:user_feedback, Shapes::ShapeRef.new(shape: String, location_name: "userFeedback"))
    Service.add_member(:additional_info, Shapes::ShapeRef.new(shape: ServiceAdditionalInfo, location_name: "additionalInfo"))
    Service.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "featureName"))
    Service.add_member(:ebs_volume_scan_details, Shapes::ShapeRef.new(shape: EbsVolumeScanDetails, location_name: "ebsVolumeScanDetails"))
    Service.add_member(:runtime_details, Shapes::ShapeRef.new(shape: RuntimeDetails, location_name: "runtimeDetails"))
    Service.add_member(:detection, Shapes::ShapeRef.new(shape: Detection, location_name: "detection"))
    Service.add_member(:malware_scan_details, Shapes::ShapeRef.new(shape: MalwareScanDetails, location_name: "malwareScanDetails"))
    Service.struct_class = Types::Service

    ServiceAdditionalInfo.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ServiceAdditionalInfo.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ServiceAdditionalInfo.struct_class = Types::ServiceAdditionalInfo

    Session.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    Session.add_member(:mfa_status, Shapes::ShapeRef.new(shape: MfaStatus, location_name: "mfaStatus"))
    Session.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    Session.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "issuer"))
    Session.struct_class = Types::Session

    SessionNameList.member = Shapes::ShapeRef.new(shape: String)

    SeverityStatistics.add_member(:last_generated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastGeneratedAt"))
    SeverityStatistics.add_member(:severity, Shapes::ShapeRef.new(shape: Double, location_name: "severity"))
    SeverityStatistics.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    SeverityStatistics.struct_class = Types::SeverityStatistics

    Signal.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    Signal.add_member(:type, Shapes::ShapeRef.new(shape: SignalType, required: true, location_name: "type"))
    Signal.add_member(:description, Shapes::ShapeRef.new(shape: SignalDescription, location_name: "description"))
    Signal.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Signal.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Signal.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Signal.add_member(:first_seen_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "firstSeenAt"))
    Signal.add_member(:last_seen_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastSeenAt"))
    Signal.add_member(:severity, Shapes::ShapeRef.new(shape: Double, location_name: "severity"))
    Signal.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "count"))
    Signal.add_member(:resource_uids, Shapes::ShapeRef.new(shape: ResourceUids, location_name: "resourceUids"))
    Signal.add_member(:actor_ids, Shapes::ShapeRef.new(shape: ActorIds, location_name: "actorIds"))
    Signal.add_member(:endpoint_ids, Shapes::ShapeRef.new(shape: EndpointIds, location_name: "endpointIds"))
    Signal.add_member(:signal_indicators, Shapes::ShapeRef.new(shape: Indicators, location_name: "signalIndicators"))
    Signal.struct_class = Types::Signal

    Signals.member = Shapes::ShapeRef.new(shape: Signal)

    SortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "attributeName"))
    SortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SortCriteria.struct_class = Types::SortCriteria

    SourceIps.member = Shapes::ShapeRef.new(shape: String)

    Sources.member = Shapes::ShapeRef.new(shape: String)

    StartMalwareScanConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "role"))
    StartMalwareScanConfiguration.add_member(:incremental_scan_details, Shapes::ShapeRef.new(shape: IncrementalScanDetails, location_name: "incrementalScanDetails"))
    StartMalwareScanConfiguration.add_member(:recovery_point, Shapes::ShapeRef.new(shape: RecoveryPoint, location_name: "recoveryPoint"))
    StartMalwareScanConfiguration.struct_class = Types::StartMalwareScanConfiguration

    StartMalwareScanRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    StartMalwareScanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartMalwareScanRequest.add_member(:scan_configuration, Shapes::ShapeRef.new(shape: StartMalwareScanConfiguration, location_name: "scanConfiguration"))
    StartMalwareScanRequest.struct_class = Types::StartMalwareScanRequest

    StartMalwareScanResponse.add_member(:scan_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scanId"))
    StartMalwareScanResponse.struct_class = Types::StartMalwareScanResponse

    StartMonitoringMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    StartMonitoringMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    StartMonitoringMembersRequest.struct_class = Types::StartMonitoringMembersRequest

    StartMonitoringMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    StartMonitoringMembersResponse.struct_class = Types::StartMonitoringMembersResponse

    StopMonitoringMembersRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    StopMonitoringMembersRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    StopMonitoringMembersRequest.struct_class = Types::StopMonitoringMembersRequest

    StopMonitoringMembersResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    StopMonitoringMembersResponse.struct_class = Types::StopMonitoringMembersResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GuardDutyArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    Threat.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Threat.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "source"))
    Threat.add_member(:item_paths, Shapes::ShapeRef.new(shape: ItemPaths, location_name: "itemPaths"))
    Threat.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    Threat.add_member(:hash, Shapes::ShapeRef.new(shape: String, location_name: "hash"))
    Threat.add_member(:item_details, Shapes::ShapeRef.new(shape: ItemDetailsList, location_name: "itemDetails"))
    Threat.struct_class = Types::Threat

    ThreatDetectedByName.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "itemCount"))
    ThreatDetectedByName.add_member(:unique_threat_name_count, Shapes::ShapeRef.new(shape: Integer, location_name: "uniqueThreatNameCount"))
    ThreatDetectedByName.add_member(:shortened, Shapes::ShapeRef.new(shape: Boolean, location_name: "shortened"))
    ThreatDetectedByName.add_member(:threat_names, Shapes::ShapeRef.new(shape: ScanThreatNames, location_name: "threatNames"))
    ThreatDetectedByName.struct_class = Types::ThreatDetectedByName

    ThreatEntitySetIds.member = Shapes::ShapeRef.new(shape: String)

    ThreatIntelSetIds.member = Shapes::ShapeRef.new(shape: String)

    ThreatIntelligenceDetail.add_member(:threat_list_name, Shapes::ShapeRef.new(shape: String, location_name: "threatListName"))
    ThreatIntelligenceDetail.add_member(:threat_names, Shapes::ShapeRef.new(shape: ThreatNames, location_name: "threatNames"))
    ThreatIntelligenceDetail.add_member(:threat_file_sha_256, Shapes::ShapeRef.new(shape: String, location_name: "threatFileSha256"))
    ThreatIntelligenceDetail.struct_class = Types::ThreatIntelligenceDetail

    ThreatIntelligenceDetails.member = Shapes::ShapeRef.new(shape: ThreatIntelligenceDetail)

    ThreatNames.member = Shapes::ShapeRef.new(shape: String)

    Threats.member = Shapes::ShapeRef.new(shape: Threat)

    ThreatsDetectedItemCount.add_member(:files, Shapes::ShapeRef.new(shape: Integer, location_name: "files"))
    ThreatsDetectedItemCount.struct_class = Types::ThreatsDetectedItemCount

    Total.add_member(:amount, Shapes::ShapeRef.new(shape: String, location_name: "amount"))
    Total.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    Total.struct_class = Types::Total

    TriggerDetails.add_member(:guard_duty_finding_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "guardDutyFindingId"))
    TriggerDetails.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    TriggerDetails.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, location_name: "triggerType"))
    TriggerDetails.struct_class = Types::TriggerDetails

    TrustedEntitySetIds.member = Shapes::ShapeRef.new(shape: String)

    UnarchiveFindingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UnarchiveFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, required: true, location_name: "findingIds"))
    UnarchiveFindingsRequest.struct_class = Types::UnarchiveFindingsRequest

    UnarchiveFindingsResponse.struct_class = Types::UnarchiveFindingsResponse

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    UnprocessedAccount.add_member(:result, Shapes::ShapeRef.new(shape: String, required: true, location_name: "result"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UnprocessedAccounts.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

    UnprocessedDataSourcesResult.add_member(:malware_protection, Shapes::ShapeRef.new(shape: MalwareProtectionConfigurationResult, location_name: "malwareProtection"))
    UnprocessedDataSourcesResult.struct_class = Types::UnprocessedDataSourcesResult

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: GuardDutyArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDetectorRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateDetectorRequest.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "enable"))
    UpdateDetectorRequest.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    UpdateDetectorRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigurations, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    UpdateDetectorRequest.add_member(:features, Shapes::ShapeRef.new(shape: DetectorFeatureConfigurations, location_name: "features"))
    UpdateDetectorRequest.struct_class = Types::UpdateDetectorRequest

    UpdateDetectorResponse.struct_class = Types::UpdateDetectorResponse

    UpdateFilterRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "filterName"))
    UpdateFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: FilterDescription, location_name: "description"))
    UpdateFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FilterAction, location_name: "action"))
    UpdateFilterRequest.add_member(:rank, Shapes::ShapeRef.new(shape: FilterRank, location_name: "rank"))
    UpdateFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    UpdateFilterRequest.struct_class = Types::UpdateFilterRequest

    UpdateFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    UpdateFilterResponse.struct_class = Types::UpdateFilterResponse

    UpdateFindingsFeedbackRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateFindingsFeedbackRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIds, required: true, location_name: "findingIds"))
    UpdateFindingsFeedbackRequest.add_member(:feedback, Shapes::ShapeRef.new(shape: Feedback, required: true, location_name: "feedback"))
    UpdateFindingsFeedbackRequest.add_member(:comments, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "comments"))
    UpdateFindingsFeedbackRequest.struct_class = Types::UpdateFindingsFeedbackRequest

    UpdateFindingsFeedbackResponse.struct_class = Types::UpdateFindingsFeedbackResponse

    UpdateIPSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateIPSetRequest.add_member(:ip_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ipSetId"))
    UpdateIPSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateIPSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateIPSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, location_name: "activate"))
    UpdateIPSetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    UpdateIPSetRequest.struct_class = Types::UpdateIPSetRequest

    UpdateIPSetResponse.struct_class = Types::UpdateIPSetResponse

    UpdateMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "malwareProtectionPlanId"))
    UpdateMalwareProtectionPlanRequest.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    UpdateMalwareProtectionPlanRequest.add_member(:actions, Shapes::ShapeRef.new(shape: MalwareProtectionPlanActions, location_name: "actions"))
    UpdateMalwareProtectionPlanRequest.add_member(:protected_resource, Shapes::ShapeRef.new(shape: UpdateProtectedResource, location_name: "protectedResource"))
    UpdateMalwareProtectionPlanRequest.struct_class = Types::UpdateMalwareProtectionPlanRequest

    UpdateMalwareScanSettingsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateMalwareScanSettingsRequest.add_member(:scan_resource_criteria, Shapes::ShapeRef.new(shape: ScanResourceCriteria, location_name: "scanResourceCriteria"))
    UpdateMalwareScanSettingsRequest.add_member(:ebs_snapshot_preservation, Shapes::ShapeRef.new(shape: EbsSnapshotPreservation, location_name: "ebsSnapshotPreservation"))
    UpdateMalwareScanSettingsRequest.struct_class = Types::UpdateMalwareScanSettingsRequest

    UpdateMalwareScanSettingsResponse.struct_class = Types::UpdateMalwareScanSettingsResponse

    UpdateMemberDetectorsRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateMemberDetectorsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, required: true, location_name: "accountIds"))
    UpdateMemberDetectorsRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigurations, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    UpdateMemberDetectorsRequest.add_member(:features, Shapes::ShapeRef.new(shape: MemberFeaturesConfigurations, location_name: "features"))
    UpdateMemberDetectorsRequest.struct_class = Types::UpdateMemberDetectorsRequest

    UpdateMemberDetectorsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: UnprocessedAccounts, required: true, location_name: "unprocessedAccounts"))
    UpdateMemberDetectorsResponse.struct_class = Types::UpdateMemberDetectorsResponse

    UpdateOrganizationConfigurationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "autoEnable", metadata: {"deprecatedMessage" => "This field is deprecated, use AutoEnableOrganizationMembers instead"}))
    UpdateOrganizationConfigurationRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: OrganizationDataSourceConfigurations, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    UpdateOrganizationConfigurationRequest.add_member(:features, Shapes::ShapeRef.new(shape: OrganizationFeaturesConfigurations, location_name: "features"))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable_organization_members, Shapes::ShapeRef.new(shape: AutoEnableMembers, location_name: "autoEnableOrganizationMembers"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    UpdateOrganizationConfigurationResponse.struct_class = Types::UpdateOrganizationConfigurationResponse

    UpdateProtectedResource.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: UpdateS3BucketResource, location_name: "s3Bucket"))
    UpdateProtectedResource.struct_class = Types::UpdateProtectedResource

    UpdatePublishingDestinationRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdatePublishingDestinationRequest.add_member(:destination_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "destinationId"))
    UpdatePublishingDestinationRequest.add_member(:destination_properties, Shapes::ShapeRef.new(shape: DestinationProperties, location_name: "destinationProperties"))
    UpdatePublishingDestinationRequest.struct_class = Types::UpdatePublishingDestinationRequest

    UpdatePublishingDestinationResponse.struct_class = Types::UpdatePublishingDestinationResponse

    UpdateS3BucketResource.add_member(:object_prefixes, Shapes::ShapeRef.new(shape: MalwareProtectionPlanObjectPrefixesList, location_name: "objectPrefixes"))
    UpdateS3BucketResource.struct_class = Types::UpdateS3BucketResource

    UpdateThreatEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateThreatEntitySetRequest.add_member(:threat_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatEntitySetId"))
    UpdateThreatEntitySetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateThreatEntitySetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateThreatEntitySetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    UpdateThreatEntitySetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, location_name: "activate"))
    UpdateThreatEntitySetRequest.struct_class = Types::UpdateThreatEntitySetRequest

    UpdateThreatEntitySetResponse.struct_class = Types::UpdateThreatEntitySetResponse

    UpdateThreatIntelSetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateThreatIntelSetRequest.add_member(:threat_intel_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "threatIntelSetId"))
    UpdateThreatIntelSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateThreatIntelSetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateThreatIntelSetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, location_name: "activate"))
    UpdateThreatIntelSetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "expectedBucketOwner"))
    UpdateThreatIntelSetRequest.struct_class = Types::UpdateThreatIntelSetRequest

    UpdateThreatIntelSetResponse.struct_class = Types::UpdateThreatIntelSetResponse

    UpdateTrustedEntitySetRequest.add_member(:detector_id, Shapes::ShapeRef.new(shape: DetectorId, required: true, location: "uri", location_name: "detectorId"))
    UpdateTrustedEntitySetRequest.add_member(:trusted_entity_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "trustedEntitySetId"))
    UpdateTrustedEntitySetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateTrustedEntitySetRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    UpdateTrustedEntitySetRequest.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, location_name: "expectedBucketOwner"))
    UpdateTrustedEntitySetRequest.add_member(:activate, Shapes::ShapeRef.new(shape: Boolean, location_name: "activate"))
    UpdateTrustedEntitySetRequest.struct_class = Types::UpdateTrustedEntitySetRequest

    UpdateTrustedEntitySetResponse.struct_class = Types::UpdateTrustedEntitySetResponse

    UsageAccountResult.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    UsageAccountResult.add_member(:total, Shapes::ShapeRef.new(shape: Total, location_name: "total"))
    UsageAccountResult.struct_class = Types::UsageAccountResult

    UsageAccountResultList.member = Shapes::ShapeRef.new(shape: UsageAccountResult)

    UsageCriteria.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIds"))
    UsageCriteria.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceList, deprecated: true, location_name: "dataSources", metadata: {"deprecatedMessage" => "This parameter is deprecated, use Features instead"}))
    UsageCriteria.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    UsageCriteria.add_member(:features, Shapes::ShapeRef.new(shape: UsageFeatureList, location_name: "features"))
    UsageCriteria.struct_class = Types::UsageCriteria

    UsageDataSourceResult.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    UsageDataSourceResult.add_member(:total, Shapes::ShapeRef.new(shape: Total, location_name: "total"))
    UsageDataSourceResult.struct_class = Types::UsageDataSourceResult

    UsageDataSourceResultList.member = Shapes::ShapeRef.new(shape: UsageDataSourceResult)

    UsageFeatureList.member = Shapes::ShapeRef.new(shape: UsageFeature)

    UsageFeatureResult.add_member(:feature, Shapes::ShapeRef.new(shape: UsageFeature, location_name: "feature"))
    UsageFeatureResult.add_member(:total, Shapes::ShapeRef.new(shape: Total, location_name: "total"))
    UsageFeatureResult.struct_class = Types::UsageFeatureResult

    UsageFeatureResultList.member = Shapes::ShapeRef.new(shape: UsageFeatureResult)

    UsageResourceResult.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    UsageResourceResult.add_member(:total, Shapes::ShapeRef.new(shape: Total, location_name: "total"))
    UsageResourceResult.struct_class = Types::UsageResourceResult

    UsageResourceResultList.member = Shapes::ShapeRef.new(shape: UsageResourceResult)

    UsageStatistics.add_member(:sum_by_account, Shapes::ShapeRef.new(shape: UsageAccountResultList, location_name: "sumByAccount"))
    UsageStatistics.add_member(:top_accounts_by_feature, Shapes::ShapeRef.new(shape: UsageTopAccountsResultList, location_name: "topAccountsByFeature"))
    UsageStatistics.add_member(:sum_by_data_source, Shapes::ShapeRef.new(shape: UsageDataSourceResultList, location_name: "sumByDataSource"))
    UsageStatistics.add_member(:sum_by_resource, Shapes::ShapeRef.new(shape: UsageResourceResultList, location_name: "sumByResource"))
    UsageStatistics.add_member(:top_resources, Shapes::ShapeRef.new(shape: UsageResourceResultList, location_name: "topResources"))
    UsageStatistics.add_member(:sum_by_feature, Shapes::ShapeRef.new(shape: UsageFeatureResultList, location_name: "sumByFeature"))
    UsageStatistics.struct_class = Types::UsageStatistics

    UsageTopAccountResult.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    UsageTopAccountResult.add_member(:total, Shapes::ShapeRef.new(shape: Total, location_name: "total"))
    UsageTopAccountResult.struct_class = Types::UsageTopAccountResult

    UsageTopAccountsByFeatureList.member = Shapes::ShapeRef.new(shape: UsageTopAccountResult)

    UsageTopAccountsResult.add_member(:feature, Shapes::ShapeRef.new(shape: UsageFeature, location_name: "feature"))
    UsageTopAccountsResult.add_member(:accounts, Shapes::ShapeRef.new(shape: UsageTopAccountsByFeatureList, location_name: "accounts"))
    UsageTopAccountsResult.struct_class = Types::UsageTopAccountsResult

    UsageTopAccountsResultList.member = Shapes::ShapeRef.new(shape: UsageTopAccountsResult)

    User.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    User.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    User.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    User.add_member(:credential_uid, Shapes::ShapeRef.new(shape: String, location_name: "credentialUid"))
    User.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "account"))
    User.struct_class = Types::User

    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Volume.add_member(:host_path, Shapes::ShapeRef.new(shape: HostPath, location_name: "hostPath"))
    Volume.struct_class = Types::Volume

    VolumeDetail.add_member(:volume_arn, Shapes::ShapeRef.new(shape: String, location_name: "volumeArn"))
    VolumeDetail.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, location_name: "volumeType"))
    VolumeDetail.add_member(:device_name, Shapes::ShapeRef.new(shape: String, location_name: "deviceName"))
    VolumeDetail.add_member(:volume_size_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "volumeSizeInGB"))
    VolumeDetail.add_member(:encryption_type, Shapes::ShapeRef.new(shape: String, location_name: "encryptionType"))
    VolumeDetail.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotArn"))
    VolumeDetail.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyArn"))
    VolumeDetail.struct_class = Types::VolumeDetail

    VolumeDetails.member = Shapes::ShapeRef.new(shape: VolumeDetail)

    VolumeMount.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    VolumeMount.add_member(:mount_path, Shapes::ShapeRef.new(shape: String, location_name: "mountPath"))
    VolumeMount.struct_class = Types::VolumeMount

    VolumeMounts.member = Shapes::ShapeRef.new(shape: VolumeMount)

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    VpcConfig.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    VpcConfig.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-28"

      api.metadata = {
        "apiVersion" => "2017-11-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "guardduty",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon GuardDuty",
        "serviceId" => "GuardDuty",
        "signatureVersion" => "v4",
        "signingName" => "guardduty",
        "uid" => "guardduty-2017-11-28",
      }

      api.add_operation(:accept_administrator_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptAdministratorInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/administrator"
        o.input = Shapes::ShapeRef.new(shape: AcceptAdministratorInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptAdministratorInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/master"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:archive_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ArchiveFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/archive"
        o.input = Shapes::ShapeRef.new(shape: ArchiveFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ArchiveFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detector"
        o.input = Shapes::ShapeRef.new(shape: CreateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/filter"
        o.input = Shapes::ShapeRef.new(shape: CreateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/ipset"
        o.input = Shapes::ShapeRef.new(shape: CreateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_malware_protection_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMalwareProtectionPlan"
        o.http_method = "POST"
        o.http_request_uri = "/malware-protection-plan"
        o.input = Shapes::ShapeRef.new(shape: CreateMalwareProtectionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMalwareProtectionPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member"
        o.input = Shapes::ShapeRef.new(shape: CreateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_publishing_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePublishingDestination"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/publishingDestination"
        o.input = Shapes::ShapeRef.new(shape: CreatePublishingDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePublishingDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_sample_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSampleFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/create"
        o.input = Shapes::ShapeRef.new(shape: CreateSampleFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSampleFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_threat_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThreatEntitySet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatentityset"
        o.input = Shapes::ShapeRef.new(shape: CreateThreatEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThreatEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThreatIntelSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatintelset"
        o.input = Shapes::ShapeRef.new(shape: CreateThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_trusted_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTrustedEntitySet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/trustedentityset"
        o.input = Shapes::ShapeRef.new(shape: CreateTrustedEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTrustedEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:decline_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitation/decline"
        o.input = Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDetector"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFilter"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIPSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitation/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_malware_protection_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMalwareProtectionPlan"
        o.http_method = "DELETE"
        o.http_request_uri = "/malware-protection-plan/{malwareProtectionPlanId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMalwareProtectionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_publishing_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublishingDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/publishingDestination/{destinationId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePublishingDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePublishingDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_threat_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThreatEntitySet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/threatentityset/{threatEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThreatEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThreatEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThreatIntelSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_trusted_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTrustedEntitySet"
        o.http_method = "DELETE"
        o.http_request_uri = "/detector/{detectorId}/trustedentityset/{trustedEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTrustedEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTrustedEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_malware_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMalwareScans"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/malware-scans"
        o.input = Shapes::ShapeRef.new(shape: DescribeMalwareScansRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMalwareScansResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/admin"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_publishing_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePublishingDestination"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/publishingDestination/{destinationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePublishingDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePublishingDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/admin/disable"
        o.input = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_from_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromAdministratorAccount"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/administrator/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/master/disassociate"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:disassociate_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:enable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/admin/enable"
        o.input = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdministratorAccount"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/administrator"
        o.input = Shapes::ShapeRef.new(shape: GetAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_coverage_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCoverageStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/coverage/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetCoverageStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCoverageStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDetector"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: GetDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFilter"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: GetFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/get"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_findings_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIPSet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: GetIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_invitations_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationsCount"
        o.http_method = "GET"
        o.http_request_uri = "/invitation/count"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_malware_protection_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMalwareProtectionPlan"
        o.http_method = "GET"
        o.http_request_uri = "/malware-protection-plan/{malwareProtectionPlanId}"
        o.input = Shapes::ShapeRef.new(shape: GetMalwareProtectionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMalwareProtectionPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_malware_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMalwareScan"
        o.http_method = "GET"
        o.http_request_uri = "/malware-scan/{scanId}"
        o.input = Shapes::ShapeRef.new(shape: GetMalwareScanRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMalwareScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_malware_scan_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMalwareScanSettings"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/malware-scan-settings"
        o.input = Shapes::ShapeRef.new(shape: GetMalwareScanSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMalwareScanSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMasterAccount"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/master"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_member_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemberDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/detector/get"
        o.input = Shapes::ShapeRef.new(shape: GetMemberDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMemberDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/get"
        o.input = Shapes::ShapeRef.new(shape: GetMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_organization_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationStatistics"
        o.http_method = "GET"
        o.http_request_uri = "/organization/statistics"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_remaining_free_trial_days, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRemainingFreeTrialDays"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/freeTrial/daysRemaining"
        o.input = Shapes::ShapeRef.new(shape: GetRemainingFreeTrialDaysRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRemainingFreeTrialDaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_threat_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThreatEntitySet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatentityset/{threatEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: GetThreatEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThreatEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThreatIntelSet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: GetThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_trusted_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrustedEntitySet"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/trustedentityset/{trustedEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: GetTrustedEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrustedEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_usage_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/usage/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetUsageStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:invite_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/invite"
        o.input = Shapes::ShapeRef.new(shape: InviteMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_coverage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCoverage"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/coverage"
        o.input = Shapes::ShapeRef.new(shape: ListCoverageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCoverageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectors"
        o.http_method = "GET"
        o.http_request_uri = "/detector"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFilters"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/filter"
        o.input = Shapes::ShapeRef.new(shape: ListFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.http_request_uri = "/detector/{detectorId}/findings"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ip_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIPSets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/ipset"
        o.input = Shapes::ShapeRef.new(shape: ListIPSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIPSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "GET"
        o.http_request_uri = "/invitation"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_malware_protection_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMalwareProtectionPlans"
        o.http_method = "GET"
        o.http_request_uri = "/malware-protection-plan"
        o.input = Shapes::ShapeRef.new(shape: ListMalwareProtectionPlansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMalwareProtectionPlansResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_malware_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMalwareScans"
        o.http_method = "POST"
        o.http_request_uri = "/malware-scan"
        o.input = Shapes::ShapeRef.new(shape: ListMalwareScansRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMalwareScansResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/member"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_admin_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationAdminAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/admin"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_publishing_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublishingDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/publishingDestination"
        o.input = Shapes::ShapeRef.new(shape: ListPublishingDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublishingDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_threat_entity_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatEntitySets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatentityset"
        o.input = Shapes::ShapeRef.new(shape: ListThreatEntitySetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThreatEntitySetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threat_intel_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatIntelSets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/threatintelset"
        o.input = Shapes::ShapeRef.new(shape: ListThreatIntelSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThreatIntelSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_trusted_entity_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTrustedEntitySets"
        o.http_method = "GET"
        o.http_request_uri = "/detector/{detectorId}/trustedentityset"
        o.input = Shapes::ShapeRef.new(shape: ListTrustedEntitySetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTrustedEntitySetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_object_malware_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendObjectMalwareScan"
        o.http_method = "POST"
        o.http_request_uri = "/object-malware-scan/send"
        o.input = Shapes::ShapeRef.new(shape: SendObjectMalwareScanRequest)
        o.output = Shapes::ShapeRef.new(shape: SendObjectMalwareScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:start_malware_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMalwareScan"
        o.http_method = "POST"
        o.http_request_uri = "/malware-scan/start"
        o.input = Shapes::ShapeRef.new(shape: StartMalwareScanRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMalwareScanResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:start_monitoring_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitoringMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/start"
        o.input = Shapes::ShapeRef.new(shape: StartMonitoringMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMonitoringMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:stop_monitoring_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMonitoringMembers"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/stop"
        o.input = Shapes::ShapeRef.new(shape: StopMonitoringMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMonitoringMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:unarchive_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnarchiveFindings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/unarchive"
        o.input = Shapes::ShapeRef.new(shape: UnarchiveFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UnarchiveFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFilter"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/filter/{filterName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_findings_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindingsFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/findings/feedback"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingsFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_ip_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIPSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/ipset/{ipSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIPSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIPSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_malware_protection_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMalwareProtectionPlan"
        o.http_method = "PATCH"
        o.http_request_uri = "/malware-protection-plan/{malwareProtectionPlanId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMalwareProtectionPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_malware_scan_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMalwareScanSettings"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/malware-scan-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateMalwareScanSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMalwareScanSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_member_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMemberDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/member/detector/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateMemberDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMemberDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/admin"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_publishing_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePublishingDestination"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/publishingDestination/{destinationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePublishingDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePublishingDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_threat_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThreatEntitySet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatentityset/{threatEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThreatEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThreatEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_threat_intel_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThreatIntelSet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/threatintelset/{threatIntelSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThreatIntelSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThreatIntelSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_trusted_entity_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTrustedEntitySet"
        o.http_method = "POST"
        o.http_request_uri = "/detector/{detectorId}/trustedentityset/{trustedEntitySetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTrustedEntitySetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTrustedEntitySetResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
