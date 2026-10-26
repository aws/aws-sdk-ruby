# frozen_string_literal: true

# This is generated code!

module Aws::GuardDuty
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptAdministratorInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AcceptAdministratorInvitationRequest", name: "AcceptAdministratorInvitationRequest")
    AcceptAdministratorInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AcceptAdministratorInvitationResponse", name: "AcceptAdministratorInvitationResponse")
    AcceptInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AcceptInvitationRequest", name: "AcceptInvitationRequest", traits: {"smithy.api#deprecated" => {"message" => "This input is deprecated, use AcceptAdministratorInvitationRequest instead"}})
    AcceptInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AcceptInvitationResponse", name: "AcceptInvitationResponse", traits: {"smithy.api#deprecated" => {"message" => "This output is deprecated, use AcceptAdministratorInvitationResponse instead"}})
    AccessControlList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccessControlList", name: "AccessControlList")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccessKey", name: "AccessKey")
    AccessKeyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccessKeyDetails", name: "AccessKeyDetails")
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Account", name: "Account")
    AccountDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccountDetail", name: "AccountDetail")
    AccountDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AccountDetails", name: "AccountDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AccountFreeTrialInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccountFreeTrialInfo", name: "AccountFreeTrialInfo")
    AccountFreeTrialInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AccountFreeTrialInfos", name: "AccountFreeTrialInfos")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}})
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AccountIds", name: "AccountIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AccountLevelPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccountLevelPermissions", name: "AccountLevelPermissions")
    AccountStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AccountStatistics", name: "AccountStatistics")
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Action", name: "Action")
    Activities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Activities", name: "Activities", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Activity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Activity", name: "Activity")
    ActivityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ActivityType", name: "ActivityType")
    Actor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Actor", name: "Actor")
    ActorIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ActorIds", name: "ActorIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ActorProcess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ActorProcess", name: "ActorProcess")
    Actors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Actors", name: "Actors", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    AdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AdditionalInfo", name: "AdditionalInfo")
    AdditionalSequenceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AdditionalSequenceTypes", name: "AdditionalSequenceTypes")
    AddonDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AddonDetails", name: "AddonDetails")
    AdminAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AdminAccount", name: "AdminAccount")
    AdminAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AdminAccounts", name: "AdminAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    AdminStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#AdminStatus", name: "AdminStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    Administrator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Administrator", name: "Administrator")
    AffectedResources = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#AffectedResources", name: "AffectedResources")
    AgentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AgentDetails", name: "AgentDetails")
    Anomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Anomaly", name: "Anomaly")
    AnomalyObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AnomalyObject", name: "AnomalyObject")
    AnomalyProfileFeatureObjects = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AnomalyProfileFeatureObjects", name: "AnomalyProfileFeatureObjects")
    AnomalyProfileFeatures = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#AnomalyProfileFeatures", name: "AnomalyProfileFeatures")
    AnomalyProfiles = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#AnomalyProfiles", name: "AnomalyProfiles")
    AnomalyUnusual = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AnomalyUnusual", name: "AnomalyUnusual")
    AnomalyUnusualBehaviorFeature = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#AnomalyUnusualBehaviorFeature", name: "AnomalyUnusualBehaviorFeature")
    ApiCall = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ApiCall", name: "ApiCall")
    ArchiveFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ArchiveFindingsRequest", name: "ArchiveFindingsRequest")
    ArchiveFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ArchiveFindingsResponse", name: "ArchiveFindingsResponse")
    AssociationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AssociationDetail", name: "AssociationDetail")
    AssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#AssociationId", name: "AssociationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,64}$"})
    AssociationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#AssociationMode", name: "AssociationMode")
    AssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AssociationSummary", name: "AssociationSummary")
    AssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#AssociationSummaryList", name: "AssociationSummaryList")
    AutoEnableMembers = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#AutoEnableMembers", name: "AutoEnableMembers")
    AutonomousSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AutonomousSystem", name: "AutonomousSystem")
    AutoscalingAutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AutoscalingAutoScalingGroup", name: "AutoscalingAutoScalingGroup")
    AwsApiCallAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#AwsApiCallAction", name: "AwsApiCallAction")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BedrockGuardrail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BedrockGuardrail", name: "BedrockGuardrail")
    BedrockGuardrailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BedrockGuardrailDetails", name: "BedrockGuardrailDetails")
    BedrockGuardrailResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BedrockGuardrailResource", name: "BedrockGuardrailResource")
    BedrockGuardrails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#BedrockGuardrails", name: "BedrockGuardrails", traits: {"smithy.api#length" => {"max" => 10}})
    Behavior = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#Behavior", name: "Behavior")
    BlockPublicAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BlockPublicAccess", name: "BlockPublicAccess")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.guardduty#Boolean", name: "Boolean")
    BucketLevelPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BucketLevelPermissions", name: "BucketLevelPermissions")
    BucketPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#BucketPolicy", name: "BucketPolicy")
    City = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#City", name: "City")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    CloudDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CloudDetails", name: "CloudDetails")
    CloudProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CloudProvider", name: "CloudProvider", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    CloudTrailConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CloudTrailConfigurationResult", name: "CloudTrailConfigurationResult")
    CloudformationStack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CloudformationStack", name: "CloudformationStack")
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ClusterStatus", name: "ClusterStatus")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Condition", name: "Condition")
    Confidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#Confidence", name: "Confidence", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ConfidenceLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ConfidenceLevel", name: "ConfidenceLevel")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Container", name: "Container")
    ContainerFindingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ContainerFindingResource", name: "ContainerFindingResource")
    ContainerImageUid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ContainerImageUid", name: "ContainerImageUid", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ContainerInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ContainerInstanceDetails", name: "ContainerInstanceDetails")
    ContainerUid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ContainerUid", name: "ContainerUid", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ContainerUids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ContainerUids", name: "ContainerUids")
    Containers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Containers", name: "Containers")
    ContentPolicyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ContentPolicyFilter", name: "ContentPolicyFilter")
    ContentPolicyFilterAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ContentPolicyFilterAction", name: "ContentPolicyFilterAction")
    ContentPolicyFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ContentPolicyFilterType", name: "ContentPolicyFilterType")
    ContentPolicyFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ContentPolicyFilters", name: "ContentPolicyFilters", traits: {"smithy.api#length" => {"max" => 10}})
    ContinuousScanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ContinuousScanDetails", name: "ContinuousScanDetails")
    CountByCoverageStatus = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#CountByCoverageStatus", name: "CountByCoverageStatus")
    CountByResourceType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#CountByResourceType", name: "CountByResourceType")
    CountBySeverity = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#CountBySeverity", name: "CountBySeverity")
    Country = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Country", name: "Country")
    CoverageEc2InstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageEc2InstanceDetails", name: "CoverageEc2InstanceDetails")
    CoverageEcsClusterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageEcsClusterDetails", name: "CoverageEcsClusterDetails")
    CoverageEksClusterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageEksClusterDetails", name: "CoverageEksClusterDetails")
    CoverageFilterCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageFilterCondition", name: "CoverageFilterCondition")
    CoverageFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageFilterCriteria", name: "CoverageFilterCriteria")
    CoverageFilterCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageFilterCriterion", name: "CoverageFilterCriterion")
    CoverageFilterCriterionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CoverageFilterCriterionKey", name: "CoverageFilterCriterionKey")
    CoverageFilterCriterionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#CoverageFilterCriterionList", name: "CoverageFilterCriterionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    CoverageResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageResource", name: "CoverageResource")
    CoverageResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageResourceDetails", name: "CoverageResourceDetails")
    CoverageResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#CoverageResources", name: "CoverageResources")
    CoverageSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageSortCriteria", name: "CoverageSortCriteria")
    CoverageSortKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CoverageSortKey", name: "CoverageSortKey")
    CoverageStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CoverageStatistics", name: "CoverageStatistics")
    CoverageStatisticsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CoverageStatisticsType", name: "CoverageStatisticsType")
    CoverageStatisticsTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#CoverageStatisticsTypeList", name: "CoverageStatisticsTypeList")
    CoverageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CoverageStatus", name: "CoverageStatus")
    CreateCustomDetectionRuleAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateCustomDetectionRuleAssociationRequest", name: "CreateCustomDetectionRuleAssociationRequest")
    CreateCustomDetectionRuleAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateCustomDetectionRuleAssociationResponse", name: "CreateCustomDetectionRuleAssociationResponse")
    CreateCustomDetectionRuleOrgConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateCustomDetectionRuleOrgConfigurationRequest", name: "CreateCustomDetectionRuleOrgConfigurationRequest")
    CreateCustomDetectionRuleOrgConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateCustomDetectionRuleOrgConfigurationResponse", name: "CreateCustomDetectionRuleOrgConfigurationResponse")
    CreateDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateDetectorRequest", name: "CreateDetectorRequest")
    CreateDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateDetectorResponse", name: "CreateDetectorResponse")
    CreateFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateFilterRequest", name: "CreateFilterRequest")
    CreateFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateFilterResponse", name: "CreateFilterResponse")
    CreateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateIPSetRequest", name: "CreateIPSetRequest")
    CreateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateIPSetResponse", name: "CreateIPSetResponse")
    CreateInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateInvestigationRequest", name: "CreateInvestigationRequest")
    CreateInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateInvestigationResponse", name: "CreateInvestigationResponse")
    CreateMalwareProtectionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateMalwareProtectionPlanRequest", name: "CreateMalwareProtectionPlanRequest")
    CreateMalwareProtectionPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateMalwareProtectionPlanResponse", name: "CreateMalwareProtectionPlanResponse")
    CreateMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateMembersRequest", name: "CreateMembersRequest")
    CreateMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateMembersResponse", name: "CreateMembersResponse")
    CreateProtectedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateProtectedResource", name: "CreateProtectedResource")
    CreatePublishingDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreatePublishingDestinationRequest", name: "CreatePublishingDestinationRequest")
    CreatePublishingDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreatePublishingDestinationResponse", name: "CreatePublishingDestinationResponse")
    CreateS3BucketResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateS3BucketResource", name: "CreateS3BucketResource")
    CreateSampleFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateSampleFindingsRequest", name: "CreateSampleFindingsRequest")
    CreateSampleFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateSampleFindingsResponse", name: "CreateSampleFindingsResponse")
    CreateThreatEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateThreatEntitySetRequest", name: "CreateThreatEntitySetRequest")
    CreateThreatEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateThreatEntitySetResponse", name: "CreateThreatEntitySetResponse")
    CreateThreatIntelSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateThreatIntelSetRequest", name: "CreateThreatIntelSetRequest")
    CreateThreatIntelSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateThreatIntelSetResponse", name: "CreateThreatIntelSetResponse")
    CreateTrustedEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateTrustedEntitySetRequest", name: "CreateTrustedEntitySetRequest")
    CreateTrustedEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#CreateTrustedEntitySetResponse", name: "CreateTrustedEntitySetResponse")
    Criterion = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#Criterion", name: "Criterion")
    CriterionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#CriterionKey", name: "CriterionKey")
    DNSLogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DNSLogsConfigurationResult", name: "DNSLogsConfigurationResult")
    DataSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DataSource", name: "DataSource")
    DataSourceConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DataSourceConfigurations", name: "DataSourceConfigurations")
    DataSourceConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DataSourceConfigurationsResult", name: "DataSourceConfigurationsResult")
    DataSourceFreeTrial = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DataSourceFreeTrial", name: "DataSourceFreeTrial")
    DataSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DataSourceList", name: "DataSourceList")
    DataSourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DataSourceStatus", name: "DataSourceStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DataSourcesFreeTrial = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DataSourcesFreeTrial", name: "DataSourcesFreeTrial")
    DateStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DateStatistics", name: "DateStatistics")
    DeclineInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeclineInvitationsRequest", name: "DeclineInvitationsRequest")
    DeclineInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeclineInvitationsResponse", name: "DeclineInvitationsResponse")
    DefaultServerSideEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DefaultServerSideEncryption", name: "DefaultServerSideEncryption")
    DeleteCustomDetectionRuleAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteCustomDetectionRuleAssociationRequest", name: "DeleteCustomDetectionRuleAssociationRequest")
    DeleteCustomDetectionRuleAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteCustomDetectionRuleAssociationResponse", name: "DeleteCustomDetectionRuleAssociationResponse")
    DeleteCustomDetectionRuleOrgConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteCustomDetectionRuleOrgConfigurationRequest", name: "DeleteCustomDetectionRuleOrgConfigurationRequest")
    DeleteCustomDetectionRuleOrgConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteCustomDetectionRuleOrgConfigurationResponse", name: "DeleteCustomDetectionRuleOrgConfigurationResponse")
    DeleteDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteDetectorRequest", name: "DeleteDetectorRequest")
    DeleteDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteDetectorResponse", name: "DeleteDetectorResponse")
    DeleteFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteFilterRequest", name: "DeleteFilterRequest")
    DeleteFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteFilterResponse", name: "DeleteFilterResponse")
    DeleteIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteIPSetRequest", name: "DeleteIPSetRequest")
    DeleteIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteIPSetResponse", name: "DeleteIPSetResponse")
    DeleteInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteInvitationsRequest", name: "DeleteInvitationsRequest")
    DeleteInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteInvitationsResponse", name: "DeleteInvitationsResponse")
    DeleteMalwareProtectionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteMalwareProtectionPlanRequest", name: "DeleteMalwareProtectionPlanRequest")
    DeleteMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteMembersRequest", name: "DeleteMembersRequest")
    DeleteMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteMembersResponse", name: "DeleteMembersResponse")
    DeletePublishingDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeletePublishingDestinationRequest", name: "DeletePublishingDestinationRequest")
    DeletePublishingDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeletePublishingDestinationResponse", name: "DeletePublishingDestinationResponse")
    DeleteThreatEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteThreatEntitySetRequest", name: "DeleteThreatEntitySetRequest")
    DeleteThreatEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteThreatEntitySetResponse", name: "DeleteThreatEntitySetResponse")
    DeleteThreatIntelSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteThreatIntelSetRequest", name: "DeleteThreatIntelSetRequest")
    DeleteThreatIntelSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteThreatIntelSetResponse", name: "DeleteThreatIntelSetResponse")
    DeleteTrustedEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteTrustedEntitySetRequest", name: "DeleteTrustedEntitySetRequest")
    DeleteTrustedEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DeleteTrustedEntitySetResponse", name: "DeleteTrustedEntitySetResponse")
    DescribeMalwareScansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribeMalwareScansRequest", name: "DescribeMalwareScansRequest")
    DescribeMalwareScansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribeMalwareScansResponse", name: "DescribeMalwareScansResponse")
    DescribeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribeOrganizationConfigurationRequest", name: "DescribeOrganizationConfigurationRequest")
    DescribeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribeOrganizationConfigurationResponse", name: "DescribeOrganizationConfigurationResponse")
    DescribePublishingDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribePublishingDestinationRequest", name: "DescribePublishingDestinationRequest")
    DescribePublishingDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DescribePublishingDestinationResponse", name: "DescribePublishingDestinationResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Destination", name: "Destination")
    DestinationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DestinationProperties", name: "DestinationProperties")
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DestinationType", name: "DestinationType", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    Destinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Destinations", name: "Destinations")
    Detection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Detection", name: "Detection")
    DetectionRuleAccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectionRuleAccountIds", name: "DetectionRuleAccountIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50000}})
    DetectionRuleAgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectionRuleAgentVersion", name: "DetectionRuleAgentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9]+(\\.[0-9]+){1,3}$"})
    DetectionRuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectionRuleArn", name: "DetectionRuleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:([0-9]*|aws):.+$"})
    DetectionRuleConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectionRuleConfigurationStatus", name: "DetectionRuleConfigurationStatus")
    DetectionRuleDataSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectionRuleDataSource", name: "DetectionRuleDataSource")
    DetectionRuleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectionRuleDescription", name: "DetectionRuleDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DetectionRuleEc2Requirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleEc2Requirements", name: "DetectionRuleEc2Requirements")
    DetectionRuleEcsFargateRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleEcsFargateRequirements", name: "DetectionRuleEcsFargateRequirements")
    DetectionRuleEksRequirements = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleEksRequirements", name: "DetectionRuleEksRequirements")
    DetectionRuleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleFilter", name: "DetectionRuleFilter")
    DetectionRuleFilterCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectionRuleFilterCondition", name: "DetectionRuleFilterCondition")
    DetectionRuleFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectionRuleFilterList", name: "DetectionRuleFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DetectionRuleFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectionRuleFilterValue", name: "DetectionRuleFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.\\-:/]+$"})
    DetectionRuleFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectionRuleFilterValues", name: "DetectionRuleFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DetectionRuleMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#DetectionRuleMaxResults", name: "DetectionRuleMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DetectionRuleOrgConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleOrgConfiguration", name: "DetectionRuleOrgConfiguration")
    DetectionRuleOrgConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleOrgConfigurationSummary", name: "DetectionRuleOrgConfigurationSummary")
    DetectionRuleOrgConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectionRuleOrgConfigurationSummaryList", name: "DetectionRuleOrgConfigurationSummaryList")
    DetectionRuleRuntimeMonitoringDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleRuntimeMonitoringDetails", name: "DetectionRuleRuntimeMonitoringDetails")
    DetectionRuleRuntimePlatforms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectionRuleRuntimePlatforms", name: "DetectionRuleRuntimePlatforms")
    DetectionRuleServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectionRuleServiceName", name: "DetectionRuleServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    DetectionRuleSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectionRuleSeverity", name: "DetectionRuleSeverity")
    DetectionSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectionSource", name: "DetectionSource")
    DetectorAdditionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectorAdditionalConfiguration", name: "DetectorAdditionalConfiguration")
    DetectorAdditionalConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectorAdditionalConfigurationResult", name: "DetectorAdditionalConfigurationResult")
    DetectorAdditionalConfigurationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectorAdditionalConfigurationResults", name: "DetectorAdditionalConfigurationResults")
    DetectorAdditionalConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectorAdditionalConfigurations", name: "DetectorAdditionalConfigurations")
    DetectorFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectorFeature", name: "DetectorFeature")
    DetectorFeatureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectorFeatureConfiguration", name: "DetectorFeatureConfiguration")
    DetectorFeatureConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DetectorFeatureConfigurationResult", name: "DetectorFeatureConfigurationResult")
    DetectorFeatureConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectorFeatureConfigurations", name: "DetectorFeatureConfigurations")
    DetectorFeatureConfigurationsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectorFeatureConfigurationsResults", name: "DetectorFeatureConfigurationsResults")
    DetectorFeatureResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectorFeatureResult", name: "DetectorFeatureResult")
    DetectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#DetectorId", name: "DetectorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DetectorIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#DetectorIds", name: "DetectorIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DetectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#DetectorStatus", name: "DetectorStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DisableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisableOrganizationAdminAccountRequest", name: "DisableOrganizationAdminAccountRequest")
    DisableOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisableOrganizationAdminAccountResponse", name: "DisableOrganizationAdminAccountResponse")
    DisassociateFromAdministratorAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateFromAdministratorAccountRequest", name: "DisassociateFromAdministratorAccountRequest")
    DisassociateFromAdministratorAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateFromAdministratorAccountResponse", name: "DisassociateFromAdministratorAccountResponse")
    DisassociateFromMasterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateFromMasterAccountRequest", name: "DisassociateFromMasterAccountRequest", traits: {"smithy.api#deprecated" => {"message" => "This input is deprecated, use DisassociateFromAdministratorAccountRequest instead"}})
    DisassociateFromMasterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateFromMasterAccountResponse", name: "DisassociateFromMasterAccountResponse", traits: {"smithy.api#deprecated" => {"message" => "This output is deprecated, use DisassociateFromAdministratorAccountResponse instead"}})
    DisassociateMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateMembersRequest", name: "DisassociateMembersRequest")
    DisassociateMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DisassociateMembersResponse", name: "DisassociateMembersResponse")
    DnsRequestAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DnsRequestAction", name: "DnsRequestAction")
    DomainDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#DomainDetails", name: "DomainDetails")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.guardduty#Double", name: "Double")
    EbsSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EbsSnapshot", name: "EbsSnapshot")
    EbsSnapshotDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EbsSnapshotDetails", name: "EbsSnapshotDetails")
    EbsSnapshotPreservation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#EbsSnapshotPreservation", name: "EbsSnapshotPreservation")
    EbsVolumeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EbsVolumeDetails", name: "EbsVolumeDetails")
    EbsVolumeScanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EbsVolumeScanDetails", name: "EbsVolumeScanDetails")
    EbsVolumesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EbsVolumesResult", name: "EbsVolumesResult")
    Ec2Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2Image", name: "Ec2Image")
    Ec2ImageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2ImageDetails", name: "Ec2ImageDetails")
    Ec2Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2Instance", name: "Ec2Instance")
    Ec2InstanceUid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#Ec2InstanceUid", name: "Ec2InstanceUid", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Ec2InstanceUids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Ec2InstanceUids", name: "Ec2InstanceUids", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Ec2LaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2LaunchTemplate", name: "Ec2LaunchTemplate")
    Ec2NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2NetworkInterface", name: "Ec2NetworkInterface")
    Ec2NetworkInterfaceUids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Ec2NetworkInterfaceUids", name: "Ec2NetworkInterfaceUids")
    Ec2Vpc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Ec2Vpc", name: "Ec2Vpc")
    EcsCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EcsCluster", name: "EcsCluster")
    EcsClusterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EcsClusterDetails", name: "EcsClusterDetails")
    EcsClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#EcsClusterStatus", name: "EcsClusterStatus")
    EcsLaunchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#EcsLaunchType", name: "EcsLaunchType")
    EcsTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EcsTask", name: "EcsTask")
    EcsTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EcsTaskDetails", name: "EcsTaskDetails")
    EksCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EksCluster", name: "EksCluster")
    EksClusterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EksClusterDetails", name: "EksClusterDetails")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    EnableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EnableOrganizationAdminAccountRequest", name: "EnableOrganizationAdminAccountRequest")
    EnableOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#EnableOrganizationAdminAccountResponse", name: "EnableOrganizationAdminAccountResponse")
    EndpointIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#EndpointIds", name: "EndpointIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    Eq = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Eq", name: "Eq")
    Equals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Equals", name: "Equals")
    Evidence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Evidence", name: "Evidence")
    ExpectedBucketOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ExpectedBucketOwner", name: "ExpectedBucketOwner", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    FargateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FargateDetails", name: "FargateDetails")
    FeatureAdditionalConfiguration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FeatureAdditionalConfiguration", name: "FeatureAdditionalConfiguration")
    FeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FeatureStatus", name: "FeatureStatus")
    Feedback = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#Feedback", name: "Feedback")
    FilePaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FilePaths", name: "FilePaths")
    FilterAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FilterAction", name: "FilterAction", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    FilterCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FilterCondition", name: "FilterCondition")
    FilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FilterCriteria", name: "FilterCriteria")
    FilterCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FilterCriterion", name: "FilterCriterion")
    FilterCriterionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FilterCriterionList", name: "FilterCriterionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    FilterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#FilterDescription", name: "FilterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    FilterFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FilterFieldName", name: "FilterFieldName")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}})
    FilterNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FilterNames", name: "FilterNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FilterRank = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#FilterRank", name: "FilterRank", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    FilterVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#FilterVersion", name: "FilterVersion", traits: {"smithy.api#range" => {"min" => 1}})
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Finding", name: "Finding")
    FindingCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FindingCriteria", name: "FindingCriteria")
    FindingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#FindingId", name: "FindingId", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    FindingIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FindingIds", name: "FindingIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FindingPublishingFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FindingPublishingFrequency", name: "FindingPublishingFrequency")
    FindingResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FindingResourceType", name: "FindingResourceType")
    FindingStatisticType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FindingStatisticType", name: "FindingStatisticType")
    FindingStatisticTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FindingStatisticTypes", name: "FindingStatisticTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    FindingStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FindingStatistics", name: "FindingStatistics")
    FindingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#FindingType", name: "FindingType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FindingTypeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FindingTypeStatistics", name: "FindingTypeStatistics")
    FindingTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FindingTypes", name: "FindingTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    Findings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Findings", name: "Findings", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FlagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FlagsList", name: "FlagsList")
    FlowLogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FlowLogsConfigurationResult", name: "FlowLogsConfigurationResult")
    FreeTrialFeatureConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#FreeTrialFeatureConfigurationResult", name: "FreeTrialFeatureConfigurationResult")
    FreeTrialFeatureConfigurationsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#FreeTrialFeatureConfigurationsResults", name: "FreeTrialFeatureConfigurationsResults")
    FreeTrialFeatureResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#FreeTrialFeatureResult", name: "FreeTrialFeatureResult")
    GeoLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GeoLocation", name: "GeoLocation")
    GetAdministratorAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetAdministratorAccountRequest", name: "GetAdministratorAccountRequest")
    GetAdministratorAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetAdministratorAccountResponse", name: "GetAdministratorAccountResponse")
    GetCoverageStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCoverageStatisticsRequest", name: "GetCoverageStatisticsRequest")
    GetCoverageStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCoverageStatisticsResponse", name: "GetCoverageStatisticsResponse")
    GetCustomDetectionRuleAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleAssociationRequest", name: "GetCustomDetectionRuleAssociationRequest")
    GetCustomDetectionRuleAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleAssociationResponse", name: "GetCustomDetectionRuleAssociationResponse")
    GetCustomDetectionRuleOrgConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleOrgConfigurationRequest", name: "GetCustomDetectionRuleOrgConfigurationRequest")
    GetCustomDetectionRuleOrgConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleOrgConfigurationResponse", name: "GetCustomDetectionRuleOrgConfigurationResponse")
    GetCustomDetectionRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleRequest", name: "GetCustomDetectionRuleRequest")
    GetCustomDetectionRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetCustomDetectionRuleResponse", name: "GetCustomDetectionRuleResponse")
    GetDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetDetectorRequest", name: "GetDetectorRequest")
    GetDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetDetectorResponse", name: "GetDetectorResponse")
    GetFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFilterRequest", name: "GetFilterRequest")
    GetFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFilterResponse", name: "GetFilterResponse")
    GetFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFindingsRequest", name: "GetFindingsRequest")
    GetFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFindingsResponse", name: "GetFindingsResponse")
    GetFindingsStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFindingsStatisticsRequest", name: "GetFindingsStatisticsRequest")
    GetFindingsStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetFindingsStatisticsResponse", name: "GetFindingsStatisticsResponse")
    GetIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetIPSetRequest", name: "GetIPSetRequest")
    GetIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetIPSetResponse", name: "GetIPSetResponse")
    GetInvestigationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetInvestigationRequest", name: "GetInvestigationRequest")
    GetInvestigationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetInvestigationResponse", name: "GetInvestigationResponse")
    GetInvitationsCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetInvitationsCountRequest", name: "GetInvitationsCountRequest")
    GetInvitationsCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetInvitationsCountResponse", name: "GetInvitationsCountResponse")
    GetMalwareProtectionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareProtectionPlanRequest", name: "GetMalwareProtectionPlanRequest")
    GetMalwareProtectionPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareProtectionPlanResponse", name: "GetMalwareProtectionPlanResponse")
    GetMalwareScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareScanRequest", name: "GetMalwareScanRequest")
    GetMalwareScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareScanResponse", name: "GetMalwareScanResponse")
    GetMalwareScanResultDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareScanResultDetails", name: "GetMalwareScanResultDetails")
    GetMalwareScanSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareScanSettingsRequest", name: "GetMalwareScanSettingsRequest")
    GetMalwareScanSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMalwareScanSettingsResponse", name: "GetMalwareScanSettingsResponse")
    GetMasterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMasterAccountRequest", name: "GetMasterAccountRequest", traits: {"smithy.api#deprecated" => {"message" => "This input is deprecated, use GetAdministratorAccountRequest instead"}})
    GetMasterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMasterAccountResponse", name: "GetMasterAccountResponse", traits: {"smithy.api#deprecated" => {"message" => "This output is deprecated, use GetAdministratorAccountResponse instead"}})
    GetMemberDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMemberDetectorsRequest", name: "GetMemberDetectorsRequest")
    GetMemberDetectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMemberDetectorsResponse", name: "GetMemberDetectorsResponse")
    GetMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMembersRequest", name: "GetMembersRequest")
    GetMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetMembersResponse", name: "GetMembersResponse")
    GetOrganizationStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetOrganizationStatisticsResponse", name: "GetOrganizationStatisticsResponse")
    GetRemainingFreeTrialDaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetRemainingFreeTrialDaysRequest", name: "GetRemainingFreeTrialDaysRequest")
    GetRemainingFreeTrialDaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetRemainingFreeTrialDaysResponse", name: "GetRemainingFreeTrialDaysResponse")
    GetThreatEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetThreatEntitySetRequest", name: "GetThreatEntitySetRequest")
    GetThreatEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetThreatEntitySetResponse", name: "GetThreatEntitySetResponse")
    GetThreatIntelSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetThreatIntelSetRequest", name: "GetThreatIntelSetRequest")
    GetThreatIntelSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetThreatIntelSetResponse", name: "GetThreatIntelSetResponse")
    GetTrustedEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetTrustedEntitySetRequest", name: "GetTrustedEntitySetRequest")
    GetTrustedEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetTrustedEntitySetResponse", name: "GetTrustedEntitySetResponse")
    GetUsageStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetUsageStatisticsRequest", name: "GetUsageStatisticsRequest")
    GetUsageStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#GetUsageStatisticsResponse", name: "GetUsageStatisticsResponse")
    GroupByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#GroupByType", name: "GroupByType")
    GroupedByAccount = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#GroupedByAccount", name: "GroupedByAccount")
    GroupedByDate = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#GroupedByDate", name: "GroupedByDate")
    GroupedByFindingType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#GroupedByFindingType", name: "GroupedByFindingType")
    GroupedByResource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#GroupedByResource", name: "GroupedByResource")
    GroupedBySeverity = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#GroupedBySeverity", name: "GroupedBySeverity")
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Groups", name: "Groups")
    GuardDutyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#GuardDutyArn", name: "GuardDutyArn", traits: {"smithy.api#pattern" => "^arn:[A-Za-z_.-]{1,20}:guardduty:[A-Za-z0-9_/.-]{0,63}:\\d+:detector/[A-Za-z0-9_/.-]{32,264}$"})
    GuardrailAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#GuardrailAction", name: "GuardrailAction")
    GuardrailSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#GuardrailSource", name: "GuardrailSource")
    HighestSeverityThreatDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#HighestSeverityThreatDetails", name: "HighestSeverityThreatDetails")
    HostPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#HostPath", name: "HostPath")
    IamInstanceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#IamInstanceProfile", name: "IamInstanceProfile")
    IamInstanceProfileV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#IamInstanceProfileV2", name: "IamInstanceProfileV2")
    ImpersonatedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ImpersonatedUser", name: "ImpersonatedUser")
    IncrementalScanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#IncrementalScanDetails", name: "IncrementalScanDetails")
    Indicator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Indicator", name: "Indicator")
    IndicatorTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#IndicatorTitle", name: "IndicatorTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    IndicatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#IndicatorType", name: "IndicatorType")
    IndicatorValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#IndicatorValueString", name: "IndicatorValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    IndicatorValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#IndicatorValues", name: "IndicatorValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    Indicators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Indicators", name: "Indicators", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#InstanceArn", name: "InstanceArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):[a-z]+:[a-z]+(-[0-9]+|-[a-z]+)+:([0-9]{12}):[a-z\\-]+\\/[a-zA-Z0-9]*$"})
    InstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InstanceDetails", name: "InstanceDetails")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#Integer", name: "Integer")
    IntegerValueWithMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#IntegerValueWithMax", name: "IntegerValueWithMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Investigation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Investigation", name: "Investigation")
    InvestigationErrorDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#InvestigationErrorDetails", name: "InvestigationErrorDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    InvestigationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#InvestigationId", name: "InvestigationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-fA-F0-9\\-]+$"})
    InvestigationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InvestigationMetadata", name: "InvestigationMetadata")
    InvestigationSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InvestigationSortCriteria", name: "InvestigationSortCriteria")
    InvestigationSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#InvestigationSortField", name: "InvestigationSortField")
    InvestigationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#InvestigationStatus", name: "InvestigationStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    InvestigationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#InvestigationSummaries", name: "InvestigationSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InvestigationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InvestigationSummary", name: "InvestigationSummary")
    InvestigationTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#InvestigationTitle", name: "InvestigationTitle", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Invitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Invitation", name: "Invitation")
    Invitations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Invitations", name: "Invitations", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InviteMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InviteMembersRequest", name: "InviteMembersRequest")
    InviteMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#InviteMembersResponse", name: "InviteMembersResponse")
    IpSetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#IpSetFormat", name: "IpSetFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    IpSetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#IpSetIds", name: "IpSetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    IpSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#IpSetStatus", name: "IpSetStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    Ipv6Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Ipv6Addresses", name: "Ipv6Addresses")
    Issues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Issues", name: "Issues", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ItemDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ItemDetails", name: "ItemDetails")
    ItemDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ItemDetailsList", name: "ItemDetailsList")
    ItemPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ItemPath", name: "ItemPath")
    ItemPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ItemPaths", name: "ItemPaths")
    KubernetesApiCallAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesApiCallAction", name: "KubernetesApiCallAction")
    KubernetesAuditLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesAuditLogsConfiguration", name: "KubernetesAuditLogsConfiguration")
    KubernetesAuditLogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesAuditLogsConfigurationResult", name: "KubernetesAuditLogsConfigurationResult")
    KubernetesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesConfiguration", name: "KubernetesConfiguration")
    KubernetesConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesConfigurationResult", name: "KubernetesConfigurationResult")
    KubernetesDataSourceFreeTrial = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesDataSourceFreeTrial", name: "KubernetesDataSourceFreeTrial")
    KubernetesDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesDetails", name: "KubernetesDetails")
    KubernetesPermissionCheckedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesPermissionCheckedDetails", name: "KubernetesPermissionCheckedDetails")
    KubernetesResourcesTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#KubernetesResourcesTypes", name: "KubernetesResourcesTypes")
    KubernetesRoleBindingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesRoleBindingDetails", name: "KubernetesRoleBindingDetails")
    KubernetesRoleDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesRoleDetails", name: "KubernetesRoleDetails")
    KubernetesUserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesUserDetails", name: "KubernetesUserDetails")
    KubernetesWorkload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesWorkload", name: "KubernetesWorkload")
    KubernetesWorkloadDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#KubernetesWorkloadDetails", name: "KubernetesWorkloadDetails")
    LambdaDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#LambdaDetails", name: "LambdaDetails")
    LaunchTemplateVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#LaunchTemplateVersion", name: "LaunchTemplateVersion", traits: {"smithy.api#length" => {"max" => 256}})
    Lineage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Lineage", name: "Lineage")
    LineageObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#LineageObject", name: "LineageObject")
    ListCoverageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCoverageRequest", name: "ListCoverageRequest")
    ListCoverageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCoverageResponse", name: "ListCoverageResponse")
    ListCustomDetectionRuleAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRuleAssociationsRequest", name: "ListCustomDetectionRuleAssociationsRequest")
    ListCustomDetectionRuleAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRuleAssociationsResponse", name: "ListCustomDetectionRuleAssociationsResponse")
    ListCustomDetectionRuleOrgConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRuleOrgConfigurationsRequest", name: "ListCustomDetectionRuleOrgConfigurationsRequest")
    ListCustomDetectionRuleOrgConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRuleOrgConfigurationsResponse", name: "ListCustomDetectionRuleOrgConfigurationsResponse")
    ListCustomDetectionRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRulesRequest", name: "ListCustomDetectionRulesRequest")
    ListCustomDetectionRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListCustomDetectionRulesResponse", name: "ListCustomDetectionRulesResponse")
    ListDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListDetectorsRequest", name: "ListDetectorsRequest")
    ListDetectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListDetectorsResponse", name: "ListDetectorsResponse")
    ListFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListFiltersRequest", name: "ListFiltersRequest")
    ListFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListFiltersResponse", name: "ListFiltersResponse")
    ListFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListFindingsRequest", name: "ListFindingsRequest")
    ListFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListFindingsResponse", name: "ListFindingsResponse")
    ListIPSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListIPSetsRequest", name: "ListIPSetsRequest")
    ListIPSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListIPSetsResponse", name: "ListIPSetsResponse")
    ListInvestigationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListInvestigationsRequest", name: "ListInvestigationsRequest")
    ListInvestigationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListInvestigationsResponse", name: "ListInvestigationsResponse")
    ListInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListInvitationsRequest", name: "ListInvitationsRequest")
    ListInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListInvitationsResponse", name: "ListInvitationsResponse")
    ListMalwareProtectionPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareProtectionPlansRequest", name: "ListMalwareProtectionPlansRequest")
    ListMalwareProtectionPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareProtectionPlansResponse", name: "ListMalwareProtectionPlansResponse")
    ListMalwareScansCriterionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ListMalwareScansCriterionKey", name: "ListMalwareScansCriterionKey")
    ListMalwareScansFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareScansFilterCriteria", name: "ListMalwareScansFilterCriteria")
    ListMalwareScansFilterCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareScansFilterCriterion", name: "ListMalwareScansFilterCriterion")
    ListMalwareScansFilterCriterionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ListMalwareScansFilterCriterionList", name: "ListMalwareScansFilterCriterionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ListMalwareScansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareScansRequest", name: "ListMalwareScansRequest")
    ListMalwareScansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMalwareScansResponse", name: "ListMalwareScansResponse")
    ListMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMembersRequest", name: "ListMembersRequest")
    ListMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListMembersResponse", name: "ListMembersResponse")
    ListOrganizationAdminAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListOrganizationAdminAccountsRequest", name: "ListOrganizationAdminAccountsRequest")
    ListOrganizationAdminAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListOrganizationAdminAccountsResponse", name: "ListOrganizationAdminAccountsResponse")
    ListPublishingDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListPublishingDestinationsRequest", name: "ListPublishingDestinationsRequest")
    ListPublishingDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListPublishingDestinationsResponse", name: "ListPublishingDestinationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListThreatEntitySetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListThreatEntitySetsRequest", name: "ListThreatEntitySetsRequest")
    ListThreatEntitySetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListThreatEntitySetsResponse", name: "ListThreatEntitySetsResponse")
    ListThreatIntelSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListThreatIntelSetsRequest", name: "ListThreatIntelSetsRequest")
    ListThreatIntelSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListThreatIntelSetsResponse", name: "ListThreatIntelSetsResponse")
    ListTrustedEntitySetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListTrustedEntitySetsRequest", name: "ListTrustedEntitySetsRequest")
    ListTrustedEntitySetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ListTrustedEntitySetsResponse", name: "ListTrustedEntitySetsResponse")
    LocalIpDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#LocalIpDetails", name: "LocalIpDetails")
    LocalPortDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#LocalPortDetails", name: "LocalPortDetails")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#Location", name: "Location", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    LoginAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#LoginAttribute", name: "LoginAttribute")
    LoginAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#LoginAttributes", name: "LoginAttributes")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#Long", name: "Long")
    LongValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#LongValue", name: "LongValue")
    MalwareProtectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionConfiguration", name: "MalwareProtectionConfiguration")
    MalwareProtectionConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionConfigurationResult", name: "MalwareProtectionConfigurationResult")
    MalwareProtectionDataSourceFreeTrial = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionDataSourceFreeTrial", name: "MalwareProtectionDataSourceFreeTrial")
    MalwareProtectionFindingsScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionFindingsScanConfiguration", name: "MalwareProtectionFindingsScanConfiguration")
    MalwareProtectionPlanActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanActions", name: "MalwareProtectionPlanActions")
    MalwareProtectionPlanObjectPrefixesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanObjectPrefixesList", name: "MalwareProtectionPlanObjectPrefixesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    MalwareProtectionPlanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanStatus", name: "MalwareProtectionPlanStatus")
    MalwareProtectionPlanStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanStatusReason", name: "MalwareProtectionPlanStatusReason")
    MalwareProtectionPlanStatusReasonsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanStatusReasonsList", name: "MalwareProtectionPlanStatusReasonsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MalwareProtectionPlanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanSummary", name: "MalwareProtectionPlanSummary")
    MalwareProtectionPlanTaggingAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanTaggingAction", name: "MalwareProtectionPlanTaggingAction")
    MalwareProtectionPlanTaggingActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlanTaggingActionStatus", name: "MalwareProtectionPlanTaggingActionStatus")
    MalwareProtectionPlansSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MalwareProtectionPlansSummary", name: "MalwareProtectionPlansSummary")
    MalwareProtectionResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MalwareProtectionResourceType", name: "MalwareProtectionResourceType")
    MalwareProtectionScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MalwareProtectionScanStatus", name: "MalwareProtectionScanStatus")
    MalwareProtectionScanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MalwareProtectionScanType", name: "MalwareProtectionScanType")
    MalwareScan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareScan", name: "MalwareScan")
    MalwareScanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MalwareScanDetails", name: "MalwareScanDetails")
    MalwareScans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MalwareScans", name: "MalwareScans")
    ManagedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ManagedBy", name: "ManagedBy")
    ManagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ManagementType", name: "ManagementType")
    MapEquals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MapEquals", name: "MapEquals")
    Master = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Master", name: "Master")
    Match = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#Match", name: "Match", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    Matches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Matches", name: "Matches", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResults100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#MaxResults100", name: "MaxResults100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Member", name: "Member")
    MemberAdditionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MemberAdditionalConfiguration", name: "MemberAdditionalConfiguration")
    MemberAdditionalConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MemberAdditionalConfigurationResult", name: "MemberAdditionalConfigurationResult")
    MemberAdditionalConfigurationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemberAdditionalConfigurationResults", name: "MemberAdditionalConfigurationResults")
    MemberAdditionalConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemberAdditionalConfigurations", name: "MemberAdditionalConfigurations")
    MemberDataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MemberDataSourceConfiguration", name: "MemberDataSourceConfiguration")
    MemberDataSourceConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemberDataSourceConfigurations", name: "MemberDataSourceConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    MemberFeaturesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MemberFeaturesConfiguration", name: "MemberFeaturesConfiguration")
    MemberFeaturesConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#MemberFeaturesConfigurationResult", name: "MemberFeaturesConfigurationResult")
    MemberFeaturesConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemberFeaturesConfigurations", name: "MemberFeaturesConfigurations")
    MemberFeaturesConfigurationsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemberFeaturesConfigurationsResults", name: "MemberFeaturesConfigurationsResults")
    Members = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Members", name: "Members", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MemoryRegionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#MemoryRegionsList", name: "MemoryRegionsList")
    MfaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#MfaStatus", name: "MfaStatus")
    MitreTactic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#MitreTactic", name: "MitreTactic", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MitreTechnique = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#MitreTechnique", name: "MitreTechnique", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ModelDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ModelDetail", name: "ModelDetail")
    ModelDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ModelDetails", name: "ModelDetails")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    Neq = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Neq", name: "Neq")
    NetworkConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#NetworkConnection", name: "NetworkConnection")
    NetworkConnectionAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#NetworkConnectionAction", name: "NetworkConnectionAction")
    NetworkDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#NetworkDirection", name: "NetworkDirection")
    NetworkEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#NetworkEndpoint", name: "NetworkEndpoint")
    NetworkEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#NetworkEndpoints", name: "NetworkEndpoints", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    NetworkGeoLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#NetworkGeoLocation", name: "NetworkGeoLocation")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#NetworkInterfaces", name: "NetworkInterfaces")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9+/=_\\-]+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#range" => {"min" => 0}})
    NotEquals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#NotEquals", name: "NotEquals")
    NotMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#NotMatch", name: "NotMatch", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    NotMatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#NotMatches", name: "NotMatches", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ObservationNumbers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ObservationNumbers", name: "ObservationNumbers")
    ObservationTexts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ObservationTexts", name: "ObservationTexts")
    Observations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Observations", name: "Observations")
    OrderBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#OrderBy", name: "OrderBy")
    OrgFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#OrgFeature", name: "OrgFeature")
    OrgFeatureAdditionalConfiguration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#OrgFeatureAdditionalConfiguration", name: "OrgFeatureAdditionalConfiguration")
    OrgFeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#OrgFeatureStatus", name: "OrgFeatureStatus")
    Organization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Organization", name: "Organization")
    OrganizationAdditionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationAdditionalConfiguration", name: "OrganizationAdditionalConfiguration")
    OrganizationAdditionalConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationAdditionalConfigurationResult", name: "OrganizationAdditionalConfigurationResult")
    OrganizationAdditionalConfigurationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationAdditionalConfigurationResults", name: "OrganizationAdditionalConfigurationResults")
    OrganizationAdditionalConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationAdditionalConfigurations", name: "OrganizationAdditionalConfigurations")
    OrganizationDataSourceConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationDataSourceConfigurations", name: "OrganizationDataSourceConfigurations")
    OrganizationDataSourceConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationDataSourceConfigurationsResult", name: "OrganizationDataSourceConfigurationsResult")
    OrganizationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationDetails", name: "OrganizationDetails")
    OrganizationEbsVolumes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationEbsVolumes", name: "OrganizationEbsVolumes")
    OrganizationEbsVolumesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationEbsVolumesResult", name: "OrganizationEbsVolumesResult")
    OrganizationFeatureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureConfiguration", name: "OrganizationFeatureConfiguration")
    OrganizationFeatureConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureConfigurationResult", name: "OrganizationFeatureConfigurationResult")
    OrganizationFeatureStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureStatistics", name: "OrganizationFeatureStatistics")
    OrganizationFeatureStatisticsAdditionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureStatisticsAdditionalConfiguration", name: "OrganizationFeatureStatisticsAdditionalConfiguration")
    OrganizationFeatureStatisticsAdditionalConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureStatisticsAdditionalConfigurations", name: "OrganizationFeatureStatisticsAdditionalConfigurations")
    OrganizationFeatureStatisticsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationFeatureStatisticsResults", name: "OrganizationFeatureStatisticsResults")
    OrganizationFeaturesConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationFeaturesConfigurations", name: "OrganizationFeaturesConfigurations")
    OrganizationFeaturesConfigurationsResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#OrganizationFeaturesConfigurationsResults", name: "OrganizationFeaturesConfigurationsResults")
    OrganizationKubernetesAuditLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationKubernetesAuditLogsConfiguration", name: "OrganizationKubernetesAuditLogsConfiguration")
    OrganizationKubernetesAuditLogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationKubernetesAuditLogsConfigurationResult", name: "OrganizationKubernetesAuditLogsConfigurationResult")
    OrganizationKubernetesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationKubernetesConfiguration", name: "OrganizationKubernetesConfiguration")
    OrganizationKubernetesConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationKubernetesConfigurationResult", name: "OrganizationKubernetesConfigurationResult")
    OrganizationMalwareProtectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationMalwareProtectionConfiguration", name: "OrganizationMalwareProtectionConfiguration")
    OrganizationMalwareProtectionConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationMalwareProtectionConfigurationResult", name: "OrganizationMalwareProtectionConfigurationResult")
    OrganizationS3LogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationS3LogsConfiguration", name: "OrganizationS3LogsConfiguration")
    OrganizationS3LogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationS3LogsConfigurationResult", name: "OrganizationS3LogsConfigurationResult")
    OrganizationScanEc2InstanceWithFindings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationScanEc2InstanceWithFindings", name: "OrganizationScanEc2InstanceWithFindings")
    OrganizationScanEc2InstanceWithFindingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationScanEc2InstanceWithFindingsResult", name: "OrganizationScanEc2InstanceWithFindingsResult")
    OrganizationStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#OrganizationStatistics", name: "OrganizationStatistics")
    Owner = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Owner", name: "Owner")
    PermissionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PermissionConfiguration", name: "PermissionConfiguration")
    PortProbeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PortProbeAction", name: "PortProbeAction")
    PortProbeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PortProbeDetail", name: "PortProbeDetail")
    PortProbeDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#PortProbeDetails", name: "PortProbeDetails")
    PositiveLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.guardduty#PositiveLong", name: "PositiveLong", traits: {"smithy.api#range" => {"min" => 0}})
    PrivateIpAddressDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PrivateIpAddressDetails", name: "PrivateIpAddressDetails")
    PrivateIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#PrivateIpAddresses", name: "PrivateIpAddresses")
    ProcessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ProcessDetails", name: "ProcessDetails")
    ProcessName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ProcessName", name: "ProcessName", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    ProcessPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ProcessPath", name: "ProcessPath", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    ProcessSha256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ProcessSha256", name: "ProcessSha256", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Product = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Product", name: "Product")
    ProductCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ProductCode", name: "ProductCode")
    ProductCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ProductCodes", name: "ProductCodes")
    ProfileSubtype = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ProfileSubtype", name: "ProfileSubtype")
    ProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ProfileType", name: "ProfileType")
    PublicAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PublicAccess", name: "PublicAccess")
    PublicAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#PublicAccessConfiguration", name: "PublicAccessConfiguration")
    PublicAccessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#PublicAccessStatus", name: "PublicAccessStatus")
    PublicAclIgnoreBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#PublicAclIgnoreBehavior", name: "PublicAclIgnoreBehavior")
    PublicBucketRestrictBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#PublicBucketRestrictBehavior", name: "PublicBucketRestrictBehavior")
    PublishingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#PublishingStatus", name: "PublishingStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    RdsDbInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RdsDbInstanceDetails", name: "RdsDbInstanceDetails")
    RdsDbUserDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RdsDbUserDetails", name: "RdsDbUserDetails")
    RdsLimitlessDbDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RdsLimitlessDbDetails", name: "RdsLimitlessDbDetails")
    RdsLoginAttemptAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RdsLoginAttemptAction", name: "RdsLoginAttemptAction")
    RecoveryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RecoveryPoint", name: "RecoveryPoint")
    RecoveryPointDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RecoveryPointDetails", name: "RecoveryPointDetails")
    RelatedFilePathsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#RelatedFilePathsList", name: "RelatedFilePathsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RemoteAccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RemoteAccountDetails", name: "RemoteAccountDetails")
    RemoteIpDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RemoteIpDetails", name: "RemoteIpDetails")
    RemotePortDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RemotePortDetails", name: "RemotePortDetails")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Resource", name: "Resource")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:[A-Za-z-]+:[A-Za-z0-9]+:[A-Za-z0-9-]+:\\d+:(([A-Za-z0-9-]+)[:\\/])?[A-Za-z0-9:-]*$"})
    ResourceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ResourceData", name: "ResourceData")
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ResourceDetails", name: "ResourceDetails")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ResourceList", name: "ResourceList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ResourceStatistics", name: "ResourceStatistics")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ResourceType", name: "ResourceType")
    ResourceUids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ResourceUids", name: "ResourceUids", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ResourceV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ResourceV2", name: "ResourceV2")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Resources", name: "Resources", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    RiskDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#RiskDetails", name: "RiskDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RiskLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#RiskLevel", name: "RiskLevel", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    RuleDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RuleDefinition", name: "RuleDefinition")
    RuleDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RuleDetail", name: "RuleDetail")
    RuleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#RuleExpression", name: "RuleExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"})
    RuleLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#RuleLanguage", name: "RuleLanguage")
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RuleSchema = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#RuleSchema", name: "RuleSchema")
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RuleSummary", name: "RuleSummary")
    RuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#RuleSummaryList", name: "RuleSummaryList")
    RuntimeContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RuntimeContext", name: "RuntimeContext")
    RuntimeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#RuntimeDetails", name: "RuntimeDetails")
    S3Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3Bucket", name: "S3Bucket")
    S3BucketDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3BucketDetail", name: "S3BucketDetail")
    S3BucketDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#S3BucketDetails", name: "S3BucketDetails")
    S3LogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3LogsConfiguration", name: "S3LogsConfiguration")
    S3LogsConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3LogsConfigurationResult", name: "S3LogsConfigurationResult")
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3Object", name: "S3Object")
    S3ObjectDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3ObjectDetail", name: "S3ObjectDetail")
    S3ObjectDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#S3ObjectDetails", name: "S3ObjectDetails")
    S3ObjectForSendObjectMalwareScan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#S3ObjectForSendObjectMalwareScan", name: "S3ObjectForSendObjectMalwareScan")
    S3ObjectUids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#S3ObjectUids", name: "S3ObjectUids")
    Scan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Scan", name: "Scan")
    ScanCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanCategory", name: "ScanCategory")
    ScanCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanCondition", name: "ScanCondition")
    ScanConditionPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanConditionPair", name: "ScanConditionPair")
    ScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanConfiguration", name: "ScanConfiguration")
    ScanConfigurationContinuousScanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanConfigurationContinuousScanDetails", name: "ScanConfigurationContinuousScanDetails")
    ScanConfigurationRecoveryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanConfigurationRecoveryPoint", name: "ScanConfigurationRecoveryPoint")
    ScanCriterion = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#ScanCriterion", name: "ScanCriterion")
    ScanCriterionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanCriterionKey", name: "ScanCriterionKey")
    ScanDetections = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanDetections", name: "ScanDetections")
    ScanEc2InstanceWithFindings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanEc2InstanceWithFindings", name: "ScanEc2InstanceWithFindings")
    ScanEc2InstanceWithFindingsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanEc2InstanceWithFindingsResult", name: "ScanEc2InstanceWithFindingsResult")
    ScanFilePath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanFilePath", name: "ScanFilePath")
    ScanResourceCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanResourceCriteria", name: "ScanResourceCriteria")
    ScanResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanResult", name: "ScanResult")
    ScanResultDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanResultDetails", name: "ScanResultDetails")
    ScanResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanResultStatus", name: "ScanResultStatus")
    ScanResultThreat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanResultThreat", name: "ScanResultThreat")
    ScanResultThreats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ScanResultThreats", name: "ScanResultThreats")
    ScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanStatus", name: "ScanStatus")
    ScanStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanStatusReason", name: "ScanStatusReason")
    ScanThreatName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScanThreatName", name: "ScanThreatName")
    ScanThreatNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ScanThreatNames", name: "ScanThreatNames")
    ScanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ScanType", name: "ScanType")
    ScannedItemCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScannedItemCount", name: "ScannedItemCount")
    ScannedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScannedResource", name: "ScannedResource")
    ScannedResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ScannedResourceDetails", name: "ScannedResourceDetails")
    ScannedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ScannedResources", name: "ScannedResources")
    Scans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Scans", name: "Scans")
    SecurityContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SecurityContext", name: "SecurityContext")
    SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SecurityGroup", name: "SecurityGroup")
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#SecurityGroups", name: "SecurityGroups")
    SendObjectMalwareScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SendObjectMalwareScanRequest", name: "SendObjectMalwareScanRequest")
    SendObjectMalwareScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SendObjectMalwareScanResponse", name: "SendObjectMalwareScanResponse")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    Sequence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Sequence", name: "Sequence")
    SequenceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#SequenceDescription", name: "SequenceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Service", name: "Service")
    ServiceAdditionalInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ServiceAdditionalInfo", name: "ServiceAdditionalInfo")
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Session", name: "Session")
    SessionNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#SessionNameList", name: "SessionNameList")
    SeverityStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SeverityStatistics", name: "SeverityStatistics")
    Signal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Signal", name: "Signal")
    SignalDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#SignalDescription", name: "SignalDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    SignalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#SignalType", name: "SignalType")
    Signals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Signals", name: "Signals", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#SortCriteria", name: "SortCriteria")
    SourceIps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#SourceIps", name: "SourceIps")
    Sources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Sources", name: "Sources")
    StartMalwareScanConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StartMalwareScanConfiguration", name: "StartMalwareScanConfiguration")
    StartMalwareScanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StartMalwareScanRequest", name: "StartMalwareScanRequest")
    StartMalwareScanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StartMalwareScanResponse", name: "StartMalwareScanResponse")
    StartMonitoringMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StartMonitoringMembersRequest", name: "StartMonitoringMembersRequest")
    StartMonitoringMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StartMonitoringMembersResponse", name: "StartMonitoringMembersResponse")
    StopMonitoringMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StopMonitoringMembersRequest", name: "StopMonitoringMembersRequest")
    StopMonitoringMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#StopMonitoringMembersResponse", name: "StopMonitoringMembersResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#String", name: "String")
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#SubnetIds", name: "SubnetIds")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.guardduty#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Tags", name: "Tags")
    Threat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Threat", name: "Threat")
    ThreatDetectedByName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ThreatDetectedByName", name: "ThreatDetectedByName")
    ThreatEntitySetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ThreatEntitySetFormat", name: "ThreatEntitySetFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ThreatEntitySetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ThreatEntitySetIds", name: "ThreatEntitySetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThreatEntitySetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ThreatEntitySetStatus", name: "ThreatEntitySetStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ThreatIntelSetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ThreatIntelSetFormat", name: "ThreatIntelSetFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ThreatIntelSetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ThreatIntelSetIds", name: "ThreatIntelSetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ThreatIntelSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#ThreatIntelSetStatus", name: "ThreatIntelSetStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ThreatIntelligenceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ThreatIntelligenceDetail", name: "ThreatIntelligenceDetail")
    ThreatIntelligenceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ThreatIntelligenceDetails", name: "ThreatIntelligenceDetails")
    ThreatNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#ThreatNames", name: "ThreatNames")
    Threats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Threats", name: "Threats")
    ThreatsDetectedItemCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#ThreatsDetectedItemCount", name: "ThreatsDetectedItemCount")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.guardduty#Timestamp", name: "Timestamp")
    Total = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Total", name: "Total")
    TriggerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#TriggerDetails", name: "TriggerDetails")
    TriggerPrompt = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#TriggerPrompt", name: "TriggerPrompt", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    TriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#TriggerType", name: "TriggerType")
    TriggeredBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.guardduty#TriggeredBy", name: "TriggeredBy", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TrustedEntitySetFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#TrustedEntitySetFormat", name: "TrustedEntitySetFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    TrustedEntitySetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#TrustedEntitySetIds", name: "TrustedEntitySetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TrustedEntitySetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#TrustedEntitySetStatus", name: "TrustedEntitySetStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    UnarchiveFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UnarchiveFindingsRequest", name: "UnarchiveFindingsRequest")
    UnarchiveFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UnarchiveFindingsResponse", name: "UnarchiveFindingsResponse")
    UnprocessedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UnprocessedAccount", name: "UnprocessedAccount")
    UnprocessedAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UnprocessedAccounts", name: "UnprocessedAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    UnprocessedDataSourcesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UnprocessedDataSourcesResult", name: "UnprocessedDataSourcesResult")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateCustomDetectionRuleAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateCustomDetectionRuleAssociationRequest", name: "UpdateCustomDetectionRuleAssociationRequest")
    UpdateCustomDetectionRuleAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateCustomDetectionRuleAssociationResponse", name: "UpdateCustomDetectionRuleAssociationResponse")
    UpdateCustomDetectionRuleOrgConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateCustomDetectionRuleOrgConfigurationRequest", name: "UpdateCustomDetectionRuleOrgConfigurationRequest")
    UpdateCustomDetectionRuleOrgConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateCustomDetectionRuleOrgConfigurationResponse", name: "UpdateCustomDetectionRuleOrgConfigurationResponse")
    UpdateDetectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateDetectorRequest", name: "UpdateDetectorRequest")
    UpdateDetectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateDetectorResponse", name: "UpdateDetectorResponse")
    UpdateFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateFilterRequest", name: "UpdateFilterRequest")
    UpdateFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateFilterResponse", name: "UpdateFilterResponse")
    UpdateFindingsFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateFindingsFeedbackRequest", name: "UpdateFindingsFeedbackRequest")
    UpdateFindingsFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateFindingsFeedbackResponse", name: "UpdateFindingsFeedbackResponse")
    UpdateIPSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateIPSetRequest", name: "UpdateIPSetRequest")
    UpdateIPSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateIPSetResponse", name: "UpdateIPSetResponse")
    UpdateMalwareProtectionPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateMalwareProtectionPlanRequest", name: "UpdateMalwareProtectionPlanRequest")
    UpdateMalwareScanSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateMalwareScanSettingsRequest", name: "UpdateMalwareScanSettingsRequest")
    UpdateMalwareScanSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateMalwareScanSettingsResponse", name: "UpdateMalwareScanSettingsResponse")
    UpdateMemberDetectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateMemberDetectorsRequest", name: "UpdateMemberDetectorsRequest")
    UpdateMemberDetectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateMemberDetectorsResponse", name: "UpdateMemberDetectorsResponse")
    UpdateOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateOrganizationConfigurationRequest", name: "UpdateOrganizationConfigurationRequest")
    UpdateOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateOrganizationConfigurationResponse", name: "UpdateOrganizationConfigurationResponse")
    UpdateProtectedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateProtectedResource", name: "UpdateProtectedResource")
    UpdatePublishingDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdatePublishingDestinationRequest", name: "UpdatePublishingDestinationRequest")
    UpdatePublishingDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdatePublishingDestinationResponse", name: "UpdatePublishingDestinationResponse")
    UpdateS3BucketResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateS3BucketResource", name: "UpdateS3BucketResource")
    UpdateThreatEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateThreatEntitySetRequest", name: "UpdateThreatEntitySetRequest")
    UpdateThreatEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateThreatEntitySetResponse", name: "UpdateThreatEntitySetResponse")
    UpdateThreatIntelSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateThreatIntelSetRequest", name: "UpdateThreatIntelSetRequest")
    UpdateThreatIntelSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateThreatIntelSetResponse", name: "UpdateThreatIntelSetResponse")
    UpdateTrustedEntitySetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateTrustedEntitySetRequest", name: "UpdateTrustedEntitySetRequest")
    UpdateTrustedEntitySetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UpdateTrustedEntitySetResponse", name: "UpdateTrustedEntitySetResponse")
    UsageAccountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageAccountResult", name: "UsageAccountResult")
    UsageAccountResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageAccountResultList", name: "UsageAccountResultList")
    UsageCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageCriteria", name: "UsageCriteria")
    UsageDataSourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageDataSourceResult", name: "UsageDataSourceResult")
    UsageDataSourceResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageDataSourceResultList", name: "UsageDataSourceResultList")
    UsageFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#UsageFeature", name: "UsageFeature")
    UsageFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageFeatureList", name: "UsageFeatureList")
    UsageFeatureResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageFeatureResult", name: "UsageFeatureResult")
    UsageFeatureResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageFeatureResultList", name: "UsageFeatureResultList")
    UsageResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageResourceResult", name: "UsageResourceResult")
    UsageResourceResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageResourceResultList", name: "UsageResourceResultList")
    UsageStatisticType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.guardduty#UsageStatisticType", name: "UsageStatisticType")
    UsageStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageStatistics", name: "UsageStatistics")
    UsageTopAccountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageTopAccountResult", name: "UsageTopAccountResult")
    UsageTopAccountsByFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageTopAccountsByFeatureList", name: "UsageTopAccountsByFeatureList")
    UsageTopAccountsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#UsageTopAccountsResult", name: "UsageTopAccountsResult")
    UsageTopAccountsResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#UsageTopAccountsResultList", name: "UsageTopAccountsResultList")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#User", name: "User")
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#Volume", name: "Volume")
    VolumeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#VolumeDetail", name: "VolumeDetail")
    VolumeDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#VolumeDetails", name: "VolumeDetails")
    VolumeMount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#VolumeMount", name: "VolumeMount")
    VolumeMounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#VolumeMounts", name: "VolumeMounts")
    Volumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.guardduty#Volumes", name: "Volumes")
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.guardduty#VpcConfig", name: "VpcConfig")

    AcceptAdministratorInvitationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptAdministratorInvitationRequest.add_member(:administrator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdministratorId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "administratorId", "smithy.api#required" => {}}))
    AcceptAdministratorInvitationRequest.add_member(:invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "invitationId", "smithy.api#required" => {}}))
    AcceptAdministratorInvitationRequest.type = Types::AcceptAdministratorInvitationRequest
    AcceptAdministratorInvitationResponse.type = Types::AcceptAdministratorInvitationResponse
    AcceptInvitationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptInvitationRequest.add_member(:master_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "masterId", "smithy.api#required" => {}}))
    AcceptInvitationRequest.add_member(:invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "invitationId", "smithy.api#required" => {}}))
    AcceptInvitationRequest.type = Types::AcceptInvitationRequest
    AcceptInvitationResponse.type = Types::AcceptInvitationResponse
    AccessControlList.add_member(:allows_public_read_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowsPublicReadAccess", traits: {"smithy.api#jsonName" => "allowsPublicReadAccess"}))
    AccessControlList.add_member(:allows_public_write_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowsPublicWriteAccess", traits: {"smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    AccessControlList.type = Types::AccessControlList
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    AccessDeniedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessKey.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrincipalId", traits: {"smithy.api#jsonName" => "principalId"}))
    AccessKey.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName", traits: {"smithy.api#jsonName" => "userName"}))
    AccessKey.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserType", traits: {"smithy.api#jsonName" => "userType"}))
    AccessKey.type = Types::AccessKey
    AccessKeyDetails.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccessKeyId", traits: {"smithy.api#jsonName" => "accessKeyId"}))
    AccessKeyDetails.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrincipalId", traits: {"smithy.api#jsonName" => "principalId"}))
    AccessKeyDetails.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName", traits: {"smithy.api#jsonName" => "userName"}))
    AccessKeyDetails.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserType", traits: {"smithy.api#jsonName" => "userType"}))
    AccessKeyDetails.type = Types::AccessKeyDetails
    Account.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "uid", "smithy.api#required" => {}}))
    Account.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "account"}))
    Account.type = Types::Account
    AccountDetail.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    AccountDetail.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "email", "smithy.api#required" => {}}))
    AccountDetail.type = Types::AccountDetail
    AccountDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetail, name: "member"))
    AccountFreeTrialInfo.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    AccountFreeTrialInfo.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourcesFreeTrial, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    AccountFreeTrialInfo.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialFeatureConfigurationsResults, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    AccountFreeTrialInfo.type = Types::AccountFreeTrialInfo
    AccountFreeTrialInfos.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountFreeTrialInfo, name: "member"))
    AccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountLevelPermissions.add_member(:block_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockPublicAccess, name: "BlockPublicAccess", traits: {"smithy.api#jsonName" => "blockPublicAccess"}))
    AccountLevelPermissions.type = Types::AccountLevelPermissions
    AccountStatistics.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    AccountStatistics.add_member(:last_generated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedAt", traits: {"smithy.api#jsonName" => "lastGeneratedAt"}))
    AccountStatistics.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalFindings", traits: {"smithy.api#jsonName" => "totalFindings"}))
    AccountStatistics.type = Types::AccountStatistics
    Action.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActionType", traits: {"smithy.api#jsonName" => "actionType"}))
    Action.add_member(:aws_api_call_action, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsApiCallAction, name: "AwsApiCallAction", traits: {"smithy.api#jsonName" => "awsApiCallAction"}))
    Action.add_member(:dns_request_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRequestAction, name: "DnsRequestAction", traits: {"smithy.api#jsonName" => "dnsRequestAction"}))
    Action.add_member(:network_connection_action, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectionAction, name: "NetworkConnectionAction", traits: {"smithy.api#jsonName" => "networkConnectionAction"}))
    Action.add_member(:port_probe_action, ::Smithy::Schema::Shapes::MemberShape.new(target: PortProbeAction, name: "PortProbeAction", traits: {"smithy.api#jsonName" => "portProbeAction"}))
    Action.add_member(:kubernetes_api_call_action, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesApiCallAction, name: "KubernetesApiCallAction", traits: {"smithy.api#jsonName" => "kubernetesApiCallAction"}))
    Action.add_member(:kubernetes_permission_checked_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesPermissionCheckedDetails, name: "KubernetesPermissionCheckedDetails", traits: {"smithy.api#jsonName" => "kubernetesPermissionCheckedDetails"}))
    Action.add_member(:kubernetes_role_binding_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesRoleBindingDetails, name: "KubernetesRoleBindingDetails", traits: {"smithy.api#jsonName" => "kubernetesRoleBindingDetails"}))
    Action.add_member(:kubernetes_role_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesRoleDetails, name: "KubernetesRoleDetails", traits: {"smithy.api#jsonName" => "kubernetesRoleDetails"}))
    Action.add_member(:rds_login_attempt_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsLoginAttemptAction, name: "RdsLoginAttemptAction", traits: {"smithy.api#jsonName" => "rdsLoginAttemptAction"}))
    Action.type = Types::Action
    Activities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Activity, name: "member"))
    Activity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "type", "smithy.api#required" => {}}))
    Activity.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiCall, name: "Api", traits: {"smithy.api#jsonName" => "api"}))
    Activity.type = Types::Activity
    ActivityType.add_member(:api_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_CALL", traits: {"smithy.api#enumValue" => "API_CALL"}))
    Actor.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    Actor.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "User", traits: {"smithy.api#jsonName" => "user"}))
    Actor.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "Session", traits: {"smithy.api#jsonName" => "session"}))
    Actor.add_member(:process, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorProcess, name: "Process", traits: {"smithy.api#jsonName" => "process"}))
    Actor.type = Types::Actor
    ActorIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ActorProcess.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    ActorProcess.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessPath, name: "Path", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "path", "smithy.api#required" => {}}))
    ActorProcess.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessSha256, name: "Sha256", traits: {"smithy.api#jsonName" => "sha256"}))
    ActorProcess.type = Types::ActorProcess
    Actors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Actor, name: "member"))
    AdditionalInfo.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "VersionId", traits: {"smithy.api#jsonName" => "versionId"}))
    AdditionalInfo.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "DeviceName", traits: {"smithy.api#jsonName" => "deviceName"}))
    AdditionalInfo.type = Types::AdditionalInfo
    AdditionalSequenceTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "member"))
    AddonDetails.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddonVersion", traits: {"smithy.api#jsonName" => "addonVersion"}))
    AddonDetails.add_member(:addon_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddonStatus", traits: {"smithy.api#jsonName" => "addonStatus"}))
    AddonDetails.type = Types::AddonDetails
    AdminAccount.add_member(:admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdminAccountId", traits: {"smithy.api#jsonName" => "adminAccountId"}))
    AdminAccount.add_member(:admin_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminStatus, name: "AdminStatus", traits: {"smithy.api#jsonName" => "adminStatus"}))
    AdminAccount.type = Types::AdminAccount
    AdminAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccount, name: "member"))
    AdminStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AdminStatus.add_member(:disable_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DISABLE_IN_PROGRESS"}))
    Administrator.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    Administrator.add_member(:invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitationId", traits: {"smithy.api#jsonName" => "invitationId"}))
    Administrator.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RelationshipStatus", traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    Administrator.add_member(:invited_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitedAt", traits: {"smithy.api#jsonName" => "invitedAt"}))
    Administrator.type = Types::Administrator
    AffectedResources.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    AffectedResources.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    AgentDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    AgentDetails.type = Types::AgentDetails
    Anomaly.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyProfiles, name: "Profiles", traits: {"smithy.api#jsonName" => "profiles"}))
    Anomaly.add_member(:unusual, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyUnusual, name: "Unusual", traits: {"smithy.api#jsonName" => "unusual"}))
    Anomaly.type = Types::Anomaly
    AnomalyObject.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileType, name: "ProfileType", traits: {"smithy.api#jsonName" => "profileType"}))
    AnomalyObject.add_member(:profile_subtype, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileSubtype, name: "ProfileSubtype", traits: {"smithy.api#jsonName" => "profileSubtype"}))
    AnomalyObject.add_member(:observations, ::Smithy::Schema::Shapes::MemberShape.new(target: Observations, name: "Observations", traits: {"smithy.api#jsonName" => "observations"}))
    AnomalyObject.type = Types::AnomalyObject
    AnomalyProfileFeatureObjects.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyObject, name: "member"))
    AnomalyProfileFeatures.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    AnomalyProfileFeatures.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyProfileFeatureObjects, name: "value"))
    AnomalyProfiles.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    AnomalyProfiles.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyProfileFeatures, name: "value"))
    AnomalyUnusual.add_member(:behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: Behavior, name: "Behavior", traits: {"smithy.api#jsonName" => "behavior"}))
    AnomalyUnusual.type = Types::AnomalyUnusual
    AnomalyUnusualBehaviorFeature.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    AnomalyUnusualBehaviorFeature.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyObject, name: "value"))
    ApiCall.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Operation", traits: {"smithy.api#jsonName" => "operation", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    ApiCall.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Service", traits: {"smithy.api#jsonName" => "service", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    ApiCall.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Error", traits: {"smithy.api#jsonName" => "error", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    ApiCall.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserAgent", traits: {"smithy.api#jsonName" => "userAgent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    ApiCall.type = Types::ApiCall
    ArchiveFindingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ArchiveFindingsRequest.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIds, name: "FindingIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    ArchiveFindingsRequest.type = Types::ArchiveFindingsRequest
    ArchiveFindingsResponse.type = Types::ArchiveFindingsResponse
    AssociationDetail.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "associationId", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleArn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    AssociationDetail.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt", traits: {"smithy.api#jsonName" => "expiresAt"}))
    AssociationDetail.type = Types::AssociationDetail
    AssociationMode.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    AssociationMode.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRY_RUN", traits: {"smithy.api#enumValue" => "DRY_RUN"}))
    AssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "associationId", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleArn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    AssociationSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt", traits: {"smithy.api#jsonName" => "expiresAt"}))
    AssociationSummary.type = Types::AssociationSummary
    AssociationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSummary, name: "member"))
    AutoEnableMembers.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    AutoEnableMembers.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AutoEnableMembers.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AutonomousSystem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    AutonomousSystem.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Number", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "number", "smithy.api#required" => {}}))
    AutonomousSystem.type = Types::AutonomousSystem
    AutoscalingAutoScalingGroup.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    AutoscalingAutoScalingGroup.type = Types::AutoscalingAutoScalingGroup
    AwsApiCallAction.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Api", traits: {"smithy.api#jsonName" => "api"}))
    AwsApiCallAction.add_member(:caller_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerType", traits: {"smithy.api#jsonName" => "callerType"}))
    AwsApiCallAction.add_member(:domain_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDetails, name: "DomainDetails", traits: {"smithy.api#jsonName" => "domainDetails"}))
    AwsApiCallAction.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    AwsApiCallAction.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserAgent", traits: {"smithy.api#jsonName" => "userAgent"}))
    AwsApiCallAction.add_member(:remote_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteIpDetails, name: "RemoteIpDetails", traits: {"smithy.api#jsonName" => "remoteIpDetails"}))
    AwsApiCallAction.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceName", traits: {"smithy.api#jsonName" => "serviceName"}))
    AwsApiCallAction.add_member(:remote_account_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAccountDetails, name: "RemoteAccountDetails", traits: {"smithy.api#jsonName" => "remoteAccountDetails"}))
    AwsApiCallAction.add_member(:affected_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AffectedResources, name: "AffectedResources", traits: {"smithy.api#jsonName" => "affectedResources"}))
    AwsApiCallAction.type = Types::AwsApiCallAction
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    BadRequestException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    BadRequestException.type = Types::BadRequestException
    BedrockGuardrail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn", "smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+$"}))
    BedrockGuardrail.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#jsonName" => "version", "smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT)|(ENFORCED))$"}))
    BedrockGuardrail.type = Types::BedrockGuardrail
    BedrockGuardrailDetails.add_member(:guardrail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GuardrailArn", traits: {"smithy.api#deprecated" => {"message" => "Use guardrails list instead", "since" => "2026-07-13"}, "smithy.api#jsonName" => "guardrailArn", "smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+$"}))
    BedrockGuardrailDetails.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GuardrailVersion", traits: {"smithy.api#deprecated" => {"message" => "Use guardrails list instead", "since" => "2026-07-13"}, "smithy.api#jsonName" => "guardrailVersion", "smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$"}))
    BedrockGuardrailDetails.add_member(:guardrails, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrails, name: "Guardrails", traits: {"smithy.api#jsonName" => "guardrails"}))
    BedrockGuardrailDetails.add_member(:guardrail_action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "GuardrailAction", traits: {"smithy.api#jsonName" => "guardrailAction"}))
    BedrockGuardrailDetails.add_member(:guardrail_source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSource, name: "GuardrailSource", traits: {"smithy.api#jsonName" => "guardrailSource"}))
    BedrockGuardrailDetails.add_member(:content_policy_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentPolicyFilters, name: "ContentPolicyFilters", traits: {"smithy.api#jsonName" => "contentPolicyFilters"}))
    BedrockGuardrailDetails.type = Types::BedrockGuardrailDetails
    BedrockGuardrailResource.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#jsonName" => "version", "smithy.api#length" => {"min" => 1, "max" => 8}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT)|(ENFORCED))$"}))
    BedrockGuardrailResource.add_member(:guardrail_action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "GuardrailAction", traits: {"smithy.api#jsonName" => "guardrailAction"}))
    BedrockGuardrailResource.add_member(:guardrail_source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSource, name: "GuardrailSource", traits: {"smithy.api#jsonName" => "guardrailSource"}))
    BedrockGuardrailResource.type = Types::BedrockGuardrailResource
    BedrockGuardrails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrail, name: "member"))
    Behavior.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Behavior.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyUnusualBehaviorFeature, name: "value"))
    BlockPublicAccess.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IgnorePublicAcls", traits: {"smithy.api#jsonName" => "ignorePublicAcls"}))
    BlockPublicAccess.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RestrictPublicBuckets", traits: {"smithy.api#jsonName" => "restrictPublicBuckets"}))
    BlockPublicAccess.add_member(:block_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BlockPublicAcls", traits: {"smithy.api#jsonName" => "blockPublicAcls"}))
    BlockPublicAccess.add_member(:block_public_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BlockPublicPolicy", traits: {"smithy.api#jsonName" => "blockPublicPolicy"}))
    BlockPublicAccess.type = Types::BlockPublicAccess
    BucketLevelPermissions.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlList, name: "AccessControlList", traits: {"smithy.api#jsonName" => "accessControlList"}))
    BucketLevelPermissions.add_member(:bucket_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketPolicy, name: "BucketPolicy", traits: {"smithy.api#jsonName" => "bucketPolicy"}))
    BucketLevelPermissions.add_member(:block_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockPublicAccess, name: "BlockPublicAccess", traits: {"smithy.api#jsonName" => "blockPublicAccess"}))
    BucketLevelPermissions.type = Types::BucketLevelPermissions
    BucketPolicy.add_member(:allows_public_read_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowsPublicReadAccess", traits: {"smithy.api#jsonName" => "allowsPublicReadAccess"}))
    BucketPolicy.add_member(:allows_public_write_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowsPublicWriteAccess", traits: {"smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    BucketPolicy.type = Types::BucketPolicy
    City.add_member(:city_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CityName", traits: {"smithy.api#jsonName" => "cityName"}))
    City.type = Types::City
    CloudDetails.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudProvider, name: "Provider", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "provider", "smithy.api#required" => {}}))
    CloudDetails.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Region", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "region", "smithy.api#required" => {}}))
    CloudDetails.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Account", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "account", "smithy.api#required" => {}}))
    CloudDetails.type = Types::CloudDetails
    CloudProvider.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    CloudTrailConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    CloudTrailConfigurationResult.type = Types::CloudTrailConfigurationResult
    CloudformationStack.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    CloudformationStack.type = Types::CloudformationStack
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    Condition.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: Eq, name: "Eq", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "eq"}))
    Condition.add_member(:neq, ::Smithy::Schema::Shapes::MemberShape.new(target: Neq, name: "Neq", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "neq"}))
    Condition.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Gt", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "gt"}))
    Condition.add_member(:gte, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Gte", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "gte"}))
    Condition.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Lt", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "lt"}))
    Condition.add_member(:lte, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Lte", traits: {"smithy.api#deprecated" => {}, "smithy.api#jsonName" => "lte"}))
    Condition.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: Equals, name: "Equals", traits: {"smithy.api#jsonName" => "equals"}))
    Condition.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: NotEquals, name: "NotEquals", traits: {"smithy.api#jsonName" => "notEquals"}))
    Condition.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "GreaterThan", traits: {"smithy.api#jsonName" => "greaterThan"}))
    Condition.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "GreaterThanOrEqual", traits: {"smithy.api#jsonName" => "greaterThanOrEqual"}))
    Condition.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LessThan", traits: {"smithy.api#jsonName" => "lessThan"}))
    Condition.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LessThanOrEqual", traits: {"smithy.api#jsonName" => "lessThanOrEqual"}))
    Condition.add_member(:matches, ::Smithy::Schema::Shapes::MemberShape.new(target: Matches, name: "Matches", traits: {"smithy.api#jsonName" => "matches"}))
    Condition.add_member(:not_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: NotMatches, name: "NotMatches", traits: {"smithy.api#jsonName" => "notMatches"}))
    Condition.type = Types::Condition
    Confidence.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    Confidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    Confidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    Confidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    ConfidenceLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ConfidenceLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceLevel.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ConflictException.type = Types::ConflictException
    Container.add_member(:container_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContainerRuntime", traits: {"smithy.api#jsonName" => "containerRuntime"}))
    Container.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    Container.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    Container.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Image", traits: {"smithy.api#jsonName" => "image"}))
    Container.add_member(:image_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImagePrefix", traits: {"smithy.api#jsonName" => "imagePrefix"}))
    Container.add_member(:volume_mounts, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeMounts, name: "VolumeMounts", traits: {"smithy.api#jsonName" => "volumeMounts"}))
    Container.add_member(:security_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityContext, name: "SecurityContext", traits: {"smithy.api#jsonName" => "securityContext"}))
    Container.type = Types::Container
    ContainerFindingResource.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Image", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "image", "smithy.api#required" => {}}))
    ContainerFindingResource.add_member(:image_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImageUid, name: "ImageUid", traits: {"smithy.api#jsonName" => "imageUid"}))
    ContainerFindingResource.type = Types::ContainerFindingResource
    ContainerInstanceDetails.add_member(:covered_container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CoveredContainerInstances", traits: {"smithy.api#jsonName" => "coveredContainerInstances"}))
    ContainerInstanceDetails.add_member(:compatible_container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CompatibleContainerInstances", traits: {"smithy.api#jsonName" => "compatibleContainerInstances"}))
    ContainerInstanceDetails.type = Types::ContainerInstanceDetails
    ContainerUids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerUid, name: "member"))
    Containers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "member"))
    ContentPolicyFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentPolicyFilterType, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ContentPolicyFilter.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "Confidence", traits: {"smithy.api#jsonName" => "confidence"}))
    ContentPolicyFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentPolicyFilterAction, name: "Action", traits: {"smithy.api#jsonName" => "action"}))
    ContentPolicyFilter.type = Types::ContentPolicyFilter
    ContentPolicyFilterAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    ContentPolicyFilterAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ContentPolicyFilterType.add_member(:prompt_attack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMPT_ATTACK", traits: {"smithy.api#enumValue" => "PROMPT_ATTACK"}))
    ContentPolicyFilterType.add_member(:jailbreak, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAILBREAK", traits: {"smithy.api#enumValue" => "JAILBREAK"}))
    ContentPolicyFilterType.add_member(:hate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HATE", traits: {"smithy.api#enumValue" => "HATE"}))
    ContentPolicyFilterType.add_member(:insults, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSULTS", traits: {"smithy.api#enumValue" => "INSULTS"}))
    ContentPolicyFilterType.add_member(:sexual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEXUAL", traits: {"smithy.api#enumValue" => "SEXUAL"}))
    ContentPolicyFilterType.add_member(:violence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIOLENCE", traits: {"smithy.api#enumValue" => "VIOLENCE"}))
    ContentPolicyFilterType.add_member(:misconduct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONDUCT", traits: {"smithy.api#enumValue" => "MISCONDUCT"}))
    ContentPolicyFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentPolicyFilter, name: "member"))
    ContinuousScanDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    ContinuousScanDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime", "smithy.api#required" => {}}))
    ContinuousScanDetails.type = Types::ContinuousScanDetails
    CountByCoverageStatus.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStatus, name: "key"))
    CountByCoverageStatus.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "value"))
    CountByResourceType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "key"))
    CountByResourceType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "value"))
    CountBySeverity.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    CountBySeverity.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value"))
    Country.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CountryCode", traits: {"smithy.api#jsonName" => "countryCode"}))
    Country.add_member(:country_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CountryName", traits: {"smithy.api#jsonName" => "countryName"}))
    Country.type = Types::Country
    CoverageEc2InstanceDetails.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    CoverageEc2InstanceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#jsonName" => "instanceType"}))
    CoverageEc2InstanceDetails.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    CoverageEc2InstanceDetails.add_member(:agent_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentDetails, name: "AgentDetails", traits: {"smithy.api#jsonName" => "agentDetails"}))
    CoverageEc2InstanceDetails.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "ManagementType", traits: {"smithy.api#jsonName" => "managementType"}))
    CoverageEc2InstanceDetails.type = Types::CoverageEc2InstanceDetails
    CoverageEcsClusterDetails.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    CoverageEcsClusterDetails.add_member(:fargate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateDetails, name: "FargateDetails", traits: {"smithy.api#jsonName" => "fargateDetails"}))
    CoverageEcsClusterDetails.add_member(:container_instance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceDetails, name: "ContainerInstanceDetails", traits: {"smithy.api#jsonName" => "containerInstanceDetails"}))
    CoverageEcsClusterDetails.type = Types::CoverageEcsClusterDetails
    CoverageEksClusterDetails.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    CoverageEksClusterDetails.add_member(:covered_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CoveredNodes", traits: {"smithy.api#jsonName" => "coveredNodes"}))
    CoverageEksClusterDetails.add_member(:compatible_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CompatibleNodes", traits: {"smithy.api#jsonName" => "compatibleNodes"}))
    CoverageEksClusterDetails.add_member(:addon_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonDetails, name: "AddonDetails", traits: {"smithy.api#jsonName" => "addonDetails"}))
    CoverageEksClusterDetails.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "ManagementType", traits: {"smithy.api#jsonName" => "managementType"}))
    CoverageEksClusterDetails.type = Types::CoverageEksClusterDetails
    CoverageFilterCondition.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: Equals, name: "Equals", traits: {"smithy.api#jsonName" => "equals"}))
    CoverageFilterCondition.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: NotEquals, name: "NotEquals", traits: {"smithy.api#jsonName" => "notEquals"}))
    CoverageFilterCondition.type = Types::CoverageFilterCondition
    CoverageFilterCriteria.add_member(:filter_criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriterionList, name: "FilterCriterion", traits: {"smithy.api#jsonName" => "filterCriterion"}))
    CoverageFilterCriteria.type = Types::CoverageFilterCriteria
    CoverageFilterCriterion.add_member(:criterion_key, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriterionKey, name: "CriterionKey", traits: {"smithy.api#jsonName" => "criterionKey"}))
    CoverageFilterCriterion.add_member(:filter_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCondition, name: "FilterCondition", traits: {"smithy.api#jsonName" => "filterCondition"}))
    CoverageFilterCriterion.type = Types::CoverageFilterCriterion
    CoverageFilterCriterionKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    CoverageFilterCriterionKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    CoverageFilterCriterionKey.add_member(:coverage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COVERAGE_STATUS", traits: {"smithy.api#enumValue" => "COVERAGE_STATUS"}))
    CoverageFilterCriterionKey.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_VERSION", traits: {"smithy.api#enumValue" => "ADDON_VERSION"}))
    CoverageFilterCriterionKey.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_NAME", traits: {"smithy.api#enumValue" => "CLUSTER_NAME"}))
    CoverageFilterCriterionKey.add_member(:ecs_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_CLUSTER_NAME", traits: {"smithy.api#enumValue" => "ECS_CLUSTER_NAME"}))
    CoverageFilterCriterionKey.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGEMENT_TYPE", traits: {"smithy.api#enumValue" => "MANAGEMENT_TYPE"}))
    CoverageFilterCriterionKey.add_member(:eks_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_CLUSTER_NAME", traits: {"smithy.api#enumValue" => "EKS_CLUSTER_NAME"}))
    CoverageFilterCriterionKey.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_VERSION", traits: {"smithy.api#enumValue" => "AGENT_VERSION"}))
    CoverageFilterCriterionKey.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_ID", traits: {"smithy.api#enumValue" => "INSTANCE_ID"}))
    CoverageFilterCriterionKey.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_ARN", traits: {"smithy.api#enumValue" => "CLUSTER_ARN"}))
    CoverageFilterCriterionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriterion, name: "member"))
    CoverageResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    CoverageResource.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    CoverageResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    CoverageResource.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageResourceDetails, name: "ResourceDetails", traits: {"smithy.api#jsonName" => "resourceDetails"}))
    CoverageResource.add_member(:coverage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStatus, name: "CoverageStatus", traits: {"smithy.api#jsonName" => "coverageStatus"}))
    CoverageResource.add_member(:issue, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Issue", traits: {"smithy.api#jsonName" => "issue"}))
    CoverageResource.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    CoverageResource.type = Types::CoverageResource
    CoverageResourceDetails.add_member(:eks_cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageEksClusterDetails, name: "EksClusterDetails", traits: {"smithy.api#jsonName" => "eksClusterDetails"}))
    CoverageResourceDetails.add_member(:ecs_cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageEcsClusterDetails, name: "EcsClusterDetails", traits: {"smithy.api#jsonName" => "ecsClusterDetails"}))
    CoverageResourceDetails.add_member(:ec2_instance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageEc2InstanceDetails, name: "Ec2InstanceDetails", traits: {"smithy.api#jsonName" => "ec2InstanceDetails"}))
    CoverageResourceDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    CoverageResourceDetails.type = Types::CoverageResourceDetails
    CoverageResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageResource, name: "member"))
    CoverageSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageSortKey, name: "AttributeName", traits: {"smithy.api#jsonName" => "attributeName"}))
    CoverageSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "OrderBy", traits: {"smithy.api#jsonName" => "orderBy"}))
    CoverageSortCriteria.type = Types::CoverageSortCriteria
    CoverageSortKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    CoverageSortKey.add_member(:coverage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COVERAGE_STATUS", traits: {"smithy.api#enumValue" => "COVERAGE_STATUS"}))
    CoverageSortKey.add_member(:issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUE", traits: {"smithy.api#enumValue" => "ISSUE"}))
    CoverageSortKey.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_VERSION", traits: {"smithy.api#enumValue" => "ADDON_VERSION"}))
    CoverageSortKey.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_AT", traits: {"smithy.api#enumValue" => "UPDATED_AT"}))
    CoverageSortKey.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_NAME", traits: {"smithy.api#enumValue" => "CLUSTER_NAME"}))
    CoverageSortKey.add_member(:eks_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_CLUSTER_NAME", traits: {"smithy.api#enumValue" => "EKS_CLUSTER_NAME"}))
    CoverageSortKey.add_member(:ecs_cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_CLUSTER_NAME", traits: {"smithy.api#enumValue" => "ECS_CLUSTER_NAME"}))
    CoverageSortKey.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_ID", traits: {"smithy.api#enumValue" => "INSTANCE_ID"}))
    CoverageStatistics.add_member(:count_by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CountByResourceType, name: "CountByResourceType", traits: {"smithy.api#jsonName" => "countByResourceType"}))
    CoverageStatistics.add_member(:count_by_coverage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CountByCoverageStatus, name: "CountByCoverageStatus", traits: {"smithy.api#jsonName" => "countByCoverageStatus"}))
    CoverageStatistics.type = Types::CoverageStatistics
    CoverageStatisticsType.add_member(:count_by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_BY_RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "COUNT_BY_RESOURCE_TYPE"}))
    CoverageStatisticsType.add_member(:count_by_coverage_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_BY_COVERAGE_STATUS", traits: {"smithy.api#enumValue" => "COUNT_BY_COVERAGE_STATUS"}))
    CoverageStatisticsTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStatisticsType, name: "member"))
    CoverageStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CoverageStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    CreateCustomDetectionRuleAssociationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    CreateCustomDetectionRuleAssociationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    CreateCustomDetectionRuleAssociationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateCustomDetectionRuleAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateCustomDetectionRuleAssociationRequest.type = Types::CreateCustomDetectionRuleAssociationRequest
    CreateCustomDetectionRuleAssociationResponse.add_member(:rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDetail, name: "RuleAssociation", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleAssociation", "smithy.api#required" => {}}))
    CreateCustomDetectionRuleAssociationResponse.type = Types::CreateCustomDetectionRuleAssociationResponse
    CreateCustomDetectionRuleOrgConfigurationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    CreateCustomDetectionRuleOrgConfigurationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    CreateCustomDetectionRuleOrgConfigurationRequest.add_member(:include_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "IncludeAccountIds", traits: {"smithy.api#jsonName" => "includeAccountIds"}))
    CreateCustomDetectionRuleOrgConfigurationRequest.add_member(:exclude_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "ExcludeAccountIds", traits: {"smithy.api#jsonName" => "excludeAccountIds"}))
    CreateCustomDetectionRuleOrgConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateCustomDetectionRuleOrgConfigurationRequest.type = Types::CreateCustomDetectionRuleOrgConfigurationRequest
    CreateCustomDetectionRuleOrgConfigurationResponse.type = Types::CreateCustomDetectionRuleOrgConfigurationResponse
    CreateDetectorRequest.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enable", "smithy.api#required" => {}}))
    CreateDetectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateDetectorRequest.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingPublishingFrequency, name: "FindingPublishingFrequency", traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    CreateDetectorRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfigurations, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    CreateDetectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateDetectorRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureConfigurations, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    CreateDetectorRequest.type = Types::CreateDetectorRequest
    CreateDetectorResponse.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    CreateDetectorResponse.add_member(:unprocessed_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedDataSourcesResult, name: "UnprocessedDataSources", traits: {"smithy.api#jsonName" => "unprocessedDataSources"}))
    CreateDetectorResponse.type = Types::CreateDetectorResponse
    CreateFilterRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateFilterRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "Action", traits: {"smithy.api#jsonName" => "action"}))
    CreateFilterRequest.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRank, name: "Rank", traits: {"smithy.api#jsonName" => "rank"}))
    CreateFilterRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingCriteria, name: "FindingCriteria", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingCriteria", "smithy.api#required" => {}}))
    CreateFilterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateFilterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateFilterRequest.type = Types::CreateFilterRequest
    CreateFilterResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFilterResponse.type = Types::CreateFilterResponse
    CreateIPSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: IpSetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "activate", "smithy.api#required" => {}}))
    CreateIPSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateIPSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateIPSetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    CreateIPSetRequest.type = Types::CreateIPSetRequest
    CreateIPSetResponse.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpSetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipSetId", "smithy.api#required" => {}}))
    CreateIPSetResponse.type = Types::CreateIPSetResponse
    CreateInvestigationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateInvestigationRequest.add_member(:trigger_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerPrompt, name: "TriggerPrompt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "triggerPrompt", "smithy.api#required" => {}}))
    CreateInvestigationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateInvestigationRequest.type = Types::CreateInvestigationRequest
    CreateInvestigationResponse.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "investigationId", "smithy.api#required" => {}}))
    CreateInvestigationResponse.type = Types::CreateInvestigationResponse
    CreateMalwareProtectionPlanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateMalwareProtectionPlanRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Role", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "role", "smithy.api#required" => {}}))
    CreateMalwareProtectionPlanRequest.add_member(:protected_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProtectedResource, name: "ProtectedResource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "protectedResource", "smithy.api#required" => {}}))
    CreateMalwareProtectionPlanRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanActions, name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    CreateMalwareProtectionPlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateMalwareProtectionPlanRequest.type = Types::CreateMalwareProtectionPlanRequest
    CreateMalwareProtectionPlanResponse.add_member(:malware_protection_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MalwareProtectionPlanId", traits: {"smithy.api#jsonName" => "malwareProtectionPlanId"}))
    CreateMalwareProtectionPlanResponse.type = Types::CreateMalwareProtectionPlanResponse
    CreateMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMembersRequest.add_member(:account_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetails, name: "AccountDetails", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountDetails", "smithy.api#required" => {}}))
    CreateMembersRequest.type = Types::CreateMembersRequest
    CreateMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    CreateMembersResponse.type = Types::CreateMembersResponse
    CreateProtectedResource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateS3BucketResource, name: "S3Bucket", traits: {"smithy.api#jsonName" => "s3Bucket"}))
    CreateProtectedResource.type = Types::CreateProtectedResource
    CreatePublishingDestinationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePublishingDestinationRequest.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationType", "smithy.api#required" => {}}))
    CreatePublishingDestinationRequest.add_member(:destination_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationProperties, name: "DestinationProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationProperties", "smithy.api#required" => {}}))
    CreatePublishingDestinationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreatePublishingDestinationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePublishingDestinationRequest.type = Types::CreatePublishingDestinationRequest
    CreatePublishingDestinationResponse.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationId", "smithy.api#required" => {}}))
    CreatePublishingDestinationResponse.type = Types::CreatePublishingDestinationResponse
    CreateS3BucketResource.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName", traits: {"smithy.api#jsonName" => "bucketName"}))
    CreateS3BucketResource.add_member(:object_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanObjectPrefixesList, name: "ObjectPrefixes", traits: {"smithy.api#jsonName" => "objectPrefixes"}))
    CreateS3BucketResource.type = Types::CreateS3BucketResource
    CreateSampleFindingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSampleFindingsRequest.add_member(:finding_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTypes, name: "FindingTypes", traits: {"smithy.api#jsonName" => "findingTypes"}))
    CreateSampleFindingsRequest.type = Types::CreateSampleFindingsRequest
    CreateSampleFindingsResponse.type = Types::CreateSampleFindingsResponse
    CreateThreatEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThreatEntitySetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateThreatEntitySetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEntitySetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    CreateThreatEntitySetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    CreateThreatEntitySetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    CreateThreatEntitySetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "activate", "smithy.api#required" => {}}))
    CreateThreatEntitySetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateThreatEntitySetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateThreatEntitySetRequest.type = Types::CreateThreatEntitySetRequest
    CreateThreatEntitySetResponse.add_member(:threat_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatEntitySetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "threatEntitySetId", "smithy.api#required" => {}}))
    CreateThreatEntitySetResponse.type = Types::CreateThreatEntitySetResponse
    CreateThreatIntelSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThreatIntelSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateThreatIntelSetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelSetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    CreateThreatIntelSetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    CreateThreatIntelSetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "activate", "smithy.api#required" => {}}))
    CreateThreatIntelSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateThreatIntelSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateThreatIntelSetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    CreateThreatIntelSetRequest.type = Types::CreateThreatIntelSetRequest
    CreateThreatIntelSetResponse.add_member(:threat_intel_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatIntelSetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "threatIntelSetId", "smithy.api#required" => {}}))
    CreateThreatIntelSetResponse.type = Types::CreateThreatIntelSetResponse
    CreateTrustedEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTrustedEntitySetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateTrustedEntitySetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedEntitySetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    CreateTrustedEntitySetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    CreateTrustedEntitySetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    CreateTrustedEntitySetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "activate", "smithy.api#required" => {}}))
    CreateTrustedEntitySetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateTrustedEntitySetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateTrustedEntitySetRequest.type = Types::CreateTrustedEntitySetRequest
    CreateTrustedEntitySetResponse.add_member(:trusted_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrustedEntitySetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "trustedEntitySetId", "smithy.api#required" => {}}))
    CreateTrustedEntitySetResponse.type = Types::CreateTrustedEntitySetResponse
    Criterion.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Criterion.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "value"))
    CriterionKey.add_member(:ec2_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE_ARN", traits: {"smithy.api#enumValue" => "EC2_INSTANCE_ARN"}))
    CriterionKey.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_ID", traits: {"smithy.api#enumValue" => "SCAN_ID"}))
    CriterionKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    CriterionKey.add_member(:guardduty_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_FINDING_ID", traits: {"smithy.api#enumValue" => "GUARDDUTY_FINDING_ID"}))
    CriterionKey.add_member(:scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_START_TIME", traits: {"smithy.api#enumValue" => "SCAN_START_TIME"}))
    CriterionKey.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_STATUS", traits: {"smithy.api#enumValue" => "SCAN_STATUS"}))
    CriterionKey.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_TYPE", traits: {"smithy.api#enumValue" => "SCAN_TYPE"}))
    DNSLogsConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    DNSLogsConfigurationResult.type = Types::DNSLogsConfigurationResult
    DataSource.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_LOGS", traits: {"smithy.api#enumValue" => "FLOW_LOGS"}))
    DataSource.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CLOUD_TRAIL"}))
    DataSource.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_LOGS", traits: {"smithy.api#enumValue" => "DNS_LOGS"}))
    DataSource.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_LOGS", traits: {"smithy.api#enumValue" => "S3_LOGS"}))
    DataSource.add_member(:kubernetes_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KUBERNETES_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "KUBERNETES_AUDIT_LOGS"}))
    DataSource.add_member(:ec2_malware_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_MALWARE_SCAN", traits: {"smithy.api#enumValue" => "EC2_MALWARE_SCAN"}))
    DataSourceConfigurations.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogsConfiguration, name: "S3Logs", traits: {"smithy.api#jsonName" => "s3Logs"}))
    DataSourceConfigurations.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesConfiguration, name: "Kubernetes", traits: {"smithy.api#jsonName" => "kubernetes"}))
    DataSourceConfigurations.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionConfiguration, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    DataSourceConfigurations.type = Types::DataSourceConfigurations
    DataSourceConfigurationsResult.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudTrailConfigurationResult, name: "CloudTrail", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cloudTrail", "smithy.api#required" => {}}))
    DataSourceConfigurationsResult.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSLogsConfigurationResult, name: "DNSLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dnsLogs", "smithy.api#required" => {}}))
    DataSourceConfigurationsResult.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowLogsConfigurationResult, name: "FlowLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "flowLogs", "smithy.api#required" => {}}))
    DataSourceConfigurationsResult.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogsConfigurationResult, name: "S3Logs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "s3Logs", "smithy.api#required" => {}}))
    DataSourceConfigurationsResult.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesConfigurationResult, name: "Kubernetes", traits: {"smithy.api#jsonName" => "kubernetes"}))
    DataSourceConfigurationsResult.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionConfigurationResult, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    DataSourceConfigurationsResult.type = Types::DataSourceConfigurationsResult
    DataSourceFreeTrial.add_member(:free_trial_days_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FreeTrialDaysRemaining", traits: {"smithy.api#jsonName" => "freeTrialDaysRemaining"}))
    DataSourceFreeTrial.type = Types::DataSourceFreeTrial
    DataSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "member"))
    DataSourceStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DataSourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DataSourcesFreeTrial.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "CloudTrail", traits: {"smithy.api#jsonName" => "cloudTrail"}))
    DataSourcesFreeTrial.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "DnsLogs", traits: {"smithy.api#jsonName" => "dnsLogs"}))
    DataSourcesFreeTrial.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "FlowLogs", traits: {"smithy.api#jsonName" => "flowLogs"}))
    DataSourcesFreeTrial.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "S3Logs", traits: {"smithy.api#jsonName" => "s3Logs"}))
    DataSourcesFreeTrial.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesDataSourceFreeTrial, name: "Kubernetes", traits: {"smithy.api#jsonName" => "kubernetes"}))
    DataSourcesFreeTrial.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionDataSourceFreeTrial, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    DataSourcesFreeTrial.type = Types::DataSourcesFreeTrial
    DateStatistics.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Date", traits: {"smithy.api#jsonName" => "date"}))
    DateStatistics.add_member(:last_generated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedAt", traits: {"smithy.api#jsonName" => "lastGeneratedAt"}))
    DateStatistics.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Severity", traits: {"smithy.api#jsonName" => "severity"}))
    DateStatistics.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalFindings", traits: {"smithy.api#jsonName" => "totalFindings"}))
    DateStatistics.type = Types::DateStatistics
    DeclineInvitationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeclineInvitationsRequest.type = Types::DeclineInvitationsRequest
    DeclineInvitationsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    DeclineInvitationsResponse.type = Types::DeclineInvitationsResponse
    DefaultServerSideEncryption.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncryptionType", traits: {"smithy.api#jsonName" => "encryptionType"}))
    DefaultServerSideEncryption.add_member(:kms_master_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsMasterKeyArn", traits: {"smithy.api#jsonName" => "kmsMasterKeyArn"}))
    DefaultServerSideEncryption.type = Types::DefaultServerSideEncryption
    DeleteCustomDetectionRuleAssociationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomDetectionRuleAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomDetectionRuleAssociationRequest.type = Types::DeleteCustomDetectionRuleAssociationRequest
    DeleteCustomDetectionRuleAssociationResponse.type = Types::DeleteCustomDetectionRuleAssociationResponse
    DeleteCustomDetectionRuleOrgConfigurationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomDetectionRuleOrgConfigurationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "mode", "smithy.api#required" => {}}))
    DeleteCustomDetectionRuleOrgConfigurationRequest.type = Types::DeleteCustomDetectionRuleOrgConfigurationRequest
    DeleteCustomDetectionRuleOrgConfigurationResponse.type = Types::DeleteCustomDetectionRuleOrgConfigurationResponse
    DeleteDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDetectorRequest.type = Types::DeleteDetectorRequest
    DeleteDetectorResponse.type = Types::DeleteDetectorResponse
    DeleteFilterRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFilterRequest.type = Types::DeleteFilterRequest
    DeleteFilterResponse.type = Types::DeleteFilterResponse
    DeleteIPSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpSetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIPSetRequest.type = Types::DeleteIPSetRequest
    DeleteIPSetResponse.type = Types::DeleteIPSetResponse
    DeleteInvitationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeleteInvitationsRequest.type = Types::DeleteInvitationsRequest
    DeleteInvitationsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    DeleteInvitationsResponse.type = Types::DeleteInvitationsResponse
    DeleteMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MalwareProtectionPlanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMalwareProtectionPlanRequest.type = Types::DeleteMalwareProtectionPlanRequest
    DeleteMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeleteMembersRequest.type = Types::DeleteMembersRequest
    DeleteMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    DeleteMembersResponse.type = Types::DeleteMembersResponse
    DeletePublishingDestinationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePublishingDestinationRequest.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePublishingDestinationRequest.type = Types::DeletePublishingDestinationRequest
    DeletePublishingDestinationResponse.type = Types::DeletePublishingDestinationResponse
    DeleteThreatEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThreatEntitySetRequest.add_member(:threat_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatEntitySetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThreatEntitySetRequest.type = Types::DeleteThreatEntitySetRequest
    DeleteThreatEntitySetResponse.type = Types::DeleteThreatEntitySetResponse
    DeleteThreatIntelSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThreatIntelSetRequest.add_member(:threat_intel_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatIntelSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThreatIntelSetRequest.type = Types::DeleteThreatIntelSetRequest
    DeleteThreatIntelSetResponse.type = Types::DeleteThreatIntelSetResponse
    DeleteTrustedEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustedEntitySetRequest.add_member(:trusted_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrustedEntitySetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTrustedEntitySetRequest.type = Types::DeleteTrustedEntitySetRequest
    DeleteTrustedEntitySetResponse.type = Types::DeleteTrustedEntitySetResponse
    DescribeMalwareScansRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMalwareScansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeMalwareScansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerValueWithMax, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    DescribeMalwareScansRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteria, name: "FilterCriteria", traits: {"smithy.api#jsonName" => "filterCriteria"}))
    DescribeMalwareScansRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    DescribeMalwareScansRequest.type = Types::DescribeMalwareScansRequest
    DescribeMalwareScansResponse.add_member(:scans, ::Smithy::Schema::Shapes::MemberShape.new(target: Scans, name: "Scans", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "scans", "smithy.api#required" => {}}))
    DescribeMalwareScansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeMalwareScansResponse.type = Types::DescribeMalwareScansResponse
    DescribeOrganizationConfigurationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeOrganizationConfigurationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeOrganizationConfigurationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeOrganizationConfigurationRequest.type = Types::DescribeOrganizationConfigurationRequest
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use AutoEnableOrganizationMembers instead"}, "smithy.api#jsonName" => "autoEnable"}))
    DescribeOrganizationConfigurationResponse.add_member(:member_account_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MemberAccountLimitReached", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "memberAccountLimitReached", "smithy.api#required" => {}}))
    DescribeOrganizationConfigurationResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDataSourceConfigurationsResult, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    DescribeOrganizationConfigurationResponse.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeaturesConfigurationsResults, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    DescribeOrganizationConfigurationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable_organization_members, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoEnableMembers, name: "AutoEnableOrganizationMembers", traits: {"smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    DescribeOrganizationConfigurationResponse.type = Types::DescribeOrganizationConfigurationResponse
    DescribePublishingDestinationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePublishingDestinationRequest.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePublishingDestinationRequest.type = Types::DescribePublishingDestinationRequest
    DescribePublishingDestinationResponse.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationId", "smithy.api#required" => {}}))
    DescribePublishingDestinationResponse.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationType", "smithy.api#required" => {}}))
    DescribePublishingDestinationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishingStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    DescribePublishingDestinationResponse.add_member(:publishing_failure_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "PublishingFailureStartTimestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "publishingFailureStartTimestamp", "smithy.api#required" => {}}))
    DescribePublishingDestinationResponse.add_member(:destination_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationProperties, name: "DestinationProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationProperties", "smithy.api#required" => {}}))
    DescribePublishingDestinationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribePublishingDestinationResponse.type = Types::DescribePublishingDestinationResponse
    Destination.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationId", "smithy.api#required" => {}}))
    Destination.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationType", "smithy.api#required" => {}}))
    Destination.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishingStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    Destination.type = Types::Destination
    DestinationProperties.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationArn", traits: {"smithy.api#jsonName" => "destinationArn"}))
    DestinationProperties.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn", traits: {"smithy.api#jsonName" => "kmsKeyArn"}))
    DestinationProperties.type = Types::DestinationProperties
    DestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    Destinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "member"))
    Detection.add_member(:anomaly, ::Smithy::Schema::Shapes::MemberShape.new(target: Anomaly, name: "Anomaly", traits: {"smithy.api#jsonName" => "anomaly"}))
    Detection.add_member(:sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: Sequence, name: "Sequence", traits: {"smithy.api#jsonName" => "sequence"}))
    Detection.type = Types::Detection
    DetectionRuleAccountIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    DetectionRuleConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DetectionRuleConfigurationStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DetectionRuleConfigurationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DetectionRuleDataSource.add_member(:cloudtrail_management_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDTRAIL_MANAGEMENT_EVENT", traits: {"smithy.api#enumValue" => "CloudTrailManagementEvent"}))
    DetectionRuleDataSource.add_member(:runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "RuntimeMonitoring"}))
    DetectionRuleEc2Requirements.add_member(:min_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAgentVersion, name: "MinAgentVersion", traits: {"smithy.api#jsonName" => "minAgentVersion"}))
    DetectionRuleEc2Requirements.type = Types::DetectionRuleEc2Requirements
    DetectionRuleEcsFargateRequirements.add_member(:min_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAgentVersion, name: "MinAgentVersion", traits: {"smithy.api#jsonName" => "minAgentVersion"}))
    DetectionRuleEcsFargateRequirements.type = Types::DetectionRuleEcsFargateRequirements
    DetectionRuleEksRequirements.add_member(:min_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAgentVersion, name: "MinAgentVersion", traits: {"smithy.api#jsonName" => "minAgentVersion"}))
    DetectionRuleEksRequirements.type = Types::DetectionRuleEksRequirements
    DetectionRuleFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterFieldName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    DetectionRuleFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleFilterValues, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "values", "smithy.api#required" => {}}))
    DetectionRuleFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleFilterCondition, name: "Condition", traits: {"smithy.api#jsonName" => "condition"}))
    DetectionRuleFilter.type = Types::DetectionRuleFilter
    DetectionRuleFilterCondition.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    DetectionRuleFilterCondition.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    DetectionRuleFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleFilter, name: "member"))
    DetectionRuleFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleFilterValue, name: "member"))
    DetectionRuleOrgConfiguration.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleConfigurationStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason", traits: {"smithy.api#jsonName" => "statusReason"}))
    DetectionRuleOrgConfiguration.add_member(:include_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "IncludeAccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "includeAccountIds", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:exclude_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "ExcludeAccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "excludeAccountIds", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    DetectionRuleOrgConfiguration.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt", traits: {"smithy.api#jsonName" => "expiresAt"}))
    DetectionRuleOrgConfiguration.type = Types::DetectionRuleOrgConfiguration
    DetectionRuleOrgConfigurationSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    DetectionRuleOrgConfigurationSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    DetectionRuleOrgConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleConfigurationStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    DetectionRuleOrgConfigurationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusReason", traits: {"smithy.api#jsonName" => "statusReason"}))
    DetectionRuleOrgConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    DetectionRuleOrgConfigurationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    DetectionRuleOrgConfigurationSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpiresAt", traits: {"smithy.api#jsonName" => "expiresAt"}))
    DetectionRuleOrgConfigurationSummary.type = Types::DetectionRuleOrgConfigurationSummary
    DetectionRuleOrgConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleOrgConfigurationSummary, name: "member"))
    DetectionRuleRuntimeMonitoringDetails.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleRuntimePlatforms, name: "Platforms", traits: {"smithy.api#jsonName" => "platforms"}))
    DetectionRuleRuntimeMonitoringDetails.type = Types::DetectionRuleRuntimeMonitoringDetails
    DetectionRuleRuntimePlatforms.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleEksRequirements, name: "Eks", traits: {"smithy.api#jsonName" => "eks"}))
    DetectionRuleRuntimePlatforms.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleEc2Requirements, name: "Ec2", traits: {"smithy.api#jsonName" => "ec2"}))
    DetectionRuleRuntimePlatforms.add_member(:ecs_fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleEcsFargateRequirements, name: "EcsFargate", traits: {"smithy.api#jsonName" => "ecsFargate"}))
    DetectionRuleRuntimePlatforms.type = Types::DetectionRuleRuntimePlatforms
    DetectionRuleSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    DetectionRuleSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    DetectionRuleSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DetectionRuleSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    DetectionSource.add_member(:amazon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON", traits: {"smithy.api#enumValue" => "AMAZON"}))
    DetectionSource.add_member(:bitdefender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITDEFENDER", traits: {"smithy.api#enumValue" => "BITDEFENDER"}))
    DetectorAdditionalConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    DetectorAdditionalConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DetectorAdditionalConfiguration.type = Types::DetectorAdditionalConfiguration
    DetectorAdditionalConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    DetectorAdditionalConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DetectorAdditionalConfigurationResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    DetectorAdditionalConfigurationResult.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy", traits: {"smithy.api#jsonName" => "managedBy"}))
    DetectorAdditionalConfigurationResult.type = Types::DetectorAdditionalConfigurationResult
    DetectorAdditionalConfigurationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorAdditionalConfigurationResult, name: "member"))
    DetectorAdditionalConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorAdditionalConfiguration, name: "member"))
    DetectorFeature.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    DetectorFeature.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    DetectorFeature.add_member(:ebs_malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_MALWARE_PROTECTION", traits: {"smithy.api#enumValue" => "EBS_MALWARE_PROTECTION"}))
    DetectorFeature.add_member(:rds_login_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_LOGIN_EVENTS", traits: {"smithy.api#enumValue" => "RDS_LOGIN_EVENTS"}))
    DetectorFeature.add_member(:lambda_network_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NETWORK_LOGS", traits: {"smithy.api#enumValue" => "LAMBDA_NETWORK_LOGS"}))
    DetectorFeature.add_member(:eks_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EKS_RUNTIME_MONITORING"}))
    DetectorFeature.add_member(:runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "RUNTIME_MONITORING"}))
    DetectorFeature.add_member(:ai_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_PROTECTION", traits: {"smithy.api#enumValue" => "AI_PROTECTION"}))
    DetectorFeature.add_member(:ai_analyst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_ANALYST", traits: {"smithy.api#enumValue" => "AI_ANALYST"}))
    DetectorFeatureConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    DetectorFeatureConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DetectorFeatureConfiguration.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorAdditionalConfigurations, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    DetectorFeatureConfiguration.type = Types::DetectorFeatureConfiguration
    DetectorFeatureConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureResult, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    DetectorFeatureConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DetectorFeatureConfigurationResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    DetectorFeatureConfigurationResult.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorAdditionalConfigurationResults, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    DetectorFeatureConfigurationResult.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy", traits: {"smithy.api#jsonName" => "managedBy"}))
    DetectorFeatureConfigurationResult.type = Types::DetectorFeatureConfigurationResult
    DetectorFeatureConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureConfiguration, name: "member"))
    DetectorFeatureConfigurationsResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureConfigurationResult, name: "member"))
    DetectorFeatureResult.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_LOGS", traits: {"smithy.api#enumValue" => "FLOW_LOGS"}))
    DetectorFeatureResult.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CLOUD_TRAIL"}))
    DetectorFeatureResult.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_LOGS", traits: {"smithy.api#enumValue" => "DNS_LOGS"}))
    DetectorFeatureResult.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    DetectorFeatureResult.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    DetectorFeatureResult.add_member(:ebs_malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_MALWARE_PROTECTION", traits: {"smithy.api#enumValue" => "EBS_MALWARE_PROTECTION"}))
    DetectorFeatureResult.add_member(:rds_login_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_LOGIN_EVENTS", traits: {"smithy.api#enumValue" => "RDS_LOGIN_EVENTS"}))
    DetectorFeatureResult.add_member(:lambda_network_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NETWORK_LOGS", traits: {"smithy.api#enumValue" => "LAMBDA_NETWORK_LOGS"}))
    DetectorFeatureResult.add_member(:eks_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EKS_RUNTIME_MONITORING"}))
    DetectorFeatureResult.add_member(:runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "RUNTIME_MONITORING"}))
    DetectorFeatureResult.add_member(:ai_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_PROTECTION", traits: {"smithy.api#enumValue" => "AI_PROTECTION"}))
    DetectorFeatureResult.add_member(:ai_analyst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_ANALYST", traits: {"smithy.api#enumValue" => "AI_ANALYST"}))
    DetectorIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "member"))
    DetectorStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DetectorStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdminAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "adminAccountId", "smithy.api#required" => {}}))
    DisableOrganizationAdminAccountRequest.type = Types::DisableOrganizationAdminAccountRequest
    DisableOrganizationAdminAccountResponse.type = Types::DisableOrganizationAdminAccountResponse
    DisassociateFromAdministratorAccountRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateFromAdministratorAccountRequest.type = Types::DisassociateFromAdministratorAccountRequest
    DisassociateFromAdministratorAccountResponse.type = Types::DisassociateFromAdministratorAccountResponse
    DisassociateFromMasterAccountRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateFromMasterAccountRequest.type = Types::DisassociateFromMasterAccountRequest
    DisassociateFromMasterAccountResponse.type = Types::DisassociateFromMasterAccountResponse
    DisassociateMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DisassociateMembersRequest.type = Types::DisassociateMembersRequest
    DisassociateMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    DisassociateMembersResponse.type = Types::DisassociateMembersResponse
    DnsRequestAction.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#jsonName" => "domain"}))
    DnsRequestAction.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    DnsRequestAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Blocked", traits: {"smithy.api#jsonName" => "blocked"}))
    DnsRequestAction.add_member(:domain_with_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainWithSuffix", traits: {"smithy.api#jsonName" => "domainWithSuffix"}))
    DnsRequestAction.add_member(:vpc_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "VpcOwnerAccountId", traits: {"smithy.api#jsonName" => "vpcOwnerAccountId"}))
    DnsRequestAction.type = Types::DnsRequestAction
    DomainDetails.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#jsonName" => "domain"}))
    DomainDetails.type = Types::DomainDetails
    EbsSnapshot.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "DeviceName", traits: {"smithy.api#jsonName" => "deviceName"}))
    EbsSnapshot.type = Types::EbsSnapshot
    EbsSnapshotDetails.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn", traits: {"smithy.api#jsonName" => "snapshotArn"}))
    EbsSnapshotDetails.type = Types::EbsSnapshotDetails
    EbsSnapshotPreservation.add_member(:no_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_RETENTION", traits: {"smithy.api#enumValue" => "NO_RETENTION"}))
    EbsSnapshotPreservation.add_member(:retention_with_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETENTION_WITH_FINDING", traits: {"smithy.api#enumValue" => "RETENTION_WITH_FINDING"}))
    EbsVolumeDetails.add_member(:scanned_volume_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeDetails, name: "ScannedVolumeDetails", traits: {"smithy.api#jsonName" => "scannedVolumeDetails"}))
    EbsVolumeDetails.add_member(:skipped_volume_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeDetails, name: "SkippedVolumeDetails", traits: {"smithy.api#jsonName" => "skippedVolumeDetails"}))
    EbsVolumeDetails.type = Types::EbsVolumeDetails
    EbsVolumeScanDetails.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    EbsVolumeScanDetails.add_member(:scan_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanStartedAt", traits: {"smithy.api#jsonName" => "scanStartedAt"}))
    EbsVolumeScanDetails.add_member(:scan_completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanCompletedAt", traits: {"smithy.api#jsonName" => "scanCompletedAt"}))
    EbsVolumeScanDetails.add_member(:trigger_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TriggerFindingId", traits: {"smithy.api#jsonName" => "triggerFindingId"}))
    EbsVolumeScanDetails.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: Sources, name: "Sources", traits: {"smithy.api#jsonName" => "sources"}))
    EbsVolumeScanDetails.add_member(:scan_detections, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanDetections, name: "ScanDetections", traits: {"smithy.api#jsonName" => "scanDetections"}))
    EbsVolumeScanDetails.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "ScanType", traits: {"smithy.api#jsonName" => "scanType"}))
    EbsVolumeScanDetails.type = Types::EbsVolumeScanDetails
    EbsVolumesResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EbsVolumesResult.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason", traits: {"smithy.api#jsonName" => "reason"}))
    EbsVolumesResult.type = Types::EbsVolumesResult
    Ec2Image.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    Ec2Image.type = Types::Ec2Image
    Ec2ImageDetails.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageArn", traits: {"smithy.api#jsonName" => "imageArn"}))
    Ec2ImageDetails.type = Types::Ec2ImageDetails
    Ec2Instance.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    Ec2Instance.add_member(:image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageDescription", traits: {"smithy.api#jsonName" => "imageDescription"}))
    Ec2Instance.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    Ec2Instance.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: IamInstanceProfile, name: "IamInstanceProfile"))
    Ec2Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#jsonName" => "instanceType"}))
    Ec2Instance.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutpostArn", traits: {"smithy.api#jsonName" => "outpostArn"}))
    Ec2Instance.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Platform", traits: {"smithy.api#jsonName" => "platform"}))
    Ec2Instance.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodes, name: "ProductCodes", traits: {"smithy.api#jsonName" => "productCodes"}))
    Ec2Instance.add_member(:ec2_network_interface_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2NetworkInterfaceUids, name: "Ec2NetworkInterfaceUids", traits: {"smithy.api#jsonName" => "ec2NetworkInterfaceUids"}))
    Ec2Instance.type = Types::Ec2Instance
    Ec2InstanceUids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUid, name: "member"))
    Ec2LaunchTemplate.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    Ec2LaunchTemplate.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateVersion, name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    Ec2LaunchTemplate.type = Types::Ec2LaunchTemplate
    Ec2NetworkInterface.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addresses, name: "Ipv6Addresses", traits: {"smithy.api#jsonName" => "ipv6Addresses"}))
    Ec2NetworkInterface.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIpAddresses, name: "PrivateIpAddresses", traits: {"smithy.api#jsonName" => "privateIpAddresses"}))
    Ec2NetworkInterface.add_member(:public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicIp", traits: {"smithy.api#jsonName" => "publicIp"}))
    Ec2NetworkInterface.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    Ec2NetworkInterface.add_member(:sub_net_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubNetId", traits: {"smithy.api#jsonName" => "subNetId"}))
    Ec2NetworkInterface.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    Ec2NetworkInterface.type = Types::Ec2NetworkInterface
    Ec2NetworkInterfaceUids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Ec2Vpc.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    Ec2Vpc.type = Types::Ec2Vpc
    EcsCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsClusterStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EcsCluster.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    EcsCluster.type = Types::EcsCluster
    EcsClusterDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    EcsClusterDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    EcsClusterDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EcsClusterDetails.add_member(:active_services_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ActiveServicesCount", traits: {"smithy.api#jsonName" => "activeServicesCount"}))
    EcsClusterDetails.add_member(:registered_container_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RegisteredContainerInstancesCount", traits: {"smithy.api#jsonName" => "registeredContainerInstancesCount"}))
    EcsClusterDetails.add_member(:running_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RunningTasksCount", traits: {"smithy.api#jsonName" => "runningTasksCount"}))
    EcsClusterDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    EcsClusterDetails.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsTaskDetails, name: "TaskDetails", traits: {"smithy.api#jsonName" => "taskDetails"}))
    EcsClusterDetails.type = Types::EcsClusterDetails
    EcsClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EcsClusterStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    EcsClusterStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    EcsClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EcsClusterStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    EcsLaunchType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    EcsLaunchType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    EcsTask.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    EcsTask.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TaskDefinitionArn", traits: {"smithy.api#jsonName" => "taskDefinitionArn"}))
    EcsTask.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsLaunchType, name: "LaunchType", traits: {"smithy.api#jsonName" => "launchType"}))
    EcsTask.add_member(:container_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerUids, name: "ContainerUids", traits: {"smithy.api#jsonName" => "containerUids"}))
    EcsTask.type = Types::EcsTask
    EcsTaskDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    EcsTaskDetails.add_member(:definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefinitionArn", traits: {"smithy.api#jsonName" => "definitionArn"}))
    EcsTaskDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    EcsTaskDetails.add_member(:task_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "TaskCreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    EcsTaskDetails.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt", traits: {"smithy.api#jsonName" => "startedAt"}))
    EcsTaskDetails.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartedBy", traits: {"smithy.api#jsonName" => "startedBy"}))
    EcsTaskDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    EcsTaskDetails.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "Volumes", traits: {"smithy.api#jsonName" => "volumes"}))
    EcsTaskDetails.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Containers, name: "Containers", traits: {"smithy.api#jsonName" => "containers"}))
    EcsTaskDetails.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Group", traits: {"smithy.api#jsonName" => "group"}))
    EcsTaskDetails.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchType", traits: {"smithy.api#jsonName" => "launchType"}))
    EcsTaskDetails.type = Types::EcsTaskDetails
    EksCluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    EksCluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    EksCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EksCluster.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    EksCluster.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    EksCluster.type = Types::EksCluster
    EksClusterDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    EksClusterDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    EksClusterDetails.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    EksClusterDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    EksClusterDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    EksClusterDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    EksClusterDetails.type = Types::EksClusterDetails
    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdminAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "adminAccountId", "smithy.api#required" => {}}))
    EnableOrganizationAdminAccountRequest.type = Types::EnableOrganizationAdminAccountRequest
    EnableOrganizationAdminAccountResponse.type = Types::EnableOrganizationAdminAccountResponse
    EndpointIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Eq.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Equals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Evidence.add_member(:threat_intelligence_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelligenceDetails, name: "ThreatIntelligenceDetails", traits: {"smithy.api#jsonName" => "threatIntelligenceDetails"}))
    Evidence.type = Types::Evidence
    FargateDetails.add_member(:issues, ::Smithy::Schema::Shapes::MemberShape.new(target: Issues, name: "Issues", traits: {"smithy.api#jsonName" => "issues"}))
    FargateDetails.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "ManagementType", traits: {"smithy.api#jsonName" => "managementType"}))
    FargateDetails.type = Types::FargateDetails
    FeatureAdditionalConfiguration.add_member(:eks_addon_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_ADDON_MANAGEMENT", traits: {"smithy.api#enumValue" => "EKS_ADDON_MANAGEMENT"}))
    FeatureAdditionalConfiguration.add_member(:ecs_fargate_agent_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_FARGATE_AGENT_MANAGEMENT", traits: {"smithy.api#enumValue" => "ECS_FARGATE_AGENT_MANAGEMENT"}))
    FeatureAdditionalConfiguration.add_member(:ec2_agent_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AGENT_MANAGEMENT", traits: {"smithy.api#enumValue" => "EC2_AGENT_MANAGEMENT"}))
    FeatureAdditionalConfiguration.add_member(:rds_data_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DATA_RISK", traits: {"smithy.api#enumValue" => "RDS_DATA_RISK"}))
    FeatureStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Feedback.add_member(:useful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USEFUL", traits: {"smithy.api#enumValue" => "USEFUL"}))
    Feedback.add_member(:not_useful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_USEFUL", traits: {"smithy.api#enumValue" => "NOT_USEFUL"}))
    FilePaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanFilePath, name: "member"))
    FilterAction.add_member(:noop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOOP", traits: {"smithy.api#enumValue" => "NOOP"}))
    FilterAction.add_member(:archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVE", traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    FilterCondition.add_member(:equals_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "EqualsValue", traits: {"smithy.api#jsonName" => "equalsValue"}))
    FilterCondition.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: LongValue, name: "GreaterThan", traits: {"smithy.api#jsonName" => "greaterThan"}))
    FilterCondition.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: LongValue, name: "LessThan", traits: {"smithy.api#jsonName" => "lessThan"}))
    FilterCondition.type = Types::FilterCondition
    FilterCriteria.add_member(:filter_criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriterionList, name: "FilterCriterion", traits: {"smithy.api#jsonName" => "filterCriterion"}))
    FilterCriteria.type = Types::FilterCriteria
    FilterCriterion.add_member(:criterion_key, ::Smithy::Schema::Shapes::MemberShape.new(target: CriterionKey, name: "CriterionKey", traits: {"smithy.api#jsonName" => "criterionKey"}))
    FilterCriterion.add_member(:filter_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "FilterCondition", traits: {"smithy.api#jsonName" => "filterCondition"}))
    FilterCriterion.type = Types::FilterCriterion
    FilterCriterionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriterion, name: "member"))
    FilterFieldName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "name"}))
    FilterFieldName.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCRIPTION", traits: {"smithy.api#enumValue" => "description"}))
    FilterFieldName.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_SOURCE", traits: {"smithy.api#enumValue" => "dataSource"}))
    FilterFieldName.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVERITY", traits: {"smithy.api#enumValue" => "severity"}))
    FilterFieldName.add_member(:tactic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TACTIC", traits: {"smithy.api#enumValue" => "tactic"}))
    FilterFieldName.add_member(:technique, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNIQUE", traits: {"smithy.api#enumValue" => "technique"}))
    FilterFieldName.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "service"}))
    FilterNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "member"))
    Finding.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    Finding.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    Finding.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Confidence", traits: {"smithy.api#jsonName" => "confidence"}))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Finding.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    Finding.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Partition", traits: {"smithy.api#jsonName" => "partition"}))
    Finding.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Region", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "region", "smithy.api#required" => {}}))
    Finding.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "Resource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resource", "smithy.api#required" => {}}))
    Finding.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "schemaVersion", "smithy.api#required" => {}}))
    Finding.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service", traits: {"smithy.api#jsonName" => "service"}))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Severity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "severity", "smithy.api#required" => {}}))
    Finding.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title", traits: {"smithy.api#jsonName" => "title"}))
    Finding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "type", "smithy.api#required" => {}}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    Finding.add_member(:associated_attack_sequence_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssociatedAttackSequenceArn", traits: {"smithy.api#jsonName" => "associatedAttackSequenceArn"}))
    Finding.add_member(:custom_detection_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDetectionRuleName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "customDetectionRuleName"}))
    Finding.type = Types::Finding
    FindingCriteria.add_member(:criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: Criterion, name: "Criterion", traits: {"smithy.api#jsonName" => "criterion"}))
    FindingCriteria.type = Types::FindingCriteria
    FindingIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "member"))
    FindingPublishingFrequency.add_member(:fifteen_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIFTEEN_MINUTES", traits: {"smithy.api#enumValue" => "FIFTEEN_MINUTES"}))
    FindingPublishingFrequency.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_HOUR", traits: {"smithy.api#enumValue" => "ONE_HOUR"}))
    FindingPublishingFrequency.add_member(:six_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIX_HOURS", traits: {"smithy.api#enumValue" => "SIX_HOURS"}))
    FindingResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2_INSTANCE"}))
    FindingResourceType.add_member(:ec2_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_NETWORK_INTERFACE", traits: {"smithy.api#enumValue" => "EC2_NETWORK_INTERFACE"}))
    FindingResourceType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET", traits: {"smithy.api#enumValue" => "S3_BUCKET"}))
    FindingResourceType.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_OBJECT", traits: {"smithy.api#enumValue" => "S3_OBJECT"}))
    FindingResourceType.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_KEY", traits: {"smithy.api#enumValue" => "ACCESS_KEY"}))
    FindingResourceType.add_member(:eks_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_CLUSTER", traits: {"smithy.api#enumValue" => "EKS_CLUSTER"}))
    FindingResourceType.add_member(:kubernetes_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KUBERNETES_WORKLOAD", traits: {"smithy.api#enumValue" => "KUBERNETES_WORKLOAD"}))
    FindingResourceType.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER", traits: {"smithy.api#enumValue" => "CONTAINER"}))
    FindingResourceType.add_member(:ecs_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_CLUSTER", traits: {"smithy.api#enumValue" => "ECS_CLUSTER"}))
    FindingResourceType.add_member(:ecs_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_TASK", traits: {"smithy.api#enumValue" => "ECS_TASK"}))
    FindingResourceType.add_member(:autoscaling_auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOSCALING_AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "AUTOSCALING_AUTO_SCALING_GROUP"}))
    FindingResourceType.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_INSTANCE_PROFILE", traits: {"smithy.api#enumValue" => "IAM_INSTANCE_PROFILE"}))
    FindingResourceType.add_member(:cloudformation_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFORMATION_STACK", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK"}))
    FindingResourceType.add_member(:ec2_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE", traits: {"smithy.api#enumValue" => "EC2_LAUNCH_TEMPLATE"}))
    FindingResourceType.add_member(:ec2_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_VPC", traits: {"smithy.api#enumValue" => "EC2_VPC"}))
    FindingResourceType.add_member(:ec2_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_IMAGE", traits: {"smithy.api#enumValue" => "EC2_IMAGE"}))
    FindingResourceType.add_member(:bedrock_custom_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_CUSTOM_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_CUSTOM_MODEL"}))
    FindingResourceType.add_member(:bedrock_imported_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_IMPORTED_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_IMPORTED_MODEL"}))
    FindingResourceType.add_member(:bedrock_provisioned_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_PROVISIONED_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_PROVISIONED_MODEL"}))
    FindingResourceType.add_member(:bedrock_custom_model_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_CUSTOM_MODEL_DEPLOYMENT", traits: {"smithy.api#enumValue" => "BEDROCK_CUSTOM_MODEL_DEPLOYMENT"}))
    FindingResourceType.add_member(:bedrock_inference_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_INFERENCE_PROFILE", traits: {"smithy.api#enumValue" => "BEDROCK_INFERENCE_PROFILE"}))
    FindingResourceType.add_member(:bedrock_application_inference_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_APPLICATION_INFERENCE_PROFILE", traits: {"smithy.api#enumValue" => "BEDROCK_APPLICATION_INFERENCE_PROFILE"}))
    FindingResourceType.add_member(:bedrock_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_PROMPT", traits: {"smithy.api#enumValue" => "BEDROCK_PROMPT"}))
    FindingResourceType.add_member(:bedrock_prompt_router, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_PROMPT_ROUTER", traits: {"smithy.api#enumValue" => "BEDROCK_PROMPT_ROUTER"}))
    FindingResourceType.add_member(:bedrock_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEDROCK_GUARDRAIL", traits: {"smithy.api#enumValue" => "BEDROCK_GUARDRAIL"}))
    FindingResourceType.add_member(:sagemaker_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER_ENDPOINT", traits: {"smithy.api#enumValue" => "SAGEMAKER_ENDPOINT"}))
    FindingStatisticType.add_member(:count_by_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_BY_SEVERITY", traits: {"smithy.api#enumValue" => "COUNT_BY_SEVERITY"}))
    FindingStatisticTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatisticType, name: "member"))
    FindingStatistics.add_member(:count_by_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: CountBySeverity, name: "CountBySeverity", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated. Please set GroupBy to 'SEVERITY' to return GroupedBySeverity instead."}, "smithy.api#jsonName" => "countBySeverity"}))
    FindingStatistics.add_member(:grouped_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedByAccount, name: "GroupedByAccount", traits: {"smithy.api#jsonName" => "groupedByAccount"}))
    FindingStatistics.add_member(:grouped_by_date, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedByDate, name: "GroupedByDate", traits: {"smithy.api#jsonName" => "groupedByDate"}))
    FindingStatistics.add_member(:grouped_by_finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedByFindingType, name: "GroupedByFindingType", traits: {"smithy.api#jsonName" => "groupedByFindingType"}))
    FindingStatistics.add_member(:grouped_by_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedByResource, name: "GroupedByResource", traits: {"smithy.api#jsonName" => "groupedByResource"}))
    FindingStatistics.add_member(:grouped_by_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedBySeverity, name: "GroupedBySeverity", traits: {"smithy.api#jsonName" => "groupedBySeverity"}))
    FindingStatistics.type = Types::FindingStatistics
    FindingTypeStatistics.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FindingType", traits: {"smithy.api#jsonName" => "findingType"}))
    FindingTypeStatistics.add_member(:last_generated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedAt", traits: {"smithy.api#jsonName" => "lastGeneratedAt"}))
    FindingTypeStatistics.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalFindings", traits: {"smithy.api#jsonName" => "totalFindings"}))
    FindingTypeStatistics.type = Types::FindingTypeStatistics
    FindingTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "member"))
    Findings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "member"))
    FlagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    FlowLogsConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    FlowLogsConfigurationResult.type = Types::FlowLogsConfigurationResult
    FreeTrialFeatureConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialFeatureResult, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    FreeTrialFeatureConfigurationResult.add_member(:free_trial_days_remaining, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FreeTrialDaysRemaining", traits: {"smithy.api#jsonName" => "freeTrialDaysRemaining"}))
    FreeTrialFeatureConfigurationResult.type = Types::FreeTrialFeatureConfigurationResult
    FreeTrialFeatureConfigurationsResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeTrialFeatureConfigurationResult, name: "member"))
    FreeTrialFeatureResult.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_LOGS", traits: {"smithy.api#enumValue" => "FLOW_LOGS"}))
    FreeTrialFeatureResult.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CLOUD_TRAIL"}))
    FreeTrialFeatureResult.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_LOGS", traits: {"smithy.api#enumValue" => "DNS_LOGS"}))
    FreeTrialFeatureResult.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    FreeTrialFeatureResult.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    FreeTrialFeatureResult.add_member(:ebs_malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_MALWARE_PROTECTION", traits: {"smithy.api#enumValue" => "EBS_MALWARE_PROTECTION"}))
    FreeTrialFeatureResult.add_member(:rds_login_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_LOGIN_EVENTS", traits: {"smithy.api#enumValue" => "RDS_LOGIN_EVENTS"}))
    FreeTrialFeatureResult.add_member(:lambda_network_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NETWORK_LOGS", traits: {"smithy.api#enumValue" => "LAMBDA_NETWORK_LOGS"}))
    FreeTrialFeatureResult.add_member(:eks_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EKS_RUNTIME_MONITORING"}))
    FreeTrialFeatureResult.add_member(:ec2_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EC2_RUNTIME_MONITORING"}))
    FreeTrialFeatureResult.add_member(:fargate_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "FARGATE_RUNTIME_MONITORING"}))
    FreeTrialFeatureResult.add_member(:ai_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_PROTECTION", traits: {"smithy.api#enumValue" => "AI_PROTECTION"}))
    GeoLocation.add_member(:lat, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Lat", traits: {"smithy.api#jsonName" => "lat"}))
    GeoLocation.add_member(:lon, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Lon", traits: {"smithy.api#jsonName" => "lon"}))
    GeoLocation.type = Types::GeoLocation
    GetAdministratorAccountRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAdministratorAccountRequest.type = Types::GetAdministratorAccountRequest
    GetAdministratorAccountResponse.add_member(:administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: Administrator, name: "Administrator", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "administrator", "smithy.api#required" => {}}))
    GetAdministratorAccountResponse.type = Types::GetAdministratorAccountResponse
    GetCoverageStatisticsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCoverageStatisticsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriteria, name: "FilterCriteria", traits: {"smithy.api#jsonName" => "filterCriteria"}))
    GetCoverageStatisticsRequest.add_member(:statistics_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStatisticsTypeList, name: "StatisticsType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "statisticsType", "smithy.api#required" => {}}))
    GetCoverageStatisticsRequest.type = Types::GetCoverageStatisticsRequest
    GetCoverageStatisticsResponse.add_member(:coverage_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageStatistics, name: "CoverageStatistics", traits: {"smithy.api#jsonName" => "coverageStatistics"}))
    GetCoverageStatisticsResponse.type = Types::GetCoverageStatisticsResponse
    GetCustomDetectionRuleAssociationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDetectionRuleAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDetectionRuleAssociationRequest.type = Types::GetCustomDetectionRuleAssociationRequest
    GetCustomDetectionRuleAssociationResponse.add_member(:rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationDetail, name: "RuleAssociation", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleAssociation", "smithy.api#required" => {}}))
    GetCustomDetectionRuleAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetCustomDetectionRuleAssociationResponse.type = Types::GetCustomDetectionRuleAssociationResponse
    GetCustomDetectionRuleOrgConfigurationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDetectionRuleOrgConfigurationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "mode", "smithy.api#required" => {}}))
    GetCustomDetectionRuleOrgConfigurationRequest.type = Types::GetCustomDetectionRuleOrgConfigurationRequest
    GetCustomDetectionRuleOrgConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleOrgConfiguration, name: "Configuration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    GetCustomDetectionRuleOrgConfigurationResponse.type = Types::GetCustomDetectionRuleOrgConfigurationResponse
    GetCustomDetectionRuleRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDetectionRuleRequest.type = Types::GetCustomDetectionRuleRequest
    GetCustomDetectionRuleResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDetail, name: "Rule", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "rule", "smithy.api#required" => {}}))
    GetCustomDetectionRuleResponse.type = Types::GetCustomDetectionRuleResponse
    GetDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDetectorRequest.type = Types::GetDetectorRequest
    GetDetectorResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    GetDetectorResponse.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingPublishingFrequency, name: "FindingPublishingFrequency", traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    GetDetectorResponse.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serviceRole", "smithy.api#required" => {}}))
    GetDetectorResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    GetDetectorResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetDetectorResponse.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfigurationsResult, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    GetDetectorResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetDetectorResponse.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureConfigurationsResults, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    GetDetectorResponse.type = Types::GetDetectorResponse
    GetFilterRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFilterRequest.type = Types::GetFilterRequest
    GetFilterResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetFilterResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    GetFilterResponse.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "Action", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "action", "smithy.api#required" => {}}))
    GetFilterResponse.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRank, name: "Rank", traits: {"smithy.api#jsonName" => "rank"}))
    GetFilterResponse.add_member(:finding_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingCriteria, name: "FindingCriteria", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingCriteria", "smithy.api#required" => {}}))
    GetFilterResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetFilterResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    GetFilterResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetFilterResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterVersion, name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    GetFilterResponse.type = Types::GetFilterResponse
    GetFindingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingsRequest.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIds, name: "FindingIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    GetFindingsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    GetFindingsRequest.type = Types::GetFindingsRequest
    GetFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Findings, name: "Findings", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findings", "smithy.api#required" => {}}))
    GetFindingsResponse.type = Types::GetFindingsResponse
    GetFindingsStatisticsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingsStatisticsRequest.add_member(:finding_statistic_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatisticTypes, name: "FindingStatisticTypes", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, please use GroupBy instead"}, "smithy.api#jsonName" => "findingStatisticTypes"}))
    GetFindingsStatisticsRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingCriteria, name: "FindingCriteria", traits: {"smithy.api#jsonName" => "findingCriteria"}))
    GetFindingsStatisticsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByType, name: "GroupBy", traits: {"smithy.api#jsonName" => "groupBy"}))
    GetFindingsStatisticsRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "OrderBy", traits: {"smithy.api#jsonName" => "orderBy"}))
    GetFindingsStatisticsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults100, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    GetFindingsStatisticsRequest.type = Types::GetFindingsStatisticsRequest
    GetFindingsStatisticsResponse.add_member(:finding_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatistics, name: "FindingStatistics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingStatistics", "smithy.api#required" => {}}))
    GetFindingsStatisticsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetFindingsStatisticsResponse.type = Types::GetFindingsStatisticsResponse
    GetIPSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpSetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIPSetRequest.type = Types::GetIPSetRequest
    GetIPSetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetIPSetResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: IpSetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    GetIPSetResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    GetIPSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IpSetStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    GetIPSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetIPSetResponse.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    GetIPSetResponse.type = Types::GetIPSetResponse
    GetInvestigationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationRequest.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInvestigationRequest.type = Types::GetInvestigationRequest
    GetInvestigationResponse.add_member(:investigation, ::Smithy::Schema::Shapes::MemberShape.new(target: Investigation, name: "Investigation", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "investigation", "smithy.api#required" => {}}))
    GetInvestigationResponse.type = Types::GetInvestigationResponse
    GetInvitationsCountRequest.type = Types::GetInvitationsCountRequest
    GetInvitationsCountResponse.add_member(:invitations_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InvitationsCount", traits: {"smithy.api#jsonName" => "invitationsCount"}))
    GetInvitationsCountResponse.type = Types::GetInvitationsCountResponse
    GetMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MalwareProtectionPlanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMalwareProtectionPlanRequest.type = Types::GetMalwareProtectionPlanRequest
    GetMalwareProtectionPlanResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    GetMalwareProtectionPlanResponse.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Role", traits: {"smithy.api#jsonName" => "role"}))
    GetMalwareProtectionPlanResponse.add_member(:protected_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateProtectedResource, name: "ProtectedResource", traits: {"smithy.api#jsonName" => "protectedResource"}))
    GetMalwareProtectionPlanResponse.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanActions, name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    GetMalwareProtectionPlanResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    GetMalwareProtectionPlanResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    GetMalwareProtectionPlanResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanStatusReasonsList, name: "StatusReasons", traits: {"smithy.api#jsonName" => "statusReasons"}))
    GetMalwareProtectionPlanResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetMalwareProtectionPlanResponse.type = Types::GetMalwareProtectionPlanResponse
    GetMalwareScanRequest.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScanId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMalwareScanRequest.type = Types::GetMalwareScanRequest
    GetMalwareScanResponse.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    GetMalwareScanResponse.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    GetMalwareScanResponse.add_member(:admin_detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "AdminDetectorId", traits: {"smithy.api#jsonName" => "adminDetectorId"}))
    GetMalwareScanResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ResourceArn", traits: {"smithy.api#jsonName" => "resourceArn"}))
    GetMalwareScanResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionResourceType, name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    GetMalwareScanResponse.add_member(:scanned_resources_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "ScannedResourcesCount", traits: {"smithy.api#jsonName" => "scannedResourcesCount"}))
    GetMalwareScanResponse.add_member(:skipped_resources_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "SkippedResourcesCount", traits: {"smithy.api#jsonName" => "skippedResourcesCount"}))
    GetMalwareScanResponse.add_member(:failed_resources_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "FailedResourcesCount", traits: {"smithy.api#jsonName" => "failedResourcesCount"}))
    GetMalwareScanResponse.add_member(:scanned_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResources, name: "ScannedResources", traits: {"smithy.api#jsonName" => "scannedResources"}))
    GetMalwareScanResponse.add_member(:scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfiguration, name: "ScanConfiguration", traits: {"smithy.api#jsonName" => "scanConfiguration"}))
    GetMalwareScanResponse.add_member(:scan_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCategory, name: "ScanCategory", traits: {"smithy.api#jsonName" => "scanCategory"}))
    GetMalwareScanResponse.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanStatus, name: "ScanStatus", traits: {"smithy.api#jsonName" => "scanStatus"}))
    GetMalwareScanResponse.add_member(:scan_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatusReason, name: "ScanStatusReason", traits: {"smithy.api#jsonName" => "scanStatusReason"}))
    GetMalwareScanResponse.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanType, name: "ScanType", traits: {"smithy.api#jsonName" => "scanType"}))
    GetMalwareScanResponse.add_member(:scan_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanStartedAt", traits: {"smithy.api#jsonName" => "scanStartedAt"}))
    GetMalwareScanResponse.add_member(:scan_completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanCompletedAt", traits: {"smithy.api#jsonName" => "scanCompletedAt"}))
    GetMalwareScanResponse.add_member(:scan_result_details, ::Smithy::Schema::Shapes::MemberShape.new(target: GetMalwareScanResultDetails, name: "ScanResultDetails", traits: {"smithy.api#jsonName" => "scanResultDetails"}))
    GetMalwareScanResponse.type = Types::GetMalwareScanResponse
    GetMalwareScanResultDetails.add_member(:scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ScanResultStatus", traits: {"smithy.api#jsonName" => "scanResultStatus"}))
    GetMalwareScanResultDetails.add_member(:skipped_file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "SkippedFileCount", traits: {"smithy.api#jsonName" => "skippedFileCount"}))
    GetMalwareScanResultDetails.add_member(:failed_file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "FailedFileCount", traits: {"smithy.api#jsonName" => "failedFileCount"}))
    GetMalwareScanResultDetails.add_member(:threat_found_file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "ThreatFoundFileCount", traits: {"smithy.api#jsonName" => "threatFoundFileCount"}))
    GetMalwareScanResultDetails.add_member(:total_file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "TotalFileCount", traits: {"smithy.api#jsonName" => "totalFileCount"}))
    GetMalwareScanResultDetails.add_member(:total_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "TotalBytes", traits: {"smithy.api#jsonName" => "totalBytes"}))
    GetMalwareScanResultDetails.add_member(:unique_threat_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "UniqueThreatCount", traits: {"smithy.api#jsonName" => "uniqueThreatCount"}))
    GetMalwareScanResultDetails.add_member(:threats, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultThreats, name: "Threats", traits: {"smithy.api#jsonName" => "threats"}))
    GetMalwareScanResultDetails.type = Types::GetMalwareScanResultDetails
    GetMalwareScanSettingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMalwareScanSettingsRequest.type = Types::GetMalwareScanSettingsRequest
    GetMalwareScanSettingsResponse.add_member(:scan_resource_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResourceCriteria, name: "ScanResourceCriteria", traits: {"smithy.api#jsonName" => "scanResourceCriteria"}))
    GetMalwareScanSettingsResponse.add_member(:ebs_snapshot_preservation, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotPreservation, name: "EbsSnapshotPreservation", traits: {"smithy.api#jsonName" => "ebsSnapshotPreservation"}))
    GetMalwareScanSettingsResponse.type = Types::GetMalwareScanSettingsResponse
    GetMasterAccountRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMasterAccountRequest.type = Types::GetMasterAccountRequest
    GetMasterAccountResponse.add_member(:master, ::Smithy::Schema::Shapes::MemberShape.new(target: Master, name: "Master", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "master", "smithy.api#required" => {}}))
    GetMasterAccountResponse.type = Types::GetMasterAccountResponse
    GetMemberDetectorsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemberDetectorsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    GetMemberDetectorsRequest.type = Types::GetMemberDetectorsRequest
    GetMemberDetectorsResponse.add_member(:member_data_source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDataSourceConfigurations, name: "MemberDataSourceConfigurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "members", "smithy.api#required" => {}}))
    GetMemberDetectorsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    GetMemberDetectorsResponse.type = Types::GetMemberDetectorsResponse
    GetMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    GetMembersRequest.type = Types::GetMembersRequest
    GetMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: Members, name: "Members", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "members", "smithy.api#required" => {}}))
    GetMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    GetMembersResponse.type = Types::GetMembersResponse
    GetOrganizationStatisticsResponse.add_member(:organization_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDetails, name: "OrganizationDetails", traits: {"smithy.api#jsonName" => "organizationDetails"}))
    GetOrganizationStatisticsResponse.type = Types::GetOrganizationStatisticsResponse
    GetRemainingFreeTrialDaysRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRemainingFreeTrialDaysRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    GetRemainingFreeTrialDaysRequest.type = Types::GetRemainingFreeTrialDaysRequest
    GetRemainingFreeTrialDaysResponse.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountFreeTrialInfos, name: "Accounts", traits: {"smithy.api#jsonName" => "accounts"}))
    GetRemainingFreeTrialDaysResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#jsonName" => "unprocessedAccounts"}))
    GetRemainingFreeTrialDaysResponse.type = Types::GetRemainingFreeTrialDaysResponse
    GetThreatEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThreatEntitySetRequest.add_member(:threat_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatEntitySetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThreatEntitySetRequest.type = Types::GetThreatEntitySetRequest
    GetThreatEntitySetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetThreatEntitySetResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEntitySetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    GetThreatEntitySetResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    GetThreatEntitySetResponse.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    GetThreatEntitySetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEntitySetStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    GetThreatEntitySetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetThreatEntitySetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    GetThreatEntitySetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetThreatEntitySetResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetails", traits: {"smithy.api#jsonName" => "errorDetails"}))
    GetThreatEntitySetResponse.type = Types::GetThreatEntitySetResponse
    GetThreatIntelSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThreatIntelSetRequest.add_member(:threat_intel_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatIntelSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThreatIntelSetRequest.type = Types::GetThreatIntelSetRequest
    GetThreatIntelSetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetThreatIntelSetResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelSetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    GetThreatIntelSetResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    GetThreatIntelSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelSetStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    GetThreatIntelSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetThreatIntelSetResponse.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    GetThreatIntelSetResponse.type = Types::GetThreatIntelSetResponse
    GetTrustedEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustedEntitySetRequest.add_member(:trusted_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrustedEntitySetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTrustedEntitySetRequest.type = Types::GetTrustedEntitySetRequest
    GetTrustedEntitySetResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    GetTrustedEntitySetResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedEntitySetFormat, name: "Format", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "format", "smithy.api#required" => {}}))
    GetTrustedEntitySetResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "location", "smithy.api#required" => {}}))
    GetTrustedEntitySetResponse.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    GetTrustedEntitySetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedEntitySetStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    GetTrustedEntitySetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetTrustedEntitySetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    GetTrustedEntitySetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetTrustedEntitySetResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetails", traits: {"smithy.api#jsonName" => "errorDetails"}))
    GetTrustedEntitySetResponse.type = Types::GetTrustedEntitySetResponse
    GetUsageStatisticsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUsageStatisticsRequest.add_member(:usage_statistic_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageStatisticType, name: "UsageStatisticType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "usageStatisticsType", "smithy.api#required" => {}}))
    GetUsageStatisticsRequest.add_member(:usage_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageCriteria, name: "UsageCriteria", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "usageCriteria", "smithy.api#required" => {}}))
    GetUsageStatisticsRequest.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Unit", traits: {"smithy.api#jsonName" => "unit"}))
    GetUsageStatisticsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    GetUsageStatisticsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsRequest.type = Types::GetUsageStatisticsRequest
    GetUsageStatisticsResponse.add_member(:usage_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageStatistics, name: "UsageStatistics", traits: {"smithy.api#jsonName" => "usageStatistics"}))
    GetUsageStatisticsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsResponse.type = Types::GetUsageStatisticsResponse
    GroupByType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    GroupByType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    GroupByType.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_TYPE", traits: {"smithy.api#enumValue" => "FINDING_TYPE"}))
    GroupByType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    GroupByType.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVERITY", traits: {"smithy.api#enumValue" => "SEVERITY"}))
    GroupedByAccount.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountStatistics, name: "member"))
    GroupedByDate.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DateStatistics, name: "member"))
    GroupedByFindingType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingTypeStatistics, name: "member"))
    GroupedByResource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatistics, name: "member"))
    GroupedBySeverity.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityStatistics, name: "member"))
    Groups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    GuardrailAction.add_member(:guardrail_intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDRAIL_INTERVENED", traits: {"smithy.api#enumValue" => "GUARDRAIL_INTERVENED"}))
    GuardrailAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailSource.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT", traits: {"smithy.api#enumValue" => "INPUT"}))
    GuardrailSource.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT", traits: {"smithy.api#enumValue" => "OUTPUT"}))
    HighestSeverityThreatDetails.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity", traits: {"smithy.api#jsonName" => "severity"}))
    HighestSeverityThreatDetails.add_member(:threat_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatName", traits: {"smithy.api#jsonName" => "threatName"}))
    HighestSeverityThreatDetails.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#jsonName" => "count"}))
    HighestSeverityThreatDetails.type = Types::HighestSeverityThreatDetails
    HostPath.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Path", traits: {"smithy.api#jsonName" => "path"}))
    HostPath.type = Types::HostPath
    IamInstanceProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    IamInstanceProfile.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    IamInstanceProfile.type = Types::IamInstanceProfile
    IamInstanceProfileV2.add_member(:ec2_instance_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceUids, name: "Ec2InstanceUids", traits: {"smithy.api#jsonName" => "ec2InstanceUids"}))
    IamInstanceProfileV2.type = Types::IamInstanceProfileV2
    ImpersonatedUser.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username", traits: {"smithy.api#jsonName" => "username"}))
    ImpersonatedUser.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Groups, name: "Groups", traits: {"smithy.api#jsonName" => "groups"}))
    ImpersonatedUser.type = Types::ImpersonatedUser
    IncrementalScanDetails.add_member(:baseline_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BaselineResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "baselineResourceArn", "smithy.api#required" => {}}))
    IncrementalScanDetails.type = Types::IncrementalScanDetails
    Indicator.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorType, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "key", "smithy.api#required" => {}}))
    Indicator.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorValues, name: "Values", traits: {"smithy.api#jsonName" => "values"}))
    Indicator.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorTitle, name: "Title", traits: {"smithy.api#jsonName" => "title"}))
    Indicator.type = Types::Indicator
    IndicatorType.add_member(:suspicious_user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPICIOUS_USER_AGENT", traits: {"smithy.api#enumValue" => "SUSPICIOUS_USER_AGENT"}))
    IndicatorType.add_member(:suspicious_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPICIOUS_NETWORK", traits: {"smithy.api#enumValue" => "SUSPICIOUS_NETWORK"}))
    IndicatorType.add_member(:malicious_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALICIOUS_IP", traits: {"smithy.api#enumValue" => "MALICIOUS_IP"}))
    IndicatorType.add_member(:tor_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOR_IP", traits: {"smithy.api#enumValue" => "TOR_IP"}))
    IndicatorType.add_member(:attack_tactic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACK_TACTIC", traits: {"smithy.api#enumValue" => "ATTACK_TACTIC"}))
    IndicatorType.add_member(:high_risk_api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH_RISK_API", traits: {"smithy.api#enumValue" => "HIGH_RISK_API"}))
    IndicatorType.add_member(:attack_technique, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACK_TECHNIQUE", traits: {"smithy.api#enumValue" => "ATTACK_TECHNIQUE"}))
    IndicatorType.add_member(:unusual_api_for_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNUSUAL_API_FOR_ACCOUNT", traits: {"smithy.api#enumValue" => "UNUSUAL_API_FOR_ACCOUNT"}))
    IndicatorType.add_member(:unusual_asn_for_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNUSUAL_ASN_FOR_ACCOUNT", traits: {"smithy.api#enumValue" => "UNUSUAL_ASN_FOR_ACCOUNT"}))
    IndicatorType.add_member(:unusual_asn_for_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNUSUAL_ASN_FOR_USER", traits: {"smithy.api#enumValue" => "UNUSUAL_ASN_FOR_USER"}))
    IndicatorType.add_member(:suspicious_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPICIOUS_PROCESS", traits: {"smithy.api#enumValue" => "SUSPICIOUS_PROCESS"}))
    IndicatorType.add_member(:malicious_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALICIOUS_DOMAIN", traits: {"smithy.api#enumValue" => "MALICIOUS_DOMAIN"}))
    IndicatorType.add_member(:malicious_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALICIOUS_PROCESS", traits: {"smithy.api#enumValue" => "MALICIOUS_PROCESS"}))
    IndicatorType.add_member(:cryptomining_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRYPTOMINING_IP", traits: {"smithy.api#enumValue" => "CRYPTOMINING_IP"}))
    IndicatorType.add_member(:cryptomining_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRYPTOMINING_DOMAIN", traits: {"smithy.api#enumValue" => "CRYPTOMINING_DOMAIN"}))
    IndicatorType.add_member(:cryptomining_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRYPTOMINING_PROCESS", traits: {"smithy.api#enumValue" => "CRYPTOMINING_PROCESS"}))
    IndicatorType.add_member(:malicious_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALICIOUS_FILE", traits: {"smithy.api#enumValue" => "MALICIOUS_FILE"}))
    IndicatorType.add_member(:vulnerability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VULNERABILITY", traits: {"smithy.api#enumValue" => "VULNERABILITY"}))
    IndicatorType.add_member(:malicious_package, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALICIOUS_PACKAGE", traits: {"smithy.api#enumValue" => "MALICIOUS_PACKAGE"}))
    IndicatorType.add_member(:misconfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURATION", traits: {"smithy.api#enumValue" => "MISCONFIGURATION"}))
    IndicatorType.add_member(:reachability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REACHABILITY", traits: {"smithy.api#enumValue" => "REACHABILITY"}))
    IndicatorType.add_member(:sensitive_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENSITIVE_DATA", traits: {"smithy.api#enumValue" => "SENSITIVE_DATA"}))
    IndicatorValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndicatorValueString, name: "member"))
    Indicators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Indicator, name: "member"))
    InstanceDetails.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone", traits: {"smithy.api#jsonName" => "availabilityZone"}))
    InstanceDetails.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: IamInstanceProfile, name: "IamInstanceProfile", traits: {"smithy.api#jsonName" => "iamInstanceProfile"}))
    InstanceDetails.add_member(:image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageDescription", traits: {"smithy.api#jsonName" => "imageDescription"}))
    InstanceDetails.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageId", traits: {"smithy.api#jsonName" => "imageId"}))
    InstanceDetails.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceId", traits: {"smithy.api#jsonName" => "instanceId"}))
    InstanceDetails.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceState", traits: {"smithy.api#jsonName" => "instanceState"}))
    InstanceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#jsonName" => "instanceType"}))
    InstanceDetails.add_member(:outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutpostArn", traits: {"smithy.api#jsonName" => "outpostArn"}))
    InstanceDetails.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchTime", traits: {"smithy.api#jsonName" => "launchTime"}))
    InstanceDetails.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "NetworkInterfaces", traits: {"smithy.api#jsonName" => "networkInterfaces"}))
    InstanceDetails.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Platform", traits: {"smithy.api#jsonName" => "platform"}))
    InstanceDetails.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodes, name: "ProductCodes", traits: {"smithy.api#jsonName" => "productCodes"}))
    InstanceDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    InstanceDetails.type = Types::InstanceDetails
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InternalServerErrorException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    Investigation.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "investigationId", "smithy.api#required" => {}}))
    Investigation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    Investigation.add_member(:trigger_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerPrompt, name: "TriggerPrompt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "triggerPrompt", "smithy.api#required" => {}}))
    Investigation.add_member(:triggered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggeredBy, name: "TriggeredBy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "triggeredBy", "smithy.api#required" => {}}))
    Investigation.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationMetadata, name: "Metadata", traits: {"smithy.api#jsonName" => "metadata"}))
    Investigation.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudDetails, name: "Cloud", traits: {"smithy.api#jsonName" => "cloud"}))
    Investigation.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "RiskLevel", traits: {"smithy.api#jsonName" => "riskLevel"}))
    Investigation.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskDetails, name: "Risk", traits: {"smithy.api#jsonName" => "risk"}))
    Investigation.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Confidence, name: "Confidence", traits: {"smithy.api#jsonName" => "confidence"}))
    Investigation.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Summary", traits: {"smithy.api#jsonName" => "summary"}))
    Investigation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    Investigation.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime"}))
    Investigation.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationErrorDetails, name: "Error", traits: {"smithy.api#jsonName" => "error"}))
    Investigation.type = Types::Investigation
    InvestigationMetadata.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "version", "smithy.api#required" => {}}))
    InvestigationMetadata.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: Product, name: "Product", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "product", "smithy.api#required" => {}}))
    InvestigationMetadata.type = Types::InvestigationMetadata
    InvestigationSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationSortField, name: "AttributeName", traits: {"smithy.api#jsonName" => "attributeName"}))
    InvestigationSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "OrderBy", traits: {"smithy.api#jsonName" => "orderBy"}))
    InvestigationSortCriteria.type = Types::InvestigationSortCriteria
    InvestigationSortField.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME", traits: {"smithy.api#enumValue" => "START_TIME"}))
    InvestigationSortField.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_TIME", traits: {"smithy.api#enumValue" => "END_TIME"}))
    InvestigationSortField.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    InvestigationSortField.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RISK_LEVEL", traits: {"smithy.api#enumValue" => "RISK_LEVEL"}))
    InvestigationSortField.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIDENCE", traits: {"smithy.api#enumValue" => "CONFIDENCE"}))
    InvestigationStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    InvestigationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    InvestigationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    InvestigationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationSummary, name: "member"))
    InvestigationSummary.add_member(:investigation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationId, name: "InvestigationId", traits: {"smithy.api#jsonName" => "investigationId"}))
    InvestigationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    InvestigationSummary.add_member(:trigger_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerPrompt, name: "TriggerPrompt", traits: {"smithy.api#jsonName" => "triggerPrompt"}))
    InvestigationSummary.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "RiskLevel", traits: {"smithy.api#jsonName" => "riskLevel"}))
    InvestigationSummary.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Confidence, name: "Confidence", traits: {"smithy.api#jsonName" => "confidence"}))
    InvestigationSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationTitle, name: "Title", traits: {"smithy.api#jsonName" => "title"}))
    InvestigationSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    InvestigationSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    InvestigationSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime"}))
    InvestigationSummary.type = Types::InvestigationSummary
    Invitation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    Invitation.add_member(:invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitationId", traits: {"smithy.api#jsonName" => "invitationId"}))
    Invitation.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RelationshipStatus", traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    Invitation.add_member(:invited_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitedAt", traits: {"smithy.api#jsonName" => "invitedAt"}))
    Invitation.type = Types::Invitation
    Invitations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Invitation, name: "member"))
    InviteMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InviteMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    InviteMembersRequest.add_member(:disable_email_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DisableEmailNotification", traits: {"smithy.api#jsonName" => "disableEmailNotification"}))
    InviteMembersRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InviteMembersRequest.type = Types::InviteMembersRequest
    InviteMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    InviteMembersResponse.type = Types::InviteMembersResponse
    IpSetFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    IpSetFormat.add_member(:stix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STIX", traits: {"smithy.api#enumValue" => "STIX"}))
    IpSetFormat.add_member(:otx_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTX_CSV", traits: {"smithy.api#enumValue" => "OTX_CSV"}))
    IpSetFormat.add_member(:alien_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALIEN_VAULT", traits: {"smithy.api#enumValue" => "ALIEN_VAULT"}))
    IpSetFormat.add_member(:proof_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROOF_POINT", traits: {"smithy.api#enumValue" => "PROOF_POINT"}))
    IpSetFormat.add_member(:fire_eye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRE_EYE", traits: {"smithy.api#enumValue" => "FIRE_EYE"}))
    IpSetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    IpSetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    IpSetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    IpSetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IpSetStatus.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    IpSetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    IpSetStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    IpSetStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    Ipv6Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Issues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ItemDetails.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ResourceArn", traits: {"smithy.api#jsonName" => "resourceArn"}))
    ItemDetails.add_member(:item_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ItemPath", traits: {"smithy.api#jsonName" => "itemPath"}))
    ItemDetails.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    ItemDetails.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfo, name: "AdditionalInfo", traits: {"smithy.api#jsonName" => "additionalInfo"}))
    ItemDetails.type = Types::ItemDetails
    ItemDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemDetails, name: "member"))
    ItemPath.add_member(:nested_item_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NestedItemPath", traits: {"smithy.api#jsonName" => "nestedItemPath"}))
    ItemPath.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    ItemPath.type = Types::ItemPath
    ItemPaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemPath, name: "member"))
    KubernetesApiCallAction.add_member(:request_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestUri", traits: {"smithy.api#jsonName" => "requestUri"}))
    KubernetesApiCallAction.add_member(:verb, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Verb", traits: {"smithy.api#jsonName" => "verb"}))
    KubernetesApiCallAction.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Resource", traits: {"smithy.api#jsonName" => "resource"}))
    KubernetesApiCallAction.add_member(:subresource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Subresource", traits: {"smithy.api#jsonName" => "subresource"}))
    KubernetesApiCallAction.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Namespace", traits: {"smithy.api#jsonName" => "namespace"}))
    KubernetesApiCallAction.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#jsonName" => "resourceName"}))
    KubernetesApiCallAction.add_member(:source_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIps, name: "SourceIps", traits: {"smithy.api#jsonName" => "sourceIPs"}))
    KubernetesApiCallAction.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserAgent", traits: {"smithy.api#jsonName" => "userAgent"}))
    KubernetesApiCallAction.add_member(:remote_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteIpDetails, name: "RemoteIpDetails", traits: {"smithy.api#jsonName" => "remoteIpDetails"}))
    KubernetesApiCallAction.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "StatusCode", traits: {"smithy.api#jsonName" => "statusCode"}))
    KubernetesApiCallAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Parameters", traits: {"smithy.api#jsonName" => "parameters"}))
    KubernetesApiCallAction.type = Types::KubernetesApiCallAction
    KubernetesAuditLogsConfiguration.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enable", "smithy.api#required" => {}}))
    KubernetesAuditLogsConfiguration.type = Types::KubernetesAuditLogsConfiguration
    KubernetesAuditLogsConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    KubernetesAuditLogsConfigurationResult.type = Types::KubernetesAuditLogsConfigurationResult
    KubernetesConfiguration.add_member(:audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesAuditLogsConfiguration, name: "AuditLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "auditLogs", "smithy.api#required" => {}}))
    KubernetesConfiguration.type = Types::KubernetesConfiguration
    KubernetesConfigurationResult.add_member(:audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesAuditLogsConfigurationResult, name: "AuditLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "auditLogs", "smithy.api#required" => {}}))
    KubernetesConfigurationResult.type = Types::KubernetesConfigurationResult
    KubernetesDataSourceFreeTrial.add_member(:audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "AuditLogs", traits: {"smithy.api#jsonName" => "auditLogs"}))
    KubernetesDataSourceFreeTrial.type = Types::KubernetesDataSourceFreeTrial
    KubernetesDetails.add_member(:kubernetes_user_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesUserDetails, name: "KubernetesUserDetails", traits: {"smithy.api#jsonName" => "kubernetesUserDetails"}))
    KubernetesDetails.add_member(:kubernetes_workload_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesWorkloadDetails, name: "KubernetesWorkloadDetails", traits: {"smithy.api#jsonName" => "kubernetesWorkloadDetails"}))
    KubernetesDetails.type = Types::KubernetesDetails
    KubernetesPermissionCheckedDetails.add_member(:verb, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Verb", traits: {"smithy.api#jsonName" => "verb"}))
    KubernetesPermissionCheckedDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Resource", traits: {"smithy.api#jsonName" => "resource"}))
    KubernetesPermissionCheckedDetails.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Namespace", traits: {"smithy.api#jsonName" => "namespace"}))
    KubernetesPermissionCheckedDetails.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Allowed", traits: {"smithy.api#jsonName" => "allowed"}))
    KubernetesPermissionCheckedDetails.type = Types::KubernetesPermissionCheckedDetails
    KubernetesResourcesTypes.add_member(:pods, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PODS", traits: {"smithy.api#enumValue" => "PODS"}))
    KubernetesResourcesTypes.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOBS", traits: {"smithy.api#enumValue" => "JOBS"}))
    KubernetesResourcesTypes.add_member(:cronjobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRONJOBS", traits: {"smithy.api#enumValue" => "CRONJOBS"}))
    KubernetesResourcesTypes.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENTS", traits: {"smithy.api#enumValue" => "DEPLOYMENTS"}))
    KubernetesResourcesTypes.add_member(:daemonsets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAEMONSETS", traits: {"smithy.api#enumValue" => "DAEMONSETS"}))
    KubernetesResourcesTypes.add_member(:statefulsets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATEFULSETS", traits: {"smithy.api#enumValue" => "STATEFULSETS"}))
    KubernetesResourcesTypes.add_member(:replicasets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICASETS", traits: {"smithy.api#enumValue" => "REPLICASETS"}))
    KubernetesResourcesTypes.add_member(:replicationcontrollers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATIONCONTROLLERS", traits: {"smithy.api#enumValue" => "REPLICATIONCONTROLLERS"}))
    KubernetesRoleBindingDetails.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Kind", traits: {"smithy.api#jsonName" => "kind"}))
    KubernetesRoleBindingDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    KubernetesRoleBindingDetails.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#jsonName" => "uid"}))
    KubernetesRoleBindingDetails.add_member(:role_ref_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleRefName", traits: {"smithy.api#jsonName" => "roleRefName"}))
    KubernetesRoleBindingDetails.add_member(:role_ref_kind, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleRefKind", traits: {"smithy.api#jsonName" => "roleRefKind"}))
    KubernetesRoleBindingDetails.type = Types::KubernetesRoleBindingDetails
    KubernetesRoleDetails.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Kind", traits: {"smithy.api#jsonName" => "kind"}))
    KubernetesRoleDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    KubernetesRoleDetails.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#jsonName" => "uid"}))
    KubernetesRoleDetails.type = Types::KubernetesRoleDetails
    KubernetesUserDetails.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Username", traits: {"smithy.api#jsonName" => "username"}))
    KubernetesUserDetails.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#jsonName" => "uid"}))
    KubernetesUserDetails.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Groups, name: "Groups", traits: {"smithy.api#jsonName" => "groups"}))
    KubernetesUserDetails.add_member(:session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionNameList, name: "SessionName", traits: {"smithy.api#jsonName" => "sessionName"}))
    KubernetesUserDetails.add_member(:impersonated_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpersonatedUser, name: "ImpersonatedUser", traits: {"smithy.api#jsonName" => "impersonatedUser"}))
    KubernetesUserDetails.type = Types::KubernetesUserDetails
    KubernetesWorkload.add_member(:container_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerUids, name: "ContainerUids", traits: {"smithy.api#jsonName" => "containerUids"}))
    KubernetesWorkload.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Namespace", traits: {"smithy.api#jsonName" => "namespace"}))
    KubernetesWorkload.add_member(:kubernetes_resources_types, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesResourcesTypes, name: "KubernetesResourcesTypes", traits: {"smithy.api#jsonName" => "type"}))
    KubernetesWorkload.type = Types::KubernetesWorkload
    KubernetesWorkloadDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    KubernetesWorkloadDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    KubernetesWorkloadDetails.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#jsonName" => "uid"}))
    KubernetesWorkloadDetails.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Namespace", traits: {"smithy.api#jsonName" => "namespace"}))
    KubernetesWorkloadDetails.add_member(:host_network, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "HostNetwork", traits: {"smithy.api#jsonName" => "hostNetwork"}))
    KubernetesWorkloadDetails.add_member(:service_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceAccountName", traits: {"smithy.api#jsonName" => "serviceAccountName"}))
    KubernetesWorkloadDetails.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Containers, name: "Containers", traits: {"smithy.api#jsonName" => "containers"}))
    KubernetesWorkloadDetails.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Volumes, name: "Volumes", traits: {"smithy.api#jsonName" => "volumes"}))
    KubernetesWorkloadDetails.add_member(:host_ipc, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "HostIPC", traits: {"smithy.api#jsonName" => "hostIPC"}))
    KubernetesWorkloadDetails.add_member(:host_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "HostPID", traits: {"smithy.api#jsonName" => "hostPID"}))
    KubernetesWorkloadDetails.type = Types::KubernetesWorkloadDetails
    LambdaDetails.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionArn", traits: {"smithy.api#jsonName" => "functionArn"}))
    LambdaDetails.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionName", traits: {"smithy.api#jsonName" => "functionName"}))
    LambdaDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    LambdaDetails.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedAt", traits: {"smithy.api#jsonName" => "lastModifiedAt"}))
    LambdaDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#jsonName" => "revisionId"}))
    LambdaDetails.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionVersion", traits: {"smithy.api#jsonName" => "functionVersion"}))
    LambdaDetails.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Role", traits: {"smithy.api#jsonName" => "role"}))
    LambdaDetails.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig", traits: {"smithy.api#jsonName" => "vpcConfig"}))
    LambdaDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    LambdaDetails.type = Types::LambdaDetails
    Lineage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LineageObject, name: "member"))
    LineageObject.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    LineageObject.add_member(:namespace_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NamespacePid", traits: {"smithy.api#jsonName" => "namespacePid"}))
    LineageObject.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UserId", traits: {"smithy.api#jsonName" => "userId"}))
    LineageObject.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    LineageObject.add_member(:pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Pid", traits: {"smithy.api#jsonName" => "pid"}))
    LineageObject.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uuid", traits: {"smithy.api#jsonName" => "uuid"}))
    LineageObject.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutablePath", traits: {"smithy.api#jsonName" => "executablePath"}))
    LineageObject.add_member(:euid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Euid", traits: {"smithy.api#jsonName" => "euid"}))
    LineageObject.add_member(:parent_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentUuid", traits: {"smithy.api#jsonName" => "parentUuid"}))
    LineageObject.type = Types::LineageObject
    ListCoverageRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCoverageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCoverageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    ListCoverageRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageFilterCriteria, name: "FilterCriteria", traits: {"smithy.api#jsonName" => "filterCriteria"}))
    ListCoverageRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageSortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListCoverageRequest.type = Types::ListCoverageRequest
    ListCoverageResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: CoverageResources, name: "Resources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resources", "smithy.api#required" => {}}))
    ListCoverageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCoverageResponse.type = Types::ListCoverageResponse
    ListCustomDetectionRuleAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomDetectionRuleAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomDetectionRuleAssociationsRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpQuery" => "ruleId"}))
    ListCustomDetectionRuleAssociationsRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#httpQuery" => "mode"}))
    ListCustomDetectionRuleAssociationsRequest.type = Types::ListCustomDetectionRuleAssociationsRequest
    ListCustomDetectionRuleAssociationsResponse.add_member(:rule_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationSummaryList, name: "RuleAssociations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleAssociations", "smithy.api#required" => {}}))
    ListCustomDetectionRuleAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDetectionRuleAssociationsResponse.type = Types::ListCustomDetectionRuleAssociationsResponse
    ListCustomDetectionRuleOrgConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleMaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomDetectionRuleOrgConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomDetectionRuleOrgConfigurationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleConfigurationStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListCustomDetectionRuleOrgConfigurationsRequest.type = Types::ListCustomDetectionRuleOrgConfigurationsRequest
    ListCustomDetectionRuleOrgConfigurationsResponse.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleOrgConfigurationSummaryList, name: "Configurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "configurations", "smithy.api#required" => {}}))
    ListCustomDetectionRuleOrgConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDetectionRuleOrgConfigurationsResponse.type = Types::ListCustomDetectionRuleOrgConfigurationsResponse
    ListCustomDetectionRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleMaxResults, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    ListCustomDetectionRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDetectionRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleFilterList, name: "Filters", traits: {"smithy.api#jsonName" => "filters"}))
    ListCustomDetectionRulesRequest.type = Types::ListCustomDetectionRulesRequest
    ListCustomDetectionRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaryList, name: "Rules", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "rules", "smithy.api#required" => {}}))
    ListCustomDetectionRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDetectionRulesResponse.type = Types::ListCustomDetectionRulesResponse
    ListDetectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDetectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDetectorsRequest.type = Types::ListDetectorsRequest
    ListDetectorsResponse.add_member(:detector_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorIds, name: "DetectorIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "detectorIds", "smithy.api#required" => {}}))
    ListDetectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListDetectorsResponse.type = Types::ListDetectorsResponse
    ListFiltersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFiltersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFiltersRequest.type = Types::ListFiltersRequest
    ListFiltersResponse.add_member(:filter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterNames, name: "FilterNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "filterNames", "smithy.api#required" => {}}))
    ListFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFiltersResponse.type = Types::ListFiltersResponse
    ListFindingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFindingsRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingCriteria, name: "FindingCriteria", traits: {"smithy.api#jsonName" => "findingCriteria"}))
    ListFindingsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    ListFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFindingsRequest.type = Types::ListFindingsRequest
    ListFindingsResponse.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIds, name: "FindingIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    ListFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFindingsResponse.type = Types::ListFindingsResponse
    ListIPSetsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIPSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIPSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIPSetsRequest.type = Types::ListIPSetsRequest
    ListIPSetsResponse.add_member(:ip_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IpSetIds, name: "IpSetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ipSetIds", "smithy.api#required" => {}}))
    ListIPSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListIPSetsResponse.type = Types::ListIPSetsResponse
    ListInvestigationsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInvestigationsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationSortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListInvestigationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#jsonName" => "maxResults"}))
    ListInvestigationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListInvestigationsRequest.type = Types::ListInvestigationsRequest
    ListInvestigationsResponse.add_member(:investigations, ::Smithy::Schema::Shapes::MemberShape.new(target: InvestigationSummaries, name: "Investigations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "investigations", "smithy.api#required" => {}}))
    ListInvestigationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListInvestigationsResponse.type = Types::ListInvestigationsResponse
    ListInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInvitationsRequest.type = Types::ListInvitationsRequest
    ListInvitationsResponse.add_member(:invitations, ::Smithy::Schema::Shapes::MemberShape.new(target: Invitations, name: "Invitations", traits: {"smithy.api#jsonName" => "invitations"}))
    ListInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListInvitationsResponse.type = Types::ListInvitationsResponse
    ListMalwareProtectionPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMalwareProtectionPlansRequest.type = Types::ListMalwareProtectionPlansRequest
    ListMalwareProtectionPlansResponse.add_member(:malware_protection_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlansSummary, name: "MalwareProtectionPlans", traits: {"smithy.api#jsonName" => "malwareProtectionPlans"}))
    ListMalwareProtectionPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListMalwareProtectionPlansResponse.type = Types::ListMalwareProtectionPlansResponse
    ListMalwareScansCriterionKey.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ListMalwareScansCriterionKey.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_ID", traits: {"smithy.api#enumValue" => "SCAN_ID"}))
    ListMalwareScansCriterionKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ListMalwareScansCriterionKey.add_member(:guardduty_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_FINDING_ID", traits: {"smithy.api#enumValue" => "GUARDDUTY_FINDING_ID"}))
    ListMalwareScansCriterionKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListMalwareScansCriterionKey.add_member(:scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_START_TIME", traits: {"smithy.api#enumValue" => "SCAN_START_TIME"}))
    ListMalwareScansCriterionKey.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_STATUS", traits: {"smithy.api#enumValue" => "SCAN_STATUS"}))
    ListMalwareScansCriterionKey.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCAN_TYPE", traits: {"smithy.api#enumValue" => "SCAN_TYPE"}))
    ListMalwareScansFilterCriteria.add_member(:list_malware_scans_filter_criterion, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMalwareScansFilterCriterionList, name: "ListMalwareScansFilterCriterion", traits: {"smithy.api#jsonName" => "filterCriterion"}))
    ListMalwareScansFilterCriteria.type = Types::ListMalwareScansFilterCriteria
    ListMalwareScansFilterCriterion.add_member(:list_malware_scans_criterion_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMalwareScansCriterionKey, name: "ListMalwareScansCriterionKey", traits: {"smithy.api#jsonName" => "criterionKey"}))
    ListMalwareScansFilterCriterion.add_member(:filter_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "FilterCondition", traits: {"smithy.api#jsonName" => "filterCondition"}))
    ListMalwareScansFilterCriterion.type = Types::ListMalwareScansFilterCriterion
    ListMalwareScansFilterCriterionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMalwareScansFilterCriterion, name: "member"))
    ListMalwareScansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMalwareScansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMalwareScansRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMalwareScansFilterCriteria, name: "FilterCriteria", traits: {"smithy.api#jsonName" => "filterCriteria"}))
    ListMalwareScansRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "SortCriteria", traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListMalwareScansRequest.type = Types::ListMalwareScansRequest
    ListMalwareScansResponse.add_member(:scans, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScans, name: "Scans", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "scans", "smithy.api#required" => {}}))
    ListMalwareScansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListMalwareScansResponse.type = Types::ListMalwareScansResponse
    ListMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMembersRequest.add_member(:only_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OnlyAssociated", traits: {"smithy.api#httpQuery" => "onlyAssociated"}))
    ListMembersRequest.type = Types::ListMembersRequest
    ListMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: Members, name: "Members", traits: {"smithy.api#jsonName" => "members"}))
    ListMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListMembersResponse.type = Types::ListMembersResponse
    ListOrganizationAdminAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationAdminAccountsRequest.type = Types::ListOrganizationAdminAccountsRequest
    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccounts, name: "AdminAccounts", traits: {"smithy.api#jsonName" => "adminAccounts"}))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListOrganizationAdminAccountsResponse.type = Types::ListOrganizationAdminAccountsResponse
    ListPublishingDestinationsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPublishingDestinationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPublishingDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPublishingDestinationsRequest.type = Types::ListPublishingDestinationsRequest
    ListPublishingDestinationsResponse.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, name: "Destinations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinations", "smithy.api#required" => {}}))
    ListPublishingDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListPublishingDestinationsResponse.type = Types::ListPublishingDestinationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardDutyArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThreatEntitySetsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThreatEntitySetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListThreatEntitySetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListThreatEntitySetsRequest.type = Types::ListThreatEntitySetsRequest
    ListThreatEntitySetsResponse.add_member(:threat_entity_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEntitySetIds, name: "ThreatEntitySetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "threatEntitySetIds", "smithy.api#required" => {}}))
    ListThreatEntitySetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListThreatEntitySetsResponse.type = Types::ListThreatEntitySetsResponse
    ListThreatIntelSetsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThreatIntelSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListThreatIntelSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListThreatIntelSetsRequest.type = Types::ListThreatIntelSetsRequest
    ListThreatIntelSetsResponse.add_member(:threat_intel_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelSetIds, name: "ThreatIntelSetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "threatIntelSetIds", "smithy.api#required" => {}}))
    ListThreatIntelSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListThreatIntelSetsResponse.type = Types::ListThreatIntelSetsResponse
    ListTrustedEntitySetsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTrustedEntitySetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTrustedEntitySetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTrustedEntitySetsRequest.type = Types::ListTrustedEntitySetsRequest
    ListTrustedEntitySetsResponse.add_member(:trusted_entity_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedEntitySetIds, name: "TrustedEntitySetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "trustedEntitySetIds", "smithy.api#required" => {}}))
    ListTrustedEntitySetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListTrustedEntitySetsResponse.type = Types::ListTrustedEntitySetsResponse
    LocalIpDetails.add_member(:ip_address_v4, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "IpAddressV4", traits: {"smithy.api#jsonName" => "ipAddressV4"}))
    LocalIpDetails.add_member(:ip_address_v6, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "IpAddressV6", traits: {"smithy.api#jsonName" => "ipAddressV6"}))
    LocalIpDetails.type = Types::LocalIpDetails
    LocalPortDetails.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    LocalPortDetails.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PortName", traits: {"smithy.api#jsonName" => "portName"}))
    LocalPortDetails.type = Types::LocalPortDetails
    LoginAttribute.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "User", traits: {"smithy.api#jsonName" => "user"}))
    LoginAttribute.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Application", traits: {"smithy.api#jsonName" => "application"}))
    LoginAttribute.add_member(:failed_login_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "FailedLoginAttempts", traits: {"smithy.api#jsonName" => "failedLoginAttempts"}))
    LoginAttribute.add_member(:successful_login_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SuccessfulLoginAttempts", traits: {"smithy.api#jsonName" => "successfulLoginAttempts"}))
    LoginAttribute.type = Types::LoginAttribute
    LoginAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginAttribute, name: "member"))
    MalwareProtectionConfiguration.add_member(:scan_ec2_instance_with_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanEc2InstanceWithFindings, name: "ScanEc2InstanceWithFindings", traits: {"smithy.api#jsonName" => "scanEc2InstanceWithFindings"}))
    MalwareProtectionConfiguration.type = Types::MalwareProtectionConfiguration
    MalwareProtectionConfigurationResult.add_member(:scan_ec2_instance_with_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanEc2InstanceWithFindingsResult, name: "ScanEc2InstanceWithFindings", traits: {"smithy.api#jsonName" => "scanEc2InstanceWithFindings"}))
    MalwareProtectionConfigurationResult.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceRole", traits: {"smithy.api#jsonName" => "serviceRole"}))
    MalwareProtectionConfigurationResult.type = Types::MalwareProtectionConfigurationResult
    MalwareProtectionDataSourceFreeTrial.add_member(:scan_ec2_instance_with_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFreeTrial, name: "ScanEc2InstanceWithFindings", traits: {"smithy.api#jsonName" => "scanEc2InstanceWithFindings"}))
    MalwareProtectionDataSourceFreeTrial.type = Types::MalwareProtectionDataSourceFreeTrial
    MalwareProtectionFindingsScanConfiguration.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "TriggerType", traits: {"smithy.api#jsonName" => "triggerType"}))
    MalwareProtectionFindingsScanConfiguration.add_member(:incremental_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalScanDetails, name: "IncrementalScanDetails", traits: {"smithy.api#jsonName" => "incrementalScanDetails"}))
    MalwareProtectionFindingsScanConfiguration.type = Types::MalwareProtectionFindingsScanConfiguration
    MalwareProtectionPlanActions.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanTaggingAction, name: "Tagging", traits: {"smithy.api#jsonName" => "tagging"}))
    MalwareProtectionPlanActions.type = Types::MalwareProtectionPlanActions
    MalwareProtectionPlanObjectPrefixesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MalwareProtectionPlanStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MalwareProtectionPlanStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    MalwareProtectionPlanStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    MalwareProtectionPlanStatusReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#jsonName" => "code"}))
    MalwareProtectionPlanStatusReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    MalwareProtectionPlanStatusReason.type = Types::MalwareProtectionPlanStatusReason
    MalwareProtectionPlanStatusReasonsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanStatusReason, name: "member"))
    MalwareProtectionPlanSummary.add_member(:malware_protection_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MalwareProtectionPlanId", traits: {"smithy.api#jsonName" => "malwareProtectionPlanId"}))
    MalwareProtectionPlanSummary.type = Types::MalwareProtectionPlanSummary
    MalwareProtectionPlanTaggingAction.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanTaggingActionStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    MalwareProtectionPlanTaggingAction.type = Types::MalwareProtectionPlanTaggingAction
    MalwareProtectionPlanTaggingActionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MalwareProtectionPlanTaggingActionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MalwareProtectionPlansSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanSummary, name: "member"))
    MalwareProtectionResourceType.add_member(:ebs_recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_RECOVERY_POINT", traits: {"smithy.api#enumValue" => "EBS_RECOVERY_POINT"}))
    MalwareProtectionResourceType.add_member(:ebs_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_SNAPSHOT", traits: {"smithy.api#enumValue" => "EBS_SNAPSHOT"}))
    MalwareProtectionResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EBS_VOLUME"}))
    MalwareProtectionResourceType.add_member(:ec2_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AMI", traits: {"smithy.api#enumValue" => "EC2_AMI"}))
    MalwareProtectionResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2_INSTANCE"}))
    MalwareProtectionResourceType.add_member(:ec2_recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_RECOVERY_POINT", traits: {"smithy.api#enumValue" => "EC2_RECOVERY_POINT"}))
    MalwareProtectionResourceType.add_member(:s3_recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_RECOVERY_POINT", traits: {"smithy.api#enumValue" => "S3_RECOVERY_POINT"}))
    MalwareProtectionResourceType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_BUCKET", traits: {"smithy.api#enumValue" => "S3_BUCKET"}))
    MalwareProtectionResourceType.add_member(:s3_point_in_time_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_POINT_IN_TIME_RECOVERY", traits: {"smithy.api#enumValue" => "S3_POINT_IN_TIME_RECOVERY"}))
    MalwareProtectionScanStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    MalwareProtectionScanStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MalwareProtectionScanStatus.add_member(:completed_with_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ISSUES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ISSUES"}))
    MalwareProtectionScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MalwareProtectionScanStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    MalwareProtectionScanType.add_member(:backup_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_INITIATED", traits: {"smithy.api#enumValue" => "BACKUP_INITIATED"}))
    MalwareProtectionScanType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    MalwareProtectionScanType.add_member(:guardduty_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_INITIATED", traits: {"smithy.api#enumValue" => "GUARDDUTY_INITIATED"}))
    MalwareScan.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ResourceArn", traits: {"smithy.api#jsonName" => "resourceArn"}))
    MalwareScan.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionResourceType, name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    MalwareScan.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    MalwareScan.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanStatus, name: "ScanStatus", traits: {"smithy.api#jsonName" => "scanStatus"}))
    MalwareScan.add_member(:scan_result_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultStatus, name: "ScanResultStatus", traits: {"smithy.api#jsonName" => "scanResultStatus"}))
    MalwareScan.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanType, name: "ScanType", traits: {"smithy.api#jsonName" => "scanType"}))
    MalwareScan.add_member(:scan_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanStartedAt", traits: {"smithy.api#jsonName" => "scanStartedAt"}))
    MalwareScan.add_member(:scan_completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanCompletedAt", traits: {"smithy.api#jsonName" => "scanCompletedAt"}))
    MalwareScan.type = Types::MalwareScan
    MalwareScanDetails.add_member(:threats, ::Smithy::Schema::Shapes::MemberShape.new(target: Threats, name: "Threats", traits: {"smithy.api#jsonName" => "threats"}))
    MalwareScanDetails.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    MalwareScanDetails.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanType, name: "ScanType", traits: {"smithy.api#jsonName" => "scanType"}))
    MalwareScanDetails.add_member(:scan_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCategory, name: "ScanCategory", traits: {"smithy.api#jsonName" => "scanCategory"}))
    MalwareScanDetails.add_member(:scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionFindingsScanConfiguration, name: "ScanConfiguration", traits: {"smithy.api#jsonName" => "scanConfiguration"}))
    MalwareScanDetails.add_member(:unique_threat_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UniqueThreatCount", traits: {"smithy.api#jsonName" => "uniqueThreatCount"}))
    MalwareScanDetails.type = Types::MalwareScanDetails
    MalwareScans.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScan, name: "member"))
    ManagedBy.add_member(:guardduty_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_POLICY", traits: {"smithy.api#enumValue" => "GUARDDUTY_POLICY"}))
    ManagementType.add_member(:auto_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_MANAGED", traits: {"smithy.api#enumValue" => "AUTO_MANAGED"}))
    ManagementType.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    ManagementType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MapEquals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConditionPair, name: "member"))
    Master.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    Master.add_member(:invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitationId", traits: {"smithy.api#jsonName" => "invitationId"}))
    Master.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RelationshipStatus", traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    Master.add_member(:invited_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitedAt", traits: {"smithy.api#jsonName" => "invitedAt"}))
    Master.type = Types::Master
    Matches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Match, name: "member"))
    Member.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    Member.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    Member.add_member(:master_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "masterId", "smithy.api#required" => {}}))
    Member.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "email", "smithy.api#required" => {}}))
    Member.add_member(:relationship_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RelationshipStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "relationshipStatus", "smithy.api#required" => {}}))
    Member.add_member(:invited_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvitedAt", traits: {"smithy.api#jsonName" => "invitedAt"}))
    Member.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    Member.add_member(:administrator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdministratorId", traits: {"smithy.api#jsonName" => "administratorId"}))
    Member.type = Types::Member
    MemberAdditionalConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    MemberAdditionalConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    MemberAdditionalConfiguration.type = Types::MemberAdditionalConfiguration
    MemberAdditionalConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    MemberAdditionalConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    MemberAdditionalConfigurationResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    MemberAdditionalConfigurationResult.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy", traits: {"smithy.api#jsonName" => "managedBy"}))
    MemberAdditionalConfigurationResult.type = Types::MemberAdditionalConfigurationResult
    MemberAdditionalConfigurationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAdditionalConfigurationResult, name: "member"))
    MemberAdditionalConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAdditionalConfiguration, name: "member"))
    MemberDataSourceConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    MemberDataSourceConfiguration.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfigurationsResult, name: "DataSources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources", "smithy.api#required" => {}}))
    MemberDataSourceConfiguration.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberFeaturesConfigurationsResults, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    MemberDataSourceConfiguration.type = Types::MemberDataSourceConfiguration
    MemberDataSourceConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberDataSourceConfiguration, name: "member"))
    MemberFeaturesConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    MemberFeaturesConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    MemberFeaturesConfiguration.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAdditionalConfigurations, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    MemberFeaturesConfiguration.type = Types::MemberFeaturesConfiguration
    MemberFeaturesConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    MemberFeaturesConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    MemberFeaturesConfigurationResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    MemberFeaturesConfigurationResult.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAdditionalConfigurationResults, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    MemberFeaturesConfigurationResult.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedBy, name: "ManagedBy", traits: {"smithy.api#jsonName" => "managedBy"}))
    MemberFeaturesConfigurationResult.type = Types::MemberFeaturesConfigurationResult
    MemberFeaturesConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberFeaturesConfiguration, name: "member"))
    MemberFeaturesConfigurationsResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberFeaturesConfigurationResult, name: "member"))
    Members.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Member, name: "member"))
    MemoryRegionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MfaStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MfaStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ModelDetail.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModelId", traits: {"smithy.api#jsonName" => "modelId", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ModelDetail.type = Types::ModelDetail
    ModelDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDetail, name: "member"))
    Neq.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NetworkConnection.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkDirection, name: "Direction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "direction", "smithy.api#required" => {}}))
    NetworkConnection.type = Types::NetworkConnection
    NetworkConnectionAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Blocked", traits: {"smithy.api#jsonName" => "blocked"}))
    NetworkConnectionAction.add_member(:connection_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConnectionDirection", traits: {"smithy.api#jsonName" => "connectionDirection"}))
    NetworkConnectionAction.add_member(:local_port_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalPortDetails, name: "LocalPortDetails", traits: {"smithy.api#jsonName" => "localPortDetails"}))
    NetworkConnectionAction.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Protocol", traits: {"smithy.api#jsonName" => "protocol"}))
    NetworkConnectionAction.add_member(:local_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalIpDetails, name: "LocalIpDetails", traits: {"smithy.api#jsonName" => "localIpDetails"}))
    NetworkConnectionAction.add_member(:local_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LocalNetworkInterface", traits: {"smithy.api#jsonName" => "localNetworkInterface"}))
    NetworkConnectionAction.add_member(:remote_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteIpDetails, name: "RemoteIpDetails", traits: {"smithy.api#jsonName" => "remoteIpDetails"}))
    NetworkConnectionAction.add_member(:remote_port_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemotePortDetails, name: "RemotePortDetails", traits: {"smithy.api#jsonName" => "remotePortDetails"}))
    NetworkConnectionAction.type = Types::NetworkConnectionAction
    NetworkDirection.add_member(:inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INBOUND", traits: {"smithy.api#enumValue" => "INBOUND"}))
    NetworkDirection.add_member(:outbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTBOUND", traits: {"smithy.api#enumValue" => "OUTBOUND"}))
    NetworkEndpoint.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "id", "smithy.api#required" => {}}))
    NetworkEndpoint.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ip", traits: {"smithy.api#jsonName" => "ip"}))
    NetworkEndpoint.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain", traits: {"smithy.api#jsonName" => "domain"}))
    NetworkEndpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    NetworkEndpoint.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkGeoLocation, name: "Location", traits: {"smithy.api#jsonName" => "location"}))
    NetworkEndpoint.add_member(:autonomous_system, ::Smithy::Schema::Shapes::MemberShape.new(target: AutonomousSystem, name: "AutonomousSystem", traits: {"smithy.api#jsonName" => "autonomousSystem"}))
    NetworkEndpoint.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnection, name: "Connection", traits: {"smithy.api#jsonName" => "connection"}))
    NetworkEndpoint.type = Types::NetworkEndpoint
    NetworkEndpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkEndpoint, name: "member"))
    NetworkGeoLocation.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "City", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "city", "smithy.api#required" => {}}))
    NetworkGeoLocation.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Country", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "country", "smithy.api#required" => {}}))
    NetworkGeoLocation.add_member(:latitude, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Latitude", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "lat", "smithy.api#required" => {}}))
    NetworkGeoLocation.add_member(:longitude, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Longitude", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "lon", "smithy.api#required" => {}}))
    NetworkGeoLocation.type = Types::NetworkGeoLocation
    NetworkInterface.add_member(:ipv6_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Addresses, name: "Ipv6Addresses", traits: {"smithy.api#jsonName" => "ipv6Addresses"}))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkInterfaceId", traits: {"smithy.api#jsonName" => "networkInterfaceId"}))
    NetworkInterface.add_member(:private_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateDnsName", traits: {"smithy.api#jsonName" => "privateDnsName"}))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PrivateIpAddress", traits: {"smithy.api#jsonName" => "privateIpAddress"}))
    NetworkInterface.add_member(:private_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIpAddresses, name: "PrivateIpAddresses", traits: {"smithy.api#jsonName" => "privateIpAddresses"}))
    NetworkInterface.add_member(:public_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicDnsName", traits: {"smithy.api#jsonName" => "publicDnsName"}))
    NetworkInterface.add_member(:public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicIp", traits: {"smithy.api#jsonName" => "publicIp"}))
    NetworkInterface.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetId", traits: {"smithy.api#jsonName" => "subnetId"}))
    NetworkInterface.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    NotEquals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NotMatches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotMatch, name: "member"))
    ObservationNumbers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "member"))
    ObservationTexts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Observations.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservationTexts, name: "Text", traits: {"smithy.api#jsonName" => "text"}))
    Observations.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservationNumbers, name: "Number", traits: {"smithy.api#jsonName" => "number"}))
    Observations.type = Types::Observations
    OrderBy.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    OrderBy.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    OrgFeature.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    OrgFeature.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    OrgFeature.add_member(:ebs_malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_MALWARE_PROTECTION", traits: {"smithy.api#enumValue" => "EBS_MALWARE_PROTECTION"}))
    OrgFeature.add_member(:rds_login_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_LOGIN_EVENTS", traits: {"smithy.api#enumValue" => "RDS_LOGIN_EVENTS"}))
    OrgFeature.add_member(:lambda_network_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NETWORK_LOGS", traits: {"smithy.api#enumValue" => "LAMBDA_NETWORK_LOGS"}))
    OrgFeature.add_member(:eks_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EKS_RUNTIME_MONITORING"}))
    OrgFeature.add_member(:runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "RUNTIME_MONITORING"}))
    OrgFeature.add_member(:ai_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_PROTECTION", traits: {"smithy.api#enumValue" => "AI_PROTECTION"}))
    OrgFeatureAdditionalConfiguration.add_member(:eks_addon_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_ADDON_MANAGEMENT", traits: {"smithy.api#enumValue" => "EKS_ADDON_MANAGEMENT"}))
    OrgFeatureAdditionalConfiguration.add_member(:ecs_fargate_agent_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_FARGATE_AGENT_MANAGEMENT", traits: {"smithy.api#enumValue" => "ECS_FARGATE_AGENT_MANAGEMENT"}))
    OrgFeatureAdditionalConfiguration.add_member(:ec2_agent_management, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AGENT_MANAGEMENT", traits: {"smithy.api#enumValue" => "EC2_AGENT_MANAGEMENT"}))
    OrgFeatureAdditionalConfiguration.add_member(:rds_data_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DATA_RISK", traits: {"smithy.api#enumValue" => "RDS_DATA_RISK"}))
    OrgFeatureStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    OrgFeatureStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OrgFeatureStatus.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Organization.add_member(:asn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Asn", traits: {"smithy.api#jsonName" => "asn"}))
    Organization.add_member(:asn_org, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AsnOrg", traits: {"smithy.api#jsonName" => "asnOrg"}))
    Organization.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Isp", traits: {"smithy.api#jsonName" => "isp"}))
    Organization.add_member(:org, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Org", traits: {"smithy.api#jsonName" => "org"}))
    Organization.type = Types::Organization
    OrganizationAdditionalConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationAdditionalConfiguration.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureStatus, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationAdditionalConfiguration.type = Types::OrganizationAdditionalConfiguration
    OrganizationAdditionalConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationAdditionalConfigurationResult.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureStatus, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationAdditionalConfigurationResult.type = Types::OrganizationAdditionalConfigurationResult
    OrganizationAdditionalConfigurationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAdditionalConfigurationResult, name: "member"))
    OrganizationAdditionalConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAdditionalConfiguration, name: "member"))
    OrganizationDataSourceConfigurations.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationS3LogsConfiguration, name: "S3Logs", traits: {"smithy.api#jsonName" => "s3Logs"}))
    OrganizationDataSourceConfigurations.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationKubernetesConfiguration, name: "Kubernetes", traits: {"smithy.api#jsonName" => "kubernetes"}))
    OrganizationDataSourceConfigurations.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationMalwareProtectionConfiguration, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    OrganizationDataSourceConfigurations.type = Types::OrganizationDataSourceConfigurations
    OrganizationDataSourceConfigurationsResult.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationS3LogsConfigurationResult, name: "S3Logs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "s3Logs", "smithy.api#required" => {}}))
    OrganizationDataSourceConfigurationsResult.add_member(:kubernetes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationKubernetesConfigurationResult, name: "Kubernetes", traits: {"smithy.api#jsonName" => "kubernetes"}))
    OrganizationDataSourceConfigurationsResult.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationMalwareProtectionConfigurationResult, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    OrganizationDataSourceConfigurationsResult.type = Types::OrganizationDataSourceConfigurationsResult
    OrganizationDetails.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    OrganizationDetails.add_member(:organization_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatistics, name: "OrganizationStatistics", traits: {"smithy.api#jsonName" => "organizationStatistics"}))
    OrganizationDetails.type = Types::OrganizationDetails
    OrganizationEbsVolumes.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationEbsVolumes.type = Types::OrganizationEbsVolumes
    OrganizationEbsVolumesResult.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationEbsVolumesResult.type = Types::OrganizationEbsVolumesResult
    OrganizationFeatureConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationFeatureConfiguration.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureStatus, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationFeatureConfiguration.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAdditionalConfigurations, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    OrganizationFeatureConfiguration.type = Types::OrganizationFeatureConfiguration
    OrganizationFeatureConfigurationResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationFeatureConfigurationResult.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureStatus, name: "AutoEnable", traits: {"smithy.api#jsonName" => "autoEnable"}))
    OrganizationFeatureConfigurationResult.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAdditionalConfigurationResults, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    OrganizationFeatureConfigurationResult.type = Types::OrganizationFeatureConfigurationResult
    OrganizationFeatureStatistics.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeature, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationFeatureStatistics.add_member(:enabled_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EnabledAccountsCount", traits: {"smithy.api#jsonName" => "enabledAccountsCount"}))
    OrganizationFeatureStatistics.add_member(:additional_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureStatisticsAdditionalConfigurations, name: "AdditionalConfiguration", traits: {"smithy.api#jsonName" => "additionalConfiguration"}))
    OrganizationFeatureStatistics.type = Types::OrganizationFeatureStatistics
    OrganizationFeatureStatisticsAdditionalConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrgFeatureAdditionalConfiguration, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    OrganizationFeatureStatisticsAdditionalConfiguration.add_member(:enabled_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EnabledAccountsCount", traits: {"smithy.api#jsonName" => "enabledAccountsCount"}))
    OrganizationFeatureStatisticsAdditionalConfiguration.type = Types::OrganizationFeatureStatisticsAdditionalConfiguration
    OrganizationFeatureStatisticsAdditionalConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureStatisticsAdditionalConfiguration, name: "member"))
    OrganizationFeatureStatisticsResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureStatistics, name: "member"))
    OrganizationFeaturesConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureConfiguration, name: "member"))
    OrganizationFeaturesConfigurationsResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureConfigurationResult, name: "member"))
    OrganizationKubernetesAuditLogsConfiguration.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    OrganizationKubernetesAuditLogsConfiguration.type = Types::OrganizationKubernetesAuditLogsConfiguration
    OrganizationKubernetesAuditLogsConfigurationResult.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    OrganizationKubernetesAuditLogsConfigurationResult.type = Types::OrganizationKubernetesAuditLogsConfigurationResult
    OrganizationKubernetesConfiguration.add_member(:audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationKubernetesAuditLogsConfiguration, name: "AuditLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "auditLogs", "smithy.api#required" => {}}))
    OrganizationKubernetesConfiguration.type = Types::OrganizationKubernetesConfiguration
    OrganizationKubernetesConfigurationResult.add_member(:audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationKubernetesAuditLogsConfigurationResult, name: "AuditLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "auditLogs", "smithy.api#required" => {}}))
    OrganizationKubernetesConfigurationResult.type = Types::OrganizationKubernetesConfigurationResult
    OrganizationMalwareProtectionConfiguration.add_member(:scan_ec2_instance_with_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationScanEc2InstanceWithFindings, name: "ScanEc2InstanceWithFindings", traits: {"smithy.api#jsonName" => "scanEc2InstanceWithFindings"}))
    OrganizationMalwareProtectionConfiguration.type = Types::OrganizationMalwareProtectionConfiguration
    OrganizationMalwareProtectionConfigurationResult.add_member(:scan_ec2_instance_with_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationScanEc2InstanceWithFindingsResult, name: "ScanEc2InstanceWithFindings", traits: {"smithy.api#jsonName" => "scanEc2InstanceWithFindings"}))
    OrganizationMalwareProtectionConfigurationResult.type = Types::OrganizationMalwareProtectionConfigurationResult
    OrganizationS3LogsConfiguration.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    OrganizationS3LogsConfiguration.type = Types::OrganizationS3LogsConfiguration
    OrganizationS3LogsConfigurationResult.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    OrganizationS3LogsConfigurationResult.type = Types::OrganizationS3LogsConfigurationResult
    OrganizationScanEc2InstanceWithFindings.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEbsVolumes, name: "EbsVolumes", traits: {"smithy.api#jsonName" => "ebsVolumes"}))
    OrganizationScanEc2InstanceWithFindings.type = Types::OrganizationScanEc2InstanceWithFindings
    OrganizationScanEc2InstanceWithFindingsResult.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationEbsVolumesResult, name: "EbsVolumes", traits: {"smithy.api#jsonName" => "ebsVolumes"}))
    OrganizationScanEc2InstanceWithFindingsResult.type = Types::OrganizationScanEc2InstanceWithFindingsResult
    OrganizationStatistics.add_member(:total_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalAccountsCount", traits: {"smithy.api#jsonName" => "totalAccountsCount"}))
    OrganizationStatistics.add_member(:member_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MemberAccountsCount", traits: {"smithy.api#jsonName" => "memberAccountsCount"}))
    OrganizationStatistics.add_member(:active_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ActiveAccountsCount", traits: {"smithy.api#jsonName" => "activeAccountsCount"}))
    OrganizationStatistics.add_member(:enabled_accounts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EnabledAccountsCount", traits: {"smithy.api#jsonName" => "enabledAccountsCount"}))
    OrganizationStatistics.add_member(:count_by_feature, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeatureStatisticsResults, name: "CountByFeature", traits: {"smithy.api#jsonName" => "countByFeature"}))
    OrganizationStatistics.type = Types::OrganizationStatistics
    Owner.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#jsonName" => "id"}))
    Owner.type = Types::Owner
    PermissionConfiguration.add_member(:bucket_level_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLevelPermissions, name: "BucketLevelPermissions", traits: {"smithy.api#jsonName" => "bucketLevelPermissions"}))
    PermissionConfiguration.add_member(:account_level_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLevelPermissions, name: "AccountLevelPermissions", traits: {"smithy.api#jsonName" => "accountLevelPermissions"}))
    PermissionConfiguration.type = Types::PermissionConfiguration
    PortProbeAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Blocked", traits: {"smithy.api#jsonName" => "blocked"}))
    PortProbeAction.add_member(:port_probe_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PortProbeDetails, name: "PortProbeDetails", traits: {"smithy.api#jsonName" => "portProbeDetails"}))
    PortProbeAction.type = Types::PortProbeAction
    PortProbeDetail.add_member(:local_port_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalPortDetails, name: "LocalPortDetails", traits: {"smithy.api#jsonName" => "localPortDetails"}))
    PortProbeDetail.add_member(:local_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalIpDetails, name: "LocalIpDetails", traits: {"smithy.api#jsonName" => "localIpDetails"}))
    PortProbeDetail.add_member(:remote_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteIpDetails, name: "RemoteIpDetails", traits: {"smithy.api#jsonName" => "remoteIpDetails"}))
    PortProbeDetail.type = Types::PortProbeDetail
    PortProbeDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortProbeDetail, name: "member"))
    PrivateIpAddressDetails.add_member(:private_dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateDnsName", traits: {"smithy.api#jsonName" => "privateDnsName"}))
    PrivateIpAddressDetails.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PrivateIpAddress", traits: {"smithy.api#jsonName" => "privateIpAddress"}))
    PrivateIpAddressDetails.type = Types::PrivateIpAddressDetails
    PrivateIpAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateIpAddressDetails, name: "member"))
    ProcessDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ProcessDetails.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutablePath", traits: {"smithy.api#jsonName" => "executablePath"}))
    ProcessDetails.add_member(:executable_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutableSha256", traits: {"smithy.api#jsonName" => "executableSha256"}))
    ProcessDetails.add_member(:namespace_pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NamespacePid", traits: {"smithy.api#jsonName" => "namespacePid"}))
    ProcessDetails.add_member(:pwd, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Pwd", traits: {"smithy.api#jsonName" => "pwd"}))
    ProcessDetails.add_member(:pid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Pid", traits: {"smithy.api#jsonName" => "pid"}))
    ProcessDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    ProcessDetails.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uuid", traits: {"smithy.api#jsonName" => "uuid"}))
    ProcessDetails.add_member(:parent_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParentUuid", traits: {"smithy.api#jsonName" => "parentUuid"}))
    ProcessDetails.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "User", traits: {"smithy.api#jsonName" => "user"}))
    ProcessDetails.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UserId", traits: {"smithy.api#jsonName" => "userId"}))
    ProcessDetails.add_member(:euid, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Euid", traits: {"smithy.api#jsonName" => "euid"}))
    ProcessDetails.add_member(:lineage, ::Smithy::Schema::Shapes::MemberShape.new(target: Lineage, name: "Lineage", traits: {"smithy.api#jsonName" => "lineage"}))
    ProcessDetails.type = Types::ProcessDetails
    Product.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Product.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Feature", traits: {"smithy.api#jsonName" => "feature"}))
    Product.type = Types::Product
    ProductCode.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#jsonName" => "productCodeId"}))
    ProductCode.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductType", traits: {"smithy.api#jsonName" => "productCodeType"}))
    ProductCode.type = Types::ProductCode
    ProductCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "member"))
    ProfileSubtype.add_member(:frequent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREQUENT", traits: {"smithy.api#enumValue" => "FREQUENT"}))
    ProfileSubtype.add_member(:infrequent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFREQUENT", traits: {"smithy.api#enumValue" => "INFREQUENT"}))
    ProfileSubtype.add_member(:unseen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSEEN", traits: {"smithy.api#enumValue" => "UNSEEN"}))
    ProfileSubtype.add_member(:rare, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RARE", traits: {"smithy.api#enumValue" => "RARE"}))
    ProfileSubtype.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    ProfileSubtype.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "AVERAGE"}))
    ProfileType.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREQUENCY", traits: {"smithy.api#enumValue" => "FREQUENCY"}))
    ProfileType.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    PublicAccess.add_member(:permission_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionConfiguration, name: "PermissionConfiguration", traits: {"smithy.api#jsonName" => "permissionConfiguration"}))
    PublicAccess.add_member(:effective_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EffectivePermission", traits: {"smithy.api#jsonName" => "effectivePermission"}))
    PublicAccess.type = Types::PublicAccess
    PublicAccessConfiguration.add_member(:public_acl_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessStatus, name: "PublicAclAccess", traits: {"smithy.api#jsonName" => "publicAclAccess"}))
    PublicAccessConfiguration.add_member(:public_policy_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessStatus, name: "PublicPolicyAccess", traits: {"smithy.api#jsonName" => "publicPolicyAccess"}))
    PublicAccessConfiguration.add_member(:public_acl_ignore_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAclIgnoreBehavior, name: "PublicAclIgnoreBehavior", traits: {"smithy.api#jsonName" => "publicAclIgnoreBehavior"}))
    PublicAccessConfiguration.add_member(:public_bucket_restrict_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicBucketRestrictBehavior, name: "PublicBucketRestrictBehavior", traits: {"smithy.api#jsonName" => "publicBucketRestrictBehavior"}))
    PublicAccessConfiguration.type = Types::PublicAccessConfiguration
    PublicAccessStatus.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    PublicAccessStatus.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWED", traits: {"smithy.api#enumValue" => "ALLOWED"}))
    PublicAclIgnoreBehavior.add_member(:ignored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGNORED", traits: {"smithy.api#enumValue" => "IGNORED"}))
    PublicAclIgnoreBehavior.add_member(:not_ignored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IGNORED", traits: {"smithy.api#enumValue" => "NOT_IGNORED"}))
    PublicBucketRestrictBehavior.add_member(:restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTRICTED", traits: {"smithy.api#enumValue" => "RESTRICTED"}))
    PublicBucketRestrictBehavior.add_member(:not_restricted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_RESTRICTED", traits: {"smithy.api#enumValue" => "NOT_RESTRICTED"}))
    PublishingStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    PublishingStatus.add_member(:publishing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHING", traits: {"smithy.api#enumValue" => "PUBLISHING"}))
    PublishingStatus.add_member(:unable_to_publish_fix_destination_property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", traits: {"smithy.api#enumValue" => "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY"}))
    PublishingStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    RdsDbInstanceDetails.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbInstanceIdentifier", traits: {"smithy.api#jsonName" => "dbInstanceIdentifier"}))
    RdsDbInstanceDetails.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#jsonName" => "engine"}))
    RdsDbInstanceDetails.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion", traits: {"smithy.api#jsonName" => "engineVersion"}))
    RdsDbInstanceDetails.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterIdentifier", traits: {"smithy.api#jsonName" => "dbClusterIdentifier"}))
    RdsDbInstanceDetails.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbInstanceArn", traits: {"smithy.api#jsonName" => "dbInstanceArn"}))
    RdsDbInstanceDetails.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId", traits: {"smithy.api#jsonName" => "dbiResourceId"}))
    RdsDbInstanceDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    RdsDbInstanceDetails.type = Types::RdsDbInstanceDetails
    RdsDbUserDetails.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "User", traits: {"smithy.api#jsonName" => "user"}))
    RdsDbUserDetails.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Application", traits: {"smithy.api#jsonName" => "application"}))
    RdsDbUserDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database", traits: {"smithy.api#jsonName" => "database"}))
    RdsDbUserDetails.add_member(:ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ssl", traits: {"smithy.api#jsonName" => "ssl"}))
    RdsDbUserDetails.add_member(:auth_method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthMethod", traits: {"smithy.api#jsonName" => "authMethod"}))
    RdsDbUserDetails.type = Types::RdsDbUserDetails
    RdsLimitlessDbDetails.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbShardGroupIdentifier", traits: {"smithy.api#jsonName" => "dbShardGroupIdentifier"}))
    RdsLimitlessDbDetails.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbShardGroupResourceId", traits: {"smithy.api#jsonName" => "dbShardGroupResourceId"}))
    RdsLimitlessDbDetails.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbShardGroupArn", traits: {"smithy.api#jsonName" => "dbShardGroupArn"}))
    RdsLimitlessDbDetails.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#jsonName" => "engine"}))
    RdsLimitlessDbDetails.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion", traits: {"smithy.api#jsonName" => "engineVersion"}))
    RdsLimitlessDbDetails.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterIdentifier", traits: {"smithy.api#jsonName" => "dbClusterIdentifier"}))
    RdsLimitlessDbDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    RdsLimitlessDbDetails.type = Types::RdsLimitlessDbDetails
    RdsLoginAttemptAction.add_member(:remote_ip_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteIpDetails, name: "RemoteIpDetails", traits: {"smithy.api#jsonName" => "remoteIpDetails"}))
    RdsLoginAttemptAction.add_member(:login_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginAttributes, name: "LoginAttributes"))
    RdsLoginAttemptAction.type = Types::RdsLoginAttemptAction
    RecoveryPoint.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "backupVaultName", "smithy.api#required" => {}}))
    RecoveryPoint.add_member(:continuous_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousScanDetails, name: "ContinuousScanDetails", traits: {"smithy.api#jsonName" => "continuousScanDetails"}))
    RecoveryPoint.type = Types::RecoveryPoint
    RecoveryPointDetails.add_member(:recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryPointArn", traits: {"smithy.api#jsonName" => "recoveryPointArn"}))
    RecoveryPointDetails.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupVaultName", traits: {"smithy.api#jsonName" => "backupVaultName"}))
    RecoveryPointDetails.add_member(:continuous_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationContinuousScanDetails, name: "ContinuousScanDetails", traits: {"smithy.api#jsonName" => "continuousScanDetails"}))
    RecoveryPointDetails.type = Types::RecoveryPointDetails
    RelatedFilePathsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    RemoteAccountDetails.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    RemoteAccountDetails.add_member(:affiliated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Affiliated", traits: {"smithy.api#jsonName" => "affiliated"}))
    RemoteAccountDetails.add_member(:aws_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsServiceName", traits: {"smithy.api#jsonName" => "awsServiceName"}))
    RemoteAccountDetails.type = Types::RemoteAccountDetails
    RemoteIpDetails.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: City, name: "City", traits: {"smithy.api#jsonName" => "city"}))
    RemoteIpDetails.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: Country, name: "Country", traits: {"smithy.api#jsonName" => "country"}))
    RemoteIpDetails.add_member(:geo_location, ::Smithy::Schema::Shapes::MemberShape.new(target: GeoLocation, name: "GeoLocation", traits: {"smithy.api#jsonName" => "geoLocation"}))
    RemoteIpDetails.add_member(:ip_address_v4, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "IpAddressV4", traits: {"smithy.api#jsonName" => "ipAddressV4"}))
    RemoteIpDetails.add_member(:ip_address_v6, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "IpAddressV6", traits: {"smithy.api#jsonName" => "ipAddressV6"}))
    RemoteIpDetails.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization", traits: {"smithy.api#jsonName" => "organization"}))
    RemoteIpDetails.type = Types::RemoteIpDetails
    RemotePortDetails.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port", traits: {"smithy.api#jsonName" => "port"}))
    RemotePortDetails.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PortName", traits: {"smithy.api#jsonName" => "portName"}))
    RemotePortDetails.type = Types::RemotePortDetails
    Resource.add_member(:access_key_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyDetails, name: "AccessKeyDetails", traits: {"smithy.api#jsonName" => "accessKeyDetails"}))
    Resource.add_member(:s3_bucket_details, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketDetails, name: "S3BucketDetails", traits: {"smithy.api#jsonName" => "s3BucketDetails"}))
    Resource.add_member(:instance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDetails, name: "InstanceDetails", traits: {"smithy.api#jsonName" => "instanceDetails"}))
    Resource.add_member(:eks_cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EksClusterDetails, name: "EksClusterDetails", traits: {"smithy.api#jsonName" => "eksClusterDetails"}))
    Resource.add_member(:kubernetes_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesDetails, name: "KubernetesDetails", traits: {"smithy.api#jsonName" => "kubernetesDetails"}))
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    Resource.add_member(:ebs_volume_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeDetails, name: "EbsVolumeDetails", traits: {"smithy.api#jsonName" => "ebsVolumeDetails"}))
    Resource.add_member(:ecs_cluster_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsClusterDetails, name: "EcsClusterDetails", traits: {"smithy.api#jsonName" => "ecsClusterDetails"}))
    Resource.add_member(:container_details, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "ContainerDetails", traits: {"smithy.api#jsonName" => "containerDetails"}))
    Resource.add_member(:lambda_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaDetails, name: "LambdaDetails", traits: {"smithy.api#jsonName" => "lambdaDetails"}))
    Resource.add_member(:rds_db_instance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbInstanceDetails, name: "RdsDbInstanceDetails", traits: {"smithy.api#jsonName" => "rdsDbInstanceDetails"}))
    Resource.add_member(:rds_limitless_db_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsLimitlessDbDetails, name: "RdsLimitlessDbDetails", traits: {"smithy.api#jsonName" => "rdsLimitlessDbDetails"}))
    Resource.add_member(:rds_db_user_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbUserDetails, name: "RdsDbUserDetails", traits: {"smithy.api#jsonName" => "rdsDbUserDetails"}))
    Resource.add_member(:ebs_snapshot_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotDetails, name: "EbsSnapshotDetails", traits: {"smithy.api#jsonName" => "ebsSnapshotDetails"}))
    Resource.add_member(:ec2_image_details, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ImageDetails, name: "Ec2ImageDetails", traits: {"smithy.api#jsonName" => "ec2ImageDetails"}))
    Resource.add_member(:recovery_point_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPointDetails, name: "RecoveryPointDetails", traits: {"smithy.api#jsonName" => "recoveryPointDetails"}))
    Resource.add_member(:bedrock_guardrail_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrailDetails, name: "BedrockGuardrailDetails", traits: {"smithy.api#jsonName" => "bedrockGuardrailDetails"}))
    Resource.add_member(:model_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelDetails, name: "ModelDetails", traits: {"smithy.api#jsonName" => "modelDetails"}))
    Resource.type = Types::Resource
    ResourceData.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#jsonName" => "s3Bucket"}))
    ResourceData.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Instance, name: "Ec2Instance", traits: {"smithy.api#jsonName" => "ec2Instance"}))
    ResourceData.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKey, name: "AccessKey", traits: {"smithy.api#jsonName" => "accessKey"}))
    ResourceData.add_member(:ec2_network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2NetworkInterface, name: "Ec2NetworkInterface", traits: {"smithy.api#jsonName" => "ec2NetworkInterface"}))
    ResourceData.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "S3Object", traits: {"smithy.api#jsonName" => "s3Object"}))
    ResourceData.add_member(:eks_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: EksCluster, name: "EksCluster", traits: {"smithy.api#jsonName" => "eksCluster"}))
    ResourceData.add_member(:kubernetes_workload, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesWorkload, name: "KubernetesWorkload", traits: {"smithy.api#jsonName" => "kubernetesWorkload"}))
    ResourceData.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFindingResource, name: "Container", traits: {"smithy.api#jsonName" => "container"}))
    ResourceData.add_member(:ecs_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsCluster, name: "EcsCluster", traits: {"smithy.api#jsonName" => "ecsCluster"}))
    ResourceData.add_member(:ecs_task, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsTask, name: "EcsTask", traits: {"smithy.api#jsonName" => "ecsTask"}))
    ResourceData.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: IamInstanceProfileV2, name: "IamInstanceProfile", traits: {"smithy.api#jsonName" => "iamInstanceProfile"}))
    ResourceData.add_member(:autoscaling_auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoscalingAutoScalingGroup, name: "AutoscalingAutoScalingGroup", traits: {"smithy.api#jsonName" => "autoscalingAutoScalingGroup"}))
    ResourceData.add_member(:ec2_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2LaunchTemplate, name: "Ec2LaunchTemplate", traits: {"smithy.api#jsonName" => "ec2LaunchTemplate"}))
    ResourceData.add_member(:ec2_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Vpc, name: "Ec2Vpc", traits: {"smithy.api#jsonName" => "ec2Vpc"}))
    ResourceData.add_member(:ec2_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Image, name: "Ec2Image", traits: {"smithy.api#jsonName" => "ec2Image"}))
    ResourceData.add_member(:cloudformation_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudformationStack, name: "CloudformationStack", traits: {"smithy.api#jsonName" => "cloudformationStack"}))
    ResourceData.add_member(:bedrock_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: BedrockGuardrailResource, name: "BedrockGuardrail", traits: {"smithy.api#jsonName" => "bedrockGuardrail"}))
    ResourceData.type = Types::ResourceData
    ResourceDetails.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "InstanceArn", traits: {"smithy.api#jsonName" => "instanceArn"}))
    ResourceDetails.type = Types::ResourceDetails
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceStatistics.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    ResourceStatistics.add_member(:last_generated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedAt", traits: {"smithy.api#jsonName" => "lastGeneratedAt"}))
    ResourceStatistics.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId", traits: {"smithy.api#jsonName" => "resourceId"}))
    ResourceStatistics.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#jsonName" => "resourceType"}))
    ResourceStatistics.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalFindings", traits: {"smithy.api#jsonName" => "totalFindings"}))
    ResourceStatistics.type = Types::ResourceStatistics
    ResourceType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    ResourceType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    ResourceType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ResourceUids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ResourceV2.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "uid", "smithy.api#required" => {}}))
    ResourceV2.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ResourceV2.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    ResourceV2.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingResourceType, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceType", "smithy.api#required" => {}}))
    ResourceV2.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Region", traits: {"smithy.api#jsonName" => "region"}))
    ResourceV2.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Service", traits: {"smithy.api#jsonName" => "service"}))
    ResourceV2.add_member(:cloud_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CloudPartition", traits: {"smithy.api#jsonName" => "cloudPartition"}))
    ResourceV2.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ResourceV2.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceData, name: "Data", traits: {"smithy.api#jsonName" => "data"}))
    ResourceV2.type = Types::ResourceV2
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceV2, name: "member"))
    RiskLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "Info"}))
    RiskLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    RiskLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    RiskLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    RiskLevel.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "Critical"}))
    RuleDefinition.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExpression, name: "Expression", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "expression", "smithy.api#required" => {}}))
    RuleDefinition.type = Types::RuleDefinition
    RuleDetail.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    RuleDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleArn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RuleDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RuleDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleDescription, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    RuleDetail.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleSeverity, name: "Severity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "severity", "smithy.api#required" => {}}))
    RuleDetail.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleDataSource, name: "DataSource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dataSource", "smithy.api#required" => {}}))
    RuleDetail.add_member(:tactic, ::Smithy::Schema::Shapes::MemberShape.new(target: MitreTactic, name: "Tactic", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tactic", "smithy.api#required" => {}}))
    RuleDetail.add_member(:technique, ::Smithy::Schema::Shapes::MemberShape.new(target: MitreTechnique, name: "Technique", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "technique", "smithy.api#required" => {}}))
    RuleDetail.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleServiceName, name: "Service", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "service", "smithy.api#required" => {}}))
    RuleDetail.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDefinition, name: "Definition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "definition", "smithy.api#required" => {}}))
    RuleDetail.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleLanguage, name: "Language", traits: {"smithy.api#jsonName" => "language"}))
    RuleDetail.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSchema, name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    RuleDetail.add_member(:runtime_monitoring_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleRuntimeMonitoringDetails, name: "RuntimeMonitoringDetails", traits: {"smithy.api#jsonName" => "runtimeMonitoringDetails"}))
    RuleDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    RuleDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    RuleDetail.type = Types::RuleDetail
    RuleLanguage.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    RuleSchema.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CloudTrail"}))
    RuleSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    RuleSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleArn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    RuleSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    RuleSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleDescription, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    RuleSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleSeverity, name: "Severity", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "severity", "smithy.api#required" => {}}))
    RuleSummary.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleDataSource, name: "DataSource", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dataSource", "smithy.api#required" => {}}))
    RuleSummary.add_member(:tactic, ::Smithy::Schema::Shapes::MemberShape.new(target: MitreTactic, name: "Tactic", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tactic", "smithy.api#required" => {}}))
    RuleSummary.add_member(:technique, ::Smithy::Schema::Shapes::MemberShape.new(target: MitreTechnique, name: "Technique", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "technique", "smithy.api#required" => {}}))
    RuleSummary.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleServiceName, name: "Service", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "service", "smithy.api#required" => {}}))
    RuleSummary.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleLanguage, name: "Language", traits: {"smithy.api#jsonName" => "language"}))
    RuleSummary.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSchema, name: "Schema", traits: {"smithy.api#jsonName" => "schema"}))
    RuleSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    RuleSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#jsonName" => "updatedAt"}))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuntimeContext.add_member(:modifying_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessDetails, name: "ModifyingProcess", traits: {"smithy.api#jsonName" => "modifyingProcess"}))
    RuntimeContext.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ModifiedAt", traits: {"smithy.api#jsonName" => "modifiedAt"}))
    RuntimeContext.add_member(:script_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScriptPath", traits: {"smithy.api#jsonName" => "scriptPath"}))
    RuntimeContext.add_member(:library_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LibraryPath", traits: {"smithy.api#jsonName" => "libraryPath"}))
    RuntimeContext.add_member(:ld_preload_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LdPreloadValue", traits: {"smithy.api#jsonName" => "ldPreloadValue"}))
    RuntimeContext.add_member(:socket_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SocketPath", traits: {"smithy.api#jsonName" => "socketPath"}))
    RuntimeContext.add_member(:runc_binary_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuncBinaryPath", traits: {"smithy.api#jsonName" => "runcBinaryPath"}))
    RuntimeContext.add_member(:release_agent_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReleaseAgentPath", traits: {"smithy.api#jsonName" => "releaseAgentPath"}))
    RuntimeContext.add_member(:mount_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MountSource", traits: {"smithy.api#jsonName" => "mountSource"}))
    RuntimeContext.add_member(:mount_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MountTarget", traits: {"smithy.api#jsonName" => "mountTarget"}))
    RuntimeContext.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileSystemType", traits: {"smithy.api#jsonName" => "fileSystemType"}))
    RuntimeContext.add_member(:flags, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagsList, name: "Flags", traits: {"smithy.api#jsonName" => "flags"}))
    RuntimeContext.add_member(:module_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModuleName", traits: {"smithy.api#jsonName" => "moduleName"}))
    RuntimeContext.add_member(:module_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModuleFilePath", traits: {"smithy.api#jsonName" => "moduleFilePath"}))
    RuntimeContext.add_member(:module_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModuleSha256", traits: {"smithy.api#jsonName" => "moduleSha256"}))
    RuntimeContext.add_member(:shell_history_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ShellHistoryFilePath", traits: {"smithy.api#jsonName" => "shellHistoryFilePath"}))
    RuntimeContext.add_member(:target_process, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessDetails, name: "TargetProcess", traits: {"smithy.api#jsonName" => "targetProcess"}))
    RuntimeContext.add_member(:address_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddressFamily", traits: {"smithy.api#jsonName" => "addressFamily"}))
    RuntimeContext.add_member(:iana_protocol_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IanaProtocolNumber", traits: {"smithy.api#jsonName" => "ianaProtocolNumber"}))
    RuntimeContext.add_member(:memory_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRegionsList, name: "MemoryRegions", traits: {"smithy.api#jsonName" => "memoryRegions"}))
    RuntimeContext.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ToolName", traits: {"smithy.api#jsonName" => "toolName"}))
    RuntimeContext.add_member(:tool_category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ToolCategory", traits: {"smithy.api#jsonName" => "toolCategory"}))
    RuntimeContext.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceName", traits: {"smithy.api#jsonName" => "serviceName"}))
    RuntimeContext.add_member(:command_line_example, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CommandLineExample", traits: {"smithy.api#jsonName" => "commandLineExample"}))
    RuntimeContext.add_member(:threat_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatFilePath", traits: {"smithy.api#jsonName" => "threatFilePath"}))
    RuntimeContext.add_member(:file_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileOperation", traits: {"smithy.api#jsonName" => "fileOperation"}))
    RuntimeContext.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilePath", traits: {"smithy.api#jsonName" => "filePath"}))
    RuntimeContext.add_member(:related_file_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedFilePathsList, name: "RelatedFilePaths", traits: {"smithy.api#jsonName" => "relatedFilePaths"}))
    RuntimeContext.type = Types::RuntimeContext
    RuntimeDetails.add_member(:process, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessDetails, name: "Process", traits: {"smithy.api#jsonName" => "process"}))
    RuntimeDetails.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeContext, name: "Context", traits: {"smithy.api#jsonName" => "context"}))
    RuntimeDetails.type = Types::RuntimeDetails
    S3Bucket.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerId", traits: {"smithy.api#jsonName" => "ownerId"}))
    S3Bucket.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    S3Bucket.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncryptionType", traits: {"smithy.api#jsonName" => "encryptionType"}))
    S3Bucket.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncryptionKeyArn", traits: {"smithy.api#jsonName" => "encryptionKeyArn"}))
    S3Bucket.add_member(:effective_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EffectivePermission", traits: {"smithy.api#jsonName" => "effectivePermission"}))
    S3Bucket.add_member(:public_read_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessStatus, name: "PublicReadAccess", traits: {"smithy.api#jsonName" => "publicReadAccess"}))
    S3Bucket.add_member(:public_write_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessStatus, name: "PublicWriteAccess", traits: {"smithy.api#jsonName" => "publicWriteAccess"}))
    S3Bucket.add_member(:account_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessConfiguration, name: "AccountPublicAccess", traits: {"smithy.api#jsonName" => "accountPublicAccess"}))
    S3Bucket.add_member(:bucket_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessConfiguration, name: "BucketPublicAccess", traits: {"smithy.api#jsonName" => "bucketPublicAccess"}))
    S3Bucket.add_member(:s3_object_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectUids, name: "S3ObjectUids", traits: {"smithy.api#jsonName" => "s3ObjectUids"}))
    S3Bucket.type = Types::S3Bucket
    S3BucketDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    S3BucketDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    S3BucketDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    S3BucketDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#jsonName" => "createdAt"}))
    S3BucketDetail.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner", traits: {"smithy.api#jsonName" => "owner"}))
    S3BucketDetail.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    S3BucketDetail.add_member(:default_server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultServerSideEncryption, name: "DefaultServerSideEncryption", traits: {"smithy.api#jsonName" => "defaultServerSideEncryption"}))
    S3BucketDetail.add_member(:public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccess, name: "PublicAccess", traits: {"smithy.api#jsonName" => "publicAccess"}))
    S3BucketDetail.add_member(:s3_object_details, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectDetails, name: "S3ObjectDetails", traits: {"smithy.api#jsonName" => "s3ObjectDetails"}))
    S3BucketDetail.type = Types::S3BucketDetail
    S3BucketDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketDetail, name: "member"))
    S3LogsConfiguration.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enable", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enable", "smithy.api#required" => {}}))
    S3LogsConfiguration.type = Types::S3LogsConfiguration
    S3LogsConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    S3LogsConfigurationResult.type = Types::S3LogsConfigurationResult
    S3Object.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#jsonName" => "eTag"}))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#jsonName" => "key"}))
    S3Object.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId", traits: {"smithy.api#jsonName" => "versionId"}))
    S3Object.type = Types::S3Object
    S3ObjectDetail.add_member(:object_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectArn", traits: {"smithy.api#jsonName" => "objectArn"}))
    S3ObjectDetail.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#jsonName" => "key"}))
    S3ObjectDetail.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ETag", traits: {"smithy.api#jsonName" => "eTag"}))
    S3ObjectDetail.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    S3ObjectDetail.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId", traits: {"smithy.api#jsonName" => "versionId"}))
    S3ObjectDetail.type = Types::S3ObjectDetail
    S3ObjectDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectDetail, name: "member"))
    S3ObjectForSendObjectMalwareScan.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#jsonName" => "bucket"}))
    S3ObjectForSendObjectMalwareScan.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#jsonName" => "key"}))
    S3ObjectForSendObjectMalwareScan.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VersionId", traits: {"smithy.api#jsonName" => "versionId"}))
    S3ObjectForSendObjectMalwareScan.type = Types::S3ObjectForSendObjectMalwareScan
    S3ObjectUids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Scan.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    Scan.add_member(:admin_detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "AdminDetectorId", traits: {"smithy.api#jsonName" => "adminDetectorId"}))
    Scan.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    Scan.add_member(:scan_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatus, name: "ScanStatus", traits: {"smithy.api#jsonName" => "scanStatus"}))
    Scan.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "FailureReason", traits: {"smithy.api#jsonName" => "failureReason"}))
    Scan.add_member(:scan_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanStartTime", traits: {"smithy.api#jsonName" => "scanStartTime"}))
    Scan.add_member(:scan_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ScanEndTime", traits: {"smithy.api#jsonName" => "scanEndTime"}))
    Scan.add_member(:trigger_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerDetails, name: "TriggerDetails", traits: {"smithy.api#jsonName" => "triggerDetails"}))
    Scan.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "ResourceDetails", traits: {"smithy.api#jsonName" => "resourceDetails"}))
    Scan.add_member(:scan_result_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultDetails, name: "ScanResultDetails", traits: {"smithy.api#jsonName" => "scanResultDetails"}))
    Scan.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    Scan.add_member(:total_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "TotalBytes", traits: {"smithy.api#jsonName" => "totalBytes"}))
    Scan.add_member(:file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "FileCount", traits: {"smithy.api#jsonName" => "fileCount"}))
    Scan.add_member(:attached_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeDetails, name: "AttachedVolumes", traits: {"smithy.api#jsonName" => "attachedVolumes"}))
    Scan.add_member(:scan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanType, name: "ScanType", traits: {"smithy.api#jsonName" => "scanType"}))
    Scan.type = Types::Scan
    ScanCategory.add_member(:full_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_SCAN", traits: {"smithy.api#enumValue" => "FULL_SCAN"}))
    ScanCategory.add_member(:incremental_scan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL_SCAN", traits: {"smithy.api#enumValue" => "INCREMENTAL_SCAN"}))
    ScanCondition.add_member(:map_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: MapEquals, name: "MapEquals", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mapEquals", "smithy.api#required" => {}}))
    ScanCondition.type = Types::ScanCondition
    ScanConditionPair.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "key", "smithy.api#required" => {}}))
    ScanConditionPair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#jsonName" => "value"}))
    ScanConditionPair.type = Types::ScanConditionPair
    ScanConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Role", traits: {"smithy.api#jsonName" => "role"}))
    ScanConfiguration.add_member(:trigger_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerDetails, name: "TriggerDetails", traits: {"smithy.api#jsonName" => "triggerDetails"}))
    ScanConfiguration.add_member(:incremental_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalScanDetails, name: "IncrementalScanDetails", traits: {"smithy.api#jsonName" => "incrementalScanDetails"}))
    ScanConfiguration.add_member(:recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationRecoveryPoint, name: "RecoveryPoint", traits: {"smithy.api#jsonName" => "recoveryPoint"}))
    ScanConfiguration.type = Types::ScanConfiguration
    ScanConfigurationContinuousScanDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    ScanConfigurationContinuousScanDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime", "smithy.api#required" => {}}))
    ScanConfigurationContinuousScanDetails.type = Types::ScanConfigurationContinuousScanDetails
    ScanConfigurationRecoveryPoint.add_member(:backup_vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "BackupVaultName", traits: {"smithy.api#jsonName" => "backupVaultName"}))
    ScanConfigurationRecoveryPoint.add_member(:continuous_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanConfigurationContinuousScanDetails, name: "ContinuousScanDetails", traits: {"smithy.api#jsonName" => "continuousScanDetails"}))
    ScanConfigurationRecoveryPoint.type = Types::ScanConfigurationRecoveryPoint
    ScanCriterion.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCriterionKey, name: "key"))
    ScanCriterion.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCondition, name: "value"))
    ScanCriterionKey.add_member(:ec2_instance_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE_TAG", traits: {"smithy.api#enumValue" => "EC2_INSTANCE_TAG"}))
    ScanDetections.add_member(:scanned_item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedItemCount, name: "ScannedItemCount", traits: {"smithy.api#jsonName" => "scannedItemCount"}))
    ScanDetections.add_member(:threats_detected_item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatsDetectedItemCount, name: "ThreatsDetectedItemCount", traits: {"smithy.api#jsonName" => "threatsDetectedItemCount"}))
    ScanDetections.add_member(:highest_severity_threat_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HighestSeverityThreatDetails, name: "HighestSeverityThreatDetails", traits: {"smithy.api#jsonName" => "highestSeverityThreatDetails"}))
    ScanDetections.add_member(:threat_detected_by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatDetectedByName, name: "ThreatDetectedByName", traits: {"smithy.api#jsonName" => "threatDetectedByName"}))
    ScanDetections.type = Types::ScanDetections
    ScanEc2InstanceWithFindings.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EbsVolumes", traits: {"smithy.api#jsonName" => "ebsVolumes"}))
    ScanEc2InstanceWithFindings.type = Types::ScanEc2InstanceWithFindings
    ScanEc2InstanceWithFindingsResult.add_member(:ebs_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumesResult, name: "EbsVolumes", traits: {"smithy.api#jsonName" => "ebsVolumes"}))
    ScanEc2InstanceWithFindingsResult.type = Types::ScanEc2InstanceWithFindingsResult
    ScanFilePath.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilePath", traits: {"smithy.api#jsonName" => "filePath"}))
    ScanFilePath.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeArn", traits: {"smithy.api#jsonName" => "volumeArn"}))
    ScanFilePath.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    ScanFilePath.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileName", traits: {"smithy.api#jsonName" => "fileName"}))
    ScanFilePath.type = Types::ScanFilePath
    ScanResourceCriteria.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCriterion, name: "Include", traits: {"smithy.api#jsonName" => "include"}))
    ScanResourceCriteria.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanCriterion, name: "Exclude", traits: {"smithy.api#jsonName" => "exclude"}))
    ScanResourceCriteria.type = Types::ScanResourceCriteria
    ScanResult.add_member(:clean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLEAN", traits: {"smithy.api#enumValue" => "CLEAN"}))
    ScanResult.add_member(:infected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFECTED", traits: {"smithy.api#enumValue" => "INFECTED"}))
    ScanResultDetails.add_member(:scan_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResult, name: "ScanResult", traits: {"smithy.api#jsonName" => "scanResult"}))
    ScanResultDetails.type = Types::ScanResultDetails
    ScanResultStatus.add_member(:no_threats_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_THREATS_FOUND", traits: {"smithy.api#enumValue" => "NO_THREATS_FOUND"}))
    ScanResultStatus.add_member(:threats_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREATS_FOUND", traits: {"smithy.api#enumValue" => "THREATS_FOUND"}))
    ScanResultThreat.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ScanResultThreat.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionSource, name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    ScanResultThreat.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "Count", traits: {"smithy.api#jsonName" => "count"}))
    ScanResultThreat.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    ScanResultThreat.add_member(:item_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemDetailsList, name: "ItemDetails", traits: {"smithy.api#jsonName" => "itemDetails"}))
    ScanResultThreat.type = Types::ScanResultThreat
    ScanResultThreats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResultThreat, name: "member"))
    ScanStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ScanStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScanStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    ScanStatusReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ScanStatusReason.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    ScanStatusReason.add_member(:snapshot_size_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT_SIZE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "SNAPSHOT_SIZE_LIMIT_EXCEEDED"}))
    ScanStatusReason.add_member(:resource_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_UNAVAILABLE", traits: {"smithy.api#enumValue" => "RESOURCE_UNAVAILABLE"}))
    ScanStatusReason.add_member(:inconsistent_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCONSISTENT_SOURCE", traits: {"smithy.api#enumValue" => "INCONSISTENT_SOURCE"}))
    ScanStatusReason.add_member(:incremental_no_difference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL_NO_DIFFERENCE", traits: {"smithy.api#enumValue" => "INCREMENTAL_NO_DIFFERENCE"}))
    ScanStatusReason.add_member(:no_ebs_volumes_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_EBS_VOLUMES_FOUND", traits: {"smithy.api#enumValue" => "NO_EBS_VOLUMES_FOUND"}))
    ScanStatusReason.add_member(:unsupported_product_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_PRODUCT_CODE_TYPE", traits: {"smithy.api#enumValue" => "UNSUPPORTED_PRODUCT_CODE_TYPE"}))
    ScanStatusReason.add_member(:ami_snapshot_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMI_SNAPSHOT_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "AMI_SNAPSHOT_LIMIT_EXCEEDED"}))
    ScanStatusReason.add_member(:unrelated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNRELATED_RESOURCES", traits: {"smithy.api#enumValue" => "UNRELATED_RESOURCES"}))
    ScanStatusReason.add_member(:base_resource_not_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE_RESOURCE_NOT_SCANNED", traits: {"smithy.api#enumValue" => "BASE_RESOURCE_NOT_SCANNED"}))
    ScanStatusReason.add_member(:base_created_after_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE_CREATED_AFTER_TARGET", traits: {"smithy.api#enumValue" => "BASE_CREATED_AFTER_TARGET"}))
    ScanStatusReason.add_member(:unsupported_for_incremental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_FOR_INCREMENTAL", traits: {"smithy.api#enumValue" => "UNSUPPORTED_FOR_INCREMENTAL"}))
    ScanStatusReason.add_member(:unsupported_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_AMI", traits: {"smithy.api#enumValue" => "UNSUPPORTED_AMI"}))
    ScanStatusReason.add_member(:unsupported_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_SNAPSHOT", traits: {"smithy.api#enumValue" => "UNSUPPORTED_SNAPSHOT"}))
    ScanStatusReason.add_member(:unsupported_composite_recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_COMPOSITE_RECOVERY_POINT", traits: {"smithy.api#enumValue" => "UNSUPPORTED_COMPOSITE_RECOVERY_POINT"}))
    ScanStatusReason.add_member(:all_files_skipped_or_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_FILES_SKIPPED_OR_FAILED", traits: {"smithy.api#enumValue" => "ALL_FILES_SKIPPED_OR_FAILED"}))
    ScanThreatName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    ScanThreatName.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity", traits: {"smithy.api#jsonName" => "severity"}))
    ScanThreatName.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ItemCount", traits: {"smithy.api#jsonName" => "itemCount"}))
    ScanThreatName.add_member(:file_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "FilePaths", traits: {"smithy.api#jsonName" => "filePaths"}))
    ScanThreatName.type = Types::ScanThreatName
    ScanThreatNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanThreatName, name: "member"))
    ScanType.add_member(:guardduty_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY_INITIATED", traits: {"smithy.api#enumValue" => "GUARDDUTY_INITIATED"}))
    ScanType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ScannedItemCount.add_member(:total_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalGb", traits: {"smithy.api#jsonName" => "totalGb"}))
    ScannedItemCount.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Files", traits: {"smithy.api#jsonName" => "files"}))
    ScannedItemCount.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Volumes", traits: {"smithy.api#jsonName" => "volumes"}))
    ScannedItemCount.type = Types::ScannedItemCount
    ScannedResource.add_member(:scanned_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ScannedResourceArn", traits: {"smithy.api#jsonName" => "scannedResourceArn"}))
    ScannedResource.add_member(:scanned_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionResourceType, name: "ScannedResourceType", traits: {"smithy.api#jsonName" => "scannedResourceType"}))
    ScannedResource.add_member(:scanned_resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionScanStatus, name: "ScannedResourceStatus", traits: {"smithy.api#jsonName" => "scannedResourceStatus"}))
    ScannedResource.add_member(:scan_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanStatusReason, name: "ScanStatusReason", traits: {"smithy.api#jsonName" => "scanStatusReason"}))
    ScannedResource.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResourceDetails, name: "ResourceDetails", traits: {"smithy.api#jsonName" => "resourceDetails"}))
    ScannedResource.type = Types::ScannedResource
    ScannedResourceDetails.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeDetail, name: "EbsVolume", traits: {"smithy.api#jsonName" => "ebsVolume"}))
    ScannedResourceDetails.add_member(:ebs_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot, name: "EbsSnapshot", traits: {"smithy.api#jsonName" => "ebsSnapshot"}))
    ScannedResourceDetails.type = Types::ScannedResourceDetails
    ScannedResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScannedResource, name: "member"))
    Scans.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Scan, name: "member"))
    SecurityContext.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Privileged", traits: {"smithy.api#jsonName" => "privileged"}))
    SecurityContext.add_member(:allow_privilege_escalation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPrivilegeEscalation", traits: {"smithy.api#jsonName" => "allowPrivilegeEscalation"}))
    SecurityContext.type = Types::SecurityContext
    SecurityGroup.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupId", traits: {"smithy.api#jsonName" => "groupId"}))
    SecurityGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupName", traits: {"smithy.api#jsonName" => "groupName"}))
    SecurityGroup.type = Types::SecurityGroup
    SecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "member"))
    SendObjectMalwareScanRequest.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectForSendObjectMalwareScan, name: "S3Object", traits: {"smithy.api#jsonName" => "s3Object"}))
    SendObjectMalwareScanRequest.type = Types::SendObjectMalwareScanRequest
    SendObjectMalwareScanResponse.type = Types::SendObjectMalwareScanResponse
    Sequence.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "uid", "smithy.api#required" => {}}))
    Sequence.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceDescription, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    Sequence.add_member(:actors, ::Smithy::Schema::Shapes::MemberShape.new(target: Actors, name: "Actors", traits: {"smithy.api#jsonName" => "actors"}))
    Sequence.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    Sequence.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkEndpoints, name: "Endpoints", traits: {"smithy.api#jsonName" => "endpoints"}))
    Sequence.add_member(:signals, ::Smithy::Schema::Shapes::MemberShape.new(target: Signals, name: "Signals", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "signals", "smithy.api#required" => {}}))
    Sequence.add_member(:sequence_indicators, ::Smithy::Schema::Shapes::MemberShape.new(target: Indicators, name: "SequenceIndicators", traits: {"smithy.api#jsonName" => "sequenceIndicators"}))
    Sequence.add_member(:additional_sequence_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalSequenceTypes, name: "AdditionalSequenceTypes", traits: {"smithy.api#jsonName" => "additionalSequenceTypes"}))
    Sequence.type = Types::Sequence
    Service.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#jsonName" => "action"}))
    Service.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Evidence, name: "Evidence", traits: {"smithy.api#jsonName" => "evidence"}))
    Service.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Archived", traits: {"smithy.api#jsonName" => "archived"}))
    Service.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#jsonName" => "count"}))
    Service.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#jsonName" => "detectorId"}))
    Service.add_member(:event_first_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventFirstSeen", traits: {"smithy.api#jsonName" => "eventFirstSeen"}))
    Service.add_member(:event_last_seen, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventLastSeen", traits: {"smithy.api#jsonName" => "eventLastSeen"}))
    Service.add_member(:resource_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceRole", traits: {"smithy.api#jsonName" => "resourceRole"}))
    Service.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceName", traits: {"smithy.api#jsonName" => "serviceName"}))
    Service.add_member(:user_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserFeedback", traits: {"smithy.api#jsonName" => "userFeedback"}))
    Service.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAdditionalInfo, name: "AdditionalInfo", traits: {"smithy.api#jsonName" => "additionalInfo"}))
    Service.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName", traits: {"smithy.api#jsonName" => "featureName"}))
    Service.add_member(:ebs_volume_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeScanDetails, name: "EbsVolumeScanDetails", traits: {"smithy.api#jsonName" => "ebsVolumeScanDetails"}))
    Service.add_member(:runtime_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeDetails, name: "RuntimeDetails", traits: {"smithy.api#jsonName" => "runtimeDetails"}))
    Service.add_member(:detection, ::Smithy::Schema::Shapes::MemberShape.new(target: Detection, name: "Detection", traits: {"smithy.api#jsonName" => "detection"}))
    Service.add_member(:malware_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareScanDetails, name: "MalwareScanDetails", traits: {"smithy.api#jsonName" => "malwareScanDetails"}))
    Service.type = Types::Service
    ServiceAdditionalInfo.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#jsonName" => "value"}))
    ServiceAdditionalInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ServiceAdditionalInfo.type = Types::ServiceAdditionalInfo
    Session.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#jsonName" => "uid"}))
    Session.add_member(:mfa_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MfaStatus, name: "MfaStatus", traits: {"smithy.api#jsonName" => "mfaStatus"}))
    Session.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime", traits: {"smithy.api#jsonName" => "createdTime"}))
    Session.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Issuer", traits: {"smithy.api#jsonName" => "issuer"}))
    Session.type = Types::Session
    SessionNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SeverityStatistics.add_member(:last_generated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedAt", traits: {"smithy.api#jsonName" => "lastGeneratedAt"}))
    SeverityStatistics.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Severity", traits: {"smithy.api#jsonName" => "severity"}))
    SeverityStatistics.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalFindings", traits: {"smithy.api#jsonName" => "totalFindings"}))
    SeverityStatistics.type = Types::SeverityStatistics
    Signal.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "uid", "smithy.api#required" => {}}))
    Signal.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalType, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "type", "smithy.api#required" => {}}))
    Signal.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalDescription, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    Signal.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Signal.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "createdAt", "smithy.api#required" => {}}))
    Signal.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "updatedAt", "smithy.api#required" => {}}))
    Signal.add_member(:first_seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FirstSeenAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "firstSeenAt", "smithy.api#required" => {}}))
    Signal.add_member(:last_seen_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSeenAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "lastSeenAt", "smithy.api#required" => {}}))
    Signal.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Severity", traits: {"smithy.api#jsonName" => "severity"}))
    Signal.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "count", "smithy.api#required" => {}}))
    Signal.add_member(:resource_uids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceUids, name: "ResourceUids", traits: {"smithy.api#jsonName" => "resourceUids"}))
    Signal.add_member(:actor_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorIds, name: "ActorIds", traits: {"smithy.api#jsonName" => "actorIds"}))
    Signal.add_member(:endpoint_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointIds, name: "EndpointIds", traits: {"smithy.api#jsonName" => "endpointIds"}))
    Signal.add_member(:signal_indicators, ::Smithy::Schema::Shapes::MemberShape.new(target: Indicators, name: "SignalIndicators", traits: {"smithy.api#jsonName" => "signalIndicators"}))
    Signal.add_member(:activities, ::Smithy::Schema::Shapes::MemberShape.new(target: Activities, name: "Activities", traits: {"smithy.api#jsonName" => "activities"}))
    Signal.type = Types::Signal
    SignalType.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "FINDING"}))
    SignalType.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CLOUD_TRAIL"}))
    SignalType.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    SignalType.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    SignalType.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_LOGS", traits: {"smithy.api#enumValue" => "FLOW_LOGS"}))
    SignalType.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_LOGS", traits: {"smithy.api#enumValue" => "DNS_LOGS"}))
    SignalType.add_member(:runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "RUNTIME_MONITORING"}))
    Signals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Signal, name: "member"))
    SortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName", traits: {"smithy.api#jsonName" => "attributeName"}))
    SortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "OrderBy", traits: {"smithy.api#jsonName" => "orderBy"}))
    SortCriteria.type = Types::SortCriteria
    SourceIps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Sources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    StartMalwareScanConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Role", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "role", "smithy.api#required" => {}}))
    StartMalwareScanConfiguration.add_member(:incremental_scan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalScanDetails, name: "IncrementalScanDetails", traits: {"smithy.api#jsonName" => "incrementalScanDetails"}))
    StartMalwareScanConfiguration.add_member(:recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPoint, name: "RecoveryPoint", traits: {"smithy.api#jsonName" => "recoveryPoint"}))
    StartMalwareScanConfiguration.type = Types::StartMalwareScanConfiguration
    StartMalwareScanRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceArn", "smithy.api#required" => {}}))
    StartMalwareScanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    StartMalwareScanRequest.add_member(:scan_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StartMalwareScanConfiguration, name: "ScanConfiguration", traits: {"smithy.api#jsonName" => "scanConfiguration"}))
    StartMalwareScanRequest.type = Types::StartMalwareScanRequest
    StartMalwareScanResponse.add_member(:scan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "ScanId", traits: {"smithy.api#jsonName" => "scanId"}))
    StartMalwareScanResponse.type = Types::StartMalwareScanResponse
    StartMonitoringMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMonitoringMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    StartMonitoringMembersRequest.type = Types::StartMonitoringMembersRequest
    StartMonitoringMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    StartMonitoringMembersResponse.type = Types::StartMonitoringMembersResponse
    StopMonitoringMembersRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopMonitoringMembersRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    StopMonitoringMembersRequest.type = Types::StopMonitoringMembersRequest
    StopMonitoringMembersResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    StopMonitoringMembersResponse.type = Types::StopMonitoringMembersResponse
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#jsonName" => "key"}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#jsonName" => "value"}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardDutyArn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    Threat.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    Threat.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source", traits: {"smithy.api#jsonName" => "source"}))
    Threat.add_member(:item_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemPaths, name: "ItemPaths", traits: {"smithy.api#jsonName" => "itemPaths"}))
    Threat.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Count", traits: {"smithy.api#jsonName" => "count"}))
    Threat.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Hash", traits: {"smithy.api#jsonName" => "hash"}))
    Threat.add_member(:item_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemDetailsList, name: "ItemDetails", traits: {"smithy.api#jsonName" => "itemDetails"}))
    Threat.type = Types::Threat
    ThreatDetectedByName.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ItemCount", traits: {"smithy.api#jsonName" => "itemCount"}))
    ThreatDetectedByName.add_member(:unique_threat_name_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UniqueThreatNameCount", traits: {"smithy.api#jsonName" => "uniqueThreatNameCount"}))
    ThreatDetectedByName.add_member(:shortened, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Shortened", traits: {"smithy.api#jsonName" => "shortened"}))
    ThreatDetectedByName.add_member(:threat_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanThreatNames, name: "ThreatNames", traits: {"smithy.api#jsonName" => "threatNames"}))
    ThreatDetectedByName.type = Types::ThreatDetectedByName
    ThreatEntitySetFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    ThreatEntitySetFormat.add_member(:stix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STIX", traits: {"smithy.api#enumValue" => "STIX"}))
    ThreatEntitySetFormat.add_member(:otx_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTX_CSV", traits: {"smithy.api#enumValue" => "OTX_CSV"}))
    ThreatEntitySetFormat.add_member(:alien_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALIEN_VAULT", traits: {"smithy.api#enumValue" => "ALIEN_VAULT"}))
    ThreatEntitySetFormat.add_member(:proof_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROOF_POINT", traits: {"smithy.api#enumValue" => "PROOF_POINT"}))
    ThreatEntitySetFormat.add_member(:fire_eye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRE_EYE", traits: {"smithy.api#enumValue" => "FIRE_EYE"}))
    ThreatEntitySetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ThreatEntitySetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ThreatEntitySetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ThreatEntitySetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ThreatEntitySetStatus.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    ThreatEntitySetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ThreatEntitySetStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    ThreatEntitySetStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ThreatIntelSetFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    ThreatIntelSetFormat.add_member(:stix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STIX", traits: {"smithy.api#enumValue" => "STIX"}))
    ThreatIntelSetFormat.add_member(:otx_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTX_CSV", traits: {"smithy.api#enumValue" => "OTX_CSV"}))
    ThreatIntelSetFormat.add_member(:alien_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALIEN_VAULT", traits: {"smithy.api#enumValue" => "ALIEN_VAULT"}))
    ThreatIntelSetFormat.add_member(:proof_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROOF_POINT", traits: {"smithy.api#enumValue" => "PROOF_POINT"}))
    ThreatIntelSetFormat.add_member(:fire_eye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRE_EYE", traits: {"smithy.api#enumValue" => "FIRE_EYE"}))
    ThreatIntelSetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ThreatIntelSetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ThreatIntelSetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ThreatIntelSetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ThreatIntelSetStatus.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    ThreatIntelSetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ThreatIntelSetStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    ThreatIntelSetStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ThreatIntelligenceDetail.add_member(:threat_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatListName", traits: {"smithy.api#jsonName" => "threatListName"}))
    ThreatIntelligenceDetail.add_member(:threat_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatNames, name: "ThreatNames", traits: {"smithy.api#jsonName" => "threatNames"}))
    ThreatIntelligenceDetail.add_member(:threat_file_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatFileSha256", traits: {"smithy.api#jsonName" => "threatFileSha256"}))
    ThreatIntelligenceDetail.type = Types::ThreatIntelligenceDetail
    ThreatIntelligenceDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIntelligenceDetail, name: "member"))
    ThreatNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Threats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Threat, name: "member"))
    ThreatsDetectedItemCount.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Files", traits: {"smithy.api#jsonName" => "files"}))
    ThreatsDetectedItemCount.type = Types::ThreatsDetectedItemCount
    Total.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Amount", traits: {"smithy.api#jsonName" => "amount"}))
    Total.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Unit", traits: {"smithy.api#jsonName" => "unit"}))
    Total.type = Types::Total
    TriggerDetails.add_member(:guard_duty_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "GuardDutyFindingId", traits: {"smithy.api#jsonName" => "guardDutyFindingId"}))
    TriggerDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    TriggerDetails.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "TriggerType", traits: {"smithy.api#jsonName" => "triggerType"}))
    TriggerDetails.type = Types::TriggerDetails
    TriggerType.add_member(:backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP", traits: {"smithy.api#enumValue" => "BACKUP"}))
    TriggerType.add_member(:guardduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDDUTY", traits: {"smithy.api#enumValue" => "GUARDDUTY"}))
    TrustedEntitySetFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    TrustedEntitySetFormat.add_member(:stix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STIX", traits: {"smithy.api#enumValue" => "STIX"}))
    TrustedEntitySetFormat.add_member(:otx_csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTX_CSV", traits: {"smithy.api#enumValue" => "OTX_CSV"}))
    TrustedEntitySetFormat.add_member(:alien_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALIEN_VAULT", traits: {"smithy.api#enumValue" => "ALIEN_VAULT"}))
    TrustedEntitySetFormat.add_member(:proof_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROOF_POINT", traits: {"smithy.api#enumValue" => "PROOF_POINT"}))
    TrustedEntitySetFormat.add_member(:fire_eye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRE_EYE", traits: {"smithy.api#enumValue" => "FIRE_EYE"}))
    TrustedEntitySetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    TrustedEntitySetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TrustedEntitySetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    TrustedEntitySetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TrustedEntitySetStatus.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    TrustedEntitySetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TrustedEntitySetStatus.add_member(:delete_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_PENDING", traits: {"smithy.api#enumValue" => "DELETE_PENDING"}))
    TrustedEntitySetStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    UnarchiveFindingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UnarchiveFindingsRequest.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIds, name: "FindingIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    UnarchiveFindingsRequest.type = Types::UnarchiveFindingsRequest
    UnarchiveFindingsResponse.type = Types::UnarchiveFindingsResponse
    UnprocessedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    UnprocessedAccount.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Result", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "result", "smithy.api#required" => {}}))
    UnprocessedAccount.type = Types::UnprocessedAccount
    UnprocessedAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccount, name: "member"))
    UnprocessedDataSourcesResult.add_member(:malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionConfigurationResult, name: "MalwareProtection", traits: {"smithy.api#jsonName" => "malwareProtection"}))
    UnprocessedDataSourcesResult.type = Types::UnprocessedDataSourcesResult
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardDutyArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCustomDetectionRuleAssociationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomDetectionRuleAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "AssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomDetectionRuleAssociationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    UpdateCustomDetectionRuleAssociationRequest.type = Types::UpdateCustomDetectionRuleAssociationRequest
    UpdateCustomDetectionRuleAssociationResponse.type = Types::UpdateCustomDetectionRuleAssociationResponse
    UpdateCustomDetectionRuleOrgConfigurationRequest.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "RuleId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomDetectionRuleOrgConfigurationRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mode", "smithy.api#required" => {}}))
    UpdateCustomDetectionRuleOrgConfigurationRequest.add_member(:include_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "IncludeAccountIds", traits: {"smithy.api#jsonName" => "includeAccountIds"}))
    UpdateCustomDetectionRuleOrgConfigurationRequest.add_member(:exclude_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectionRuleAccountIds, name: "ExcludeAccountIds", traits: {"smithy.api#jsonName" => "excludeAccountIds"}))
    UpdateCustomDetectionRuleOrgConfigurationRequest.type = Types::UpdateCustomDetectionRuleOrgConfigurationRequest
    UpdateCustomDetectionRuleOrgConfigurationResponse.type = Types::UpdateCustomDetectionRuleOrgConfigurationResponse
    UpdateDetectorRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDetectorRequest.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enable", traits: {"smithy.api#jsonName" => "enable"}))
    UpdateDetectorRequest.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingPublishingFrequency, name: "FindingPublishingFrequency", traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    UpdateDetectorRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfigurations, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    UpdateDetectorRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorFeatureConfigurations, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    UpdateDetectorRequest.type = Types::UpdateDetectorRequest
    UpdateDetectorResponse.type = Types::UpdateDetectorResponse
    UpdateFilterRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFilterRequest.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFilterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterDescription, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateFilterRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAction, name: "Action", traits: {"smithy.api#jsonName" => "action"}))
    UpdateFilterRequest.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRank, name: "Rank", traits: {"smithy.api#jsonName" => "rank"}))
    UpdateFilterRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingCriteria, name: "FindingCriteria", traits: {"smithy.api#jsonName" => "findingCriteria"}))
    UpdateFilterRequest.type = Types::UpdateFilterRequest
    UpdateFilterResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    UpdateFilterResponse.type = Types::UpdateFilterResponse
    UpdateFindingsFeedbackRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFindingsFeedbackRequest.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIds, name: "FindingIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    UpdateFindingsFeedbackRequest.add_member(:feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: Feedback, name: "Feedback", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "feedback", "smithy.api#required" => {}}))
    UpdateFindingsFeedbackRequest.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Comments", traits: {"smithy.api#jsonName" => "comments"}))
    UpdateFindingsFeedbackRequest.type = Types::UpdateFindingsFeedbackRequest
    UpdateFindingsFeedbackResponse.type = Types::UpdateFindingsFeedbackResponse
    UpdateIPSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:ip_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpSetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIPSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateIPSetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#jsonName" => "location"}))
    UpdateIPSetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#jsonName" => "activate"}))
    UpdateIPSetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    UpdateIPSetRequest.type = Types::UpdateIPSetRequest
    UpdateIPSetResponse.type = Types::UpdateIPSetResponse
    UpdateMalwareProtectionPlanRequest.add_member(:malware_protection_plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MalwareProtectionPlanId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMalwareProtectionPlanRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Role", traits: {"smithy.api#jsonName" => "role"}))
    UpdateMalwareProtectionPlanRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanActions, name: "Actions", traits: {"smithy.api#jsonName" => "actions"}))
    UpdateMalwareProtectionPlanRequest.add_member(:protected_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProtectedResource, name: "ProtectedResource", traits: {"smithy.api#jsonName" => "protectedResource"}))
    UpdateMalwareProtectionPlanRequest.type = Types::UpdateMalwareProtectionPlanRequest
    UpdateMalwareScanSettingsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMalwareScanSettingsRequest.add_member(:scan_resource_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanResourceCriteria, name: "ScanResourceCriteria", traits: {"smithy.api#jsonName" => "scanResourceCriteria"}))
    UpdateMalwareScanSettingsRequest.add_member(:ebs_snapshot_preservation, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotPreservation, name: "EbsSnapshotPreservation", traits: {"smithy.api#jsonName" => "ebsSnapshotPreservation"}))
    UpdateMalwareScanSettingsRequest.type = Types::UpdateMalwareScanSettingsRequest
    UpdateMalwareScanSettingsResponse.type = Types::UpdateMalwareScanSettingsResponse
    UpdateMemberDetectorsRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemberDetectorsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    UpdateMemberDetectorsRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfigurations, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    UpdateMemberDetectorsRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberFeaturesConfigurations, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    UpdateMemberDetectorsRequest.type = Types::UpdateMemberDetectorsRequest
    UpdateMemberDetectorsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedAccounts, name: "UnprocessedAccounts", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "unprocessedAccounts", "smithy.api#required" => {}}))
    UpdateMemberDetectorsResponse.type = Types::UpdateMemberDetectorsResponse
    UpdateOrganizationConfigurationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoEnable", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use AutoEnableOrganizationMembers instead"}, "smithy.api#jsonName" => "autoEnable"}))
    UpdateOrganizationConfigurationRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDataSourceConfigurations, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    UpdateOrganizationConfigurationRequest.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationFeaturesConfigurations, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable_organization_members, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoEnableMembers, name: "AutoEnableOrganizationMembers", traits: {"smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    UpdateOrganizationConfigurationRequest.type = Types::UpdateOrganizationConfigurationRequest
    UpdateOrganizationConfigurationResponse.type = Types::UpdateOrganizationConfigurationResponse
    UpdateProtectedResource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateS3BucketResource, name: "S3Bucket", traits: {"smithy.api#jsonName" => "s3Bucket"}))
    UpdateProtectedResource.type = Types::UpdateProtectedResource
    UpdatePublishingDestinationRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePublishingDestinationRequest.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePublishingDestinationRequest.add_member(:destination_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationProperties, name: "DestinationProperties", traits: {"smithy.api#jsonName" => "destinationProperties"}))
    UpdatePublishingDestinationRequest.type = Types::UpdatePublishingDestinationRequest
    UpdatePublishingDestinationResponse.type = Types::UpdatePublishingDestinationResponse
    UpdateS3BucketResource.add_member(:object_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: MalwareProtectionPlanObjectPrefixesList, name: "ObjectPrefixes", traits: {"smithy.api#jsonName" => "objectPrefixes"}))
    UpdateS3BucketResource.type = Types::UpdateS3BucketResource
    UpdateThreatEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThreatEntitySetRequest.add_member(:threat_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatEntitySetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThreatEntitySetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateThreatEntitySetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#jsonName" => "location"}))
    UpdateThreatEntitySetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    UpdateThreatEntitySetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#jsonName" => "activate"}))
    UpdateThreatEntitySetRequest.type = Types::UpdateThreatEntitySetRequest
    UpdateThreatEntitySetResponse.type = Types::UpdateThreatEntitySetResponse
    UpdateThreatIntelSetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThreatIntelSetRequest.add_member(:threat_intel_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThreatIntelSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThreatIntelSetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateThreatIntelSetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#jsonName" => "location"}))
    UpdateThreatIntelSetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#jsonName" => "activate"}))
    UpdateThreatIntelSetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    UpdateThreatIntelSetRequest.type = Types::UpdateThreatIntelSetRequest
    UpdateThreatIntelSetResponse.type = Types::UpdateThreatIntelSetResponse
    UpdateTrustedEntitySetRequest.add_member(:detector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectorId, name: "DetectorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustedEntitySetRequest.add_member(:trusted_entity_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrustedEntitySetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTrustedEntitySetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    UpdateTrustedEntitySetRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#jsonName" => "location"}))
    UpdateTrustedEntitySetRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    UpdateTrustedEntitySetRequest.add_member(:activate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Activate", traits: {"smithy.api#jsonName" => "activate"}))
    UpdateTrustedEntitySetRequest.type = Types::UpdateTrustedEntitySetRequest
    UpdateTrustedEntitySetResponse.type = Types::UpdateTrustedEntitySetResponse
    UsageAccountResult.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    UsageAccountResult.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Total, name: "Total", traits: {"smithy.api#jsonName" => "total"}))
    UsageAccountResult.type = Types::UsageAccountResult
    UsageAccountResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAccountResult, name: "member"))
    UsageCriteria.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds", traits: {"smithy.api#jsonName" => "accountIds"}))
    UsageCriteria.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceList, name: "DataSources", traits: {"smithy.api#deprecated" => {"message" => "This parameter is deprecated, use Features instead"}, "smithy.api#jsonName" => "dataSources"}))
    UsageCriteria.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    UsageCriteria.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeatureList, name: "Features", traits: {"smithy.api#jsonName" => "features"}))
    UsageCriteria.type = Types::UsageCriteria
    UsageDataSourceResult.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, name: "DataSource", traits: {"smithy.api#jsonName" => "dataSource"}))
    UsageDataSourceResult.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Total, name: "Total", traits: {"smithy.api#jsonName" => "total"}))
    UsageDataSourceResult.type = Types::UsageDataSourceResult
    UsageDataSourceResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageDataSourceResult, name: "member"))
    UsageFeature.add_member(:flow_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOW_LOGS", traits: {"smithy.api#enumValue" => "FLOW_LOGS"}))
    UsageFeature.add_member(:cloud_trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_TRAIL", traits: {"smithy.api#enumValue" => "CLOUD_TRAIL"}))
    UsageFeature.add_member(:dns_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_LOGS", traits: {"smithy.api#enumValue" => "DNS_LOGS"}))
    UsageFeature.add_member(:s3_data_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_DATA_EVENTS", traits: {"smithy.api#enumValue" => "S3_DATA_EVENTS"}))
    UsageFeature.add_member(:eks_audit_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_AUDIT_LOGS", traits: {"smithy.api#enumValue" => "EKS_AUDIT_LOGS"}))
    UsageFeature.add_member(:ebs_malware_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_MALWARE_PROTECTION", traits: {"smithy.api#enumValue" => "EBS_MALWARE_PROTECTION"}))
    UsageFeature.add_member(:rds_login_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_LOGIN_EVENTS", traits: {"smithy.api#enumValue" => "RDS_LOGIN_EVENTS"}))
    UsageFeature.add_member(:lambda_network_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NETWORK_LOGS", traits: {"smithy.api#enumValue" => "LAMBDA_NETWORK_LOGS"}))
    UsageFeature.add_member(:eks_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EKS_RUNTIME_MONITORING"}))
    UsageFeature.add_member(:ec2_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "EC2_RUNTIME_MONITORING"}))
    UsageFeature.add_member(:fargate_runtime_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_RUNTIME_MONITORING", traits: {"smithy.api#enumValue" => "FARGATE_RUNTIME_MONITORING"}))
    UsageFeature.add_member(:rds_dbi_protection_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DBI_PROTECTION_PROVISIONED", traits: {"smithy.api#enumValue" => "RDS_DBI_PROTECTION_PROVISIONED"}))
    UsageFeature.add_member(:rds_dbi_protection_serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DBI_PROTECTION_SERVERLESS", traits: {"smithy.api#enumValue" => "RDS_DBI_PROTECTION_SERVERLESS"}))
    UsageFeature.add_member(:rds_dbi_protection_limitless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DBI_PROTECTION_LIMITLESS", traits: {"smithy.api#enumValue" => "RDS_DBI_PROTECTION_LIMITLESS"}))
    UsageFeature.add_member(:rds_data_activity_dbi_protection_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DATA_ACTIVITY_DBI_PROTECTION_PROVISIONED", traits: {"smithy.api#enumValue" => "RDS_DATA_ACTIVITY_DBI_PROTECTION_PROVISIONED"}))
    UsageFeature.add_member(:rds_data_activity_dbi_protection_serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DATA_ACTIVITY_DBI_PROTECTION_SERVERLESS", traits: {"smithy.api#enumValue" => "RDS_DATA_ACTIVITY_DBI_PROTECTION_SERVERLESS"}))
    UsageFeature.add_member(:rds_data_activity_dbi_protection_limitless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DATA_ACTIVITY_DBI_PROTECTION_LIMITLESS", traits: {"smithy.api#enumValue" => "RDS_DATA_ACTIVITY_DBI_PROTECTION_LIMITLESS"}))
    UsageFeature.add_member(:ai_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_PROTECTION", traits: {"smithy.api#enumValue" => "AI_PROTECTION"}))
    UsageFeatureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeature, name: "member"))
    UsageFeatureResult.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeature, name: "Feature", traits: {"smithy.api#jsonName" => "feature"}))
    UsageFeatureResult.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Total, name: "Total", traits: {"smithy.api#jsonName" => "total"}))
    UsageFeatureResult.type = Types::UsageFeatureResult
    UsageFeatureResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeatureResult, name: "member"))
    UsageResourceResult.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Resource", traits: {"smithy.api#jsonName" => "resource"}))
    UsageResourceResult.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Total, name: "Total", traits: {"smithy.api#jsonName" => "total"}))
    UsageResourceResult.type = Types::UsageResourceResult
    UsageResourceResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageResourceResult, name: "member"))
    UsageStatisticType.add_member(:sum_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM_BY_ACCOUNT", traits: {"smithy.api#enumValue" => "SUM_BY_ACCOUNT"}))
    UsageStatisticType.add_member(:sum_by_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM_BY_DATA_SOURCE", traits: {"smithy.api#enumValue" => "SUM_BY_DATA_SOURCE"}))
    UsageStatisticType.add_member(:sum_by_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM_BY_RESOURCE", traits: {"smithy.api#enumValue" => "SUM_BY_RESOURCE"}))
    UsageStatisticType.add_member(:top_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_RESOURCES", traits: {"smithy.api#enumValue" => "TOP_RESOURCES"}))
    UsageStatisticType.add_member(:sum_by_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM_BY_FEATURES", traits: {"smithy.api#enumValue" => "SUM_BY_FEATURES"}))
    UsageStatisticType.add_member(:top_accounts_by_feature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_ACCOUNTS_BY_FEATURE", traits: {"smithy.api#enumValue" => "TOP_ACCOUNTS_BY_FEATURE"}))
    UsageStatistics.add_member(:sum_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageAccountResultList, name: "SumByAccount", traits: {"smithy.api#jsonName" => "sumByAccount"}))
    UsageStatistics.add_member(:top_accounts_by_feature, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTopAccountsResultList, name: "TopAccountsByFeature", traits: {"smithy.api#jsonName" => "topAccountsByFeature"}))
    UsageStatistics.add_member(:sum_by_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageDataSourceResultList, name: "SumByDataSource", traits: {"smithy.api#jsonName" => "sumByDataSource"}))
    UsageStatistics.add_member(:sum_by_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageResourceResultList, name: "SumByResource", traits: {"smithy.api#jsonName" => "sumByResource"}))
    UsageStatistics.add_member(:top_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageResourceResultList, name: "TopResources", traits: {"smithy.api#jsonName" => "topResources"}))
    UsageStatistics.add_member(:sum_by_feature, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeatureResultList, name: "SumByFeature", traits: {"smithy.api#jsonName" => "sumByFeature"}))
    UsageStatistics.type = Types::UsageStatistics
    UsageTopAccountResult.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#jsonName" => "accountId"}))
    UsageTopAccountResult.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: Total, name: "Total", traits: {"smithy.api#jsonName" => "total"}))
    UsageTopAccountResult.type = Types::UsageTopAccountResult
    UsageTopAccountsByFeatureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTopAccountResult, name: "member"))
    UsageTopAccountsResult.add_member(:feature, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageFeature, name: "Feature", traits: {"smithy.api#jsonName" => "feature"}))
    UsageTopAccountsResult.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTopAccountsByFeatureList, name: "Accounts", traits: {"smithy.api#jsonName" => "accounts"}))
    UsageTopAccountsResult.type = Types::UsageTopAccountsResult
    UsageTopAccountsResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageTopAccountsResult, name: "member"))
    User.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    User.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Uid", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "uid", "smithy.api#required" => {}}))
    User.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "type", "smithy.api#required" => {}}))
    User.add_member(:credential_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CredentialUid", traits: {"smithy.api#jsonName" => "credentialUid"}))
    User.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account", traits: {"smithy.api#jsonName" => "account"}))
    User.type = Types::User
    Volume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    Volume.add_member(:host_path, ::Smithy::Schema::Shapes::MemberShape.new(target: HostPath, name: "HostPath", traits: {"smithy.api#jsonName" => "hostPath"}))
    Volume.type = Types::Volume
    VolumeDetail.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeArn", traits: {"smithy.api#jsonName" => "volumeArn"}))
    VolumeDetail.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VolumeType", traits: {"smithy.api#jsonName" => "volumeType"}))
    VolumeDetail.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeviceName", traits: {"smithy.api#jsonName" => "deviceName"}))
    VolumeDetail.add_member(:volume_size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VolumeSizeInGB", traits: {"smithy.api#jsonName" => "volumeSizeInGB"}))
    VolumeDetail.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncryptionType", traits: {"smithy.api#jsonName" => "encryptionType"}))
    VolumeDetail.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn", traits: {"smithy.api#jsonName" => "snapshotArn"}))
    VolumeDetail.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn", traits: {"smithy.api#jsonName" => "kmsKeyArn"}))
    VolumeDetail.type = Types::VolumeDetail
    VolumeDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeDetail, name: "member"))
    VolumeMount.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    VolumeMount.add_member(:mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MountPath", traits: {"smithy.api#jsonName" => "mountPath"}))
    VolumeMount.type = Types::VolumeMount
    VolumeMounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeMount, name: "member"))
    Volumes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "member"))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#jsonName" => "subnetIds"}))
    VpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    VpcConfig.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    VpcConfig.type = Types::VpcConfig

    GuardDutyAPIService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.guardduty#GuardDutyAPIService"
      service.name = "GuardDutyAPIService"
      service.version = "2017-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "GuardDuty", "arnNamespace" => "guardduty", "cloudFormationName" => "GuardDuty", "cloudTrailEventSource" => "guardduty.amazonaws.com", "endpointPrefix" => "guardduty"}, "aws.auth#sigv4" => {"name" => "guardduty"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon GuardDuty", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://guardduty-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://guardduty.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://guardduty-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://guardduty.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://guardduty.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:accept_administrator_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#AcceptAdministratorInvitation"
        operation.name = "AcceptAdministratorInvitation"
        operation.input = AcceptAdministratorInvitationRequest
        operation.output = AcceptAdministratorInvitationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/administrator", "code" => 200}}
      end)
      service.add_operation(:accept_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#AcceptInvitation"
        operation.name = "AcceptInvitation"
        operation.input = AcceptInvitationRequest
        operation.output = AcceptInvitationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use AcceptAdministratorInvitation instead"}, "smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/master", "code" => 200}}
      end)
      service.add_operation(:archive_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ArchiveFindings"
        operation.name = "ArchiveFindings"
        operation.input = ArchiveFindingsRequest
        operation.output = ArchiveFindingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/archive", "code" => 200}}
      end)
      service.add_operation(:create_custom_detection_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateCustomDetectionRuleAssociation"
        operation.name = "CreateCustomDetectionRuleAssociation"
        operation.input = CreateCustomDetectionRuleAssociationRequest
        operation.output = CreateCustomDetectionRuleAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-detection-rule/association", "code" => 200}}
      end)
      service.add_operation(:create_custom_detection_rule_org_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateCustomDetectionRuleOrgConfiguration"
        operation.name = "CreateCustomDetectionRuleOrgConfiguration"
        operation.input = CreateCustomDetectionRuleOrgConfigurationRequest
        operation.output = CreateCustomDetectionRuleOrgConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-detection-rule/org-configuration", "code" => 200}}
      end)
      service.add_operation(:create_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateDetector"
        operation.name = "CreateDetector"
        operation.input = CreateDetectorRequest
        operation.output = CreateDetectorResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector", "code" => 200}}
      end)
      service.add_operation(:create_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateFilter"
        operation.name = "CreateFilter"
        operation.input = CreateFilterRequest
        operation.output = CreateFilterResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/filter", "code" => 200}}
      end)
      service.add_operation(:create_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateIPSet"
        operation.name = "CreateIPSet"
        operation.input = CreateIPSetRequest
        operation.output = CreateIPSetResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/ipset", "code" => 200}}
      end)
      service.add_operation(:create_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateInvestigation"
        operation.name = "CreateInvestigation"
        operation.input = CreateInvestigationRequest
        operation.output = CreateInvestigationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/investigation", "code" => 202}}
      end)
      service.add_operation(:create_malware_protection_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateMalwareProtectionPlan"
        operation.name = "CreateMalwareProtectionPlan"
        operation.input = CreateMalwareProtectionPlanRequest
        operation.output = CreateMalwareProtectionPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/malware-protection-plan", "code" => 200}}
      end)
      service.add_operation(:create_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateMembers"
        operation.name = "CreateMembers"
        operation.input = CreateMembersRequest
        operation.output = CreateMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member", "code" => 200}}
      end)
      service.add_operation(:create_publishing_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreatePublishingDestination"
        operation.name = "CreatePublishingDestination"
        operation.input = CreatePublishingDestinationRequest
        operation.output = CreatePublishingDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/publishingDestination", "code" => 200}}
      end)
      service.add_operation(:create_sample_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateSampleFindings"
        operation.name = "CreateSampleFindings"
        operation.input = CreateSampleFindingsRequest
        operation.output = CreateSampleFindingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/create", "code" => 200}}
      end)
      service.add_operation(:create_threat_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateThreatEntitySet"
        operation.name = "CreateThreatEntitySet"
        operation.input = CreateThreatEntitySetRequest
        operation.output = CreateThreatEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/threatentityset", "code" => 200}}
      end)
      service.add_operation(:create_threat_intel_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateThreatIntelSet"
        operation.name = "CreateThreatIntelSet"
        operation.input = CreateThreatIntelSetRequest
        operation.output = CreateThreatIntelSetResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/threatintelset", "code" => 200}}
      end)
      service.add_operation(:create_trusted_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#CreateTrustedEntitySet"
        operation.name = "CreateTrustedEntitySet"
        operation.input = CreateTrustedEntitySetRequest
        operation.output = CreateTrustedEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/trustedentityset", "code" => 200}}
      end)
      service.add_operation(:decline_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeclineInvitations"
        operation.name = "DeclineInvitations"
        operation.input = DeclineInvitationsRequest
        operation.output = DeclineInvitationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitation/decline", "code" => 200}}
      end)
      service.add_operation(:delete_custom_detection_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteCustomDetectionRuleAssociation"
        operation.name = "DeleteCustomDetectionRuleAssociation"
        operation.input = DeleteCustomDetectionRuleAssociationRequest
        operation.output = DeleteCustomDetectionRuleAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/custom-detection-rule/rule/{RuleId}/association/{AssociationId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_detection_rule_org_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteCustomDetectionRuleOrgConfiguration"
        operation.name = "DeleteCustomDetectionRuleOrgConfiguration"
        operation.input = DeleteCustomDetectionRuleOrgConfigurationRequest
        operation.output = DeleteCustomDetectionRuleOrgConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/custom-detection-rule/org-configuration/{RuleId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteDetector"
        operation.name = "DeleteDetector"
        operation.input = DeleteDetectorRequest
        operation.output = DeleteDetectorResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}", "code" => 200}}
      end)
      service.add_operation(:delete_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteFilter"
        operation.name = "DeleteFilter"
        operation.input = DeleteFilterRequest
        operation.output = DeleteFilterResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/filter/{FilterName}", "code" => 200}}
      end)
      service.add_operation(:delete_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteIPSet"
        operation.name = "DeleteIPSet"
        operation.input = DeleteIPSetRequest
        operation.output = DeleteIPSetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/ipset/{IpSetId}", "code" => 200}}
      end)
      service.add_operation(:delete_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteInvitations"
        operation.name = "DeleteInvitations"
        operation.input = DeleteInvitationsRequest
        operation.output = DeleteInvitationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitation/delete", "code" => 200}}
      end)
      service.add_operation(:delete_malware_protection_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteMalwareProtectionPlan"
        operation.name = "DeleteMalwareProtectionPlan"
        operation.input = DeleteMalwareProtectionPlanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/malware-protection-plan/{MalwareProtectionPlanId}", "code" => 200}}
      end)
      service.add_operation(:delete_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteMembers"
        operation.name = "DeleteMembers"
        operation.input = DeleteMembersRequest
        operation.output = DeleteMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/delete", "code" => 200}}
      end)
      service.add_operation(:delete_publishing_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeletePublishingDestination"
        operation.name = "DeletePublishingDestination"
        operation.input = DeletePublishingDestinationRequest
        operation.output = DeletePublishingDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/publishingDestination/{DestinationId}", "code" => 200}}
      end)
      service.add_operation(:delete_threat_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteThreatEntitySet"
        operation.name = "DeleteThreatEntitySet"
        operation.input = DeleteThreatEntitySetRequest
        operation.output = DeleteThreatEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}", "code" => 200}}
      end)
      service.add_operation(:delete_threat_intel_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteThreatIntelSet"
        operation.name = "DeleteThreatIntelSet"
        operation.input = DeleteThreatIntelSetRequest
        operation.output = DeleteThreatIntelSetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", "code" => 200}}
      end)
      service.add_operation(:delete_trusted_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DeleteTrustedEntitySet"
        operation.name = "DeleteTrustedEntitySet"
        operation.input = DeleteTrustedEntitySetRequest
        operation.output = DeleteTrustedEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}", "code" => 200}}
      end)
      service.add_operation(:describe_malware_scans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DescribeMalwareScans"
        operation.name = "DescribeMalwareScans"
        operation.input = DescribeMalwareScansRequest
        operation.output = DescribeMalwareScansResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/malware-scans", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMalwareScans.new
      end)
      service.add_operation(:describe_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = DescribeOrganizationConfigurationRequest
        operation.output = DescribeOrganizationConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/admin", "code" => 200}}
        operation[:paginator] = Paginators::DescribeOrganizationConfiguration.new
      end)
      service.add_operation(:describe_publishing_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DescribePublishingDestination"
        operation.name = "DescribePublishingDestination"
        operation.input = DescribePublishingDestinationRequest
        operation.output = DescribePublishingDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/publishingDestination/{DestinationId}", "code" => 200}}
      end)
      service.add_operation(:disable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DisableOrganizationAdminAccount"
        operation.name = "DisableOrganizationAdminAccount"
        operation.input = DisableOrganizationAdminAccountRequest
        operation.output = DisableOrganizationAdminAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/admin/disable", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_administrator_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DisassociateFromAdministratorAccount"
        operation.name = "DisassociateFromAdministratorAccount"
        operation.input = DisassociateFromAdministratorAccountRequest
        operation.output = DisassociateFromAdministratorAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/administrator/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_master_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DisassociateFromMasterAccount"
        operation.name = "DisassociateFromMasterAccount"
        operation.input = DisassociateFromMasterAccountRequest
        operation.output = DisassociateFromMasterAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use DisassociateFromAdministratorAccount instead"}, "smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/master/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#DisassociateMembers"
        operation.name = "DisassociateMembers"
        operation.input = DisassociateMembersRequest
        operation.output = DisassociateMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/disassociate", "code" => 200}}
      end)
      service.add_operation(:enable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#EnableOrganizationAdminAccount"
        operation.name = "EnableOrganizationAdminAccount"
        operation.input = EnableOrganizationAdminAccountRequest
        operation.output = EnableOrganizationAdminAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/admin/enable", "code" => 200}}
      end)
      service.add_operation(:get_administrator_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetAdministratorAccount"
        operation.name = "GetAdministratorAccount"
        operation.input = GetAdministratorAccountRequest
        operation.output = GetAdministratorAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/administrator", "code" => 200}}
      end)
      service.add_operation(:get_coverage_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetCoverageStatistics"
        operation.name = "GetCoverageStatistics"
        operation.input = GetCoverageStatisticsRequest
        operation.output = GetCoverageStatisticsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/coverage/statistics", "code" => 200}}
      end)
      service.add_operation(:get_custom_detection_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetCustomDetectionRule"
        operation.name = "GetCustomDetectionRule"
        operation.input = GetCustomDetectionRuleRequest
        operation.output = GetCustomDetectionRuleResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-detection-rule/rule/{RuleId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_custom_detection_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetCustomDetectionRuleAssociation"
        operation.name = "GetCustomDetectionRuleAssociation"
        operation.input = GetCustomDetectionRuleAssociationRequest
        operation.output = GetCustomDetectionRuleAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-detection-rule/rule/{RuleId}/association/{AssociationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_custom_detection_rule_org_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetCustomDetectionRuleOrgConfiguration"
        operation.name = "GetCustomDetectionRuleOrgConfiguration"
        operation.input = GetCustomDetectionRuleOrgConfigurationRequest
        operation.output = GetCustomDetectionRuleOrgConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-detection-rule/org-configuration/{RuleId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetDetector"
        operation.name = "GetDetector"
        operation.input = GetDetectorRequest
        operation.output = GetDetectorResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}", "code" => 200}}
      end)
      service.add_operation(:get_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetFilter"
        operation.name = "GetFilter"
        operation.input = GetFilterRequest
        operation.output = GetFilterResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/filter/{FilterName}", "code" => 200}}
      end)
      service.add_operation(:get_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetFindings"
        operation.name = "GetFindings"
        operation.input = GetFindingsRequest
        operation.output = GetFindingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/get", "code" => 200}}
      end)
      service.add_operation(:get_findings_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetFindingsStatistics"
        operation.name = "GetFindingsStatistics"
        operation.input = GetFindingsStatisticsRequest
        operation.output = GetFindingsStatisticsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/statistics", "code" => 200}}
      end)
      service.add_operation(:get_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetIPSet"
        operation.name = "GetIPSet"
        operation.input = GetIPSetRequest
        operation.output = GetIPSetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/ipset/{IpSetId}", "code" => 200}}
      end)
      service.add_operation(:get_investigation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetInvestigation"
        operation.name = "GetInvestigation"
        operation.input = GetInvestigationRequest
        operation.output = GetInvestigationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/investigation/{InvestigationId}", "code" => 200}}
      end)
      service.add_operation(:get_invitations_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetInvitationsCount"
        operation.name = "GetInvitationsCount"
        operation.input = GetInvitationsCountRequest
        operation.output = GetInvitationsCountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitation/count", "code" => 200}}
      end)
      service.add_operation(:get_malware_protection_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMalwareProtectionPlan"
        operation.name = "GetMalwareProtectionPlan"
        operation.input = GetMalwareProtectionPlanRequest
        operation.output = GetMalwareProtectionPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/malware-protection-plan/{MalwareProtectionPlanId}", "code" => 200}}
      end)
      service.add_operation(:get_malware_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMalwareScan"
        operation.name = "GetMalwareScan"
        operation.input = GetMalwareScanRequest
        operation.output = GetMalwareScanResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/malware-scan/{ScanId}", "code" => 200}}
      end)
      service.add_operation(:get_malware_scan_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMalwareScanSettings"
        operation.name = "GetMalwareScanSettings"
        operation.input = GetMalwareScanSettingsRequest
        operation.output = GetMalwareScanSettingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/malware-scan-settings", "code" => 200}}
      end)
      service.add_operation(:get_master_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMasterAccount"
        operation.name = "GetMasterAccount"
        operation.input = GetMasterAccountRequest
        operation.output = GetMasterAccountResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use GetAdministratorAccount instead"}, "smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/master", "code" => 200}}
      end)
      service.add_operation(:get_member_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMemberDetectors"
        operation.name = "GetMemberDetectors"
        operation.input = GetMemberDetectorsRequest
        operation.output = GetMemberDetectorsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/detector/get", "code" => 200}}
      end)
      service.add_operation(:get_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetMembers"
        operation.name = "GetMembers"
        operation.input = GetMembersRequest
        operation.output = GetMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/get", "code" => 200}}
      end)
      service.add_operation(:get_organization_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetOrganizationStatistics"
        operation.name = "GetOrganizationStatistics"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetOrganizationStatisticsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/organization/statistics", "code" => 200}}
      end)
      service.add_operation(:get_remaining_free_trial_days, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetRemainingFreeTrialDays"
        operation.name = "GetRemainingFreeTrialDays"
        operation.input = GetRemainingFreeTrialDaysRequest
        operation.output = GetRemainingFreeTrialDaysResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/freeTrial/daysRemaining", "code" => 200}}
      end)
      service.add_operation(:get_threat_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetThreatEntitySet"
        operation.name = "GetThreatEntitySet"
        operation.input = GetThreatEntitySetRequest
        operation.output = GetThreatEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}", "code" => 200}}
      end)
      service.add_operation(:get_threat_intel_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetThreatIntelSet"
        operation.name = "GetThreatIntelSet"
        operation.input = GetThreatIntelSetRequest
        operation.output = GetThreatIntelSetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", "code" => 200}}
      end)
      service.add_operation(:get_trusted_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetTrustedEntitySet"
        operation.name = "GetTrustedEntitySet"
        operation.input = GetTrustedEntitySetRequest
        operation.output = GetTrustedEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}", "code" => 200}}
      end)
      service.add_operation(:get_usage_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#GetUsageStatistics"
        operation.name = "GetUsageStatistics"
        operation.input = GetUsageStatisticsRequest
        operation.output = GetUsageStatisticsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/usage/statistics", "code" => 200}}
        operation[:paginator] = Paginators::GetUsageStatistics.new
      end)
      service.add_operation(:invite_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#InviteMembers"
        operation.name = "InviteMembers"
        operation.input = InviteMembersRequest
        operation.output = InviteMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/invite", "code" => 200}}
      end)
      service.add_operation(:list_coverage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListCoverage"
        operation.name = "ListCoverage"
        operation.input = ListCoverageRequest
        operation.output = ListCoverageResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/coverage", "code" => 200}}
        operation[:paginator] = Paginators::ListCoverage.new
      end)
      service.add_operation(:list_custom_detection_rule_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListCustomDetectionRuleAssociations"
        operation.name = "ListCustomDetectionRuleAssociations"
        operation.input = ListCustomDetectionRuleAssociationsRequest
        operation.output = ListCustomDetectionRuleAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-detection-rule/association", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomDetectionRuleAssociations.new
      end)
      service.add_operation(:list_custom_detection_rule_org_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListCustomDetectionRuleOrgConfigurations"
        operation.name = "ListCustomDetectionRuleOrgConfigurations"
        operation.input = ListCustomDetectionRuleOrgConfigurationsRequest
        operation.output = ListCustomDetectionRuleOrgConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-detection-rule/org-configuration", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomDetectionRuleOrgConfigurations.new
      end)
      service.add_operation(:list_custom_detection_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListCustomDetectionRules"
        operation.name = "ListCustomDetectionRules"
        operation.input = ListCustomDetectionRulesRequest
        operation.output = ListCustomDetectionRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-detection-rule/rule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomDetectionRules.new
      end)
      service.add_operation(:list_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListDetectors"
        operation.name = "ListDetectors"
        operation.input = ListDetectorsRequest
        operation.output = ListDetectorsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector", "code" => 200}}
        operation[:paginator] = Paginators::ListDetectors.new
      end)
      service.add_operation(:list_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListFilters"
        operation.name = "ListFilters"
        operation.input = ListFiltersRequest
        operation.output = ListFiltersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/filter", "code" => 200}}
        operation[:paginator] = Paginators::ListFilters.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListFindings"
        operation.name = "ListFindings"
        operation.input = ListFindingsRequest
        operation.output = ListFindingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings", "code" => 200}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_ip_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListIPSets"
        operation.name = "ListIPSets"
        operation.input = ListIPSetsRequest
        operation.output = ListIPSetsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/ipset", "code" => 200}}
        operation[:paginator] = Paginators::ListIPSets.new
      end)
      service.add_operation(:list_investigations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListInvestigations"
        operation.name = "ListInvestigations"
        operation.input = ListInvestigationsRequest
        operation.output = ListInvestigationsResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/investigation/list", "code" => 200}}
        operation[:paginator] = Paginators::ListInvestigations.new
      end)
      service.add_operation(:list_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = ListInvitationsRequest
        operation.output = ListInvitationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitation", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_malware_protection_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListMalwareProtectionPlans"
        operation.name = "ListMalwareProtectionPlans"
        operation.input = ListMalwareProtectionPlansRequest
        operation.output = ListMalwareProtectionPlansResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/malware-protection-plan", "code" => 200}}
      end)
      service.add_operation(:list_malware_scans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListMalwareScans"
        operation.name = "ListMalwareScans"
        operation.input = ListMalwareScansRequest
        operation.output = ListMalwareScansResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/malware-scan", "code" => 200}}
        operation[:paginator] = Paginators::ListMalwareScans.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListMembers"
        operation.name = "ListMembers"
        operation.input = ListMembersRequest
        operation.output = ListMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/member", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_organization_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListOrganizationAdminAccounts"
        operation.name = "ListOrganizationAdminAccounts"
        operation.input = ListOrganizationAdminAccountsRequest
        operation.output = ListOrganizationAdminAccountsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/admin", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationAdminAccounts.new
      end)
      service.add_operation(:list_publishing_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListPublishingDestinations"
        operation.name = "ListPublishingDestinations"
        operation.input = ListPublishingDestinationsRequest
        operation.output = ListPublishingDestinationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/publishingDestination", "code" => 200}}
        operation[:paginator] = Paginators::ListPublishingDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_threat_entity_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListThreatEntitySets"
        operation.name = "ListThreatEntitySets"
        operation.input = ListThreatEntitySetsRequest
        operation.output = ListThreatEntitySetsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/threatentityset", "code" => 200}}
        operation[:paginator] = Paginators::ListThreatEntitySets.new
      end)
      service.add_operation(:list_threat_intel_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListThreatIntelSets"
        operation.name = "ListThreatIntelSets"
        operation.input = ListThreatIntelSetsRequest
        operation.output = ListThreatIntelSetsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/threatintelset", "code" => 200}}
        operation[:paginator] = Paginators::ListThreatIntelSets.new
      end)
      service.add_operation(:list_trusted_entity_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#ListTrustedEntitySets"
        operation.name = "ListTrustedEntitySets"
        operation.input = ListTrustedEntitySetsRequest
        operation.output = ListTrustedEntitySetsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/detector/{DetectorId}/trustedentityset", "code" => 200}}
        operation[:paginator] = Paginators::ListTrustedEntitySets.new
      end)
      service.add_operation(:send_object_malware_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#SendObjectMalwareScan"
        operation.name = "SendObjectMalwareScan"
        operation.input = SendObjectMalwareScanRequest
        operation.output = SendObjectMalwareScanResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/object-malware-scan/send", "code" => 200}}
      end)
      service.add_operation(:start_malware_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#StartMalwareScan"
        operation.name = "StartMalwareScan"
        operation.input = StartMalwareScanRequest
        operation.output = StartMalwareScanResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/malware-scan/start", "code" => 200}}
      end)
      service.add_operation(:start_monitoring_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#StartMonitoringMembers"
        operation.name = "StartMonitoringMembers"
        operation.input = StartMonitoringMembersRequest
        operation.output = StartMonitoringMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/start", "code" => 200}}
      end)
      service.add_operation(:stop_monitoring_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#StopMonitoringMembers"
        operation.name = "StopMonitoringMembers"
        operation.input = StopMonitoringMembersRequest
        operation.output = StopMonitoringMembersResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:unarchive_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UnarchiveFindings"
        operation.name = "UnarchiveFindings"
        operation.input = UnarchiveFindingsRequest
        operation.output = UnarchiveFindingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/unarchive", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_custom_detection_rule_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateCustomDetectionRuleAssociation"
        operation.name = "UpdateCustomDetectionRuleAssociation"
        operation.input = UpdateCustomDetectionRuleAssociationRequest
        operation.output = UpdateCustomDetectionRuleAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/custom-detection-rule/rule/{RuleId}/association/{AssociationId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_custom_detection_rule_org_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateCustomDetectionRuleOrgConfiguration"
        operation.name = "UpdateCustomDetectionRuleOrgConfiguration"
        operation.input = UpdateCustomDetectionRuleOrgConfigurationRequest
        operation.output = UpdateCustomDetectionRuleOrgConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/custom-detection-rule/org-configuration/{RuleId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_detector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateDetector"
        operation.name = "UpdateDetector"
        operation.input = UpdateDetectorRequest
        operation.output = UpdateDetectorResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}", "code" => 200}}
      end)
      service.add_operation(:update_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateFilter"
        operation.name = "UpdateFilter"
        operation.input = UpdateFilterRequest
        operation.output = UpdateFilterResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/filter/{FilterName}", "code" => 200}}
      end)
      service.add_operation(:update_findings_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateFindingsFeedback"
        operation.name = "UpdateFindingsFeedback"
        operation.input = UpdateFindingsFeedbackRequest
        operation.output = UpdateFindingsFeedbackResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/findings/feedback", "code" => 200}}
      end)
      service.add_operation(:update_ip_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateIPSet"
        operation.name = "UpdateIPSet"
        operation.input = UpdateIPSetRequest
        operation.output = UpdateIPSetResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/ipset/{IpSetId}", "code" => 200}}
      end)
      service.add_operation(:update_malware_protection_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateMalwareProtectionPlan"
        operation.name = "UpdateMalwareProtectionPlan"
        operation.input = UpdateMalwareProtectionPlanRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/malware-protection-plan/{MalwareProtectionPlanId}", "code" => 200}}
      end)
      service.add_operation(:update_malware_scan_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateMalwareScanSettings"
        operation.name = "UpdateMalwareScanSettings"
        operation.input = UpdateMalwareScanSettingsRequest
        operation.output = UpdateMalwareScanSettingsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/malware-scan-settings", "code" => 200}}
      end)
      service.add_operation(:update_member_detectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateMemberDetectors"
        operation.name = "UpdateMemberDetectors"
        operation.input = UpdateMemberDetectorsRequest
        operation.output = UpdateMemberDetectorsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/member/detector/update", "code" => 200}}
      end)
      service.add_operation(:update_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = UpdateOrganizationConfigurationRequest
        operation.output = UpdateOrganizationConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/admin", "code" => 200}}
      end)
      service.add_operation(:update_publishing_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdatePublishingDestination"
        operation.name = "UpdatePublishingDestination"
        operation.input = UpdatePublishingDestinationRequest
        operation.output = UpdatePublishingDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/publishingDestination/{DestinationId}", "code" => 200}}
      end)
      service.add_operation(:update_threat_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateThreatEntitySet"
        operation.name = "UpdateThreatEntitySet"
        operation.input = UpdateThreatEntitySetRequest
        operation.output = UpdateThreatEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}", "code" => 200}}
      end)
      service.add_operation(:update_threat_intel_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateThreatIntelSet"
        operation.name = "UpdateThreatIntelSet"
        operation.input = UpdateThreatIntelSetRequest
        operation.output = UpdateThreatIntelSetResponse
        operation.errors << AccessDeniedException
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}", "code" => 200}}
      end)
      service.add_operation(:update_trusted_entity_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.guardduty#UpdateTrustedEntitySet"
        operation.name = "UpdateTrustedEntitySet"
        operation.input = UpdateTrustedEntitySetRequest
        operation.output = UpdateTrustedEntitySetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}", "code" => 200}}
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
